--- @class DDragBase : DPanel
DDragBase = {}

--- (client) Internal function used in [DDragBase:MakeDroppable](https://wiki.facepunch.com/gmod/DDragBase:MakeDroppable) 
--- [https://wiki.facepunch.com/gmod/DDragBase:DropAction_Copy]
--- @param drops table @ No description provided
--- @param bDoDrop boolean @ No description provided
--- @param command string @ No description provided
--- @param y number @ No description provided
--- @param x number @ No description provided
--- @return void
function DDragBase:DropAction_Copy(drops, bDoDrop, command, y, x) end

--- (client) Internal function used in [DDragBase:DropAction_Copy](https://wiki.facepunch.com/gmod/DDragBase:DropAction_Copy) 
--- [https://wiki.facepunch.com/gmod/DDragBase:DropAction_Normal]
--- @param drops table @ No description provided
--- @param bDoDrop boolean @ No description provided
--- @param command string @ No description provided
--- @param y number @ No description provided
--- @param x number @ No description provided
--- @return void
function DDragBase:DropAction_Normal(drops, bDoDrop, command, y, x) end

--- (client) Internal function used in [DDragBase:DropAction_Normal](https://wiki.facepunch.com/gmod/DDragBase:DropAction_Normal) 
--- [https://wiki.facepunch.com/gmod/DDragBase:DropAction_Simple]
--- @param drops table @ No description provided
--- @param bDoDrop boolean @ No description provided
--- @param command string @ No description provided
--- @param y number @ No description provided
--- @param x number @ No description provided
--- @return void
function DDragBase:DropAction_Simple(drops, bDoDrop, command, y, x) end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DDragBase:GetDnD]
--- @return string
function DDragBase:GetDnD() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DDragBase:GetUseLiveDrag]
--- @return boolean
function DDragBase:GetUseLiveDrag() end

--- (client) Makes the panel a receiver for any droppable panel with the same DnD name. Internally calls [Panel:Receiver](https://wiki.facepunch.com/gmod/Panel:Receiver). 
--- [https://wiki.facepunch.com/gmod/DDragBase:MakeDroppable]
--- @param name string @ The unique name for the receiver slot. Only droppable panels with the same DnD name as this can be dropped on the panel.
--- @param allowCopy boolean @ Whether or not to allow droppable panels to be copied when the  key is held down.
--- @return void
function DDragBase:MakeDroppable(name, allowCopy) end

--- (client) Called when anything is dropped on or rearranged within the [DDragBase](https://wiki.facepunch.com/gmod/DDragBase). 
--- [https://wiki.facepunch.com/gmod/DDragBase:OnModified]
--- @return void
function DDragBase:OnModified() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DDragBase:SetDnD]
--- @param name string @ Name of the DnD family.
--- @return void
function DDragBase:SetDnD(name) end

--- (client) Determines where you can drop stuff.
--- "4" for left
--- "5" for center
--- "6" for right
--- "8" for top
--- "2" for bottom 
--- [https://wiki.facepunch.com/gmod/DDragBase:SetDropPos]
--- @param pos string @ Where you're allowed to drop things.
--- @return void
function DDragBase:SetDropPos(pos) end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DDragBase:SetUseLiveDrag]
--- @param newState boolean @ No description provided
--- @return void
function DDragBase:SetUseLiveDrag(newState) end

--- (client) Internal function used in [DDragBase:DropAction_Normal](https://wiki.facepunch.com/gmod/DDragBase:DropAction_Normal) 
--- [https://wiki.facepunch.com/gmod/DDragBase:UpdateDropTarget]
--- @param drop number @ No description provided
--- @param pnl Panel @ No description provided
--- @return void
function DDragBase:UpdateDropTarget(drop, pnl) end

