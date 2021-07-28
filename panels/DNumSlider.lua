--- @class DNumSlider : PANEL
DNumSlider = {}

--- (client) Returns the amount of numbers after the decimal point. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:GetDecimals]
--- @return number
function DNumSlider:GetDecimals() end

--- (client) Returns the default value of the slider, if one was set by [DNumSlider:SetDefaultValue](https://wiki.facepunch.com/gmod/DNumSlider:SetDefaultValue) 
--- [https://wiki.facepunch.com/gmod/DNumSlider:GetDefaultValue]
--- @return number
function DNumSlider:GetDefaultValue() end

--- (client) Returns the maximum value of the slider 
--- [https://wiki.facepunch.com/gmod/DNumSlider:GetMax]
--- @return number
function DNumSlider:GetMax() end

--- (client) Returns the minimum value of the slider 
--- [https://wiki.facepunch.com/gmod/DNumSlider:GetMin]
--- @return number
function DNumSlider:GetMin() end

--- (client) Returns the range of the slider, basically maximum value - minimum value. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:GetRange]
--- @return number
function DNumSlider:GetRange() end

--- (client) Returns the [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) component of the slider. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:GetTextArea]
--- @return Panel
function DNumSlider:GetTextArea() end

--- (client) Returns the value of the [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider) 
--- [https://wiki.facepunch.com/gmod/DNumSlider:GetValue]
--- @return number
function DNumSlider:GetValue() end

--- (client) Returns true if either the [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry), the [DSlider](https://wiki.facepunch.com/gmod/DSlider) or the [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch) are being edited. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:IsEditing]
--- @return boolean
function DNumSlider:IsEditing() end

--- (client) Called when the value of the slider is changed, through code or changing the slider. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:OnValueChanged]
--- @param value number @ The new value of the DNumSlider.
--- @return void
function DNumSlider:OnValueChanged(value) end

--- (client) Resets the slider to the default value, if one was set by [DNumSlider:SetDefaultValue](https://wiki.facepunch.com/gmod/DNumSlider:SetDefaultValue).
--- This function is called by the [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider) when user middle mouse clicks on the draggable knob of the slider. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:ResetToDefaultValue]
--- @return void
function DNumSlider:ResetToDefaultValue() end

--- (client) Sets the console variable to be updated when the value of the slider is changed. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:SetConVar]
--- @param cvar string @ The name of the [ConVar](https://wiki.facepunch.com/gmod/ConVar) to be updated.
--- @return void
function DNumSlider:SetConVar(cvar) end

--- (client) Calls [DLabel:SetDark](https://wiki.facepunch.com/gmod/DLabel:SetDark) on the [DLabel](https://wiki.facepunch.com/gmod/DLabel) part of the [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider). 
--- [https://wiki.facepunch.com/gmod/DNumSlider:SetDark]
--- @param dark boolean @ No description provided
--- @return void
function DNumSlider:SetDark(dark) end

--- (client) Sets the desired amount of numbers after the decimal point. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:SetDecimals]
--- @param decimals number @ 0 for whole numbers only, 1 for one number after the decimal point, etc.
--- @return void
function DNumSlider:SetDecimals(decimals) end

--- (client) Sets the default value of the slider, to be used by [DNumSlider:ResetToDefaultValue](https://wiki.facepunch.com/gmod/DNumSlider:ResetToDefaultValue) or by middle mouse clicking the draggable knob of the slider. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:SetDefaultValue]
--- @param default number @ The new default value of the slider to set
--- @return void
function DNumSlider:SetDefaultValue(default) end

--- (client) Sets the maximum value for the slider. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:SetMax]
--- @param max number @ The value to set as maximum for the slider.
--- @return void
function DNumSlider:SetMax(max) end

--- (client) Sets the minimum value for the slider 
--- [https://wiki.facepunch.com/gmod/DNumSlider:SetMin]
--- @param min number @ The value to set as minimum for the slider.
--- @return void
function DNumSlider:SetMin(min) end

--- (client) Sets the minimum and the maximum value of the slider. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:SetMinMax]
--- @param min number @ The minimum value of the slider.
--- @param max number @ The maximum value of the slider.
--- @return void
function DNumSlider:SetMinMax(min, max) end

--- (client) Sets the value of the [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider). 
--- [https://wiki.facepunch.com/gmod/DNumSlider:SetValue]
--- @param val number @ The value to set.
--- @return void
function DNumSlider:SetValue(val) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DNumSlider:TranslateSliderValues]
--- @param x number @ No description provided
--- @param y number @ No description provided
--- @return number|number
function DNumSlider:TranslateSliderValues(x, y) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DNumSlider:UpdateNotches]
--- @return void
function DNumSlider:UpdateNotches() end

--- (client) Called when the value has been changed. This will also be called when the user manually changes the value through the text panel.
--- This is an internal function. Override [DNumSlider:OnValueChanged](https://wiki.facepunch.com/gmod/DNumSlider:OnValueChanged) instead. 
--- [https://wiki.facepunch.com/gmod/DNumSlider:ValueChanged]
--- @param value number @ The value the slider has been changed to.
--- @return void
function DNumSlider:ValueChanged(value) end

