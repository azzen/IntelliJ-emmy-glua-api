--- @class DMenuBar : DPanel
DMenuBar = {}

--- (client) Creates a new [DMenu](https://wiki.facepunch.com/gmod/DMenu) object tied to a [DButton](https://wiki.facepunch.com/gmod/DButton) with the given label on the menu bar.
--- This will create a new menu regardless of whether or not one with the same label exists. To add **or** get a menu, use [DMenuBar:AddOrGetMenu](https://wiki.facepunch.com/gmod/DMenuBar:AddOrGetMenu). 
--- [https://wiki.facepunch.com/gmod/DMenuBar:AddMenu]
--- @param label string @ The name (label) of the derma menu to create.
--- @return Panel
function DMenuBar:AddMenu(label) end

--- (client) Retrieves a [DMenu](https://wiki.facepunch.com/gmod/DMenu) object from the menu bar. If one with the given label doesn't exist, a new one is created.
--- To add a DMenu without checking, use [DMenuBar:AddMenu](https://wiki.facepunch.com/gmod/DMenuBar:AddMenu). 
--- [https://wiki.facepunch.com/gmod/DMenuBar:AddOrGetMenu]
--- @param label string @ The name (label) of the derma menu to get or create.
--- @return Panel
function DMenuBar:AddOrGetMenu(label) end

--- (client) Returns the DMenuBar's background color 
--- [https://wiki.facepunch.com/gmod/DMenuBar:GetBackgroundColor]
--- @return table
function DMenuBar:GetBackgroundColor() end

--- (client) Returns whether or not the DMenuBar is disabled 
--- [https://wiki.facepunch.com/gmod/DMenuBar:GetDisabled]
--- @return boolean
function DMenuBar:GetDisabled() end

--- (client) Returns whether or not the background should be painted. Is the same as [DMenuBar:GetPaintBackground](https://wiki.facepunch.com/gmod/DMenuBar:GetPaintBackground) 
--- [https://wiki.facepunch.com/gmod/DMenuBar:GetDrawBackground]
--- @return boolean
function DMenuBar:GetDrawBackground() end

--- (client) Returns whether or not the panel is a menu. Used for closing menus when another panel is selected. 
--- [https://wiki.facepunch.com/gmod/DMenuBar:GetIsMenu]
--- @return boolean
function DMenuBar:GetIsMenu() end

--- (client) If a menu is visible/opened, then the menu is returned. 
--- [https://wiki.facepunch.com/gmod/DMenuBar:GetOpenMenu]
--- @return Panel
function DMenuBar:GetOpenMenu() end

--- (client) Returns whether or not the background should be painted. Is the same as [DMenuBar:GetDrawBackground](https://wiki.facepunch.com/gmod/DMenuBar:GetDrawBackground) 
--- [https://wiki.facepunch.com/gmod/DMenuBar:GetPaintBackground]
--- @return boolean
function DMenuBar:GetPaintBackground() end

--- (client) Sets the background color 
--- [https://wiki.facepunch.com/gmod/DMenuBar:SetBackgroundColor]
--- @param color table @ See [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DMenuBar:SetBackgroundColor(color) end

--- (client) Sets whether or not the panel is disabled 
--- [https://wiki.facepunch.com/gmod/DMenuBar:SetDisabled]
--- @param disable boolean @ Should be disabled or not
--- @return void
function DMenuBar:SetDisabled(disable) end

--- (client) Sets whether or not the background should be painted. Is the same as [DMenuBar:SetPaintBackground](https://wiki.facepunch.com/gmod/DMenuBar:SetPaintBackground) 
--- [https://wiki.facepunch.com/gmod/DMenuBar:SetDrawBackground]
--- @param shouldPaint boolean @ Should the background be painted
--- @return void
function DMenuBar:SetDrawBackground(shouldPaint) end

--- (client) Sets whether or not the panel is a menu. Used for closing menus when another panel is selected. 
--- [https://wiki.facepunch.com/gmod/DMenuBar:SetIsMenu]
--- @param isMenu boolean @ Is this a menu
--- @return void
function DMenuBar:SetIsMenu(isMenu) end

--- (client) Sets whether or not the background should be painted. Is the same as [DMenuBar:SetDrawBackground](https://wiki.facepunch.com/gmod/DMenuBar:SetDrawBackground) 
--- [https://wiki.facepunch.com/gmod/DMenuBar:SetPaintBackground]
--- @param shouldPaint boolean @ Should the background be painted
--- @return void
function DMenuBar:SetPaintBackground(shouldPaint) end

