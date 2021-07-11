--- @class dragndrop
dragndrop = {}

--- (client/menu) Calls the receiver function of hovered panel. 
--- [https://wiki.facepunch.com/gmod/dragndrop.CallReceiverFunction]
--- @param bDoDrop boolean @ true if the mouse was released, false if we right clicked.
--- @param command number @ The command value. This should be the ID of the clicked dropdown menu ( if right clicked, or nil )
--- @param mx number @ The local to the panel mouse cursor X position when the click happened.
--- @param my number @ The local to the panel  mouse cursor Y position when the click happened.
--- @return void
function dragndrop.CallReceiverFunction(bDoDrop, command, mx, my) end

--- (client/menu) Clears all the internal drag'n'drop variables. 
--- [https://wiki.facepunch.com/gmod/dragndrop.Clear]
--- @return void
function dragndrop.Clear() end

--- (client/menu) Handles the drop action of drag'n'drop library. 
--- [https://wiki.facepunch.com/gmod/dragndrop.Drop]
--- @return void
function dragndrop.Drop() end

--- (client/menu) Returns a table of currently dragged panels. 
--- [https://wiki.facepunch.com/gmod/dragndrop.GetDroppable]
--- @param name string @ If set, the function will return only the panels with this [Panel:Droppable](https://wiki.facepunch.com/gmod/Panel:Droppable) name.
--- @return table
function dragndrop.GetDroppable(name) end

--- (client/menu) If returns true, calls [dragndrop.StopDragging](https://wiki.facepunch.com/gmod/dragndrop.StopDragging) in [dragndrop.Drop](https://wiki.facepunch.com/gmod/dragndrop.Drop). Seems to be broken and does nothing. Is it for override? 
--- [https://wiki.facepunch.com/gmod/dragndrop.HandleDroppedInGame]
--- @return void
function dragndrop.HandleDroppedInGame() end

--- (client/menu) Handles the hover think. Called from [dragndrop.Think](https://wiki.facepunch.com/gmod/dragndrop.Think). 
--- [https://wiki.facepunch.com/gmod/dragndrop.HoverThink]
--- @return void
function dragndrop.HoverThink() end

--- (client/menu) Returns whether the user is dragging something with the drag'n'drop system. 
--- [https://wiki.facepunch.com/gmod/dragndrop.IsDragging]
--- @return boolean
function dragndrop.IsDragging() end

--- (client/menu) Starts the drag'n'drop. 
--- [https://wiki.facepunch.com/gmod/dragndrop.StartDragging]
--- @return void
function dragndrop.StartDragging() end

--- (client/menu) Stops the drag'n'drop and calls [dragndrop.Clear](https://wiki.facepunch.com/gmod/dragndrop.Clear). 
--- [https://wiki.facepunch.com/gmod/dragndrop.StopDragging]
--- @return void
function dragndrop.StopDragging() end

--- (client/menu) Handles all the drag'n'drop processes. Calls [dragndrop.UpdateReceiver](https://wiki.facepunch.com/gmod/dragndrop.UpdateReceiver) and [dragndrop.HoverThink](https://wiki.facepunch.com/gmod/dragndrop.HoverThink). 
--- [https://wiki.facepunch.com/gmod/dragndrop.Think]
--- @return void
function dragndrop.Think() end

--- (client/menu) Updates the receiver to drop the panels onto. Called from [dragndrop.Think](https://wiki.facepunch.com/gmod/dragndrop.Think). 
--- [https://wiki.facepunch.com/gmod/dragndrop.UpdateReceiver]
--- @return void
function dragndrop.UpdateReceiver() end

