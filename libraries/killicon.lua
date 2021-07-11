--- @class killicon
killicon = {}

--- (client) Creates new kill icon using a texture. 
--- [https://wiki.facepunch.com/gmod/killicon.Add]
--- @param class string @ Weapon or entity class
--- @param texture string @ Path to the texture
--- @param color table @ Color of the kill icon
--- @return void
function killicon.Add(class, texture, color) end

--- (client) Creates kill icon from existing one. 
--- [https://wiki.facepunch.com/gmod/killicon.AddAlias]
--- @param new_class string @ New class of the kill icon
--- @param existing_class string @ Already existing kill icon class
--- @return void
function killicon.AddAlias(new_class, existing_class) end

--- (client) Adds kill icon for given weapon/entity class using special font. 
--- [https://wiki.facepunch.com/gmod/killicon.AddFont]
--- @param class string @ Weapon or entity class
--- @param font string @ Font to be used
--- @param symbol string @ The symbol to be used
--- @param color table @ Color of the killicon
--- @return void
function killicon.AddFont(class, font, symbol, color) end

--- (client) Draws a kill icon. 
--- [https://wiki.facepunch.com/gmod/killicon.Draw]
--- @param x number @ X coordinate of the icon
--- @param y number @ Y coordinate of the icon
--- @param name string @ Classname of the kill icon
--- @param alpha number @ Alpha/transparency value ( 0 - 255 ) of the icon
--- @return void
function killicon.Draw(x, y, name, alpha) end

--- (client) Checks if kill icon exists for given class. 
--- [https://wiki.facepunch.com/gmod/killicon.Exists]
--- @param class string @ The class to test
--- @return boolean
function killicon.Exists(class) end

--- (client) Returns the size of a kill icon. 
--- [https://wiki.facepunch.com/gmod/killicon.GetSize]
--- @param name string @ Classname of the kill icon
--- @return number|number
function killicon.GetSize(name) end

