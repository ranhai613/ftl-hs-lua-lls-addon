from parseutility import parse_function_args
import re
import json
from enum import Enum

class ParseTarget(Enum):
    NONE = 0,
    METHOD = 1,
    FIELD = 2

TABLE_PATTERN = re.compile(r"\|(.+?)\|(.+?)\|")
HYPHEN_PATTERN = re.compile(r"-+")
def parse_property_table_line(line) -> tuple[str, str] | tuple[None, None]:
    match = TABLE_PATTERN.match(line)
    if match is None:
        return None, None
    
    type = match.group(1).strip().replace("`", "")
    name = match.group(2).strip().replace("`", "")
    
    if type == "Type" and name == "Name":
        return None, None
    
    if HYPHEN_PATTERN.match(type) and HYPHEN_PATTERN.match(name):
        return None, None
    
    return type, name

def parse_markdown_to_json(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()

    # Regex patterns
    CLASS_PATTERN = re.compile(r"## (\w+)")
    TITLE_PATTERN = re.compile(r"### (\w+)")
    METHOD_PATTERN = re.compile(r"-\s+(?:~~)?(?:`static` )?\[?`?(.+?(?:<.+>)?)`?(?:\]\(#.+\))? `?[\.\:]?(.+?)\((.*?)\);?`(?:~~)?")
    FIELD_PATTERN = re.compile(r"-\s+(?:~~)?(?:`static` )?\[?`?(.+?(?:<.+>)?)`?(?:\]\(#.+\))? `?[\.\:]?(.+?);?`(?:~~)?")
    COMMENT_PATTERN = re.compile(r"\s+-\s+(.+)")

    classes = {}
    current_class = None
    current_target = ParseTarget.NONE
    comment_insert_point = None

    for line in content.splitlines():
        class_match = CLASS_PATTERN.match(line)
        if class_match:
            current_class = class_match.group(1)
            current_target = ParseTarget.NONE
            classes[current_class] = {"methods": [], "fields": [], "constants": []}
            continue
        
        if current_class is None:
            continue
        
        title_match = TITLE_PATTERN.match(line)
        if title_match:
            type = title_match.group(1)
            if type == "Methods":
                current_target = ParseTarget.METHOD
            elif type == "Fields" or type == "Properties":
                current_target = ParseTarget.FIELD
            continue
        
        if current_target == ParseTarget.METHOD:
            method_match = METHOD_PATTERN.match(line)
            if method_match:
                classes[current_class]["methods"].append({"name": method_match.group(2).replace("*", ""), "return_type": method_match.group(1).replace("*", ""), "args": parse_function_args(method_match.group(3)), "documentation": ""})
                comment_insert_point = classes[current_class]["methods"][-1]
                continue
        elif current_target == ParseTarget.FIELD:
            type, name = parse_property_table_line(line)
            if type and name:
                classes[current_class]["fields"].append({"name": name.replace("*", ""), "type": type.replace("*", ""), "documentation": ""})
                comment_insert_point = classes[current_class]["fields"][-1]
                continue
            
            field_match = FIELD_PATTERN.match(line)
            if field_match:
                classes[current_class]["fields"].append({"name": field_match.group(2).replace("*", ""), "type": field_match.group(1).replace("*", ""), "documentation": ""})
                comment_insert_point = classes[current_class]["fields"][-1]
                continue
        
        comment_match = COMMENT_PATTERN.match(line)
        if comment_match and comment_insert_point:
            if comment_insert_point["documentation"] != "":
                comment_insert_point["documentation"] += "\n"
            comment_insert_point["documentation"] += comment_match.group(1)

    return classes


def save_to_json(data, output_path):
    with open(output_path, 'w', encoding='utf-8') as file:
        json.dump(data, file, indent=4, ensure_ascii=False)

FILELIST = [
    {
        "input": "src/wiki/Lua-Hyperspace-Module.md",
        "output": "out/wiki/wiki_Hyperspace_parse_output.json"
    },
    {
        "input": "src/wiki/Lua-Graphics-Module.md",
        "output": "out/wiki/wiki_Graphics_parse_output.json"
    }
]

def main():
    for file in FILELIST:
        input_file = file["input"]
        output_file = file["output"]

        parsed_data = parse_markdown_to_json(input_file)
        save_to_json(parsed_data, output_file)

        print(f"JSON data has been saved to {output_file}")

if __name__ == "__main__":
    main()