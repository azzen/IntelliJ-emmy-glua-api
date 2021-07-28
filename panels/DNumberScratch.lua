--- @class DNumberScratch : DImageButton
DNumberScratch = {}

--- (client) Used by [DNumberScratch:DrawScreen](https://wiki.facepunch.com/gmod/DNumberScratch:DrawScreen). 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:DrawNotches]
--- @param level number @ No description provided
--- @param x number @ No description provided
--- @param y number @ No description provided
--- @param w number @ No description provided
--- @param h number @ No description provided
--- @param range number @ No description provided
--- @param value number @ No description provided
--- @param min number @ No description provided
--- @param max number @ No description provided
--- @return void
function DNumberScratch:DrawNotches(level, x, y, w, h, range, value, min, max) end

--- (client) Used by [DNumberScratch:PaintScratchWindow](https://wiki.facepunch.com/gmod/DNumberScratch:PaintScratchWindow). 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:DrawScreen]
--- @param x number @ No description provided
--- @param y number @ No description provided
--- @param w number @ No description provided
--- @param h number @ No description provided
--- @return void
function DNumberScratch:DrawScreen(x, y, w, h) end

--- (client) Returns whether this panel is active or not, i.e. if the player is currently changing its value. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetActive]
--- @return boolean
function DNumberScratch:GetActive() end

--- (client) Returns the desired amount of numbers after the decimal point. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetDecimals]
--- @return number
function DNumberScratch:GetDecimals() end

--- (client) Returns the real value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) as a number.
--- See also [DNumberScratch:GetTextValue](https://wiki.facepunch.com/gmod/DNumberScratch:GetTextValue) and [DNumberScratch:GetFraction](https://wiki.facepunch.com/gmod/DNumberScratch:GetFraction). 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetFloatValue]
--- @return number
function DNumberScratch:GetFloatValue() end

--- (client) Returns the value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) as a fraction, a value between 0 and 1 where 0 is the minimum and 1 is the maximum value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch).
--- See also:
--- * [DNumberScratch:GetTextValue](https://wiki.facepunch.com/gmod/DNumberScratch:GetTextValue)
--- * [DNumberScratch:GetFloatValue](https://wiki.facepunch.com/gmod/DNumberScratch:GetFloatValue)
--- * [DNumberScratch:SetFraction](https://wiki.facepunch.com/gmod/DNumberScratch:SetFraction) 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetFraction]
--- @return number
function DNumberScratch:GetFraction() end

--- (client) Returns the maximum value that can be selected on the number scratch 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetMax]
--- @return number
function DNumberScratch:GetMax() end

--- (client) Returns the minimum value that can be selected on the number scratch 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetMin]
--- @return number
function DNumberScratch:GetMin() end

--- (client) Returns the range of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch). Basically max value - min value. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetRange]
--- @return number
function DNumberScratch:GetRange() end

--- (client) Returns whether the scratch window should be visible or not. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetShouldDrawScreen]
--- @return boolean
function DNumberScratch:GetShouldDrawScreen() end

--- (client) Returns the real value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) as a string.
--- See also [DNumberScratch:GetFloatValue](https://wiki.facepunch.com/gmod/DNumberScratch:GetFloatValue) and [DNumberScratch:GetFraction](https://wiki.facepunch.com/gmod/DNumberScratch:GetFraction). 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetTextValue]
--- @return string
function DNumberScratch:GetTextValue() end

--- (client) Returns the zoom level of the scratch window 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:GetZoom]
--- @return number
function DNumberScratch:GetZoom() end

--- (client) Returns the ideal zoom level for the panel based on the [DNumberScratch:GetRange](https://wiki.facepunch.com/gmod/DNumberScratch:GetRange). 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:IdealZoom]
--- @return number
function DNumberScratch:IdealZoom() end

--- (client) Returns whether the player is currently editing the value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch). 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:IsEditing]
--- @return boolean
function DNumberScratch:IsEditing() end

--- (client) Used to lock the cursor in place. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:LockCursor]
--- @return void
function DNumberScratch:LockCursor() end

--- (client) Called when the value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) is changed. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:OnValueChanged]
--- @param newValue number @ The new value
--- @return void
function DNumberScratch:OnValueChanged(newValue) end

--- (client) Used to paint the 'scratch' window. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:PaintScratchWindow]
--- @return void
function DNumberScratch:PaintScratchWindow() end

--- (client) Sets whether or not the panel is 'active'.
--- Forcing this panel to be active may not work. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetActive]
--- @param active boolean @ true to activate, false to deactivate.
--- @return void
function DNumberScratch:SetActive(active) end

--- (client) Sets the desired amount of numbers after the decimal point. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetDecimals]
--- @param decimals number @ 0 for whole numbers only, 1 for one number after the decimal point, etc.
--- @return void
function DNumberScratch:SetDecimals(decimals) end

--- (client) Does not trigger [DNumberScratch:OnValueChanged](https://wiki.facepunch.com/gmod/DNumberScratch:OnValueChanged)
--- Use [DNumberScratch:SetValue](https://wiki.facepunch.com/gmod/DNumberScratch:SetValue) instead. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetFloatValue]
--- @param val number @ The value to set
--- @return void
function DNumberScratch:SetFloatValue(val) end

--- (client) Sets the value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) as a fraction, a value between 0 and 1 where 0 is the minimum and 1 is the maximum value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetFraction]
--- @param frac number @ A value between 0 and 1
--- @return void
function DNumberScratch:SetFraction(frac) end

--- (client) Sets the max value that can be selected on the number scratch 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetMax]
--- @param max number @ The maximum number
--- @return void
function DNumberScratch:SetMax(max) end

--- (client) Sets the minimum value that can be selected on the number scratch. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetMin]
--- @param min number @ The minimum number
--- @return void
function DNumberScratch:SetMin(min) end

--- (client) Sets if the scratch window should be drawn or not. Cannot be used to force it to draw, only to hide it, which will not stop the panel from working with invisible window. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetShouldDrawScreen]
--- @param shouldDraw boolean @ No description provided
--- @return void
function DNumberScratch:SetShouldDrawScreen(shouldDraw) end

--- (client) Sets the value of the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) and triggers [DNumberScratch:OnValueChanged](https://wiki.facepunch.com/gmod/DNumberScratch:OnValueChanged) 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetValue]
--- @param val number @ The value to set.
--- @return void
function DNumberScratch:SetValue(val) end

--- (client) Sets the zoom level of the scratch panel. 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:SetZoom]
--- @param zoom number @ No description provided
--- @return void
function DNumberScratch:SetZoom(zoom) end

--- (client) Forces the assigned ConVar to be updated to the value of this [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) 
--- [https://wiki.facepunch.com/gmod/DNumberScratch:UpdateConVar]
--- @return void
function DNumberScratch:UpdateConVar() end

