An addon for [VSCode extension for Lua](https://marketplace.visualstudio.com/items/?itemName=sumneko.lua). This addon adds all definitions for FTL: Hyperspace lua api.

# Installation
1. Install [VSCode extension for Lua](https://marketplace.visualstudio.com/items/?itemName=sumneko.lua) in your vscode.
2. Ctrl + P to open command pallet, then enter `>lua: open addon manager` to open addon manager.
3. In addon manager, search for `FTL: Hyperspace` then enable it.
4. Enjoy!

# For maintainers of this repository
## Update HS version
0. Fork [LLS-Addons](https://github.com/LuaLS/LLS-Addons)
1. Run [Update workflow](https://github.com/ranhai613/ftl-hs-lua-lls-addon/actions/workflows/update.yml) manually. Put the target tag name of HS (i.g. v1.20.0) into `Target tag name` then run the workflow
2. Update LLS-Addons fork
3. In LLS-Addons fork, make a branch named like `update-ftl-hyperspace` from main branch then checkout it
4. Run `cd addons/ftl-hyperspace/module`
5. Run `git pull origin publish`. Make sure the submodule is at the latest commit on `publish` branch
6. Commit and push changes.
7. Send a pull request to [LLS-Addons](https://github.com/LuaLS/LLS-Addons). Refer to [the previous pr I sent](https://github.com/LuaLS/LLS-Addons/pull/284)
8. Wait for LLS-Addons maintainers to take care of your pr (Don't forget to show your appreciation for their work!)
9. Done!
