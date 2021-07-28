--- @class DPanelList : DPanel
DPanelList = {}

--- (client) Adds a existing panel to the end of [DPanelList](https://wiki.facepunch.com/gmod/DPanelList). 
--- [https://wiki.facepunch.com/gmod/DPanelList:AddItem]
--- @param pnl Panel @ Panel to be used as element of list
--- @param state string @ If set to "ownline", the item will take its own entire line.
--- @return void
function DPanelList:AddItem(pnl, state) end

--- (client) Removes all items. 
--- [https://wiki.facepunch.com/gmod/DPanelList:CleanList]
--- @return void
function DPanelList:CleanList() end

--- (client) Enables/creates the vertical scroll bar so that the panel list can be scrolled through. 
--- [https://wiki.facepunch.com/gmod/DPanelList:EnableVerticalScrollbar]
--- @return void
function DPanelList:EnableVerticalScrollbar() end

--- (client) Returns all panels has added by [DPanelList:AddItem](https://wiki.facepunch.com/gmod/DPanelList:AddItem) 
--- [https://wiki.facepunch.com/gmod/DPanelList:GetItems]
--- @return table
function DPanelList:GetItems() end

--- (client) Returns offset of list items from the panel borders set by [DPanelList:SetPadding](https://wiki.facepunch.com/gmod/DPanelList:SetPadding) 
--- [https://wiki.facepunch.com/gmod/DPanelList:GetPadding]
--- @return number
function DPanelList:GetPadding() end

--- (client) Returns distance between list items set by [DPanelList:SetSpacing](https://wiki.facepunch.com/gmod/DPanelList:SetSpacing) 
--- [https://wiki.facepunch.com/gmod/DPanelList:GetSpacing]
--- @return number
function DPanelList:GetSpacing() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DPanelList:InsertAtTop]
--- @param insert Panel @ The panel to insert
--- @param strLineState string @ If set to "ownline", no other panels will be placed to the left or right of the panel we are inserting
--- @return void
function DPanelList:InsertAtTop(insert, strLineState) end

--- (client) Sets the offset of the lists items from the panel borders 
--- [https://wiki.facepunch.com/gmod/DPanelList:SetPadding]
--- @param Offset number @ Offset from panel borders
--- @return void
function DPanelList:SetPadding(Offset) end

--- (client) Sets distance between list items 
--- [https://wiki.facepunch.com/gmod/DPanelList:SetSpacing]
--- @param Distance number @ Distance between panels
--- @return void
function DPanelList:SetSpacing(Distance) end

