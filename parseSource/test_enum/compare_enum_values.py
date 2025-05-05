import json

"""
Use this when you want to check if the static parsing of enum value is correct.
This script checks if the static parsing is correct by comparing it with the dynamic parsing.
This script compares the enum values from two different sources: Sastic and Dynamic.
Static one is from the Sastic parser, and dynamic one is from the GDB script.
The dynamic one is absolutely correct, so if the static one is not the same as the dynamic one, it means the static one is wrong.
"""

PARSE_SASTIC_OUTPUT_PATH = "out/hs_base/hs_enums.json"
PARSE_DYNAMIC_OUTPUT_PATH = "out/enum_parse_output.json"

if __name__ == "__main__":
    with open(PARSE_SASTIC_OUTPUT_PATH, "r", encoding="utf8") as f:
        sastic_data = json.load(f)
    
    with open(PARSE_DYNAMIC_OUTPUT_PATH, "r", encoding="utf8") as f:
        dynamic_data = json.load(f)
    
    for enum_name, enum_value in dynamic_data.items():
        if enum_name not in sastic_data:
            print(f"Enum {enum_name} not found in sastic data")
            continue
        
        sastic_enum_value = sastic_data[enum_name]
        
        if enum_value != sastic_enum_value:
            print(f"Enum {enum_name} values do not match")
            print(f"Sastic: {sastic_enum_value}")
            print(f"Dynamic: {enum_value}")