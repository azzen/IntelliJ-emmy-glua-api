--- @class DVerticalDivider : DPanel
DVerticalDivider = {}

--- (client) Returns the bottom content panel of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetBottom]
--- @return Panel
function DVerticalDivider:GetBottom() end

--- (client) Returns the minimum height of the bottom content panel. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetBottomMin]
--- @return number
function DVerticalDivider:GetBottomMin() end

--- (client) Returns the height of the divider bar between the top and bottom content panels of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetDividerHeight]
--- @return number
function DVerticalDivider:GetDividerHeight() end

--- (client) Returns whether the divider is being dragged or not. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetDragging]
--- @return boolean
function DVerticalDivider:GetDragging() end

--- (client) Returns the local Y position of where the user starts dragging the divider. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetHoldPos]
--- @return number
function DVerticalDivider:GetHoldPos() end

--- (client) Returns the middle content panel of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetMiddle]
--- @return Panel
function DVerticalDivider:GetMiddle() end

--- (client) Returns the top content panel of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetTop]
--- @return Panel
function DVerticalDivider:GetTop() end

--- (client) Returns the current height of the top content panel set by [DVerticalDivider:SetTopHeight](https://wiki.facepunch.com/gmod/DVerticalDivider:SetTopHeight) or by the user. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetTopHeight]
--- @return number
function DVerticalDivider:GetTopHeight() end

--- (client) Returns the maximum height of the top content panel. See [DVerticalDivider:SetTopMax](https://wiki.facepunch.com/gmod/DVerticalDivider:SetTopMax) for more information. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetTopMax]
--- @return number
function DVerticalDivider:GetTopMax() end

--- (client) Returns the minimum height of the top content panel. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:GetTopMin]
--- @return number
function DVerticalDivider:GetTopMin() end

--- (client) Sets the passed panel as the bottom content of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetBottom]
--- @param pnl Panel @ The panel to set as the bottom content.
--- @return void
function DVerticalDivider:SetBottom(pnl) end

--- (client) Sets the minimum height of the bottom content panel. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetBottomMin]
--- @param height number @ The minimum height of the bottom content panel. Default is 50.
--- @return void
function DVerticalDivider:SetBottomMin(height) end

--- (client) Sets the height of the divider bar between the top and bottom content panels of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetDividerHeight]
--- @param height number @ The height of the divider bar.
--- @return void
function DVerticalDivider:SetDividerHeight(height) end

--- (client) Sets whether the divider is being dragged or not. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetDragging]
--- @param isDragging boolean @ Setting this to true causes cursor movement to alter the position of the divider.
--- @return void
function DVerticalDivider:SetDragging(isDragging) end

--- (client) Sets the local Y position of where the user starts dragging the divider. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetHoldPos]
--- @param y number @ The local Y position where divider dragging has started.
--- @return void
function DVerticalDivider:SetHoldPos(y) end

--- (client) Places the passed panel in between the top and bottom content panels of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetMiddle]
--- @param pnl Panel @ The panel to set as the middle content.
--- @return void
function DVerticalDivider:SetMiddle(pnl) end

--- (client) Sets the passed panel as the top content of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetTop]
--- @param pnl Panel @ The panel to set as the top content.
--- @return void
function DVerticalDivider:SetTop(pnl) end

--- (client) Sets the height of the top content panel.
--- The height of the bottom content panel is automatically calculated by taking the total height of the [DVerticalDivider](https://wiki.facepunch.com/gmod/DVerticalDivider) and subtracting it with the height of the top content panel and the divider bar. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetTopHeight]
--- @param height number @ The height of the top content panel.
--- @return void
function DVerticalDivider:SetTopHeight(height) end

--- (client) Sets the maximum height of the top content panel. This is ignored if the panel would exceed the minimum bottom content panel height set from [DVerticalDivider:SetBottomMin](https://wiki.facepunch.com/gmod/DVerticalDivider:SetBottomMin). 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetTopMax]
--- @param height number @ The maximum height of the top content panel. Default is 4096.
--- @return void
function DVerticalDivider:SetTopMax(height) end

--- (client) Sets the minimum height of the top content panel. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:SetTopMin]
--- @param height number @ The minimum height of the top content panel. Default is 50.
--- @return void
function DVerticalDivider:SetTopMin(height) end

--- (client) Causes the user to start dragging the divider. 
--- [https://wiki.facepunch.com/gmod/DVerticalDivider:StartGrab]
--- @return void
function DVerticalDivider:StartGrab() end

