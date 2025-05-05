from parseutility import get_scope_content, sanitize_type
from eventhookbuilder import EventHookBuilder
from additionalEnumTable import AdditionalEnum, AdditionalEnumBuilder

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
    "unsigned_char" : "uint",
    "int" : "integer",
    "signed_int": "integer",
    "unsigned_int": "uint",
    "short" : "integer",
    "signed_short" : "integer",
    "unsigned_short" : "uint",
    "long" : "integer",
    "signed_long" : "integer",
    "unsigned_long" : "uint",
    "long_long" : "integer",
    "signed_long_long" : "integer",
    "unsigned_long_long" : "uint",
    
    "int8_t" : "integer",
    "size_t": "uint",
    
    # float
    "float": "number",
    "double": "number",
    "long_duouble" : "number",
    
    # string
    "string": "string",
}

C_POINTER_TYPES = ["unique_ptr", "SwigValueWrapper"]
C_CONTAINER_TYPES = ["pair", "vector", "array", "unordered_set", "map", "unordered_map", "unordered_multimap"]
C_CONTAINER_TYPES_TWO = ["pair", "map", "unordered_map", "unordered_multimap"]

# taken from SWIG_LUACODE in LUA_wrap files
ADDITIONAL_ENUMS = [
    AdditionalEnum('Hyperspace.ActivatedPowerRequirements.Type', 'Hyperspace', 'PowerType_'),
    AdditionalEnum('Hyperspace.CrewExtraCondition', 'Hyperspace', 'CrewExtraCondition_'),
    AdditionalEnum('Hyperspace.CrewStat', 'Hyperspace', 'CrewStat_'),
    AdditionalEnum('Hyperspace.StatBoostDefinition.BoostType', 'Hyperspace.StatBoostDefinition', 'BoostType_'),
    AdditionalEnum('Hyperspace.StatBoostDefinition.BoostSource', 'Hyperspace.StatBoostDefinition', 'BoostSource_'),
    AdditionalEnum('Hyperspace.StatBoostDefinition.ShipTarget', 'Hyperspace.StatBoostDefinition', 'ShipTarget_'),
    AdditionalEnum('Hyperspace.StatBoostDefinition.SystemRoomTarget', 'Hyperspace.StatBoostDefinition', 'SystemRoomTarget_'),
    AdditionalEnum('Hyperspace.StatBoostDefinition.CrewTarget', 'Hyperspace.StatBoostDefinition', 'CrewTarget_'),
    AdditionalEnum('Hyperspace.StatBoostDefinition.DroneTarget', 'Hyperspace.StatBoostDefinition', 'DroneTarget_'),
]

MODULE_NAME_PATTERN = re.compile(r'#define\s+SWIG_name\s+"(\w+)"')
# CLASS_NAME_PATTERN = re.compile(r'#define SWIGTYPE_p_(\w+)')
CLASS_NAME_PATTERN = re.compile(r'static swig_lua_namespace swig_(\w+?)_(?:Sf_)?SwigStatic = {\s*"(\w+)"\s*,')

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
        
    def GetWikiDoc(self, args: list[str]) -> str | None:
        if self.wikiData:
            for data in self.wikiData:
                if match_args(args, [i["type"] for i in data["args"]]):
                    return data["documentation"]
        
        return None
    
g_functionDataMap: dict[str, FunctionInfo] = {}

g_enum_parse_requests = set()

def get_lua_type(type: str, isClassDef=False, isFuncRet=False) -> str:
    # String = string|number; this union type is needed for the implicit conversion between string and number in lua
    assert len(g_classMap) > 0, "get_lua_type: g_classMap is empty"
    type = type.strip()
    if type in HS_LUA_MODULES:
        return type

    type = type.replace("unsigned ", "u").replace("signed ", "").replace(" ", "").replace("std::", "").replace("&", "")
    if type == "char*":
        return "string" if isFuncRet else "String"
    
    type = type.replace("*", "")
    
    # Handle arrays like int[10]
    array_match = re.match(r'(.+)\[(\d+)\]', type)
    if array_match:
        inner_type = array_match.group(1)
        size = array_match.group(2)
        # Process the inner type recursively
        processed_inner_type = get_lua_type(inner_type)
        return f"{processed_inner_type}[] length={size}"

    # Handle template types like vector<int>
    TEMPLATE_PATTERN = re.compile(r'([\w:]+)<(.+)>')
    template_match = re.match(TEMPLATE_PATTERN, type)
    if template_match:
        outer_type = template_match.group(1)
        inner_type = template_match.group(2)
        if outer_type in C_POINTER_TYPES:
            return get_lua_type(inner_type)
        
        # Process the inner type recursively
        template_rematch = re.match(TEMPLATE_PATTERN, inner_type)
        if template_rematch:
            processed_inner_type = get_lua_type(inner_type)
        else:
            types = inner_type.split(",")
            if outer_type in C_CONTAINER_TYPES_TWO:
                types = types[:2] # Only take the first two types for map types because the latter ones are a hash function or equal function, which we don't need
            processed_inner_type = ", ".join([get_lua_type(inner) for inner in types])
        # Process the outer type and combine
        return f"{get_lua_type(outer_type)}<{processed_inner_type}>"
    
    ret = C_LUA_PRIMITIVES.get(type)
    if ret and not isClassDef:
        if ret == "string" and not isFuncRet:
            return "String"
        return ret
    
    ret = g_classMap.get(type)
    if ret:
        return ret
    
    nmspaces = type.split("::")
    bottom = g_classMap.get(nmspaces[-1])
    if bottom:
        return bottom
    
    top = g_classMap.get(nmspaces[0])
    if top:
        return f"{top}." + ".".join(nmspaces[1:])
    
    return type.replace("::", ".")

def format_container_type(className: str) -> str|None:
    if not any([className.startswith(f"{x}_") for x in C_CONTAINER_TYPES]):
        return None
    
    func = g_functionDataMap.get(f"_wrap_{className}_size") or g_functionDataMap.get(f"_wrap_{className}_first_get")
    assert func, f"format_container_type: _wrap_{className} not found"
    
    return get_lua_type(func.args[0])

def parse_LUA_wrap(eventHookBuilder: EventHookBuilder, additionalEnumBuilder: AdditionalEnumBuilder, enumMap: dict[str, int], lua_wrap_path: str, HSData_path: str, wikiData_path: str = None) -> str:    
    def parse_constructor(moduleName: str, className: str, fixedRet=None) -> tuple[str, int]:
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
            documentation = constructor.GetWikiDoc([data["type"] for data in overload])
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
            
            if fixedRet is None:
                ret += f"---@return {get_lua_type(className)}\n"
            else:
                ret += f"---@return {fixedRet}\n"
            
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
                documentation = func.GetWikiDoc([data["type"] for data in overload])
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
                    ret += f"---@return {get_lua_type(return_type, isFuncRet=True)}\n"
                
                ret += f"function {get_lua_type(className)}" + (":" if funcType == FuncType.METHOD else ".") + methodName + "(" + ", ".join(params_name) + ") end\n\n"
                count += 1

        return ret, count
    
    def parse_fields(className: str, wikiInfo: dict, content: str) -> tuple[str, int]:
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
            
            documentation = ""
            
            # Check wiki data
            if wikiInfo:
                matchedList = [x for x in wikiInfo["constants"] if x["name"] == constantName]
                if matchedList:
                    documentation = matchedList[0]["documentation"]
                        
            value = enumMap.get(typeName, None)
            if value is None:
                print(f"parse_constants: {typeName} not found in enumMap")
                continue
            
            if get_lua_type(className, True) == "Defines.InternalEvents":
                documentation = eventHookBuilder.process("InternalEvents", constantName, value)
            elif get_lua_type(className, True) == "Defines.RenderEvents":
                documentation = eventHookBuilder.process("RenderEvents", constantName, value)
            
            ret += f"    {constantName} = {value}," + (" -- " + documentation.replace("\n", "<br>") if documentation else "") + "\n"
            count += 1

            additionalEnumBuilder.process(get_lua_type(className), constantName, value)
        
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

    moduleName = re.search(MODULE_NAME_PATTERN, lua_code).group(1)
    print(moduleName)

    RET_TYPE_PATTERN = re.compile(r'  (.+?) (\*?)result(?: = 0 )?;')
    ARG_PATTERN = re.compile(r'  (.+?) (\*?)arg\d+ (?:= (?:\(.+?\) )?0 )?;')
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
            if return_type == "char" and return_type_match.group(2) == "*":
                return_type = "string"
        args = []
        for arg_match in re.finditer(ARG_PATTERN, content):
            arg_type = arg_match.group(1)
            if arg_type == "char" and arg_match.group(2) == "*":
                arg_type = "string"
            args.append(arg_type)
        
        overload_match = re.search(FUNCTION_OVERLOAD_NAME_PATTERN, functionName)
        if overload_match:
            overloadNamesBuffer[overload_match.group(1)].append(functionName)
        
        g_functionDataMap[functionName] = FunctionInfo(functionName, return_type, args)
    
    for name, overloads in overloadNamesBuffer.items():
        g_functionDataMap[name].overloadNames = overloads
    
    # Parse "table" member injection
    additionalTableMembersMap = defaultdict(list)
    for match in re.finditer(r'script_add_native_member\(L, "(\w+)", "(\w+)", (\w+)\);', lua_code):
        className = match.group(1)
        memberName = match.group(2)
        funcName = match.group(3)
        assert funcName == "hs_Userdata_table_get"
        additionalTableMembersMap[className].append(memberName)
    
    # Parse global variables
    globalHSInfo = HSData.get(moduleName, None)
    globalWikiInfo = wikiData.get(moduleName, None)
    
    globalFields = re.search(r'static\s+swig_lua_attribute\s+swig_SwigModule_attributes\[\]\s*=\s*\{(.*?)\};', lua_code, re.DOTALL)
    if globalFields:
        part_module_fields, _ = parse_fields(moduleName, globalWikiInfo, globalFields.group(1))
    
    globalStaticFields = re.search(r'static\s+swig_lua_attribute\s+swig_SwigModule_Sf_SwigStatic_attributes\[\]\s*=\s*\{(.*?)\};', lua_code, re.DOTALL)
    if globalStaticFields:
        part_module_fields += parse_fields(moduleName, globalWikiInfo, globalStaticFields.group(1))[0]
    
    appended_fields = g_fieldsAppendMap.get(moduleName, None)
    if appended_fields:
        for content in appended_fields:
            part_module_fields += f"---@field {content}\n"
    
    globalMethods = re.search(r'static\s+swig_lua_method\s+swig_SwigModule_methods\[\]\s*=\s*\{(.*?)\};', lua_code, re.DOTALL)
    if globalMethods:
        part_module_methods, _ = parse_methods(moduleName, globalHSInfo, globalWikiInfo, globalMethods.group(1), FuncType.STATIC)
    
    globalConstants = re.search(r'static\s+swig_lua_const_info\s+swig_SwigModule_constants\[\]\s*=\s*\{(.*?)\};', lua_code, re.DOTALL)
    if globalConstants:
        part_module_consts, _ = parse_constants(moduleName, globalWikiInfo, globalConstants.group(1))
    
    additionalTableMembers = additionalTableMembersMap.get(moduleName, None)
    if additionalTableMembers:
        for memberName in additionalTableMembers:
            part_module_consts += f"    {memberName} = {{}},\n"
    
    result += f"---@class {moduleName}\n{part_module_fields}{moduleName} = {{" + (f"\n{part_module_consts}" if part_module_consts else "") + f"}}\n\n{part_module_methods}"
    
    # Parse classes
    for m in re.finditer(CLASS_NAME_PATTERN, lua_code):
        className = m.group(1)
        full_name = get_lua_type(className, True)
        container_type = format_container_type(className)
        if container_type:
            part_constructor, _ = parse_constructor(moduleName, className, container_type)
            result += part_constructor
            continue
        
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
        
        static_fields_m = re.search(rf'static\s+swig_lua_attribute\s+swig_{className}_Sf_SwigStatic_attributes\[\]\s*=\s*\{{(.*?)\}};', lua_code, re.DOTALL)
        if static_fields_m:
            p, c = parse_fields(className, wikiInfo, static_fields_m.group(1))
            part_fields += p
            count_fields += c
        
        appended_fields = g_fieldsAppendMap.get(full_name, None)
        if appended_fields:
            for content in appended_fields:
                part_fields += f"---@field {content}\n"
                count_fields += 1
        
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
        
        additionalTableMembers = additionalTableMembersMap.get(className, None)
        if additionalTableMembers:
            for memberName in additionalTableMembers:
                part_consts += f"    {memberName} = {{}},\n"
        
        should_be_enum = count_constructor < 2 and count_methods == 0 and count_fields == 0 and count_consts > 0
        if should_be_enum:
            result += f"---@enum {full_name}\n{full_name} = {{\n{part_consts}}}\n\n"
        else:
            result += f"---@class {full_name}" + ((": " + ", ".join(parents)) if parents else "") + f"\n{part_fields}{full_name} = {{" + (f"\n{part_consts}" if part_consts else "") + f"}}\n\n{part_constructor}{part_methods}"
    
    return result
    
def build_class_map(result: dict, path: str):    
    with open(path, 'r', encoding='utf8') as f:
        lua_code = f.read()
    
    moduleName = re.search(MODULE_NAME_PATTERN, lua_code).group(1)
    for m in re.finditer(CLASS_NAME_PATTERN, lua_code):
        className = m.group(1)
        recognizedName = m.group(2)
        assert className == recognizedName, f"Class name mismatch: {className} != {recognizedName}"
        
        result[className] = f"{moduleName}.{className}"
    
    for additionalEnum in ADDITIONAL_ENUMS:
        result[additionalEnum.tableName.split(".")[-1]] = additionalEnum.tableName

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
        "wikiData": "out/wiki/wiki_Defines_parse_output.json",
    },
    # {
    #     "name": "RapidXML",
    #     "luaWrap": "src/lua_wrap/rapidxmlLUA_wrap.cxx",
    #     "wikiData": None,
    # },
]

HSDATA_PATH = "out/hs_base/hs_directory_parse_output.json"

OUTPUT_PATH = "../library/generated/hs.lua"

ENUM_PARSE_REQUESTS_OUTPUT_PATH = "out/enum_parse_requests.json"
ENUM_DATA_PATH = "out/enum_parse_output.json"

EVENTHOOKS_DATA_PATH = "out/wiki/wiki_EventHooks_parse_output.json"
CHAIN_INTERNAL_EVENT_LIST_PATH = "out/hs_base/hs_chain_internalEvents_list.json"
EVENTHOOKS_OUTPUT_PATH = "../library/generated/eventhooks.lua"

FIELDS_APPEND_LIST_PATH = "fields_append_list.json"

g_classMap = {}
g_fieldsAppendMap = {}

def main():
    global g_classMap, g_fieldsAppendMap
    for data in DATA_LIST:
        build_class_map(g_classMap, data["luaWrap"])
    
    with open(FIELDS_APPEND_LIST_PATH, 'r', encoding='utf8') as f:
        g_fieldsAppendMap = json.load(f)
    
    enumMap = {}
    with open(ENUM_DATA_PATH, 'r', encoding='utf8') as f:
        enumMap = json.load(f)
    
    with open(EVENTHOOKS_DATA_PATH, 'r', encoding='utf8') as f:
        eventHooksData = json.load(f)

    for eventType, nameMap in eventHooksData.items():
        for name, data in nameMap.items():
            for arg in data["args"]:
                arg["type"] = get_lua_type(arg["type"])
            for ret in data["returns"]:
                ret["type"] = get_lua_type(ret["type"])
    
    eventHookBuilder = EventHookBuilder(eventHooksData, CHAIN_INTERNAL_EVENT_LIST_PATH)
    
    additionalEnumBuilder = AdditionalEnumBuilder(ADDITIONAL_ENUMS)
    
    result = "---@meta\n"
    for data in DATA_LIST:
        result += parse_LUA_wrap(eventHookBuilder, additionalEnumBuilder, enumMap, data["luaWrap"], HSDATA_PATH, data["wikiData"])

    result += "\n" + additionalEnumBuilder.output()
    result = "\n".join([line.rstrip() for line in result.split("\n")]).strip()

    os.makedirs(os.path.dirname(OUTPUT_PATH), exist_ok=True)
    
    with open(OUTPUT_PATH, 'w', encoding='utf8') as f:
        f.write(result)
    
    eventHookBuilder.save(EVENTHOOKS_OUTPUT_PATH)
    
    with open(ENUM_PARSE_REQUESTS_OUTPUT_PATH, 'w', encoding='utf8') as f:
        json.dump(sorted(g_enum_parse_requests), f, indent=2)

if __name__ == "__main__":
    main()