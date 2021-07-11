--- @class MarkupObject
MarkupObject = {}

--- (client) Draws the computed markupobject to the screen. 
--- [https://wiki.facepunch.com/gmod/MarkupObject:Draw]
--- @param xOffset number @ The X coordinate on the screen.
--- @param yOffset number @ The Y coordinate on the screen.
--- @param xAlign number @ The alignment of the x coordinate using [TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN)
--- @param yAlign number @ The alignment of the y coordinate using [TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN)
--- @param alphaoverride number @ Sets the alpha of all drawn objects to this.
--- @return void
function MarkupObject:Draw(xOffset, yOffset, xAlign, yAlign, alphaoverride) end

--- (client) Gets computed the height of the markupobject. 
--- [https://wiki.facepunch.com/gmod/MarkupObject:GetHeight]
--- @return number
function MarkupObject:GetHeight() end

--- (client) Gets computed the width of the markupobject. 
--- [https://wiki.facepunch.com/gmod/MarkupObject:GetWidth]
--- @return number
function MarkupObject:GetWidth() end

--- (client) Gets computed the width and height of the markupobject. 
--- [https://wiki.facepunch.com/gmod/MarkupObject:Size]
--- @return number|number
function MarkupObject:Size() end

