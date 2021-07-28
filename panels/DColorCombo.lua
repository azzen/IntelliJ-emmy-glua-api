--- @class DColorCombo : DPropertySheet
DColorCombo = {}

--- (client) Called internally to create panels necessary for this panel to work. 
--- [https://wiki.facepunch.com/gmod/DColorCombo:BuildControls]
--- @return void
function DColorCombo:BuildControls() end

--- (client) Returns the color of the [DColorCombo](https://wiki.facepunch.com/gmod/DColorCombo). 
--- [https://wiki.facepunch.com/gmod/DColorCombo:GetColor]
--- @return table
function DColorCombo:GetColor() end

--- (client) Returns true if the panel is currently being edited
--- More of a internal method, it technically should only ever work (i.e. return true) inside [DColorCombo:OnValueChanged](https://wiki.facepunch.com/gmod/DColorCombo:OnValueChanged). 
--- [https://wiki.facepunch.com/gmod/DColorCombo:IsEditing]
--- @return boolean
function DColorCombo:IsEditing() end

--- (client) Called when the value (color) of this panel was changed. 
--- [https://wiki.facepunch.com/gmod/DColorCombo:OnValueChanged]
--- @param newcol table @ No description provided
--- @return void
function DColorCombo:OnValueChanged(newcol) end

--- (client) Sets the color of this panel. 
--- [https://wiki.facepunch.com/gmod/DColorCombo:SetColor]
--- @param clr table @ A [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DColorCombo:SetColor(clr) end

