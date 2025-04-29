from parseutility import parse_function_args, get_scope_content
import re
import json
from glob import glob
from pprint import pp

"""
cd src
git clone https://github.com/FTL-Hyperspace/FTL-Hyperspace.git
"""

STRUCT_MATCH_PATTERN = re.compile(r'(?:struct|class)\s+(?:LIBZHL_INTERFACE\s+)?(\w+)(?:\s*:\s*\w+)?\s*{')
FUNCTION_PATTERN = re.compile(r'(static\s+)?([\w:<>]+)\s*\*?\s*(\w+)\s*\(([^)]*)\)\s*[{;]')

g_scope_names_stack = []

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
        
        g_scope_names_stack.append(match.group(1))
        struct_content = get_scope_content(text[match.end():])
        parse_internal_structs(struct_content)
        ret = ret.replace(struct_content, "", 1)
        position = match.end() + len(struct_content) + 1  # Move to the end of the current struct definition
    return ret

def parse(dataMap: dict, path: str):
    with open(path, "r", encoding="utf8") as f:
        content = f.read()
    
    position = 0
    while position < len(content):
        match = STRUCT_MATCH_PATTERN.search(content, position)
        if not match:
            break
        
        struct_name = match.group(1)
        g_scope_names_stack.append(struct_name)
        struct_content = parse_internal_structs(get_scope_content(content[match.end():]))
        dataMap[struct_name] = parse_functions(struct_content, struct_name)
        g_scope_names_stack.pop()
        position = match.end() + len(struct_content) + 1  # Move to the end of the current struct definition

GLOB_PATTERNS = [
    "src/FTL-Hyperspace/*.h",
    "src/FTL-Hyperspace/*.cpp",
]

GLOB_EXCLUDES = [
    "src/FTL-Hyperspace/FTLGameELF32.h",
    "src/FTL-Hyperspace/FTLGameELF32.cpp",
    "src/FTL-Hyperspace/FTLGameELF64.h",
    "src/FTL-Hyperspace/FTLGameELF64.cpp",
    "src/FTL-Hyperspace/FTLGameWin32.cpp",
]

if __name__ == "__main__":
    dataMap = {}

    pathSet = set()
    for pattern in GLOB_PATTERNS:
        pathSet |= set(map(lambda x: x.replace("\\", "/"), glob(pattern)))
    
    pathSet -= set(GLOB_EXCLUDES)
    
    for path in pathSet:
        parse(dataMap, path)

    with open("out/hs_base/hs_directory_parse_output.json", "w", encoding="utf8") as f:
        json.dump(dataMap, f, indent=2)