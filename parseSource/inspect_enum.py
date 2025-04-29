import gdb
import json

"""
This is the most reliable way to get the enum values from the HS.
This script is designed to be run in a GDB session.

1. Copy this script and "enum_parse_requests.json" to the same directory as the FTL executable.
2. Open the FTL executable in GDB.
3. Hyperspace is not loaded yet, so make a breakpoint at somewhere then run the game.
4. When the breakpoint is hit, run the following command in GDB:
   source inspect_enum.py
5. The script will get the enum values and save them to "enum_parse_output.json".
"""


def sanitize_enum_name(enum_name: str) -> str:
    if enum_name.startswith("SDL::KEY_"):
        return enum_name.replace("SDL::KEY_", "SDLK_", 1)
    
    return enum_name

REQUESTS_FILE_PATH = "enum_parse_requests.json"
OUTPUT_FILE_PATH = "enum_parse_output.json"

results = {}

with open(REQUESTS_FILE_PATH, "r", encoding="utf8") as f:
    enumList = json.load(f)

for value in enumList:
    try:
        result = gdb.execute(f"print (int){sanitize_enum_name(value)}", to_string=True)
        results[value] = int(result.split('=')[1].strip())
    except gdb.error as e:
        results[value] = f"Error: {e}"
    print(f"Processed {value}: {results[value]}")

with open(OUTPUT_FILE_PATH, "w", encoding="utf8") as f:
    json.dump(results, f, indent=2)

print(f"Results saved to {OUTPUT_FILE_PATH}")