--- @class DAlphaBar : DPanel
DAlphaBar = {}

--- (client) Returns the base color of the alpha bar. This is the color for which the alpha channel is being modified. 
--- [https://wiki.facepunch.com/gmod/DAlphaBar:GetBarColor]
--- @return table
function DAlphaBar:GetBarColor() end

--- (client) Returns the alpha value of the alpha bar. 
--- [https://wiki.facepunch.com/gmod/DAlphaBar:GetValue]
--- @return number
function DAlphaBar:GetValue() end

--- (client) Called when user changes the desired alpha value with the control. 
--- [https://wiki.facepunch.com/gmod/DAlphaBar:OnChange]
--- @param alpha number @ The new alpha value
--- @return void
function DAlphaBar:OnChange(alpha) end

--- (client) Sets the base color of the alpha bar. This is the color for which the alpha channel is being modified. 
--- [https://wiki.facepunch.com/gmod/DAlphaBar:SetBarColor]
--- @param clr table @ The new [Color](https://wiki.facepunch.com/gmod/Color) to set. See [Color](https://wiki.facepunch.com/gmod/Global.Color).
--- @return void
function DAlphaBar:SetBarColor(clr) end

--- (client) Sets the alpha value or the alpha bar. 
--- [https://wiki.facepunch.com/gmod/DAlphaBar:SetValue]
--- @param alpha number @ The new alpha value to set
--- @return void
function DAlphaBar:SetValue(alpha) end

