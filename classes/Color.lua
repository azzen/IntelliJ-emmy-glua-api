--- @class Color
Color = {}

--- (client/server) Sets the red, green, blue, and alpha of the color. 
--- [https://wiki.facepunch.com/gmod/Color:SetUnpacked]
--- @param r number @ The red component
--- @param g number @ The green component
--- @param b number @ The blue component
--- @param a number @ The alpha component
--- @return void
function Color:SetUnpacked(r, g, b, a) end

--- (client/menu/server) Converts a [Color](https://wiki.facepunch.com/gmod/Color) into HSL color space. This calls [ColorToHSL](https://wiki.facepunch.com/gmod/Global.ColorToHSL) internally. 
--- [https://wiki.facepunch.com/gmod/Color:ToHSL]
--- @return number|number|number
function Color:ToHSL() end

--- (client/menu/server) Converts a [Color](https://wiki.facepunch.com/gmod/Color) into HSV color space. This calls [ColorToHSV](https://wiki.facepunch.com/gmod/Global.ColorToHSV) internally. 
--- [https://wiki.facepunch.com/gmod/Color:ToHSV]
--- @return number|number|number
function Color:ToHSV() end

--- (client/server) Returns the color as a table with four elements. 
--- [https://wiki.facepunch.com/gmod/Color:ToTable]
--- @return table
function Color:ToTable() end

--- (client/server) Translates the [Color](https://wiki.facepunch.com/gmod/Color) into a [Vector](https://wiki.facepunch.com/gmod/Vector), losing the alpha channel.This will also range the values from 0 - 255 to 0 - 1r / 255 -> xg / 255 -> yb / 255 -> zThis is the opposite of [Vector:ToColor](https://wiki.facepunch.com/gmod/Vector:ToColor) 
--- [https://wiki.facepunch.com/gmod/Color:ToVector]
--- @return Vector
function Color:ToVector() end

--- (client/server) Returns the red, green, blue, and alpha of the color. 
--- [https://wiki.facepunch.com/gmod/Color:Unpack]
--- @return number|number|number|number
function Color:Unpack() end

