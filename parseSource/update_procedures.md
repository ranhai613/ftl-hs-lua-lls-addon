## 1. Update files
- Run `cd parseSource/src/FTL-Hyperspace` and `git checkout [tag]` (update HS directory)
- Delete `build-windows-debug/`
- Run `cd ./buildscripts/windows` and `wsl ./build-debugonly-from-docker.sh` to build dll
- Run `python update_luawrap.py` to update `src/lua_wrap/`
- Update `src/wiki/`

## 2. Parse files
- Run `python update_parse.py`

## 3. Push changes
- Commit and push changes
- Run `git checkout main`
- Run `git checkout generate -- library`
- Commit and push changes