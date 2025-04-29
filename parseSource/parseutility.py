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
