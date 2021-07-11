--- @class baseclass
baseclass = {}

--- (client/menu/server) Gets the base class of an an object.This is used not just by entities, but also by widgets, panels, drive modes, weapons and gamemodes (with "gamemode_" prefix).The keyword **DEFINE_BASECLASS** translates into a call to this function. In the engine, it is replaced with:```local BaseClass = baseclass.Get``` 
--- [https://wiki.facepunch.com/gmod/baseclass.Get]
--- @param name string @ The child class.
--- @return table
function baseclass.Get(name) end

--- (client/menu/server) Add a new base class that can be derived by others. This is done automatically for:* widgets* panels* drive modes* entities* weapons* gamemodes (with prefix "gamemode_") 
--- [https://wiki.facepunch.com/gmod/baseclass.Set]
--- @param name string @ The name of this base class. Must be completely unique.
--- @param tab table @ The base class.
--- @return void
function baseclass.Set(name, tab) end

