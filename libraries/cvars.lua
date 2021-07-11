--- @class cvars
cvars = {}

--- (client/menu/server) Adds a callback to be called when the named convar changes. 
--- [https://wiki.facepunch.com/gmod/cvars.AddChangeCallback]
--- @param name string @ The name of the convar to add the change callback to.
--- @param callback function @ The function to be called when the convar changes. The arguments passed are:  [string](https://wiki.facepunch.com/gmod/string) convar - The name of the convar.  [string](https://wiki.facepunch.com/gmod/string) oldValue - The old value of the convar.  [string](https://wiki.facepunch.com/gmod/string) newValue - The new value of the convar.
--- @param identifier string @ If set, you will be able to remove the callback using [cvars.RemoveChangeCallback](https://wiki.facepunch.com/gmod/cvars.RemoveChangeCallback).
--- @return void
function cvars.AddChangeCallback(name, callback, identifier) end

--- (client/menu/server) Retrieves console variable as a boolean. 
--- [https://wiki.facepunch.com/gmod/cvars.Bool]
--- @param cvar string @ Name of console variable
--- @param default boolean @ The value to return if the console variable does not exist
--- @return boolean
function cvars.Bool(cvar, default) end

--- (client/menu/server) Returns a table of the given [ConVar](https://wiki.facepunch.com/gmod/ConVar)s callbacks. 
--- [https://wiki.facepunch.com/gmod/cvars.GetConVarCallbacks]
--- @param name string @ The name of the [ConVar](https://wiki.facepunch.com/gmod/ConVar).
--- @param createIfNotFound boolean @ Whether or not to create the internal callback table for given [ConVar](https://wiki.facepunch.com/gmod/ConVar) if there isn't one yet. This argument is internal and should not be used.
--- @return table
function cvars.GetConVarCallbacks(name, createIfNotFound) end

--- (client/menu/server) Retrieves console variable as a number. 
--- [https://wiki.facepunch.com/gmod/cvars.Number]
--- @param cvar string @ Name of console variable
--- @param default any @ The value to return if the console variable does not exist
--- @return number
function cvars.Number(cvar, default) end

--- (client/menu/server) Called by the engine when a convar value changes. 
--- [https://wiki.facepunch.com/gmod/cvars.OnConVarChanged]
--- @param name string @ Convar name
--- @param oldVal string @ The old value of the convar
--- @param newVal string @ The new value of the convar
--- @return void
function cvars.OnConVarChanged(name, oldVal, newVal) end

--- (client/menu/server) Removes a callback for a convar using the the callback's identifier. The identifier should be the third argument specified for [cvars.AddChangeCallback](https://wiki.facepunch.com/gmod/cvars.AddChangeCallback). 
--- [https://wiki.facepunch.com/gmod/cvars.RemoveChangeCallback]
--- @param name string @ The name of the convar to remove the callback from.
--- @param indentifier string @ The callback's identifier.
--- @return void
function cvars.RemoveChangeCallback(name, indentifier) end

--- (client/menu/server) Retrieves console variable as a string. 
--- [https://wiki.facepunch.com/gmod/cvars.String]
--- @param cvar string @ Name of console variable
--- @param default any @ The value to return if the console variable does not exist
--- @return string
function cvars.String(cvar, default) end

