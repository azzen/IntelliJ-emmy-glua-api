--- @class DShape : DPanel
DShape = {}

--- (client) Returns the current type of shape this panel is set to display.
--- See [DShape:SetBorderColor](https://wiki.facepunch.com/gmod/DShape:SetBorderColor). 
--- [https://wiki.facepunch.com/gmod/DShape:GetBorderColor]
--- @return table
function DShape:GetBorderColor() end

--- (client) Returns the color set to display the shape with. 
--- [https://wiki.facepunch.com/gmod/DShape:GetColor]
--- @return table
function DShape:GetColor() end

--- (client) Returns the current type of shape this panel is set to display.
--- See [DShape:SetType](https://wiki.facepunch.com/gmod/DShape:SetType). 
--- [https://wiki.facepunch.com/gmod/DShape:GetType]
--- @return string
function DShape:GetType() end

--- (client) Sets the border color of the shape.
--- Currently does nothing. 
--- [https://wiki.facepunch.com/gmod/DShape:SetBorderColor]
--- @param clr table @ The desired border color. See [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DShape:SetBorderColor(clr) end

--- (client) Sets the color to display the shape with. 
--- [https://wiki.facepunch.com/gmod/DShape:SetColor]
--- @param clr table @ The [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DShape:SetColor(clr) end

--- (client) Sets the shape to be drawn. 
--- [https://wiki.facepunch.com/gmod/DShape:SetType]
--- @param type string @ The render type of the DShape. Only rectangles (`Rect`) work currently. If you don't define a type immediately, the [PANEL:Paint](https://wiki.facepunch.com/gmod/PANEL:Paint) method will generate errors until you do.
--- @return void
function DShape:SetType(type) end

