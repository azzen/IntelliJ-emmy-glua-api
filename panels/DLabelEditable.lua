--- @class DLabelEditable : DLabel
DLabelEditable = {}

--- (client) Returns whether the editable label will stretch to the text entered or not. 
--- [https://wiki.facepunch.com/gmod/DLabelEditable:GetAutoStretch]
--- @return boolean
function DLabelEditable:GetAutoStretch() end

--- (client) A hook called when the player presses Enter (i.e. the finished editing the label) and the text has changed.
--- Allows you to override/modify the text that will be set to display. 
--- [https://wiki.facepunch.com/gmod/DLabelEditable:OnLabelTextChanged]
--- @param txt string @ The original user input text
--- @return string
function DLabelEditable:OnLabelTextChanged(txt) end

--- (client) Sets whether the editable label should stretch to the text entered or not. 
--- [https://wiki.facepunch.com/gmod/DLabelEditable:SetAutoStretch]
--- @param stretch boolean @ Whether the editable label should stretch to the text entered or not.
--- @return void
function DLabelEditable:SetAutoStretch(stretch) end

