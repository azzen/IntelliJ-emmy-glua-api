--- @class gamemode
gamemode = {}

--- (client/server) Called by the engine to call a hook within the loaded gamemode.The supplied event 'name' must be defined in the active gamemode. Otherwise, nothing will happen - not even hooks added with [hook.Add](https://wiki.facepunch.com/gmod/hook.Add) will be called.This is similar to [hook.Run](https://wiki.facepunch.com/gmod/hook.Run) and [hook.Call](https://wiki.facepunch.com/gmod/hook.Call), except the hook library will call hooks created with hook.Add even if there is no corresponding gamemode function. 
--- [https://wiki.facepunch.com/gmod/gamemode.Call]
--- @param name string @ The name of the hook to call.
--- @param args vararg @ The arguments
--- @return any
function gamemode.Call(name, args) end

--- (client/server) This returns the internally stored gamemode table. 
--- [https://wiki.facepunch.com/gmod/gamemode.Get]
--- @param name string @ The name of the gamemode you want to get
--- @return table
function gamemode.Get(name) end

--- (client/server) Called by the engine when a gamemode is being loaded. 
--- [https://wiki.facepunch.com/gmod/gamemode.Register]
--- @param gm table @ Your GM table
--- @param name string @ Name of your gamemode, lowercase, no spaces.
--- @param derived string @ The gamemode name that your gamemode is derived from
--- @return void
function gamemode.Register(gm, name, derived) end

