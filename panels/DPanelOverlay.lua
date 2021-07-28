--- @class DPanelOverlay : DPanel
DPanelOverlay = {}

--- (client) Returns the border color of the [DPanelOverlay](https://wiki.facepunch.com/gmod/DPanelOverlay) set by [DPanelOverlay:SetColor](https://wiki.facepunch.com/gmod/DPanelOverlay:SetColor). 
--- [https://wiki.facepunch.com/gmod/DPanelOverlay:GetColor]
--- @return table
function DPanelOverlay:GetColor() end

--- (client) Returns the type of the [DPanelOverlay](https://wiki.facepunch.com/gmod/DPanelOverlay) set by [DPanelOverlay:SetType](https://wiki.facepunch.com/gmod/DPanelOverlay:SetType). 
--- [https://wiki.facepunch.com/gmod/DPanelOverlay:GetType]
--- @return number
function DPanelOverlay:GetType() end

--- (client) Used internally by the panel for type 3. 
--- [https://wiki.facepunch.com/gmod/DPanelOverlay:PaintDifferentColours]
--- @param cola table @ No description provided
--- @param colb table @ No description provided
--- @param colc table @ No description provided
--- @param cold table @ No description provided
--- @param size number @ No description provided
--- @return void
function DPanelOverlay:PaintDifferentColours(cola, colb, colc, cold, size) end

--- (client) Used internally by the panel for types 1 and 2. 
--- [https://wiki.facepunch.com/gmod/DPanelOverlay:PaintInnerCorners]
--- @param size number @ No description provided
--- @return void
function DPanelOverlay:PaintInnerCorners(size) end

--- (client) Sets the border color of the [DPanelOverlay](https://wiki.facepunch.com/gmod/DPanelOverlay). 
--- [https://wiki.facepunch.com/gmod/DPanelOverlay:SetColor]
--- @param color table @ The color to set. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DPanelOverlay:SetColor(color) end

--- (client) Sets the type of the [DPanelOverlay](https://wiki.facepunch.com/gmod/DPanelOverlay). 
--- [https://wiki.facepunch.com/gmod/DPanelOverlay:SetType]
--- @param type number @ The type to set. Possible value are:  1 - 8px corners of given color  2 - 4px corners of given type  3 - 2 top? corners of hardcoded color, 2 other corners of given color
--- @return void
function DPanelOverlay:SetType(type) end

