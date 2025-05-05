---@meta
-- Here are stuff that are not covered by the auto-generated definition files


--------- global functions ---------

---@param text string
function log(text) end

--- Returns the type of a userdata as an original C++ type name.
---@param variable userdata
---@return string
function swig_type(variable) end

--- Compares userdata's value
---@param a userdata
---@param b userdata
---@return boolean
function  swig_equals(a, b) end

--------- global functions end ---------


--------- start of the content for SWIG_LUACODE in LUA_wrap files ---------

---@generic T
---@param x T
---@return T
function Hyperspace.Get_Drone_Subclass(x) end

Hyperspace.ships = {
    player = Hyperspace.Global.GetInstance():GetShipManager(0),
    enemy = Hyperspace.Global.GetInstance():GetShipManager(1)
}

---@param shipId integer Ship ID to get the ship manager for. 0 is the player ship, 1 is the enemy ship.
---@return Hyperspace.ShipManager
function Hyperspace.ships(shipId) end

---@class mods
---@field [any] any
mods = {}

--------- end of the content for SWIG_LUACODE in LUA_wrap files ---------


--------- script module ---------

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


--------- script module end ---------


---@class Hyperspace.playerVariables
---@field [string] integer
Hyperspace.playerVariables = {}

---@class Hyperspace.metaVariables
---@field [string] integer
Hyperspace.metaVariables = {}

---@alias String string|number this union type is needed because of the implicit conversion between string and number in lua
---@alias uint integer -- unsigned int

---@class ToggleValue<T>: { value: T, enabled: boolean } -- enabled=false


-- bandaid for incorrect type expressions. HS should fix these in the future

---@alias std_pair_int_int pair<integer, integer>