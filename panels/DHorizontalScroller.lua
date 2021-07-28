--- @class DHorizontalScroller : PANEL
DHorizontalScroller = {}

--- (client) Adds a panel to the [DHorizontalScroller](https://wiki.facepunch.com/gmod/DHorizontalScroller). 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:AddPanel]
--- @param pnl Panel @ The panel to add. It will be automatically parented.
--- @return void
function DHorizontalScroller:AddPanel(pnl) end

--- (client) Returns the internal canvas panel where the content of [DHorizontalScroller](https://wiki.facepunch.com/gmod/DHorizontalScroller) are placed on. 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:GetCanvas]
--- @return Panel
function DHorizontalScroller:GetCanvas() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:GetOverlap]
--- @return number
function DHorizontalScroller:GetOverlap() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:GetShowDropTargets]
--- @return boolean
function DHorizontalScroller:GetShowDropTargets() end

--- (client) Same as [DDragBase:MakeDroppable](https://wiki.facepunch.com/gmod/DDragBase:MakeDroppable).
--- TODO: Transclude or whatever to here? 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:MakeDroppable]
--- @param name string @ No description provided
--- @return void
function DHorizontalScroller:MakeDroppable(name) end

--- (client) Called when the panel is scrolled. 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:OnDragModified]
--- @return void
function DHorizontalScroller:OnDragModified() end

--- (client) Scrolls the [DHorizontalScroller](https://wiki.facepunch.com/gmod/DHorizontalScroller) to given child panel. 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:ScrollToChild]
--- @param target Panel @ The target child panel. Must be a child of [DHorizontalScroller:GetCanvas](https://wiki.facepunch.com/gmod/DHorizontalScroller:GetCanvas)
--- @return void
function DHorizontalScroller:ScrollToChild(target) end

--- (client) Controls the spacing between elements of the horizontal scroller. 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:SetOverlap]
--- @param overlap number @ Overlap in pixels. Positive numbers will make elements `overlap` each other, negative will add spacing.
--- @return void
function DHorizontalScroller:SetOverlap(overlap) end

--- (client) Sets the scroll amount, automatically clamping the value. 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:SetScroll]
--- @param scroll number @ The new scroll amount
--- @return void
function DHorizontalScroller:SetScroll(scroll) end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:SetShowDropTargets]
--- @param newState boolean @ No description provided
--- @return void
function DHorizontalScroller:SetShowDropTargets(newState) end

--- (client) Same as [DDragBase:SetUseLiveDrag](https://wiki.facepunch.com/gmod/DDragBase:SetUseLiveDrag) 
--- [https://wiki.facepunch.com/gmod/DHorizontalScroller:SetUseLiveDrag]
--- @param newState boolean @ No description provided
--- @return void
function DHorizontalScroller:SetUseLiveDrag(newState) end

