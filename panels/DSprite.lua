--- @class DSprite : DPanel
DSprite = {}

--- (client) Gets the color the sprite is using as a modifier. 
--- [https://wiki.facepunch.com/gmod/DSprite:GetColor]
--- @return table
function DSprite:GetColor() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DSprite:GetHandle]
--- @return Vector
function DSprite:GetHandle() end

--- (client) Gets the material the sprite is using. 
--- [https://wiki.facepunch.com/gmod/DSprite:GetMaterial]
--- @return IMaterial
function DSprite:GetMaterial() end

--- (client) Gets the 2D rotation angle of the sprite, in the plane of the screen. 
--- [https://wiki.facepunch.com/gmod/DSprite:GetRotation]
--- @return number
function DSprite:GetRotation() end

--- (client) Sets the color modifier for the sprite. 
--- [https://wiki.facepunch.com/gmod/DSprite:SetColor]
--- @param color table @ The [Color](https://wiki.facepunch.com/gmod/Global.Color) to use.
--- @return void
function DSprite:SetColor(color) end

--- (client) Seems to be an unused feature. Does nothing. 
--- [https://wiki.facepunch.com/gmod/DSprite:SetHandle]
--- @param vec Vector @ No description provided
--- @return void
function DSprite:SetHandle(vec) end

--- (client) Sets the source material for the sprite. 
--- [https://wiki.facepunch.com/gmod/DSprite:SetMaterial]
--- @param material IMaterial @ The material to use. This will ideally be an [UnlitGeneric](https://developer.valvesoftware.com/wiki/UnlitGeneric).
--- @return void
function DSprite:SetMaterial(material) end

--- (client) Sets the 2D rotation angle of the sprite, in the plane of the screen. 
--- [https://wiki.facepunch.com/gmod/DSprite:SetRotation]
--- @param ang number @ The anti-clockwise rotation in degrees.
--- @return void
function DSprite:SetRotation(ang) end

