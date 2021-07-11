--- @class numpad
numpad = {}

--- (server) Activates numpad key owned by the player 
--- [https://wiki.facepunch.com/gmod/numpad.Activate]
--- @param ply Player @ The player whose numpad should be simulated
--- @param key number @ The key to press, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY)
--- @param isButton boolean @ Should this keypress pretend to be a from a gmod_button? (causes [numpad.FromButton](https://wiki.facepunch.com/gmod/numpad.FromButton) to return true)
--- @return void
function numpad.Activate(ply, key, isButton) end

--- (server) Deactivates numpad key owned by the player 
--- [https://wiki.facepunch.com/gmod/numpad.Deactivate]
--- @param ply Player @ The player whose numpad should be simulated
--- @param key number @ The key to press, corresponding to [KEY](https://wiki.facepunch.com/gmod/Enums/KEY)
--- @param isButton boolean @ Should this keypress pretend to be a from a gmod_button? (causes [numpad.FromButton](https://wiki.facepunch.com/gmod/numpad.FromButton) to return true)
--- @return void
function numpad.Deactivate(ply, key, isButton) end

--- (server) Returns true during a function added with [numpad.Register](https://wiki.facepunch.com/gmod/numpad.Register) when the third argument to [numpad.Activate](https://wiki.facepunch.com/gmod/numpad.Activate) is true.
--- This is caused when a numpad function is triggered by a button SENT being used. 
--- [https://wiki.facepunch.com/gmod/numpad.FromButton]
--- @return boolean
function numpad.FromButton() end

--- (server) Calls a function registered with [numpad.Register](https://wiki.facepunch.com/gmod/numpad.Register) when a player presses specified key.
--- See for key released action: [numpad.OnUp](https://wiki.facepunch.com/gmod/numpad.OnUp) 
--- [https://wiki.facepunch.com/gmod/numpad.OnDown]
--- @param ply Player @ The player whose numpad should be watched
--- @param key number @ The key, corresponding to [KEY](https://wiki.facepunch.com/gmod/Enums/KEY)
--- @param name string @ The name of the function to run, corresponding with the one used in [numpad.Register](https://wiki.facepunch.com/gmod/numpad.Register)
--- @param ... vararg @ Arguments to pass to the function passed to [numpad.Register](https://wiki.facepunch.com/gmod/numpad.Register).
--- @return number
function numpad.OnDown(ply, key, name, ...) end

--- (server) Calls a function registered with [numpad.Register](https://wiki.facepunch.com/gmod/numpad.Register) when a player releases specified key.
--- See for key pressed action: [numpad.OnDown](https://wiki.facepunch.com/gmod/numpad.OnDown) 
--- [https://wiki.facepunch.com/gmod/numpad.OnUp]
--- @param ply Player @ The player whose numpad should be watched
--- @param key number @ The key, corresponding to [KEY](https://wiki.facepunch.com/gmod/Enums/KEY)
--- @param name string @ The name of the function to run, corresponding with the one used in [numpad.Register](https://wiki.facepunch.com/gmod/numpad.Register)
--- @param ... vararg @ Arguments to pass to the function passed to [numpad.Register](https://wiki.facepunch.com/gmod/numpad.Register).
--- @return number
function numpad.OnUp(ply, key, name, ...) end

--- (server) Registers a numpad library action for use with [numpad.OnDown](https://wiki.facepunch.com/gmod/numpad.OnDown) and [numpad.OnUp](https://wiki.facepunch.com/gmod/numpad.OnUp) 
--- [https://wiki.facepunch.com/gmod/numpad.Register]
--- @param id string @ The unique id of your action.
--- @param func function @ The function to be executed. Arguments are: [Player](https://wiki.facepunch.com/gmod/Player) ply - The player who pressed the button [vararg](https://wiki.facepunch.com/gmod/vararg) ... - The 4th and all subsequent arguments passed from [numpad.OnDown](https://wiki.facepunch.com/gmod/numpad.OnDown) and/or [numpad.OnUp](https://wiki.facepunch.com/gmod/numpad.OnUp) Returning false in this function will remove the listener which triggered this function (example: return false if one of your varargs is an entity which is no longer valid)
--- @return void
function numpad.Register(id, func) end

--- (server) Removes a function added by either [numpad.OnUp](https://wiki.facepunch.com/gmod/numpad.OnUp) or [numpad.OnDown](https://wiki.facepunch.com/gmod/numpad.OnDown) 
--- [https://wiki.facepunch.com/gmod/numpad.Remove]
--- @param ID number @ The impulse ID returned by [numpad.OnUp](https://wiki.facepunch.com/gmod/numpad.OnUp) or [numpad.OnDown](https://wiki.facepunch.com/gmod/numpad.OnDown)
--- @return void
function numpad.Remove(ID) end

--- (server) Either runs [numpad.Activate](https://wiki.facepunch.com/gmod/numpad.Activate) or [numpad.Deactivate](https://wiki.facepunch.com/gmod/numpad.Deactivate) depending on the key's current state 
--- [https://wiki.facepunch.com/gmod/numpad.Toggle]
--- @param ply Player @ The player whose numpad should be simulated
--- @param key number @ The key to press, corresponding to [KEY](https://wiki.facepunch.com/gmod/Enums/KEY)
--- @return void
function numpad.Toggle(ply, key) end

