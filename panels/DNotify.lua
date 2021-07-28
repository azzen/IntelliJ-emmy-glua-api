--- @class DNotify : PANEL
DNotify = {}

--- (client) Adds a panel to the notification 
--- [https://wiki.facepunch.com/gmod/DNotify:AddItem]
--- @param pnl Panel @ The panel to add
--- @param lifeLength number @ If set, overrides [DNotify:SetLife](https://wiki.facepunch.com/gmod/DNotify:SetLife).
--- @return void
function DNotify:AddItem(pnl, lifeLength) end

--- (client) Returns the current alignment of this notification panel. Set by [DNotify:SetAlignment](https://wiki.facepunch.com/gmod/DNotify:SetAlignment). 
--- [https://wiki.facepunch.com/gmod/DNotify:GetAlignment]
--- @return number
function DNotify:GetAlignment() end

--- (client) Returns all the items added with [DNotify:AddItem](https://wiki.facepunch.com/gmod/DNotify:AddItem). 
--- [https://wiki.facepunch.com/gmod/DNotify:GetItems]
--- @return table
function DNotify:GetItems() end

--- (client) Returns the display time in seconds of the DNotify. This is set with 
--- [DNotify:SetLife](https://wiki.facepunch.com/gmod/DNotify:SetLife). 
--- [https://wiki.facepunch.com/gmod/DNotify:GetLife]
--- @return number
function DNotify:GetLife() end

--- (client) Returns the spacing between items set by [DNotify:SetSpacing](https://wiki.facepunch.com/gmod/DNotify:SetSpacing). 
--- [https://wiki.facepunch.com/gmod/DNotify:GetSpacing]
--- @return number
function DNotify:GetSpacing() end

--- (client) Sets the alignment of the child panels in the notification 
--- [https://wiki.facepunch.com/gmod/DNotify:SetAlignment]
--- @param alignment number @ It's the Numpad alignment, 6 is right, 9 is top left, etc.
--- @return void
function DNotify:SetAlignment(alignment) end

--- (client) Sets the display time in seconds for the DNotify. 
--- [https://wiki.facepunch.com/gmod/DNotify:SetLife]
--- @param time number @ The time in seconds.
--- @return void
function DNotify:SetLife(time) end

--- (client) Sets the spacing between child elements of the notification panel. 
--- [https://wiki.facepunch.com/gmod/DNotify:SetSpacing]
--- @param spacing number @ No description provided
--- @return void
function DNotify:SetSpacing(spacing) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DNotify:Shuffle]
--- @return void
function DNotify:Shuffle() end

