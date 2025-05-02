import re
import json

HINTS = {
    "### Chain": "Chain",
    "### Evasion": "Evasion",
    "### BeamHit": "BeamHit",
    "### SDL keys": "SDL",
}

HINTS_HOOKS = {
    "## Render Events": "RenderEvents",
    "## Internal Events": "InternalEvents",
}

TABLE_NAME_DESC_PATTERN = re.compile(r"\|(.+?)\|(?:.+?\|)?(.+?)\|")
TABLE_RENDEREVENTS_PATTERN = re.compile(r"\|(.+?)\|(.+?)\|(.+?)\|")
TABLE_INTERNALEVENTS_PATTERN = re.compile(r"\|(.+?)\|(.+?)\|(.+?)\|(.+?)\|")

def parse_args(text: str) -> list[dict[str, str]]:
    def sanitize_type(type: str) -> str:
        if type == "[Defines.SDL](#sdl-keys)":
            return "Defines.SDL"
        return type
    
    text = text.strip().replace("`", "").replace(",", " ").replace("~~", "")
    text = re.sub(r"\s+", " ", text)
    
    if not text or text == "None" or text == "---":
        return []
    elif text == "Chain":
        return [{"name": "chain", "type": "Defines.Chain"}]
    
    words = text.split(" ")
    assert len(words) % 2 == 0, f"Invalid argument format: {text}"
    
    ret = []
    for i in range(0, len(words), 2):
        ret.append({
            "name": sanitize_type(words[i + 1]),
            "type": sanitize_type(words[i]),
        })
        
    return ret

def parse_wiki_defines(input: str, output: str, output_hooks: str):
    result = {}
    result_hooks = {}
    context_is_hook = False
    current_table_item_count = 0
    with open(input, 'r', encoding='utf8') as file:
        lines = file.readlines()
    
    current_target = None
    for line in lines:
        line = line.strip()
        if line in HINTS:
            current_target = HINTS[line]
            context_is_hook = False
            current_table_item_count = 0
            result[current_target] = {
                "methods": [],
                "fields": [],
                "constants": [],
            }
            continue
        elif line in HINTS_HOOKS:
            current_target = HINTS_HOOKS[line]
            context_is_hook = True
            current_table_item_count = 0
            result_hooks[current_target] = {}
            continue
        
        if current_target is None:
            continue
        
        if not context_is_hook:
            match = TABLE_NAME_DESC_PATTERN.match(line)
            if match is None:
                continue
            
            current_table_item_count += 1
            if current_table_item_count < 3:
                continue
            
            name = match.group(1).strip()
            desc = match.group(2).strip()
            
            result[current_target]["constants"].append({
                "name": name,
                "type": "",
                "documentation": desc,
            })
        else:
            if current_target == "RenderEvents":
                match = TABLE_RENDEREVENTS_PATTERN.match(line)
                if match is None:
                    continue
                
                current_table_item_count += 1
                if current_table_item_count < 3:
                    continue
                
                name = match.group(1).strip().replace("~~", "")
                args = match.group(2).strip().replace("~~", "")
                desc = match.group(3).strip().replace("~~", "")
                
                result_hooks[current_target][name] = {
                    "documentation": desc,
                    "args": parse_args(args),
                    "returns": [],
                }
            elif current_target == "InternalEvents":
                match = TABLE_INTERNALEVENTS_PATTERN.match(line)
                if match is None:
                    continue
                
                current_table_item_count += 1
                if current_table_item_count < 3:
                    continue
                
                name = match.group(1).strip().replace("~~", "")
                args = match.group(2).strip().replace("~~", "")
                returns = match.group(3).strip().replace("~~", "")
                desc = match.group(4).strip().replace("~~", "")
                
                result_hooks[current_target][name] = {
                    "documentation": desc,
                    "args": parse_args(args),
                    "returns": parse_args(returns),
                }
        
    with open(output, 'w', encoding='utf8') as file:
        json.dump(result, file, indent=2)
    
    with open(output_hooks, 'w', encoding='utf8') as file:
        json.dump(result_hooks, file, indent=2)

def main():
    parse_wiki_defines(
        input="src/wiki/Lua-Defines-module.md",
        output="out/wiki/wiki_Defines_parse_output.json",
        output_hooks="out/wiki/wiki_EventHooks_parse_output.json",
    )

if __name__ == "__main__":
    main()