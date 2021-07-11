--- @class hook
hook = {}

--- (client/menu/server) Add a hook to be called upon the given event occurring. 
--- [https://wiki.facepunch.com/gmod/hook.Add]
--- @param eventName string @ The event to hook on to. This can be any [GM](https://wiki.facepunch.com/gmod/GM_Hooks) hook, gameevent after using [gameevent.Listen](https://wiki.facepunch.com/gmod/gameevent.Listen), or custom hook run with [hook.Call](https://wiki.facepunch.com/gmod/hook.Call) or [hook.Run](https://wiki.facepunch.com/gmod/hook.Run).
--- @param identifier any @ The unique identifier, usually a string. This can be used elsewhere in the code to replace or remove the hook. The identifier **should** be unique so that you do not accidentally override some other mods hook, unless that's what you are trying to do.The identifier can be either a [string](https://wiki.facepunch.com/gmod/string), or a [table](https://wiki.facepunch.com/gmod/table)/object with an IsValid function defined such as an [Entity](https://wiki.facepunch.com/gmod/Entity) or [Panel](https://wiki.facepunch.com/gmod/Panel). [number](https://wiki.facepunch.com/gmod/number)s and [boolean](https://wiki.facepunch.com/gmod/boolean)s, for example, are not allowed.If the identifier is a table/object, it will be inserted in front of the other arguments in the callback and the hook will be called as long as it's valid. However, as soon as IsValid( identifier ) returns false, the hook will be removed.
--- @param func function @ The function to be called, arguments given to it depend on the .
--- @return void
function hook.Add(eventName, identifier, func) end

--- (client/menu/server) Calls all hooks associated with the given event until one returns something other than nil, and then returns that data.In almost all cases, you should use [hook.Run](https://wiki.facepunch.com/gmod/hook.Run) instead - it calls hook.Call internally but supplies the gamemode table by itself, making your code neater. 
--- [https://wiki.facepunch.com/gmod/hook.Call]
--- @param eventName string @ The event to call hooks for
--- @param gamemodeTable table @ If the gamemode is specified, the gamemode hook within will be called, otherwise not
--- @param args vararg @ The arguments to be passed to the hooks
--- @return vararg
function hook.Call(eventName, gamemodeTable, args) end

--- (client/menu/server) Returns a list of all the hooks registered with [hook.Add](https://wiki.facepunch.com/gmod/hook.Add). 
--- [https://wiki.facepunch.com/gmod/hook.GetTable]
--- @return table
function hook.GetTable() end

--- (client/menu/server) Removes the hook with the supplied identifier from the given event. 
--- [https://wiki.facepunch.com/gmod/hook.Remove]
--- @param eventName string @ The event name.
--- @param identifier any @ The unique identifier of the hook to remove, usually a string.
--- @return void
function hook.Remove(eventName, identifier) end

--- (client/menu/server) Calls hooks associated with the given event.Calls all hooks until one returns something other than nil and then returns that data.If no hook returns any data, it will try to call the GAMEMODE:<eventName> alternative, if one exists.This function internally calls [hook.Call](https://wiki.facepunch.com/gmod/hook.Call).See also: [gamemode.Call](https://wiki.facepunch.com/gmod/gamemode.Call) - same as this, but does not call hooks if the gamemode hasn't defined the function. 
--- [https://wiki.facepunch.com/gmod/hook.Run]
--- @param eventName string @ The event to call hooks for
--- @param args vararg @ The arguments to be passed to the hooks
--- @return any
function hook.Run(eventName, args) end

