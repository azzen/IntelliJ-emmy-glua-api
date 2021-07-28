--- @class ImageCheckBox : Button
ImageCheckBox = {}

--- (client) Returns the checked state of the [ImageCheckBox](https://wiki.facepunch.com/gmod/ImageCheckBox) 
--- [https://wiki.facepunch.com/gmod/ImageCheckBox:GetChecked]
--- @return boolean
function ImageCheckBox:GetChecked() end

--- (client) Sets the checked state of the checkbox.
--- Checked state can be obtained by [ImageCheckBox](https://wiki.facepunch.com/gmod/ImageCheckBox).State. 
--- [https://wiki.facepunch.com/gmod/ImageCheckBox:Set]
--- @param OnOff boolean @ true for checked, false otherwise
--- @return void
function ImageCheckBox:Set(OnOff) end

--- (client) Sets the checked state of the checkbox.
--- Checked state can be obtained via [ImageCheckBox:GetChecked](https://wiki.facepunch.com/gmod/ImageCheckBox:GetChecked) 
--- [https://wiki.facepunch.com/gmod/ImageCheckBox:SetChecked]
--- @param bOn boolean @ true for checked, false otherwise
--- @return void
function ImageCheckBox:SetChecked(bOn) end

--- (client) Sets the material that will be visible when the [ImageCheckBox](https://wiki.facepunch.com/gmod/ImageCheckBox) is checked.
--- Internally calls [Material:SetMaterial](https://wiki.facepunch.com/gmod/Material:SetMaterial). 
--- [https://wiki.facepunch.com/gmod/ImageCheckBox:SetMaterial]
--- @param mat string @ The file path of the material to set (relative to "garrysmod/materials/").
--- @return void
function ImageCheckBox:SetMaterial(mat) end

