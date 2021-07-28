--- @class DHorizontalDivider : DPanel
DHorizontalDivider = {}

--- (client) Returns the width of the horizontal divider bar, set by [DHorizontalDivider:SetDividerWidth](https://wiki.facepunch.com/gmod/DHorizontalDivider:SetDividerWidth). 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetDividerWidth]
--- @return number
function DHorizontalDivider:GetDividerWidth() end

--- (client) Returns whether or not the player is currently dragging the middle divider bar. 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetDragging]
--- @return boolean
function DHorizontalDivider:GetDragging() end

--- (client) Returns the local X coordinate of where the player started dragging the thing 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetHoldPos]
--- @return number
function DHorizontalDivider:GetHoldPos() end

--- (client) Returns the left side content of the [DHorizontalDivider](https://wiki.facepunch.com/gmod/DHorizontalDivider) 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetLeft]
--- @return Panel
function DHorizontalDivider:GetLeft() end

--- (client) Returns the minimum width of the left side, set by [DHorizontalDivider:SetLeftMin](https://wiki.facepunch.com/gmod/DHorizontalDivider:SetLeftMin). 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetLeftMin]
--- @return number
function DHorizontalDivider:GetLeftMin() end

--- (client) Returns the current width of the left side, set by [DHorizontalDivider:SetLeftWidth](https://wiki.facepunch.com/gmod/DHorizontalDivider:SetLeftWidth) or by the user. 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetLeftWidth]
--- @return number
function DHorizontalDivider:GetLeftWidth() end

--- (client) Returns the middle content, set by [DHorizontalDivider:SetMiddle](https://wiki.facepunch.com/gmod/DHorizontalDivider:SetMiddle). 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetMiddle]
--- @return Panel
function DHorizontalDivider:GetMiddle() end

--- (client) Returns the right side content 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetRight]
--- @return Panel
function DHorizontalDivider:GetRight() end

--- (client) Returns the minimum width of the right side, set by [DHorizontalDivider:SetRightMin](https://wiki.facepunch.com/gmod/DHorizontalDivider:SetRightMin). 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:GetRightMin]
--- @return number
function DHorizontalDivider:GetRightMin() end

--- (client) Sets the width of the horizontal divider bar. 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetDividerWidth]
--- @param width number @ The width of the horizontal divider bar.
--- @return void
function DHorizontalDivider:SetDividerWidth(width) end

--- (client) Sets whether the player is dragging the divider or not 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetDragging]
--- @param dragonot boolean @ No description provided
--- @return void
function DHorizontalDivider:SetDragging(dragonot) end

--- (client) Sets the local X coordinate of where the player started dragging the thing 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetHoldPos]
--- @param x number @ No description provided
--- @return void
function DHorizontalDivider:SetHoldPos(x) end

--- (client) Sets the left side content of the [DHorizontalDivider](https://wiki.facepunch.com/gmod/DHorizontalDivider). 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetLeft]
--- @param pnl Panel @ The panel to set as the left side
--- @return void
function DHorizontalDivider:SetLeft(pnl) end

--- (client) Sets the minimum width of the left side 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetLeftMin]
--- @param minWidth number @ The minimum width of the left side
--- @return void
function DHorizontalDivider:SetLeftMin(minWidth) end

--- (client) Sets the current/starting width of the left side.
--- The width of the right side is automatically calculated by subtracting this from the total width of the [DHorizontalDivider](https://wiki.facepunch.com/gmod/DHorizontalDivider). 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetLeftWidth]
--- @param width number @ The current/starting width of the left side
--- @return void
function DHorizontalDivider:SetLeftWidth(width) end

--- (client) Sets the middle content, over the draggable divider bar panel. 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetMiddle]
--- @param middle Panel @ The middle content
--- @return void
function DHorizontalDivider:SetMiddle(middle) end

--- (client) Sets the right side content 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetRight]
--- @param pnl Panel @ The right side content
--- @return void
function DHorizontalDivider:SetRight(pnl) end

--- (client) Sets the minimum width of the right side 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:SetRightMin]
--- @param minWidth number @ The minimum width of the right side
--- @return void
function DHorizontalDivider:SetRightMin(minWidth) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DHorizontalDivider:StartGrab]
--- @return void
function DHorizontalDivider:StartGrab() end

