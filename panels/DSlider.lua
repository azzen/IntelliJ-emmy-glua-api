--- @class DSlider : PANEL
DSlider = {}

--- (client) Identical to [DSlider:IsEditing](https://wiki.facepunch.com/gmod/DSlider:IsEditing) 
--- [https://wiki.facepunch.com/gmod/DSlider:GetDragging]
--- @return boolean
function DSlider:GetDragging() end

--- (client) Returns the draggable panel's lock on the X axis.
--- See [DSlider:SetLockX](https://wiki.facepunch.com/gmod/DSlider:SetLockX) for more info. 
--- [https://wiki.facepunch.com/gmod/DSlider:GetLockX]
--- @return number
function DSlider:GetLockX() end

--- (client) Returns the draggable panel's lock on the Y axis.
--- See [DSlider:SetLockY](https://wiki.facepunch.com/gmod/DSlider:SetLockY) for more info. 
--- [https://wiki.facepunch.com/gmod/DSlider:GetLockY]
--- @return number
function DSlider:GetLockY() end

--- (client) Returns the current notch color, set by [DSlider:SetNotchColor](https://wiki.facepunch.com/gmod/DSlider:SetNotchColor) 
--- [https://wiki.facepunch.com/gmod/DSlider:GetNotchColor]
--- @return Color
function DSlider:GetNotchColor() end

--- (client) Appears to be non functioning, however is still used by panels such as [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider). 
--- [https://wiki.facepunch.com/gmod/DSlider:GetNotches]
--- @return number
function DSlider:GetNotches() end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DSlider:GetNumSlider]
--- @return any
function DSlider:GetNumSlider() end

--- (client) Returns the target position of the draggable "knob" panel of the slider on the X axis.
--- Set by [DSlider:SetSlideX](https://wiki.facepunch.com/gmod/DSlider:SetSlideX). 
--- [https://wiki.facepunch.com/gmod/DSlider:GetSlideX]
--- @return number
function DSlider:GetSlideX() end

--- (client) Returns the target position of the draggable "knob" panel of the slider on the Y axis.
--- Set by [DSlider:SetSlideY](https://wiki.facepunch.com/gmod/DSlider:SetSlideY). 
--- [https://wiki.facepunch.com/gmod/DSlider:GetSlideY]
--- @return number
function DSlider:GetSlideY() end

--- (client) Appears to be non functioning, however is still used by panels such as [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider). 
--- [https://wiki.facepunch.com/gmod/DSlider:GetTrapInside]
--- @return boolean
function DSlider:GetTrapInside() end

--- (client) Returns true if this element is being edited by the player. 
--- [https://wiki.facepunch.com/gmod/DSlider:IsEditing]
--- @return boolean
function DSlider:IsEditing() end

--- (client) Sets the background for the slider. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetBackground]
--- @param path string @ Path to the image.
--- @return void
function DSlider:SetBackground(path) end

--- (client) Sets whether or not the slider is being dragged. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetDragging]
--- @param dragging boolean @ No description provided
--- @return void
function DSlider:SetDragging(dragging) end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetImage]
--- @return void
function DSlider:SetImage() end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetImageColor]
--- @return void
function DSlider:SetImageColor() end

--- (client) Sets the lock on the X axis. 
--- For example the value 0.5 will lock the draggable panel to half the width of the slider's panel. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetLockX]
--- @param lockX number @ Set to nil to reset lock. The value range is from 0 to 1.
--- @return void
function DSlider:SetLockX(lockX) end

--- (client) Sets the lock on the Y axis. 
--- For example the value 0.5 will lock the draggable panel to half the height of the slider's panel. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetLockY]
--- @param lockY number @ Set to nil to reset lock. The value range is from 0 to 1.
--- @return void
function DSlider:SetLockY(lockY) end

--- (client) Sets the current notch color, overriding the color set by the derma skin. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetNotchColor]
--- @param clr Color @ The new color to set
--- @return void
function DSlider:SetNotchColor(clr) end

--- (client) Appears to be non functioning, however is still used by panels such as [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider). 
--- [https://wiki.facepunch.com/gmod/DSlider:SetNotches]
--- @param notches number @ No description provided
--- @return void
function DSlider:SetNotches(notches) end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetNumSlider]
--- @param slider any @ No description provided
--- @return void
function DSlider:SetNumSlider(slider) end

--- (client) Used to position the draggable panel of the slider on the X axis. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetSlideX]
--- @param x number @ The value range seems to be from 0 to 1
--- @return void
function DSlider:SetSlideX(x) end

--- (client) Used to position the draggable panel of the slider on the Y axis. 
--- [https://wiki.facepunch.com/gmod/DSlider:SetSlideY]
--- @param y number @ The value range seems to be from 0 to 1
--- @return void
function DSlider:SetSlideY(y) end

--- (client) Appears to be non functioning, however is still used by panels such as [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider). 
--- [https://wiki.facepunch.com/gmod/DSlider:SetTrapInside]
--- @param trap boolean @ No description provided
--- @return void
function DSlider:SetTrapInside(trap) end

--- (client) For override by child panels, such as [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider). 
--- [https://wiki.facepunch.com/gmod/DSlider:TranslateValues]
--- @param x number @ No description provided
--- @param y number @ No description provided
--- @return number|number
function DSlider:TranslateValues(x, y) end

