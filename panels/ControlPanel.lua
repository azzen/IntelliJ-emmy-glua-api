--- @class ControlPanel : DForm
ControlPanel = {}

--- (client) Adds a control to the control panel. 
--- [https://wiki.facepunch.com/gmod/ControlPanel:AddControl]
--- @param type string @ The control type to add. The complete list is:  header  textbox  label  checkbox/toggle  slider  propselect  matselect  ropematerial  button  numpad  color  combobox  listbox  materialgallery
--- @param controlinfo table @ Each control takes their own table structure. You may search "AddControl" on GitHub for examples. Here is a full list of each type and the table members it requires:  header 	 description  textbox: 	 label (def: "Untitled") 	 command  label: 	 text  checkbox, toggle (same thing): 	 label (def: "Untitled") 	 command 	 help (boolean, if true assumes label is a language string (`#tool.toolname.stuff`) and adds `.help` at the end)  slider: ([DForm:NumSlider](https://wiki.facepunch.com/gmod/DForm:NumSlider)) 	 type (optional string, if equals `float` then 2 digits after the decimal will be used, otherwise 0) 	 label (def: `Untitled`) 	 command 	 min (def: `0`) 	 max (def: `100`) 	 help (boolean, see above)  propselect: 	 (data goes directly to PropSelect's :ControlValues(data))  matselect: 	 (data goes directly to MatSelect's :ControlValues(data))  ropematerial: 	 convar (notice: NOT called command this time!)  button: 	 label / text (if label is missing will use text. Def: `No Label`) 	 command  numpad: 	 command 	 command2 	 label 	 label2  color: 	 label 	 red (convar) 	 green (convar) 	 blue (convar) 	 alpha (convar)  combobox: 	 menubutton (if doesn't equal "1", becomes a listbox) 	 folder 	 options (optional, ha) 	 cvars (optional)  listbox: 	 height (if set, becomes [DListView](https://wiki.facepunch.com/gmod/DListView), otherwise is [CtrlListBox](https://wiki.facepunch.com/gmod/CtrlListBox)) 	 label (def: `unknown`) 	 options (optional)  materialgallery: 	 width (def: `32`) 	 height (def: `32`) 	 rows (def: `4`) 	 convar 	 options
--- @return void
function ControlPanel:AddControl(type, controlinfo) end

--- (client) Adds an item by calling [DForm:AddItem](https://wiki.facepunch.com/gmod/DForm:AddItem). 
--- [https://wiki.facepunch.com/gmod/ControlPanel:AddPanel]
--- @param panel Panel @ Panel to add as an item to the control panel.
--- @return void
function ControlPanel:AddPanel(panel) end

--- (client) Sets control values of the control panel. 
--- [https://wiki.facepunch.com/gmod/ControlPanel:ControlValues]
--- @param data table @ A two-membered table:  [boolean](https://wiki.facepunch.com/gmod/boolean) closed - Sets if the control panel should be unexpanded.  [string](https://wiki.facepunch.com/gmod/string) label - The text to display inside the control's label.
--- @return void
function ControlPanel:ControlValues(data) end

--- (client) Calls the given function with this panel as the only argument. Used by the spawnmenu to populate the control panel. 
--- [https://wiki.facepunch.com/gmod/ControlPanel:FillViaFunction]
--- @param func function @ A function that takes one argument:  [ControlPanel](https://wiki.facepunch.com/gmod/ControlPanel) panelToPopulate
--- @return void
function ControlPanel:FillViaFunction(func) end

--- (client) Returns this control panel. 
--- [https://wiki.facepunch.com/gmod/ControlPanel:GetEmbeddedPanel]
--- @return ControlPanel
function ControlPanel:GetEmbeddedPanel() end

--- (client) Creates a [MatSelect](https://wiki.facepunch.com/gmod/MatSelect) panel and adds it as an [item](https://wiki.facepunch.com/gmod/ControlPanel:AddPanel). 
--- [https://wiki.facepunch.com/gmod/ControlPanel:MatSelect]
--- @param convar string @ Calls [MatSelect](https://wiki.facepunch.com/gmod/MatSelect):[SetConVar](https://wiki.facepunch.com/gmod/ContextBase:SetConVar) with this value.
--- @param options table @ If specified, calls [MatSelect:AddMaterial](https://wiki.facepunch.com/gmod/MatSelect:AddMaterial)(key, value) for each table entry. If the table key is a number, the function will instead be called with the value as both arguments.
--- @param autostretch boolean @ If specified, calls [MatSelect:SetAutoHeight](https://wiki.facepunch.com/gmod/MatSelect:SetAutoHeight) with this value.
--- @param width number @ If specified, calls [MatSelect:SetItemWidth](https://wiki.facepunch.com/gmod/MatSelect:SetItemWidth) with this value.
--- @param height number @ If specified, calls [MatSelect:SetItemHeight](https://wiki.facepunch.com/gmod/MatSelect:SetItemHeight) with this value.
--- @return MatSelect
function ControlPanel:MatSelect(convar, options, autostretch, width, height) end

