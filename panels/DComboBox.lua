--- @class DComboBox : DButton
DComboBox = {}

--- (client) Adds a choice to the combo box. 
--- [https://wiki.facepunch.com/gmod/DComboBox:AddChoice]
--- @param value string @ The text show to the user.
--- @param data any @ The data accompanying this string. If left empty, the value argument is used instead. Can be accessed with the second argument of [DComboBox:GetSelected](https://wiki.facepunch.com/gmod/DComboBox:GetSelected), [DComboBox:GetOptionData](https://wiki.facepunch.com/gmod/DComboBox:GetOptionData) and as an argument of [DComboBox:OnSelect](https://wiki.facepunch.com/gmod/DComboBox:OnSelect).
--- @param select boolean @ Should this be the default selected text show to the user or not.
--- @param icon string @ Adds an icon for this choice.
--- @return number
function DComboBox:AddChoice(value, data, select, icon) end

--- (client) Adds a spacer below the currently last item in the drop down. Recommended to use with [DComboBox:SetSortItems](https://wiki.facepunch.com/gmod/DComboBox:SetSortItems) set to `false`. 
--- [https://wiki.facepunch.com/gmod/DComboBox:AddSpacer]
--- @return void
function DComboBox:AddSpacer() end

--- (client) Selects a combo box option by its index and changes the text displayed at the top of the combo box. 
--- [https://wiki.facepunch.com/gmod/DComboBox:ChooseOption]
--- @param value string @ The text to display at the top of the combo box.
--- @param index number @ The option index.
--- @return void
function DComboBox:ChooseOption(value, index) end

--- (client) Selects an option within a combo box based on its table index. 
--- [https://wiki.facepunch.com/gmod/DComboBox:ChooseOptionID]
--- @param index number @ Selects the option with given index.
--- @return void
function DComboBox:ChooseOptionID(index) end

--- (client) Clears the combo box's text value, choices, and data values. 
--- [https://wiki.facepunch.com/gmod/DComboBox:Clear]
--- @return void
function DComboBox:Clear() end

--- (client) Closes the combo box menu. Called when the combo box is clicked while open. 
--- [https://wiki.facepunch.com/gmod/DComboBox:CloseMenu]
--- @return void
function DComboBox:CloseMenu() end

--- (client) Returns an option's data based on the given index. 
--- [https://wiki.facepunch.com/gmod/DComboBox:GetOptionData]
--- @param index number @ The option index.
--- @return any
function DComboBox:GetOptionData(index) end

--- (client) Returns an option's text based on the given index. 
--- [https://wiki.facepunch.com/gmod/DComboBox:GetOptionText]
--- @param index number @ The option index.
--- @return string
function DComboBox:GetOptionText(index) end

--- (client) Returns an option's text based on the given data. 
--- [https://wiki.facepunch.com/gmod/DComboBox:GetOptionTextByData]
--- @param data string @ The data to look up the name of. If given a [number](https://wiki.facepunch.com/gmod/number) and no matching data was found, the function will test given data against each [tonumber](https://wiki.facepunch.com/gmod/Global.tonumber)'d data entry.
--- @return string
function DComboBox:GetOptionTextByData(data) end

--- (client) Returns the currently selected option's text and data 
--- [https://wiki.facepunch.com/gmod/DComboBox:GetSelected]
--- @return string|any
function DComboBox:GetSelected() end

--- (client) Returns the index (ID) of the currently selected option. 
--- [https://wiki.facepunch.com/gmod/DComboBox:GetSelectedID]
--- @return number
function DComboBox:GetSelectedID() end

--- (client) Returns an whether the items in the dropdown will be alphabetically sorted or not.
--- See [DComboBox:SetSortItems](https://wiki.facepunch.com/gmod/DComboBox:SetSortItems). 
--- [https://wiki.facepunch.com/gmod/DComboBox:GetSortItems]
--- @return boolean
function DComboBox:GetSortItems() end

--- (client) Returns whether or not the combo box's menu is opened. 
--- [https://wiki.facepunch.com/gmod/DComboBox:IsMenuOpen]
--- @return boolean
function DComboBox:IsMenuOpen() end

--- (client) Called when an option in the combo box is selected. This function does nothing by itself, you're supposed to overwrite it. 
--- [https://wiki.facepunch.com/gmod/DComboBox:OnSelect]
--- @param index number @ The index of the option for use with other [DComboBox](https://wiki.facepunch.com/gmod/DComboBox) functions.
--- @param value string @ The name of the option.
--- @param data any @ The data assigned to the option.
--- @return void
function DComboBox:OnSelect(index, value, data) end

--- (client) Opens the combo box drop down menu. Called when the combo box is clicked. 
--- [https://wiki.facepunch.com/gmod/DComboBox:OpenMenu]
--- @return void
function DComboBox:OpenMenu() end

--- (client) Sets whether or not the items should be sorted alphabetically in the dropdown menu of the [DComboBox](https://wiki.facepunch.com/gmod/DComboBox). If set to false, items will appear in the order they were added by [DComboBox:AddChoice](https://wiki.facepunch.com/gmod/DComboBox:AddChoice) calls.
--- This is enabled by default. 
--- [https://wiki.facepunch.com/gmod/DComboBox:SetSortItems]
--- @param sort boolean @ true to enable, false to disable
--- @return void
function DComboBox:SetSortItems(sort) end

--- (client) Sets the text shown in the combo box when the menu is not collapsed. 
--- [https://wiki.facepunch.com/gmod/DComboBox:SetValue]
--- @param value string @ The text in the DComboBox.
--- @return void
function DComboBox:SetValue(value) end

