import json

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