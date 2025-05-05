Github actions do 1, 2 and 3.

## 1. Update files
- Run `cd parseSource/src/FTL-Hyperspace` and `git checkout [tag]` (update HS directory)
- Delete `build-windows-debug/`
- Run `cd ./buildscripts/windows` and `wsl ./build-debugonly-from-docker.sh` to build dll
- Run `python update_luawrap.py` to update `src/lua_wrap/`
- Run `python update_wiki.py` to update `src/wiki/`

## 2. Parse files
- Run `python update_parse.py`

## 3. Push changes
- Commit and push changes on main branch
- Run `git checkout publish`
- Run `git checkout main -- library config.json`
- Run `git add library config.json`
- Commit and push changes

## 4. Open PR
- Go to your fork for https://github.com/LuaLS/LLS-Addons
- Create a branch for pr and checkout it
- Run `cd addons/ftl-hyperspace/module` then `git checkout [commit id of the latest commit for publish branch]` (or `git checkout publish` then `git pull origin publish`)
- Commit and push changes
- Open pr to https://github.com/LuaLS/LLS-Addons/pulls