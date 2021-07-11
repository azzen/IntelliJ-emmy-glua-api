--- @class ITexture
ITexture = {}

--- (client/server) Invokes the generator of the texture. Reloads file based textures from disk and clears render target textures. 
--- [https://wiki.facepunch.com/gmod/ITexture:Download]
--- @return void
function ITexture:Download() end

--- (client/server) Returns the color of the specified pixel, only works for textures created from PNG files. 
--- [https://wiki.facepunch.com/gmod/ITexture:GetColor]
--- @param x number @ The X coordinate.
--- @param y number @ The Y coordinate.
--- @return table
function ITexture:GetColor(x, y) end

--- (client/server) Returns the true unmodified height of the texture. 
--- [https://wiki.facepunch.com/gmod/ITexture:GetMappingHeight]
--- @return number
function ITexture:GetMappingHeight() end

--- (client/server) Returns the true unmodified width of the texture. 
--- [https://wiki.facepunch.com/gmod/ITexture:GetMappingWidth]
--- @return number
function ITexture:GetMappingWidth() end

--- (client/server) Returns the name of the texture, in most cases the path. 
--- [https://wiki.facepunch.com/gmod/ITexture:GetName]
--- @return string
function ITexture:GetName() end

--- (client/server) Returns the number of animation frames in this texture. 
--- [https://wiki.facepunch.com/gmod/ITexture:GetNumAnimationFrames]
--- @return number
function ITexture:GetNumAnimationFrames() end

--- (client/server) Returns the modified height of the texture, this value may be affected by mipmapping and other factors. 
--- [https://wiki.facepunch.com/gmod/ITexture:Height]
--- @return number
function ITexture:Height() end

--- (client/server) Returns whenever the texture is valid. (i.e. was loaded successfully or not) 
--- [https://wiki.facepunch.com/gmod/ITexture:IsError]
--- @return boolean
function ITexture:IsError() end

--- (client/server) Returns whenever the texture is the error texture (pink and black checkerboard pattern). 
--- [https://wiki.facepunch.com/gmod/ITexture:IsErrorTexture]
--- @return boolean
function ITexture:IsErrorTexture() end

--- (client/server) Returns the modified width of the texture, this value may be affected by mipmapping and other factors. 
--- [https://wiki.facepunch.com/gmod/ITexture:Width]
--- @return number
function ITexture:Width() end

