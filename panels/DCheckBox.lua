--- @class DCheckBox : DButton
DCheckBox = {}

--- (client) Gets the checked state of the checkbox. 
--- [https://wiki.facepunch.com/gmod/DCheckBox:GetChecked]
--- @return boolean
function DCheckBox:GetChecked() end

--- (client) Returns whether the state of the checkbox is being edited. This means whether the user is currently clicking (mouse-down) on the checkbox, and applies to both the left and right mouse buttons. 
--- [https://wiki.facepunch.com/gmod/DCheckBox:IsEditing]
--- @return boolean
function DCheckBox:IsEditing() end

--- (client) Called when the "checked" state is changed. 
--- [https://wiki.facepunch.com/gmod/DCheckBox:OnChange]
--- @param bVal boolean @ Whether the CheckBox is checked or not.
--- @return void
function DCheckBox:OnChange(bVal) end

--- (client) Sets the checked state of the checkbox. Does not call the checkbox's [DCheckBox:OnChange](https://wiki.facepunch.com/gmod/DCheckBox:OnChange) and [Panel:ConVarChanged](https://wiki.facepunch.com/gmod/Panel:ConVarChanged) methods, unlike [DCheckBox:SetValue](https://wiki.facepunch.com/gmod/DCheckBox:SetValue). 
--- [https://wiki.facepunch.com/gmod/DCheckBox:SetChecked]
--- @param checked boolean @ Whether the box should be checked or not.
--- @return void
function DCheckBox:SetChecked(checked) end

--- (client) Sets the checked state of the checkbox, and calls the checkbox's [DCheckBox:OnChange](https://wiki.facepunch.com/gmod/DCheckBox:OnChange) and [Panel:ConVarChanged](https://wiki.facepunch.com/gmod/Panel:ConVarChanged) methods. 
--- [https://wiki.facepunch.com/gmod/DCheckBox:SetValue]
--- @param checked boolean @ Whether the box should be checked or not.
--- @return void
function DCheckBox:SetValue(checked) end

--- (client) Toggles the checked state of the checkbox, and calls the checkbox's [DCheckBox:OnChange](https://wiki.facepunch.com/gmod/DCheckBox:OnChange) and [Panel:ConVarChanged](https://wiki.facepunch.com/gmod/Panel:ConVarChanged) methods. This is called by [DCheckBox:DoClick](https://wiki.facepunch.com/gmod/DCheckBox:DoClick). 
--- [https://wiki.facepunch.com/gmod/DCheckBox:Toggle]
--- @return void
function DCheckBox:Toggle() end

