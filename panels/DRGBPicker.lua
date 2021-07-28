--- @class DRGBPicker : DPanel
DRGBPicker = {}

--- (client) Returns the color at given position on the internal texture. 
--- [https://wiki.facepunch.com/gmod/DRGBPicker:GetPosColor]
--- @param x number @ The X coordinate on the texture to get the color from
--- @param y number @ The Y coordinate on the texture to get the color from
--- @return table|number|number
function DRGBPicker:GetPosColor(x, y) end

--- (client) Returns the color currently set on the color picker. 
--- [https://wiki.facepunch.com/gmod/DRGBPicker:GetRGB]
--- @return table
function DRGBPicker:GetRGB() end

--- (client) Function which is called when the cursor is clicked and/or moved on the color picker. Meant to be overridden. 
--- [https://wiki.facepunch.com/gmod/DRGBPicker:OnChange]
--- @param col table @ The color that is selected on the color picker ([Color](https://wiki.facepunch.com/gmod/Color) form).
--- @return void
function DRGBPicker:OnChange(col) end

--- (client) Sets the color stored in the color picker. 
--- [https://wiki.facepunch.com/gmod/DRGBPicker:SetRGB]
--- @param color table @ The color to set, see [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DRGBPicker:SetRGB(color) end

