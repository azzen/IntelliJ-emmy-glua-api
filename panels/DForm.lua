--- @class DForm : DCollapsibleCategory
DForm = {}

--- (client) Adds one or two items to the DForm.
--- If this method is called with only one argument, it is added to the bottom of the form. If two arguments are passed, they are placed side-by-side at the bottom of the form.
--- Internally, this function is used by the various DForm functions to, for example, add labels to the left of buttons. 
--- [https://wiki.facepunch.com/gmod/DForm:AddItem]
--- @param left Panel @ Left-hand element to add to the DForm.
--- @param right Panel @ Right-hand element to add to the DForm.
--- @return void
function DForm:AddItem(left, right) end

--- (client) Adds a [DButton](https://wiki.facepunch.com/gmod/DButton) onto the [DForm](https://wiki.facepunch.com/gmod/DForm) 
--- [https://wiki.facepunch.com/gmod/DForm:Button]
--- @param text string @ The text on the button
--- @param concommand string @ The concommand to run when the button is clicked
--- @param args vararg @ The arguments to pass on to the concommand when the button is clicked
--- @return Panel
function DForm:Button(text, concommand, args) end

--- (client) Adds a [DCheckBoxLabel](https://wiki.facepunch.com/gmod/DCheckBoxLabel) onto the [DForm](https://wiki.facepunch.com/gmod/DForm). 
--- [https://wiki.facepunch.com/gmod/DForm:CheckBox]
--- @param label string @ The label to be set next to the check box
--- @param convar string @ The console variable to change when this is changed
--- @return Panel
function DForm:CheckBox(label, convar) end

--- (client) Adds a [DComboBox](https://wiki.facepunch.com/gmod/DComboBox) onto the [DForm](https://wiki.facepunch.com/gmod/DForm) 
--- [https://wiki.facepunch.com/gmod/DForm:ComboBox]
--- @param title string @ Text to the left of the combo box
--- @param convar string @ Console variable to change when the user selects something from the dropdown.
--- @return Panel|Panel
function DForm:ComboBox(title, convar) end

--- (client) Adds a [DLabel](https://wiki.facepunch.com/gmod/DLabel) onto the [DForm](https://wiki.facepunch.com/gmod/DForm). Unlike [DForm:Help](https://wiki.facepunch.com/gmod/DForm:Help), this is indented and is colored blue, depending on the derma skin. 
--- [https://wiki.facepunch.com/gmod/DForm:ControlHelp]
--- @param help string @ The help message to be displayed.
--- @return Panel
function DForm:ControlHelp(help) end

--- (client) Adds a [DLabel](https://wiki.facepunch.com/gmod/DLabel) onto the [DForm](https://wiki.facepunch.com/gmod/DForm) as a helper 
--- [https://wiki.facepunch.com/gmod/DForm:Help]
--- @param help string @ The help message to be displayed
--- @return Panel
function DForm:Help(help) end

--- (client) Adds a [DListBox](https://wiki.facepunch.com/gmod/DListBox) onto the [DForm](https://wiki.facepunch.com/gmod/DForm) 
--- [https://wiki.facepunch.com/gmod/DForm:ListBox]
--- @param label string @ The label to set on the DListBox
--- @return Panel|Panel
function DForm:ListBox(label) end

--- (client) Adds a [DNumberWang](https://wiki.facepunch.com/gmod/DNumberWang) onto the [DForm](https://wiki.facepunch.com/gmod/DForm) 
--- [https://wiki.facepunch.com/gmod/DForm:NumberWang]
--- @param label string @ The label to be placed next to the DNumberWang
--- @param convar string @ The console variable to change when the slider is changed
--- @param min number @ The minimum value of the slider
--- @param max number @ The maximum value of the slider
--- @param decimals number @ The number of decimals to allow in the slider (Optional)
--- @return Panel|Panel
function DForm:NumberWang(label, convar, min, max, decimals) end

--- (client) Adds a [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider) onto the [DForm](https://wiki.facepunch.com/gmod/DForm) 
--- [https://wiki.facepunch.com/gmod/DForm:NumSlider]
--- @param label string @ The label of the DNumSlider
--- @param convar string @ The console variable to change when the slider is changed
--- @param min number @ The minimum value of the slider
--- @param max number @ The maximum value of the slider
--- @param decimals number @ The number of decimals to allow on the slider. (Optional)
--- @return Panel
function DForm:NumSlider(label, convar, min, max, decimals) end

--- (client) Creates a [DPanelSelect](https://wiki.facepunch.com/gmod/DPanelSelect) and docks it to the top of the DForm. 
--- [https://wiki.facepunch.com/gmod/DForm:PanelSelect]
--- @return Panel
function DForm:PanelSelect() end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DForm:Rebuild]
--- @return void
function DForm:Rebuild() end

--- (client) Sets the title (header) name of the DForm. This is `Label` until set. 
--- [https://wiki.facepunch.com/gmod/DForm:SetName]
--- @param name string @ The new header name.
--- @return void
function DForm:SetName(name) end

--- (client) Adds a [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) to a [DForm](https://wiki.facepunch.com/gmod/DForm) 
--- [https://wiki.facepunch.com/gmod/DForm:TextEntry]
--- @param label string @ The label to be next to the text entry
--- @param convar string @ The console variable to be changed when the text entry is changed
--- @return Panel|Panel
function DForm:TextEntry(label, convar) end

