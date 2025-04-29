from parseutility import get_scope_content, sanitize_type
import re
import json
from collections import defaultdict
from enum import Enum
import os

LUA_KEYWORDS = [
    "and", "break", "do", "else", "elseif", "end", "false", "for", "function",
    "if", "in", "local", "nil", "not", "or", "repeat", "return", "then",
    "true", "until", "while"
]

def escape_lua_keyword(name: str) -> str:
    if name in LUA_KEYWORDS:
        return f"{name}_"
    return name

HS_LUA_MODULES = ["Hyperspace", "Graphics", "Defines", "RapidXML"]

C_LUA_PRIMITIVES = {
    # bool
    "bool": "boolean",
    
    # int
    "char" : "integer",
    "signed_char" : "integer",
    "unsigned_char" : "integer",
    "int" : "integer",
    "signed_int": "integer",
    "unsigned_int": "integer",
    "short" : "integer",
    "signed_short" : "integer",
    "unsigned_short" : "integer",
    "long" : "integer",
    "signed_long" : "integer",
    "unsigned_long" : "integer",
    "long_long" : "integer",
    "signed_long_long" : "integer",
    "unsigned_long_long" : "integer",
    
    "int8_t" : "integer",
    
    # float
    "float": "number",
    "double": "number",
    "long_duouble" : "number",
    
    # string
    "string": "string",
}

C_POINTER_TYPES = ["unique_ptr"]

class FuncType(Enum):
    METHOD = 1,
    STATIC = 2,
    CONSTRUCTOR = 3

def match_args(args1: list[str], args2: list[str]) -> bool:
    if len(args1) != len(args2):
        return False
    
    for i in range(len(args1)):
        if sanitize_type(args1[i]) != sanitize_type(args2[i]):
            return False
    
    return True

def make_str_list_unique(strings: list[str]) -> list[str]:
    seen = {}
    result = []
    for s in strings:        
        if s not in seen:
            seen[s] = 0
            result.append(s)
        else:
            seen[s] += 1
            unique_s = f"{s}{seen[s]}"
            result.append(unique_s)
    return result

def assemble_function_detail(name: str, className: str, funcType: FuncType, retType: str, doc: str, args: list) -> str:
    ret = "```lua\n"
    if funcType == FuncType.METHOD:
        ret += "method "
    elif funcType == FuncType.STATIC:
        ret += "function "
    elif funcType == FuncType.CONSTRUCTOR:
        ret += "constructor "
    
    ret += className + (":" if funcType == FuncType.METHOD else ".") + name + "("
    firstArg = True
    
    for arg in args:
        if not firstArg:
            ret += ", "
        ret += f"{arg['name']}: {arg['type']}"
        firstArg = False
        
    ret += ")\n  -> "
    if retType:
        ret += retType
    else:
        ret += "unknown"
    ret += "\n```"
    
    if doc:
        ret += "\n---\n" + doc
    
    return ret

class FunctionInfo:
    def __init__(self, name: str, returnType: str, args: list[str]):
        self.name = name
        self.returnType = returnType
        self.args = args
        self.overloadNames = []
        self.HSData = None
        self.HSDataIsLoaded = False
        self.wikiData = None
        self.wikiDataIsLoaded = False
    
    def LoadHSData(self, HSData: dict):        
        self.HSData = self.HSData or HSData
        for overloadName in self.overloadNames:
            g_functionDataMap[overloadName].LoadHSData(HSData)
        self.HSDataIsLoaded = True
    
    def LoadWikiData(self, wikiData: dict):
        self.wikiData = self.wikiData or wikiData
        for overloadName in self.overloadNames:
            g_functionDataMap[overloadName].LoadWikiData(wikiData)
        self.wikiDataIsLoaded = True
        
    def GetRetType(self) -> str:
        assert self.HSDataIsLoaded or self.wikiDataIsLoaded, "FunctionInfo: HSData or wikiData not loaded"
        
        if self.returnType:
            return self.returnType
        
        if self.overloadNames:
            for name in self.overloadNames:
                ret = g_functionDataMap[name].GetRetType()
                if ret:
                    return ret
        
        if self.HSData:
            for data in self.HSData:
                if data["return_type"]:
                    return data["return_type"]
        
        if self.wikiData:
            for data in self.wikiData:
                if data["return_type"]:
                    return data["return_type"]
        
        return "unknown"
    
    def _getArgs(self, args: list[str]) -> list[dict[str, str]] | None:
        if self.HSData:
            for data in self.HSData:
                if match_args(args, [i["type"] for i in data["args"]]):
                    return data["args"]
        
        if self.wikiData:
            for data in self.wikiData:
                if match_args(args, [i["type"] for i in data["args"]]):
                    return data["args"]
        
        # print(f"FunctionInfo: {self.name} args not found")
        return None
    
    def GetArgs(self, isStatic: bool) -> list[list[dict[str, str]]]:
        assert self.HSDataIsLoaded or self.wikiDataIsLoaded, "FunctionInfo: HSData or wikiData not loaded"
                
        if not self.overloadNames:
            thisArgs = self.args if isStatic else self.args[1:]
            ret = self._getArgs(thisArgs)
            if ret is not None:
                return [ret]
            else:
                return [[{"name": "unknown", "type": type} for type in thisArgs]]
        else:
            ret = []
            for name in self.overloadNames:
                thisArgs = g_functionDataMap[name].args if isStatic else g_functionDataMap[name].args[1:]
                args = self._getArgs(thisArgs)
                if args is not None:
                    ret.append(args)
                else:
                    ret.append([{"name": "unknown", "type": type} for type in thisArgs])
            return ret
        
    def _getWikiDoc(self, args: list[str]) -> str | None:
        if self.wikiData:
            for data in self.wikiData:
                if match_args(args, [i["type"] for i in data["args"]]):
                    return data["documentation"]
        
        return None
    
    def GetDocumentation(self, className: str, cleanName: str, funcType: FuncType) -> str:
        assert self.HSDataIsLoaded or self.wikiDataIsLoaded, "FunctionInfo: HSData or wikiData not loaded"

        if not self.overloadNames:
            thisArgs = self.args[1:] if funcType == FuncType.METHOD else self.args
            args = self._getArgs(thisArgs)
            if args is not None:
                return assemble_function_detail(cleanName, className, funcType, self.GetRetType(), self._getWikiDoc(thisArgs), args)
            else:
                return assemble_function_detail(cleanName, className, funcType, self.GetRetType(), None, [{"name": "unknown", "type": type} for type in thisArgs])
        else:
            ret = ""
            for name in self.overloadNames:
                thisArgs = g_functionDataMap[name].args[1:] if funcType == FuncType.METHOD else g_functionDataMap[name].args
                args = self._getArgs(thisArgs)
                if args is not None:
                    ret += assemble_function_detail(cleanName, className, funcType, self.GetRetType(), self._getWikiDoc(thisArgs), args) + "  \n"
                else:
                    ret += assemble_function_detail(cleanName, className, funcType, self.GetRetType(), None, [{"name": "unknown", "type": type} for type in thisArgs]) + "  \n"
            return ret

g_functionDataMap: dict[str, FunctionInfo] = {}

g_enum_parse_requests = set()

def parse_LUA_wrap(classMap: dict, enumMap: dict[str, int], lua_wrap_path: str, HSData_path: str, wikiData_path: str = None) -> str:    
    def get_lua_type(type: str) -> str:
        type = type.strip()
        if type in HS_LUA_MODULES:
            return type
    
        type = type.replace("unsigned ", "").replace(" ", "").replace("std::", "").replace("*", "").replace("&", "")
        
        # Handle arrays like int[10]
        array_match = re.match(r'(.+)\[(\d+)\]', type)
        if array_match:
            inner_type = array_match.group(1)
            size = array_match.group(2)
            # Process the inner type recursively
            processed_inner_type = get_lua_type(inner_type)
            return f"{processed_inner_type}[] length={size}"

        # Handle template types like vector<int>
        template_match = re.match(r'(\w+)<(.+)>', type)
        if template_match:
            outer_type = template_match.group(1)
            inner_type = template_match.group(2)
            if outer_type in C_POINTER_TYPES:
                return get_lua_type(inner_type)
            
            # Process the inner type recursively
            template_rematch = re.match(r'(\w+)<(.+)>', inner_type)
            if template_rematch:
                processed_inner_type = get_lua_type(inner_type)
            else:
                types = inner_type.split(",")
                if outer_type in ["map", "unordered_map", "multimap", "unordered_multimap"]:
                    types = types[:2] # Only take the first two types for map types because the latter ones are a hash function or equal function, which we don't need
                processed_inner_type = ", ".join([get_lua_type(inner) for inner in types])
            # Process the outer type and combine
            return f"{get_lua_type(outer_type)}<{processed_inner_type}>"
        
        ret = C_LUA_PRIMITIVES.get(type)
        if ret:
            return ret
        
        ret = classMap.get(type)
        if ret:
            return ret
        
        nmspaces = type.split("::")
        bottom = classMap.get(nmspaces[-1])
        if bottom:
            return bottom
        
        top = classMap.get(nmspaces[0])
        if top:
            return f"{top}." + ".".join(nmspaces[1:])
        
        return type
        
    
    def parse_constructor(moduleName: str, className: str) -> tuple[str, int]:
        constructor = g_functionDataMap.get(f"_wrap_new_{className}", None)
        if constructor is None:
            return "", 0
        
        HSData = None
        if HSInfo:
            HSData = [x for x in HSInfo if x["name"] == className]
        constructor.LoadHSData(HSData)
        
        wikiData = None
        if wikiInfo:
            wikiData = [x for x in wikiInfo["methods"] if x["name"] == className]
        constructor.LoadWikiData(wikiData)
                
        ret = ""
        count = 0
        for overload in constructor.GetArgs(True):
            documentation = constructor._getWikiDoc([data["type"] for data in overload])
            if documentation:
                ret += "--- " + documentation.replace('\n', '<br>') + "\n"
            
            params_type = [get_lua_type(data["type"]) for data in overload]
            params_name = [escape_lua_keyword(data["name"]) for data in overload]
            
            for i in range(len(params_name)):
                defaultValue_match = re.match(r"(.+?)=(.+)", params_name[i])
                if defaultValue_match:
                    params_name[i] = defaultValue_match.group(1).strip()
                    params_type[i] += " = " + defaultValue_match.group(2).strip()
            
            params_name = make_str_list_unique(params_name)
            for i, name in enumerate(params_name):
                isOptional = "=" in params_type[i]
                ret += f"---@param {name + ('?' if isOptional else '')} {params_type[i]}\n"
            
            ret += f"---@return {get_lua_type(className)}\n"
            
            ret += f"function {get_lua_type(moduleName)}." + className + "(" + ", ".join(params_name) + ") end\n\n"
            count += 1
        return ret, count

        
    def parse_methods(className: str, HSInfo: dict, wikiInfo: dict, content: str, funcType: FuncType) -> tuple[str, int]:
        assert funcType == FuncType.METHOD or funcType == FuncType.STATIC, "parse_methods: funcType must be METHOD or STATIC"
        ret = ""
        count = 0
        for m in re.finditer(r'{\s*"(\w+)"\s*,\s*(\w+)\s*}', content):
            methodName = m.group(1)
            func = g_functionDataMap[m.group(2)]
            
            HSData = None
            if HSInfo:
                HSData = [x for x in HSInfo if x["name"] == methodName]
            func.LoadHSData(HSData)
            
            wikiData = None
            if wikiInfo:
                wikiData = [x for x in wikiInfo["methods"] if x["name"] == methodName]
            func.LoadWikiData(wikiData)
            
            for overload in func.GetArgs(funcType == FuncType.STATIC):
                documentation = func._getWikiDoc([data["type"] for data in overload])
                if documentation:
                    ret += "--- " + documentation.replace('\n', '<br>') + "\n"
                
                params_type = [get_lua_type(data["type"]) for data in overload]
                params_name = [escape_lua_keyword(data["name"]) for data in overload]
                
                for i in range(len(params_name)):
                    defaultValue_match = re.match(r"(.+?)=(.+)", params_name[i])
                    if defaultValue_match:
                        params_name[i] = defaultValue_match.group(1).strip()
                        params_type[i] += " = " + defaultValue_match.group(2).strip()
                
                params_name = make_str_list_unique(params_name)
                for i, name in enumerate(params_name):
                    isOptional = "=" in params_type[i]
                    ret += f"---@param {name + ('?' if isOptional else '')} {params_type[i]}\n"
                
                return_type = func.GetRetType()
                if return_type and return_type != "void":
                    ret += f"---@return {get_lua_type(return_type)}\n"
                
                ret += f"function {get_lua_type(className)}" + (":" if funcType == FuncType.METHOD else ".") + methodName + "(" + ", ".join(params_name) + ") end\n\n"
                count += 1

        return ret, count
    
    def parse_fields(className: str, wikiInfo: dict, content: str, isProperty=False) -> tuple[str, int]:
        ret = ""
        count = 0
        for m in re.finditer(r'{\s*"(\w+)"\s*,\s*(\w+)\s*,\s*(\w+)\s*}', content):
            fieldName = m.group(1)
            typeName = ""
            documentation = ""
            
            # Check wiki data
            if wikiInfo:
                matchedList = [x for x in wikiInfo["fields"] if x["name"] == fieldName]
                if matchedList:
                    typeName = matchedList[0]["type"]
                    documentation = matchedList[0]["documentation"]
            
            getter = g_functionDataMap.get(m.group(2), None)
            if getter:
                if getter.returnType:
                    typeName = getter.returnType
            
            immutable = m.group(3) == "SWIG_Lua_set_immutable"
            
            ret += f"---@field {fieldName} {get_lua_type(typeName)}" + (" (Read-only) " if immutable else " ") + documentation.replace("\n", "<br>") + "\n"
            count += 1
        return ret, count
    
    def parse_constants(className: str, wikiInfo: dict, content: str) -> tuple[str, int]:
        ret = ""
        count = 0
        for m in re.finditer(r'{\s*SWIG_LUA_CONSTTAB_INT\(\s*"(\w+)"\s*,\s*([\w:]+)\s*\)\s*}', content):
            constantName = m.group(1)
            typeName = m.group(2)
            g_enum_parse_requests.add(typeName)
            # if re.search(r"(\w+)::\w+", typeName):
            #     typeName = m.group(1)
            
            # documentation = ""
            
            # # Check wiki data
            # if wikiInfo:
            #     matchedList = [x for x in wikiInfo["constants"] if x["name"] == constantName]
            #     if matchedList:
            #         typeName = matchedList[0]["type"]
            #         documentation = matchedList[0]["documentation"]
            
            # result[className].append(
            #     {
            #         "label": constantName,
            #         "kind": 13,
            #         "detail": typeName,
            #         "documentation": documentation,
            #         "data": {"type": typeName}
            #     }
            # )
            
            value = enumMap.get(typeName, None)
            if value is None:
                print(f"parse_constants: {typeName} not found in enumMap")
                continue
            ret += f"    {constantName} = {value},\n"
            count += 1
            
        return ret, count
    
    result = ""
    
    HSData = {}
    if HSData_path:
        with open(HSData_path, 'r', encoding='utf8') as f:
            HSData = json.load(f)

    wikiData = {}
    if wikiData_path:
        with open(wikiData_path, 'r', encoding='utf8') as f:
            wikiData = json.load(f)
    
    with open(lua_wrap_path, 'r', encoding='utf8') as f:
        lua_code = f.read()

    moduleName = re.search(r'#define\s+SWIG_name\s+"(\w+)"', lua_code).group(1)
    print(moduleName)

    RET_TYPE_PATTERN = re.compile(r'  (.+?) \*?result(?: = 0 )?;')
    ARG_PATTERN = re.compile(r'  (.+?) \*?arg(\d+) (?:= (?:\(.+?\) )?0 )?;')
    FUNCTION_OVERLOAD_NAME_PATTERN = re.compile(r'(\w+)__SWIG_\d+')
    
    overloadNamesBuffer = defaultdict(list)
    
    # Parse functions
    for m in re.finditer(r'static int (\w+?)\(lua_State\* L\) \{', lua_code, re.DOTALL):
        functionName = m.group(1)
        content = get_scope_content(lua_code[m.end():])
        return_type = ""
        return_type_match = re.search(RET_TYPE_PATTERN, content)
        if return_type_match:
            return_type = return_type_match.group(1)
        args = []
        for arg_match in re.finditer(ARG_PATTERN, content):
            arg_type = arg_match.group(1)
            args.append(arg_type)

        funcInfo = FunctionInfo(functionName, return_type, args)
        
        overload_match = re.search(FUNCTION_OVERLOAD_NAME_PATTERN, functionName)
        if overload_match:
            overloadNamesBuffer[overload_match.group(1)].append(functionName)
        
        g_functionDataMap[functionName] = funcInfo
    
    for name, overloads in overloadNamesBuffer.items():
        g_functionDataMap[name].overloadNames = overloads
    
    
    # Parse global variables
    globalHSInfo = HSData.get(moduleName, None)
    globalWikiInfo = wikiData.get(moduleName, None)
    
    result += f"---@class {moduleName}\n"
    
    globalFields = re.search(r'static\s+swig_lua_attribute\s+swig_SwigModule_attributes\[\]\s*=\s*\{(.*?)\};', lua_code, re.DOTALL)
    if globalFields:
        p, _ = parse_fields(moduleName, globalWikiInfo, globalFields.group(1), True)
        result += p
        
    result += f"{moduleName} = {{}}\n\n"

    globalMethods = re.search(r'static\s+swig_lua_method\s+swig_SwigModule_methods\[\]\s*=\s*\{(.*?)\};', lua_code, re.DOTALL)
    if globalMethods:
        p, _ = parse_methods(moduleName, globalHSInfo, globalWikiInfo, globalMethods.group(1), FuncType.STATIC)
        result += p
    
    # globalConstants = re.search(r'static\s+swig_lua_const_info\s+swig_SwigModule_constants\[\]\s*=\s*\{(.*?)\};', lua_code, re.DOTALL)
    # if globalConstants:
    #     result += parse_constants(moduleName, globalWikiInfo, globalConstants.group(1))
    
    # Parse classes
    for m in re.finditer(r'#define SWIGTYPE_p_(\w+)', lua_code):
        className = m.group(1).split("__")[-1]
        HSInfo = HSData.get(className, None)
        wikiInfo = wikiData.get(className, None)
        
        parents = []
        parents_m = re.search(rf'static\s*const\s*char\s+\*swig_{className}_base_names\[\]\s*=\s*\{{(.*?)\}};', lua_code, re.DOTALL)
        if parents_m:
            for parent in re.finditer(r'"(\w+)\s*\*?\s*"\s*,', parents_m.group(1)):
                parents.append(get_lua_type(parent.group(1)))
        
        part_fields = ""
        count_fields = 0     
        fields_m = re.search(rf'static\s+swig_lua_attribute\s+swig_{className}_attributes\[\]\s*=\s*\{{(.*?)\}};', lua_code, re.DOTALL)
        if fields_m:
            part_fields, count_fields = parse_fields(className, wikiInfo, fields_m.group(1))
        
        part_constructor, count_constructor = parse_constructor(moduleName, className)

        part_methods = ""
        count_methods = 0
        methods_m = re.search(rf'static\s+swig_lua_method\s+swig_{className}_methods\[\]\s*=\s*\{{(.*?)\}};', lua_code, re.DOTALL)
        if methods_m:
            p, c = parse_methods(className, HSInfo, wikiInfo, methods_m.group(1), FuncType.METHOD)
            part_methods += p
            count_methods += c
        
        staticMethods_m = re.search(rf'static\s+swig_lua_method\s+swig_{className}_Sf_SwigStatic_methods\[\]\s*=\s*\{{(.*?)\}};', lua_code, re.DOTALL)
        if staticMethods_m:
            p, c = parse_methods(className, HSInfo, wikiInfo, staticMethods_m.group(1), FuncType.STATIC)
            part_methods += p
            count_methods += c
        
        part_consts = ""
        count_consts = 0
        constants_m = re.search(rf'static\s+swig_lua_const_info\s+swig_{className}_Sf_SwigStatic_constants\[\]\s*=\s*\{{(.*?)\}};', lua_code, re.DOTALL)
        if constants_m:
            part_consts, count_consts = parse_constants(className, wikiInfo, constants_m.group(1))
        
        should_be_enum = count_constructor < 2 and count_methods == 0 and count_fields == 0 and count_consts > 0
        if should_be_enum:
            result += f"---@enum {get_lua_type(className)}\n{get_lua_type(className)} = {{\n{part_consts}}}\n\n"
        else:
            result += f"---@class {get_lua_type(className)}" + ((": " + ", ".join(parents)) if parents else "") + f"\n{part_fields}{get_lua_type(className)} = {{" + (f"\n{part_consts}" if count_consts > 0 else "") + f"}}\n\n{part_constructor}{part_methods}"
    
    return result
    
def build_class_map(result: dict, path: str):    
    with open(path, 'r', encoding='utf8') as f:
        lua_code = f.read()
    
    moduleName = re.search(r'#define\s+SWIG_name\s+"(\w+)"', lua_code).group(1)
    for m in re.finditer(r'#define SWIGTYPE_p_(\w+)', lua_code):
        className = m.group(1).split("__")[-1]
        
        result[className] = f"{moduleName}.{className}"

DATA_LIST = [
    {
        "name": "Hyperspace",
        "luaWrap": "src/lua_wrap/hyperspaceLUA_wrap.cxx",
        "wikiData": "out/wiki/wiki_Hyperspace_parse_output.json",
    },
    {
        "name": "Graphics",
        "luaWrap": "src/lua_wrap/graphicsLUA_wrap.cxx",
        "wikiData": "out/wiki/wiki_Graphics_parse_output.json",
    },
    {
        "name": "Defines",
        "luaWrap": "src/lua_wrap/definesLUA_wrap.cxx",
        "wikiData": None,
    },
    {
        "name": "RapidXML",
        "luaWrap": "src/lua_wrap/rapidxmlLUA_wrap.cxx",
        "wikiData": None,
    },
]

HSDATA_PATH = "out/hs_base/hs_directory_parse_output.json"

OUTPUT_PATH = "../library/generated/hs.lua"

ENUM_PARSE_REQUESTS_OUTPUT_PATH = "out/enum_parse_requests.json"
ENUM_DATA_PATH = "out/enum_parse_output.json"

if __name__ == "__main__":
    classMap = {}
    for data in DATA_LIST:
        build_class_map(classMap, data["luaWrap"])
    
    enumMap = {}
    with open(ENUM_DATA_PATH, 'r', encoding='utf8') as f:
        enumMap = json.load(f)
    
    result = "---@meta\n"
    for data in DATA_LIST:
        result += parse_LUA_wrap(classMap, enumMap, data["luaWrap"], HSDATA_PATH, data["wikiData"])
        

    os.makedirs(os.path.dirname(OUTPUT_PATH), exist_ok=True)
    
    with open(OUTPUT_PATH, 'w', encoding='utf8') as f:
        f.write(result)
    
    with open(ENUM_PARSE_REQUESTS_OUTPUT_PATH, 'w', encoding='utf8') as f:
        json.dump(sorted(g_enum_parse_requests), f, indent=2)