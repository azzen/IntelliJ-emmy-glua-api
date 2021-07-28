--- @class DCheckBoxLabel : DPanel
DCheckBoxLabel = {}

--- (client) Gets the checked state of the checkbox. This calls the checkbox's [DCheckBox:GetChecked](https://wiki.facepunch.com/gmod/DCheckBox:GetChecked) function. 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:GetChecked]
--- @return boolean
function DCheckBoxLabel:GetChecked() end

--- (client) Gets the indentation of the element on the X axis. 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:GetIndent]
--- @return number
function DCheckBoxLabel:GetIndent() end

--- (client) Called when the "checked" state is changed. 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:OnChange]
--- @param bVal boolean @ Whether the checkbox is checked or unchecked.
--- @return void
function DCheckBoxLabel:OnChange(bVal) end

--- (client) Sets the color of the [DCheckBoxLabel](https://wiki.facepunch.com/gmod/DCheckBoxLabel)'s text to the bright text color defined in the skin. 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetBright]
--- @param bright boolean @ true makes the text bright.
--- @return void
function DCheckBoxLabel:SetBright(bright) end

--- (client) Sets the checked state of the checkbox. Does not call [DCheckBoxLabel:OnChange](https://wiki.facepunch.com/gmod/DCheckBoxLabel:OnChange) or [Panel:ConVarChanged](https://wiki.facepunch.com/gmod/Panel:ConVarChanged), unlike [DCheckBoxLabel:SetValue](https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetValue). 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetChecked]
--- @param checked boolean @ Whether the box should be checked or not.
--- @return void
function DCheckBoxLabel:SetChecked(checked) end

--- (client) Sets the console variable to be set when the checked state of the [DCheckBoxLabel](https://wiki.facepunch.com/gmod/DCheckBoxLabel) changes. 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetConVar]
--- @param convar string @ The name of the convar to set
--- @return void
function DCheckBoxLabel:SetConVar(convar) end

--- (client) Sets the text of the [DCheckBoxLabel](https://wiki.facepunch.com/gmod/DCheckBoxLabel) to be dark colored. 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetDark]
--- @param darkify boolean @ True to be dark, false to be default
--- @return void
function DCheckBoxLabel:SetDark(darkify) end

--- (client) Sets the font of the text part of the [DCheckBoxLabel](https://wiki.facepunch.com/gmod/DCheckBoxLabel). 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetFont]
--- @param font string @ Font name
--- @return void
function DCheckBoxLabel:SetFont(font) end

--- (client) Sets the indentation of the element on the X axis. 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetIndent]
--- @param ident number @ How much in pixels to move the content to the right
--- @return void
function DCheckBoxLabel:SetIndent(ident) end

--- (client) Sets the text color for the [DCheckBoxLabel](https://wiki.facepunch.com/gmod/DCheckBoxLabel). 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetTextColor]
--- @param color table @ The text color. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DCheckBoxLabel:SetTextColor(color) end

--- (client) Sets the checked state of the checkbox, and calls [DCheckBoxLabel:OnChange](https://wiki.facepunch.com/gmod/DCheckBoxLabel:OnChange) and the checkbox's [Panel:ConVarChanged](https://wiki.facepunch.com/gmod/Panel:ConVarChanged) methods. 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:SetValue]
--- @param checked boolean @ Whether the box should be checked or not (1 or 0 can also be used).
--- @return void
function DCheckBoxLabel:SetValue(checked) end

--- (client) Toggles the checked state of the [DCheckBoxLabel](https://wiki.facepunch.com/gmod/DCheckBoxLabel). 
--- [https://wiki.facepunch.com/gmod/DCheckBoxLabel:Toggle]
--- @return void
function DCheckBoxLabel:Toggle() end

