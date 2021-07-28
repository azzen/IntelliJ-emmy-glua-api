--- @class DImageButton : DButton
DImageButton = {}

--- (client) Returns the "image" of the [DImageButton](https://wiki.facepunch.com/gmod/DImageButton). Equivalent of [DImage:GetImage](https://wiki.facepunch.com/gmod/DImage:GetImage). 
--- [https://wiki.facepunch.com/gmod/DImageButton:GetImage]
--- @return string
function DImageButton:GetImage() end

--- (client) Returns whether the image inside the button should be stretched to fit it or not
--- See [DImageButton:SetStretchToFit](https://wiki.facepunch.com/gmod/DImageButton:SetStretchToFit) 
--- [https://wiki.facepunch.com/gmod/DImageButton:GetStretchToFit]
--- @return boolean
function DImageButton:GetStretchToFit() end

--- (client) Sets the color of the image. Equivalent of [DImage:SetImageColor](https://wiki.facepunch.com/gmod/DImage:SetImageColor) 
--- [https://wiki.facepunch.com/gmod/DImageButton:SetColor]
--- @param color table @ The [Color](https://wiki.facepunch.com/gmod/Global.Color) to set
--- @return void
function DImageButton:SetColor(color) end

--- (client) Alias of [DImageButton:SetImage](https://wiki.facepunch.com/gmod/DImageButton:SetImage). 
--- [https://wiki.facepunch.com/gmod/DImageButton:SetIcon]
--- @return void
function DImageButton:SetIcon() end

--- (client) Sets the "image" of the [DImageButton](https://wiki.facepunch.com/gmod/DImageButton). Equivalent of [DImage:SetImage](https://wiki.facepunch.com/gmod/DImage:SetImage). 
--- [https://wiki.facepunch.com/gmod/DImageButton:SetImage]
--- @param strImage string @ The path of the image to load. When no file extension is supplied the VMT file extension is used.
--- @param strBackup string @ The path of the backup image.
--- @return void
function DImageButton:SetImage(strImage, strBackup) end

--- (client) Hides or shows the image of the image button. Internally this calls [Panel:SetVisible](https://wiki.facepunch.com/gmod/Panel:SetVisible) on the internal [DImage](https://wiki.facepunch.com/gmod/DImage). 
--- [https://wiki.facepunch.com/gmod/DImageButton:SetImageVisible]
--- @param visible boolean @ Set true to make it visible ( default ), or false to hide the image
--- @return void
function DImageButton:SetImageVisible(visible) end

--- (client) Sets whether the [DImageButton](https://wiki.facepunch.com/gmod/DImageButton) should keep the aspect ratio of its image. Equivalent of [DImage:SetKeepAspect](https://wiki.facepunch.com/gmod/DImage:SetKeepAspect).
--- Note that this will not try to fit the image inside the button, but instead it will fill the button with the image. 
--- [https://wiki.facepunch.com/gmod/DImageButton:SetKeepAspect]
--- @param keep boolean @ true to keep the aspect ratio, false not to
--- @return void
function DImageButton:SetKeepAspect(keep) end

--- (client) Sets a [Material](https://wiki.facepunch.com/gmod/Global.Material) directly as an image. Equivalent of [DImage:SetMaterial](https://wiki.facepunch.com/gmod/DImage:SetMaterial). 
--- [https://wiki.facepunch.com/gmod/DImageButton:SetMaterial]
--- @param mat IMaterial @ The material to set
--- @return void
function DImageButton:SetMaterial(mat) end

--- (client) See [DImage:SetOnViewMaterial](https://wiki.facepunch.com/gmod/DImage:SetOnViewMaterial) 
--- [https://wiki.facepunch.com/gmod/DImageButton:SetOnViewMaterial]
--- @param mat string @ No description provided
--- @param backup string @ No description provided
--- @return void
function DImageButton:SetOnViewMaterial(mat, backup) end

--- (client) Sets whether the image inside the [DImageButton](https://wiki.facepunch.com/gmod/DImageButton) should be stretched to fill the entire size of the button, without preserving aspect ratio.
--- If set to false, the image will not be resized at all. 
--- [https://wiki.facepunch.com/gmod/DImageButton:SetStretchToFit]
--- @param stretch boolean @ True to stretch, false to not to stretch
--- @return void
function DImageButton:SetStretchToFit(stretch) end

