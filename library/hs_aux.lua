---@meta
-- Here are stuff that are not covered by the auto-generated definition files
-- So we store them here manually

--- Functions for script execution control
---@class script
script = {}

--- Register a function to call upon loading your script
---@param callback fun() Callback function to register
function script.on_load(callback) end

--- Register a function to call upon starting a run
---@param callback fun(newGame: boolean) Callback function to register *note this function can take an argument which specifies whether it was called for starting a new game or loading a saved game*
function script.on_init(callback) end

--- Register a function to call upon a named XML game event or choice being loaded. Game event names are the `name=` attribute of an `<event>` or `<choice>` in the XML
---@param eventName string Event or Choice name to hook, the names matter based on what you set in the XML, you must not hook unnamed events or choices.
---@param onLoadOnly boolean `true` to run only when re-loading from a save game<br>`false` to run only on first encountering this event (i.e. not on loading the event but only 
---@param callback fun() Callback function to register
function script.on_game_event(eventName, onLoadOnly, callback) end


---@param event 1 --[[@as Defines.InternalEvents.ON_TICK]]
---@param callback fun(a: string): Defines.Chain?
function script.on_internal_event(event, callback) end

---@param event 2 --[[@as Defines.InternalEvents.MAIN_MENU]]
---@param callback fun(b: number): Defines.Chain?
function script.on_internal_event(event, callback) end


---@alias void any -- pointer to void
---@alias uint integer -- unsigned int
---@class ToggleValue<T>: { value: T, enabled: boolean } -- enabled=false