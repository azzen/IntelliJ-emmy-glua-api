--- @class DProperty_Combo : DProperty_Generic
DProperty_Combo = {}

--- (client) Add a choice to your combo control. 
--- [https://wiki.facepunch.com/gmod/DProperty_Combo:AddChoice]
--- @param Text string @ Shown text.
--- @param data any @ Stored Data.
--- @param select boolean @ Select this element?
--- @return void
function DProperty_Combo:AddChoice(Text, data, select) end

--- (client) Called after the user selects a new value. 
--- [https://wiki.facepunch.com/gmod/DProperty_Combo:DataChanged]
--- @param data any @ The new data that was selected.
--- @return void
function DProperty_Combo:DataChanged(data) end

--- (client) Set the selected option. 
--- [https://wiki.facepunch.com/gmod/DProperty_Combo:SetSelected]
--- @param Id number @ Id of the choice to be selected.
--- @return void
function DProperty_Combo:SetSelected(Id) end

--- (client) Sets up a combo control. 
--- [https://wiki.facepunch.com/gmod/DProperty_Combo:Setup]
--- @param prop string @ The name of DProperty sub control to add.
--- @param data table @ Data to use to set up the combo box control. Structure:  [string](https://wiki.facepunch.com/gmod/string) text - The default label for this combo box  [table](https://wiki.facepunch.com/gmod/table) values - The values to add to the combo box
--- @return void
function DProperty_Combo:Setup(prop, data) end

