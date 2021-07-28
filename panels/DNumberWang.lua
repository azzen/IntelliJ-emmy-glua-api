--- @class DNumberWang : DTextEntry
DNumberWang = {}

--- (client) Returns the amount of decimal places allowed in the number selector, set by [DNumberWang:SetDecimals](https://wiki.facepunch.com/gmod/DNumberWang:SetDecimals) 
--- [https://wiki.facepunch.com/gmod/DNumberWang:GetDecimals]
--- @return number
function DNumberWang:GetDecimals() end

--- (client) Returns whatever is set by [DNumberWang:SetFloatValue](https://wiki.facepunch.com/gmod/DNumberWang:SetFloatValue) or 0. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:GetFloatValue]
--- @return number
function DNumberWang:GetFloatValue() end

--- (client) Returns a fraction representing the current number selector value to number selector min/max range ratio. If argument `val` is supplied, that number will be computed instead. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:GetFraction]
--- @param val number @ The fraction numerator.
--- @return void
function DNumberWang:GetFraction(val) end

--- (client) Returns interval at which the up and down buttons change the current value. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:GetInterval]
--- @return number
function DNumberWang:GetInterval() end

--- (client) Returns the maximum numeric value allowed by the number selector. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:GetMax]
--- @return number
function DNumberWang:GetMax() end

--- (client) Returns the minimum numeric value allowed by the number selector. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:GetMin]
--- @return number
function DNumberWang:GetMin() end

--- (client) This function returns the panel it is used on. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:GetTextArea]
--- @return Panel
function DNumberWang:GetTextArea() end

--- (client) Returns the numeric value inside the number selector. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:GetValue]
--- @return number
function DNumberWang:GetValue() end

--- (client) Hides the number selector arrows. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:HideWang]
--- @return void
function DNumberWang:HideWang() end

--- (client) Internal function which is called when the number selector value is changed. This function is empty by default so it needs to be overridden in order to provide functionality. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:OnValueChanged]
--- @param val number @ The new value of the number selector.
--- @return void
function DNumberWang:OnValueChanged(val) end

--- (client) Sets the amount of decimal places allowed in the number selector. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:SetDecimals]
--- @param num number @ The amount of decimal places.
--- @return void
function DNumberWang:SetDecimals(num) end

--- (client) Appears to do nothing. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:SetFloatValue]
--- @param val number @ No description provided
--- @return void
function DNumberWang:SetFloatValue(val) end

--- (client) Sets the value of the number selector based on the given fraction number. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:SetFraction]
--- @param val number @ The fraction of the number selector's range.
--- @return void
function DNumberWang:SetFraction(val) end

--- (client) Sets interval at which the up and down buttons change the current value. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:SetInterval]
--- @param min number @ The new interval.
--- @return void
function DNumberWang:SetInterval(min) end

--- (client) Sets the maximum numeric value allowed by the number selector. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:SetMax]
--- @param max number @ The maximum value.
--- @return void
function DNumberWang:SetMax(max) end

--- (client) Sets the minimum numeric value allowed by the number selector. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:SetMin]
--- @param min number @ The minimum value.
--- @return void
function DNumberWang:SetMin(min) end

--- (client) Sets the minimum and maximum value allowed by the number selector. 
--- [https://wiki.facepunch.com/gmod/DNumberWang:SetMinMax]
--- @param min number @ The minimum value.
--- @param max number @ The maximum value.
--- @return void
function DNumberWang:SetMinMax(min, max) end

--- (client) Sets the value of the [DNumberWang](https://wiki.facepunch.com/gmod/DNumberWang) and triggers [DNumberWang:OnValueChanged](https://wiki.facepunch.com/gmod/DNumberWang:OnValueChanged) 
--- [https://wiki.facepunch.com/gmod/DNumberWang:SetValue]
--- @param val number @ The value to set.
--- @return void
function DNumberWang:SetValue(val) end

