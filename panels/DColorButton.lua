--- @class DColorButton : DLabel
DColorButton = {}

--- (client) Returns the color of the button 
--- [https://wiki.facepunch.com/gmod/DColorButton:GetColor]
--- @return table
function DColorButton:GetColor() end

--- (client) Returns the unique ID set by [DColorButton:SetID](https://wiki.facepunch.com/gmod/DColorButton:SetID).
--- Used internally by [DColorPalette](https://wiki.facepunch.com/gmod/DColorPalette) 
--- [https://wiki.facepunch.com/gmod/DColorButton:GetID]
--- @return number
function DColorButton:GetID() end

--- (client) Returns whether the [DColorButton](https://wiki.facepunch.com/gmod/DColorButton) is currently being pressed (the user is holding it down). 
--- [https://wiki.facepunch.com/gmod/DColorButton:IsDown]
--- @return boolean
function DColorButton:IsDown() end

--- (client) Sets the color of the [DColorButton](https://wiki.facepunch.com/gmod/DColorButton). 
--- [https://wiki.facepunch.com/gmod/DColorButton:SetColor]
--- @param color table @ A [Color](https://wiki.facepunch.com/gmod/Color) to set the color as
--- @param noTooltip boolean @ If true, the tooltip will not be reset to display the selected color.
--- @return void
function DColorButton:SetColor(color, noTooltip) end

--- (client) Used internally by [DColorPalette](https://wiki.facepunch.com/gmod/DColorPalette) to detect which button is which. 
--- [https://wiki.facepunch.com/gmod/DColorButton:SetID]
--- @param id number @ A unique ID to give this button
--- @return void
function DColorButton:SetID(id) end

