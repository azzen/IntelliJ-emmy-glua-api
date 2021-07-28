--- @class DColorCube : DSlider
DColorCube = {}

--- (client) Returns the base Color set by [DColorCube:SetBaseRGB](https://wiki.facepunch.com/gmod/DColorCube:SetBaseRGB). 
--- [https://wiki.facepunch.com/gmod/DColorCube:GetBaseRGB]
--- @return table
function DColorCube:GetBaseRGB() end

--- (client) Returns the value set by [DColorCube:SetHue](https://wiki.facepunch.com/gmod/DColorCube:SetHue). 
--- [https://wiki.facepunch.com/gmod/DColorCube:GetHue]
--- @return number
function DColorCube:GetHue() end

--- (client) Returns the color cube's current set color. 
--- [https://wiki.facepunch.com/gmod/DColorCube:GetRGB]
--- @return table
function DColorCube:GetRGB() end

--- (client) Function which is called when the color cube slider is moved (through user input). Meant to be overridden. 
--- [https://wiki.facepunch.com/gmod/DColorCube:OnUserChanged]
--- @param color table @ The new color, uses [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DColorCube:OnUserChanged(color) end

--- (client) Sets the base color and the color used to draw the color cube panel itself. 
--- [https://wiki.facepunch.com/gmod/DColorCube:SetBaseRGB]
--- @param color table @ The base color to set, uses [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DColorCube:SetBaseRGB(color) end

--- (client) Sets the base color of the color cube and updates the slider position. 
--- [https://wiki.facepunch.com/gmod/DColorCube:SetColor]
--- @param color table @ The color to set, uses [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DColorCube:SetColor(color) end

--- (client) Appears to do nothing and unused. 
--- [https://wiki.facepunch.com/gmod/DColorCube:SetHue]
--- @param hue number @ No description provided
--- @return void
function DColorCube:SetHue(hue) end

--- (client) Used internally to set the real "output" color of the panel. 
--- [https://wiki.facepunch.com/gmod/DColorCube:SetRGB]
--- @param clr table @ A [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DColorCube:SetRGB(clr) end

--- (client) Updates the color cube RGB based on the given x and y position and returns its arguments. Similar to [DColorCube:UpdateColor](https://wiki.facepunch.com/gmod/DColorCube:UpdateColor). 
--- [https://wiki.facepunch.com/gmod/DColorCube:TranslateValues]
--- @param x number @ The x position to sample color from/the percentage of saturation to remove from the color (ranges from 0.0 to 1.0).
--- @param y number @ The y position to sample color from/the percentage of brightness or value to remove from the color (ranges from 0.0 to 1.0).
--- @return number|number
function DColorCube:TranslateValues(x, y) end

--- (client) Updates the color cube RGB based on the given x and y position. Similar to [DColorCube:TranslateValues](https://wiki.facepunch.com/gmod/DColorCube:TranslateValues). 
--- [https://wiki.facepunch.com/gmod/DColorCube:UpdateColor]
--- @param x number @ The x position to set color to/the percentage of saturation to remove from the color (ranges from 0.0 to 1.0).
--- @param y number @ The y position to set color to/the percentage of brightness or value to remove from the color (ranges from 0.0 to 1.0).
--- @return void
function DColorCube:UpdateColor(x, y) end

