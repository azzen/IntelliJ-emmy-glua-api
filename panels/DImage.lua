--- @class DImage : DPanel
DImage = {}

--- (client) Actually loads the [IMaterial](https://wiki.facepunch.com/gmod/IMaterial) to render it. Called from [DImage:LoadMaterial](https://wiki.facepunch.com/gmod/DImage:LoadMaterial). 
--- [https://wiki.facepunch.com/gmod/DImage:DoLoadMaterial]
--- @return void
function DImage:DoLoadMaterial() end

--- (client) "Fixes" the current material of the [DImage](https://wiki.facepunch.com/gmod/DImage) if it has VertexLit shader by creating a new one with the same name and a prefix of "_DImage" and automatically calling [DImage:SetMaterial](https://wiki.facepunch.com/gmod/DImage:SetMaterial) with the new material.
--- This fixes the problem where using materials using shaders that expect lighting information causing "weird" flickering when displayed in 2D/Unlit environment. 
--- [https://wiki.facepunch.com/gmod/DImage:FixVertexLitMaterial]
--- @return void
function DImage:FixVertexLitMaterial() end

--- (client) Returns the texture path set by [DImage:SetFailsafeMatName](https://wiki.facepunch.com/gmod/DImage:SetFailsafeMatName). 
--- [https://wiki.facepunch.com/gmod/DImage:GetFailsafeMatName]
--- @return string
function DImage:GetFailsafeMatName() end

--- (client) Returns the image loaded in the image panel. 
--- [https://wiki.facepunch.com/gmod/DImage:GetImage]
--- @return string
function DImage:GetImage() end

--- (client) Returns the color override of the image panel. 
--- [https://wiki.facepunch.com/gmod/DImage:GetImageColor]
--- @return table
function DImage:GetImageColor() end

--- (client) Returns whether the [DImage](https://wiki.facepunch.com/gmod/DImage) should keep the aspect ratio of its image when being resized.
--- See [DImage:SetKeepAspect](https://wiki.facepunch.com/gmod/DImage:SetKeepAspect) for more info on how it works. 
--- [https://wiki.facepunch.com/gmod/DImage:GetKeepAspect]
--- @return boolean
function DImage:GetKeepAspect() end

--- (client) Returns the current [Material](https://wiki.facepunch.com/gmod/Global.Material) of the [DImage](https://wiki.facepunch.com/gmod/DImage). 
--- [https://wiki.facepunch.com/gmod/DImage:GetMaterial]
--- @return IMaterial
function DImage:GetMaterial() end

--- (client) Returns the texture path set by [DImage:SetMatName](https://wiki.facepunch.com/gmod/DImage:SetMatName). 
--- [https://wiki.facepunch.com/gmod/DImage:GetMatName]
--- @return string
function DImage:GetMatName() end

--- (client) Initializes the loading process of the material to render if it is not loaded yet.
--- You do not need to call this function. It is done for you automatically. 
--- [https://wiki.facepunch.com/gmod/DImage:LoadMaterial]
--- @return void
function DImage:LoadMaterial() end

--- (client) Paints a ghost copy of the DImage panel at the given position and dimensions. This function overrides [Panel:PaintAt](https://wiki.facepunch.com/gmod/Panel:PaintAt). 
--- [https://wiki.facepunch.com/gmod/DImage:PaintAt]
--- @param posX number @ The x coordinate to draw the panel from.
--- @param posY number @ The y coordinate to draw the panel from.
--- @param width number @ The width of the panel image to be drawn.
--- @param height number @ The height of the panel image to be drawn.
--- @return void
function DImage:PaintAt(posX, posY, width, height) end

--- (client) Sets the backup material to be loaded when the image is first rendered. Used by [DImage:SetOnViewMaterial](https://wiki.facepunch.com/gmod/DImage:SetOnViewMaterial). 
--- [https://wiki.facepunch.com/gmod/DImage:SetFailsafeMatName]
--- @param backupMat string @ No description provided
--- @return void
function DImage:SetFailsafeMatName(backupMat) end

--- (client) Sets the image to load into the frame. If the first image can't be loaded and `strBackup` is set, that image will be loaded instead.
--- This eventually calls [DImage:SetMaterial](https://wiki.facepunch.com/gmod/DImage:SetMaterial). 
--- [https://wiki.facepunch.com/gmod/DImage:SetImage]
--- @param strImage string @ The path of the image to load. When no file extension is supplied the VMT file extension is used.
--- @param strBackup string @ The path of the backup image.
--- @return void
function DImage:SetImage(strImage, strBackup) end

--- (client) Sets the image's color override. 
--- [https://wiki.facepunch.com/gmod/DImage:SetImageColor]
--- @param col table @ The color override of the image. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DImage:SetImageColor(col) end

--- (client) Sets whether the [DImage](https://wiki.facepunch.com/gmod/DImage) should keep the aspect ratio of its image when being resized.
--- Note that this will not try to fit the image inside the button, but instead it will fill the button with the image. 
--- [https://wiki.facepunch.com/gmod/DImage:SetKeepAspect]
--- @param keep boolean @ true to keep the aspect ratio, false not to
--- @return void
function DImage:SetKeepAspect(keep) end

--- (client) Sets a [Material](https://wiki.facepunch.com/gmod/Global.Material) directly as an image. 
--- [https://wiki.facepunch.com/gmod/DImage:SetMaterial]
--- @param mat IMaterial @ The material to set
--- @return void
function DImage:SetMaterial(mat) end

--- (client) Sets the material to be loaded when the image is first rendered. Used by [DImage:SetOnViewMaterial](https://wiki.facepunch.com/gmod/DImage:SetOnViewMaterial). 
--- [https://wiki.facepunch.com/gmod/DImage:SetMatName]
--- @param mat string @ No description provided
--- @return void
function DImage:SetMatName(mat) end

--- (client) Similar to [DImage:SetImage](https://wiki.facepunch.com/gmod/DImage:SetImage), but will only do the expensive part of actually loading the textures/material if the material is about to be rendered/viewed.
--- Useful for cases like [DIconBrowser](https://wiki.facepunch.com/gmod/DIconBrowser), where there are hundreds of small icons in 1 panel in a list that do not need all to be loaded at the same time. 
--- [https://wiki.facepunch.com/gmod/DImage:SetOnViewMaterial]
--- @param mat string @ No description provided
--- @param backupMat string @ No description provided
--- @return void
function DImage:SetOnViewMaterial(mat, backupMat) end

--- (client) Returns true if the image is **not** yet loaded. 
--- [https://wiki.facepunch.com/gmod/DImage:Unloaded]
--- @return boolean
function DImage:Unloaded() end

