--- @class undo
undo = {}

--- (server) Adds an entity to the current undo block 
--- [https://wiki.facepunch.com/gmod/undo.AddEntity]
--- @param ent Entity @ The entity to add
--- @return void
function undo.AddEntity(ent) end

--- (server) Adds a function to call when the current undo block is undone. Note that if an undo has a function, the player will always be notified when this undo is performed, even if the entity it is meant to undo no longer exists. 
--- [https://wiki.facepunch.com/gmod/undo.AddFunction]
--- @param func function @ The function to call. First argument will be the [Undo Structure](https://wiki.facepunch.com/gmod/Structures/Undo), all subsequent arguments will be what was passed after this function in the argument below.Returning `false` will mark execution of this function as "failed", meaning that the undo might be skipped if no other entities are removed by it. This is useful when for example an entity you want to access is removed therefore there's nothing to do.
--- @param arguments vararg @ Arguments to pass to the function (after the undo info table)
--- @return void
function undo.AddFunction(func, arguments) end

--- (server) Begins a new undo entry 
--- [https://wiki.facepunch.com/gmod/undo.Create]
--- @param name string @ Name of the undo message to show to players
--- @return void
function undo.Create(name) end

--- (server) Processes an undo block (in table form). This is used internally by the undo manager when a player presses Z.You should use `gm_undo` or `gm_undonum *num*` console commands instead of calling this function directly. 
--- [https://wiki.facepunch.com/gmod/undo.Do_Undo]
--- @param tab table @ The undo block to process as an [Undo](https://wiki.facepunch.com/gmod/Structures/Undo)
--- @return number
function undo.Do_Undo(tab) end

--- (client/server) Completes an undo entry, and registers it with the player's client 
--- [https://wiki.facepunch.com/gmod/undo.Finish]
--- @param NiceText string @ Text that appears in the player's undo history
--- @return void
function undo.Finish(NiceText) end

--- (client/server) Serverside, returns a table containing all undo blocks of all players. Clientside, returns a table of the local player's undo blocks. 
--- [https://wiki.facepunch.com/gmod/undo.GetTable]
--- @return table
function undo.GetTable() end

--- (client) Makes the UI dirty - it will re-create the controls the next time it is viewed. 
--- [https://wiki.facepunch.com/gmod/undo.MakeUIDirty]
--- @return void
function undo.MakeUIDirty() end

--- (server) Replaces any instance of the "from" reference with the "to" reference, in any existing undo block. Returns true if something was replaced 
--- [https://wiki.facepunch.com/gmod/undo.ReplaceEntity]
--- @param from Entity @ The old entity
--- @param to Entity @ The new entity to replace the old one
--- @return boolean
function undo.ReplaceEntity(from, to) end

--- (server) Sets a custom undo text for the current undo block 
--- [https://wiki.facepunch.com/gmod/undo.SetCustomUndoText]
--- @param customText string @ The text to display when the undo block is undone
--- @return void
function undo.SetCustomUndoText(customText) end

--- (server) Sets the player which the current undo block belongs to 
--- [https://wiki.facepunch.com/gmod/undo.SetPlayer]
--- @param ply Player @ The player responsible for undoing the block
--- @return void
function undo.SetPlayer(ply) end

--- (client) Adds a hook (CPanelPaint) to the control panel paint function so we can determine when it is being drawn. 
--- [https://wiki.facepunch.com/gmod/undo.SetupUI]
--- @return void
function undo.SetupUI() end

