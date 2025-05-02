from shutil import rmtree, copy
from os import mkdir

TARGET_DIR = "src/lua_wrap"
SORCE_DIR = "src/FTL-Hyperspace/build-windows-debug/CMakeFiles/Hyperspace.dir"
SOURCE_FILES = [
    "definesLUA_wrap.cxx",
    "graphicsLUA_wrap.cxx",
    "hyperspaceLUA_wrap.cxx"
]
    

if __name__ == "__main__":
    rmtree(TARGET_DIR)
    mkdir(TARGET_DIR)
    for file in SOURCE_FILES:
        copy(f"{SORCE_DIR}/{file}", f"{TARGET_DIR}/{file}")