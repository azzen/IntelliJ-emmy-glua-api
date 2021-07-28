--- @class DCollapsibleCategory : PANEL
DCollapsibleCategory = {}

--- (client) Adds a new text button to the collapsible category, like the tool menu in Spawnmenu. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:Add]
--- @param name string @ The name of the button
--- @return Panel
function DCollapsibleCategory:Add(name) end

--- (client) Internal function that handles the open/close animations. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:AnimSlide]
--- @param anim table @ No description provided
--- @param delta number @ No description provided
--- @param data table @ No description provided
--- @return void
function DCollapsibleCategory:AnimSlide(anim, delta, data) end

--- (client) Forces the category to open or collapse 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:DoExpansion]
--- @param expand boolean @ True to open, false to collapse
--- @return void
function DCollapsibleCategory:DoExpansion(expand) end

--- (client) Returns the expand/collapse animation time set by [DCollapsibleCategory:SetAnimTime](https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetAnimTime). 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetAnimTime]
--- @return number
function DCollapsibleCategory:GetAnimTime() end

--- (client) Returns whether the DCollapsibleCategory is expanded or not. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetExpanded]
--- @return boolean
function DCollapsibleCategory:GetExpanded() end

--- (client) Returns the header height of the [DCollapsibleCategory](https://wiki.facepunch.com/gmod/DCollapsibleCategory).
--- See also [DCollapsibleCategory:SetHeaderHeight](https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetHeaderHeight). 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetHeaderHeight]
--- @return number
function DCollapsibleCategory:GetHeaderHeight() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetList]
--- @return Panel
function DCollapsibleCategory:GetList() end

--- (client) Doesn't actually do anything.
--- Returns the number set by [DCollapsibleCategory:SetPadding](https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetPadding). 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetPadding]
--- @return number
function DCollapsibleCategory:GetPadding() end

--- (client) Returns whether or not the background should be painted. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetPaintBackground]
--- @return boolean
function DCollapsibleCategory:GetPaintBackground() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetStartHeight]
--- @return number
function DCollapsibleCategory:GetStartHeight() end

--- (client) Called by [DCollapsibleCategory:Toggle](https://wiki.facepunch.com/gmod/DCollapsibleCategory:Toggle). This function does nothing by itself, as you're supposed to overwrite it. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:OnToggle]
--- @param expanded boolean @ If it was expanded or not
--- @return void
function DCollapsibleCategory:OnToggle(expanded) end

--- (client) Sets the time in seconds it takes to expand the DCollapsibleCategory 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetAnimTime]
--- @param time number @ The time in seconds it takes to expand
--- @return void
function DCollapsibleCategory:SetAnimTime(time) end

--- (client) Sets the contents of the DCollapsibleCategory. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetContents]
--- @param pnl Panel @ The panel, containing the contents for the DCollapsibleCategory, mostly an DScrollPanel
--- @return void
function DCollapsibleCategory:SetContents(pnl) end

--- (client) Sets whether the [DCollapsibleCategory](https://wiki.facepunch.com/gmod/DCollapsibleCategory) is expanded or not upon opening the container.
--- You should use [DCollapsibleCategory:Toggle](https://wiki.facepunch.com/gmod/DCollapsibleCategory:Toggle) or [DCollapsibleCategory:DoExpansion](https://wiki.facepunch.com/gmod/DCollapsibleCategory:DoExpansion) instead. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetExpanded]
--- @param expanded boolean @ Whether it shall be expanded or not by default
--- @return void
function DCollapsibleCategory:SetExpanded(expanded) end

--- (client) Sets the header height of the [DCollapsibleCategory](https://wiki.facepunch.com/gmod/DCollapsibleCategory).
--- See also [DCollapsibleCategory:GetHeaderHeight](https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetHeaderHeight). 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetHeaderHeight]
--- @param height number @ The new height to set. Default height is 20.
--- @return void
function DCollapsibleCategory:SetHeaderHeight(height) end

--- (client) Sets the name of the DCollapsibleCategory. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetLabel]
--- @param label string @ The label/name of the DCollapsibleCategory.
--- @return void
function DCollapsibleCategory:SetLabel(label) end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetList]
--- @param pnl Panel @ No description provided
--- @return void
function DCollapsibleCategory:SetList(pnl) end

--- (client) Doesn't actually do anything. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetPadding]
--- @param padding number @ No description provided
--- @return void
function DCollapsibleCategory:SetPadding(padding) end

--- (client) Sets whether or not the background should be painted. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetPaintBackground]
--- @param paint boolean @ No description provided
--- @return void
function DCollapsibleCategory:SetPaintBackground(paint) end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:SetStartHeight]
--- @param height number @ No description provided
--- @return void
function DCollapsibleCategory:SetStartHeight(height) end

--- (client) Toggles the expanded state of the [DCollapsibleCategory](https://wiki.facepunch.com/gmod/DCollapsibleCategory).
--- See [DCollapsibleCategory:GetExpanded](https://wiki.facepunch.com/gmod/DCollapsibleCategory:GetExpanded) for a function to retrieve the expanded state. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:Toggle]
--- @return void
function DCollapsibleCategory:Toggle() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:UnselectAll]
--- @return void
function DCollapsibleCategory:UnselectAll() end

--- (client) Used internally to update the "AltLine" property on all "child" panels. 
--- [https://wiki.facepunch.com/gmod/DCollapsibleCategory:UpdateAltLines]
--- @return void
function DCollapsibleCategory:UpdateAltLines() end

