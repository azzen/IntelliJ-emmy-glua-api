--- @class DPanel : PANEL
DPanel = {}

--- (client) Returns the panel's background color. 
--- [https://wiki.facepunch.com/gmod/DPanel:GetBackgroundColor]
--- @return table
function DPanel:GetBackgroundColor() end

--- (client) Returns whether or not the panel is disabled. 
--- [https://wiki.facepunch.com/gmod/DPanel:GetDisabled]
--- @return boolean
function DPanel:GetDisabled() end

--- (client) Returns whether or not the panel background is being drawn. Alias of [DPanel:GetPaintBackground](https://wiki.facepunch.com/gmod/DPanel:GetPaintBackground). 
--- [https://wiki.facepunch.com/gmod/DPanel:GetDrawBackground]
--- @return boolean
function DPanel:GetDrawBackground() end

--- (client) Returns whether or not the panel background is being drawn. 
--- [https://wiki.facepunch.com/gmod/DPanel:GetPaintBackground]
--- @return boolean
function DPanel:GetPaintBackground() end

--- (client) Sets the background color of the panel. 
--- [https://wiki.facepunch.com/gmod/DPanel:SetBackgroundColor]
--- @param color table @ The background color.
--- @return void
function DPanel:SetBackgroundColor(color) end

--- (client) Sets whether or not to disable the panel. 
--- [https://wiki.facepunch.com/gmod/DPanel:SetDisabled]
--- @param disabled boolean @ True to disable the panel (mouse input disabled and background alpha set to 75), false to enable it (mouse input enabled and background alpha set to 255).
--- @return void
function DPanel:SetDisabled(disabled) end

--- (client) Sets whether or not to draw the panel background. Alias of [DPanel:SetPaintBackground](https://wiki.facepunch.com/gmod/DPanel:SetPaintBackground). 
--- [https://wiki.facepunch.com/gmod/DPanel:SetDrawBackground]
--- @param draw boolean @ True to show the panel's background, false to hide it.
--- @return void
function DPanel:SetDrawBackground(draw) end

--- (client) Sets whether or not to paint/draw the panel background. 
--- [https://wiki.facepunch.com/gmod/DPanel:SetPaintBackground]
--- @param paint boolean @ True to show the panel's background, false to hide it.
--- @return void
function DPanel:SetPaintBackground(paint) end

