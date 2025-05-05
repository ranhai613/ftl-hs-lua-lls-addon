from parseutility import parse_function_args, get_scope_content, get_parent_scope_names
import re
import json
from glob import glob
from pprint import pp
from warnings import warn

"""
cd src
git clone https://github.com/FTL-Hyperspace/FTL-Hyperspace.git
git checkout [tag]
"""

STRUCT_MATCH_PATTERN = re.compile(r'(?:struct|class)\s+(?:LIBZHL_INTERFACE\s+)?(\w+)(?:\s*:\s*\w+)?\s*{')
FUNCTION_PATTERN = re.compile(r'(static\s+)?([\w:<>]+)\s*\*?\s*(\w+)\s*\(([^)]*)\)\s*[{;]')


def remove_comments(text: str) -> str:
    # Remove multi-line comments
    text = re.sub(r'/\*.*?\*/', '', text, flags=re.DOTALL)
    # Remove single-line comments
    text = re.sub(r'//.*?\n', '\n', text)
    # Just in case, remove single-line comments without new line for the last line
    text = re.sub(r'//.*', '', text)
    return text

def parse_functions(text: str, struct_name: str) -> list:
    functions = []
    text = text.replace("__stdcall", "")
    for match in re.finditer(rf"{struct_name}\s*\(([^)]*)\)(?:\s*:.+?)?\s*[{{;]", text):
        args = match.group(1)
        functions.append({
            "static": True,
            "name": struct_name,
            "return_type": struct_name,
            "args": parse_function_args(args)
        })
        
    for match in FUNCTION_PATTERN.finditer(text):
        static = match.group(1) is not None
        return_type = match.group(2).strip()
        name = match.group(3).strip()
        args = match.group(4)
        functions.append({
            "static": static,
            "name": name,
            "return_type": return_type,
            "args": parse_function_args(args)
        })
    return functions

def parse_internal_structs(text: str) -> str:
    position = 0
    ret = text
    while position < len(text):
        match = STRUCT_MATCH_PATTERN.search(text, position)
        if not match:
            break
        
        struct_content = get_scope_content(text[match.end():])
        parse_internal_structs(struct_content)
        ret = ret.replace(struct_content, "", 1)
        position = match.end() + len(struct_content) + 1  # Move to the end of the current struct definition
    return ret

def parse_enum(text: str, prefix: str, type: str|None=None) -> dict:
    if prefix:
        prefix += "::"
    ret = {}
    current_value = 1 if type == "unsigned int" else 0
    for line in text.splitlines():
        line = line.strip()
        if not line or line.startswith("//"):
            continue
        if "=" in line:
            name, value = map(str.strip, line.split("=", 1))
            value = value.replace(",", "")
            try:
                value = int(value, 0)
            except ValueError:
                value = ret[value]
            current_value = value
            ret[name] = value
            current_value += 1
        else:
            name = line.split(",")[0].strip()
            ret[name] = current_value
            current_value += 1
    return {f"{prefix}{k}" if not f"{prefix}{k}".startswith("SDLKey::SDLK_") else f"{prefix}{k}".replace("SDLKey::SDLK_", "SDL::KEY_", 1): v for k, v in ret.items()}

def parse(dataMap: dict, path: str):
    with open(path, "r", encoding="utf8") as f:
        content = remove_comments(f.read())
    
    # Find all instances of call_on_internal_chain_event_callbacks
    for match in re.finditer(r"call_on_internal_chain_event_callbacks\(InternalEvents::(\w+)", content):
        if match:
            event_name = match.group(1)
            if event_name != "Identifiers":
                dataMap["chain_internalEvents_set"].add(event_name)
    
    # Parse all enums
    for match in re.finditer(r"enum\s*(class\s*)?(\w+)\s*(?::\s*([\w\s]+?))?\s*{", content):
        scopes = get_parent_scope_names(content[:match.start()])
        type = match.group(3)
        if not path.startswith("src/FTL-Hyperspace/lua/"):
            scopes.append(match.group(2))
        enum_name = "::".join(scopes)
        enum_content = get_scope_content(content[match.end():]).replace("}", "")
        dataMap["enums"].update(parse_enum(enum_content, enum_name, type))
    for match in re.finditer(r"NAMED_ENUM\s*\(\s*\w+\s*,\s*(.+?)\s*\)", content, re.DOTALL):
        scopes = get_parent_scope_names(content[:match.start()])
        enum_name = "::".join(scopes)
        enum_content = match.group(1)
        dataMap["enums"].update(parse_enum(enum_content, enum_name))
    
    # Parse all methods
    position = 0
    while position < len(content):
        match = STRUCT_MATCH_PATTERN.search(content, position)
        if not match:
            break
        
        struct_name = match.group(1)
        struct_content = parse_internal_structs(get_scope_content(content[match.end():]))
        dataMap["main"][struct_name] = parse_functions(struct_content, struct_name)
        position = match.end() + len(struct_content) + 1  # Move to the end of the current struct definition

GLOB_PATTERNS = [
    "src/FTL-Hyperspace/*.h",
    "src/FTL-Hyperspace/*.cpp",
    "src/FTL-Hyperspace/lua/InternalEvents.h",
    "src/FTL-Hyperspace/lua/RenderEvents.h",
    "src/FTL-Hyperspace/lua/modules/graphics.i"
]

GLOB_EXCLUDES = {
    "src/FTL-Hyperspace/FTLGameELF32.h",
    "src/FTL-Hyperspace/FTLGameELF32.cpp",
    "src/FTL-Hyperspace/FTLGameELF64.h",
    "src/FTL-Hyperspace/FTLGameELF64.cpp",
    "src/FTL-Hyperspace/FTLGameWin32.cpp",
}

def main():
    dataMap = {
        "main": {},
        "chain_internalEvents_set": set(),
        "enums": {}
    }
    
    pathSet = set()
    for pattern in GLOB_PATTERNS:
        pathSet |= set(map(lambda x: x.replace("\\", "/"), glob(pattern)))
    
    pathSet -= GLOB_EXCLUDES
    
    for path in pathSet:
        parse(dataMap, path)

    with open("out/hs_base/hs_directory_parse_output.json", "w", encoding="utf8") as f:
        json.dump(dataMap["main"], f, indent=2)
    
    with open("out/hs_base/hs_chain_internalEvents_list.json", "w", encoding="utf8") as f:
        json.dump(list(dataMap["chain_internalEvents_set"]), f, indent=2)
    
    with open("out/hs_base/hs_enums.json", "w", encoding="utf8") as f:
        json.dump(dataMap["enums"], f, indent=2)

if __name__ == "__main__":
    main()