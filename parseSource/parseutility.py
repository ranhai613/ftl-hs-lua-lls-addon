import re

def sanitize_type(type_str: str) -> str:
    return type_str.replace("std::", "").replace("const ", "").replace("*", "").replace("&", "").replace(" ", "")

def get_scope_content(text: str, current_scope_lvl=1) -> str:
    for i, ch in enumerate(text):
        if ch == '{':
            current_scope_lvl += 1
        elif ch == '}':
            current_scope_lvl -= 1
            if current_scope_lvl == 0:
                return text[:i+1]

def get_parent_scope_names(text: str) -> list[str]:
    parent_names = []
    scope_level = 0
    string_buffer = ""
    for i in range(len(text), 0, -1):
        ch = text[i-1]
        if ch == '}':
            scope_level += 1
            continue
        elif ch == '{':
            scope_level -= 1
            continue
        if scope_level < 0:
            string_buffer = ch + string_buffer
            match = re.match(r"(?:struct|class|namespace)\s+(\w+)\s*(?::\w+\s*)?", string_buffer)
            if match:
                parent_names.append(match.group(1))
                scope_level = 0
                string_buffer = ""
    return parent_names[::-1]

def parse_function_args(args: str) -> list[dict[str, str]]:
    ret = []
    if args == "":
        return ret
    
    args = args.replace("const ", "").replace("*", "").replace("&", "").replace(" = ", "=")
    SEPARATOR = re.compile(r"\s+")
    argsList = list(map(str.strip, args.split(",")))
    for arg in argsList:
        argInfo = SEPARATOR.split(arg)
        if len(argInfo) < 2:
            ret.append({"name": "unknown", "type": arg})
        else:
            ret.append({"name": argInfo[1], "type": argInfo[0]})
    return ret
