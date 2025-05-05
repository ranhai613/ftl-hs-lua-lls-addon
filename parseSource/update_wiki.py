from shutil import rmtree, copy
from os import mkdir

TARGET_DIR = "src/wiki"
SORCE_DIR = "src/FTL-Hyperspace/wiki"
SOURCE_FILES = [
    "Lua-Defines-module.md",
    "Lua-Graphics-Module.md",
    "Lua-Hyperspace-Module.md",
    "Lua-Script-Module.md"
]
    

def main():
    rmtree(TARGET_DIR)
    mkdir(TARGET_DIR)
    for file in SOURCE_FILES:
        copy(f"{SORCE_DIR}/{file}", f"{TARGET_DIR}/{file}")

if __name__ == "__main__":
    main()