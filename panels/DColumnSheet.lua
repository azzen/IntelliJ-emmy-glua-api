--- @class DColumnSheet : PANEL
DColumnSheet = {}

--- (client) Adds a new column/tab. 
--- [https://wiki.facepunch.com/gmod/DColumnSheet:AddSheet]
--- @param name string @ Name of the column/tab
--- @param pnl Panel @ Panel to be used as contents of the tab. This normally would be a [DPanel](https://wiki.facepunch.com/gmod/DPanel)
--- @param icon string @ Icon for the tab. This will ideally be a [silkicon](https://wiki.facepunch.com/gmod/Silkicons), but any material name can be used.
--- @return table
function DColumnSheet:AddSheet(name, pnl, icon) end

--- (client) Returns the active button of this [DColumnSheet](https://wiki.facepunch.com/gmod/DColumnSheet). 
--- [https://wiki.facepunch.com/gmod/DColumnSheet:GetActiveButton]
--- @return Panel
function DColumnSheet:GetActiveButton() end

--- (client) Makes a button an active button for this [DColumnSheet](https://wiki.facepunch.com/gmod/DColumnSheet). 
--- [https://wiki.facepunch.com/gmod/DColumnSheet:SetActiveButton]
--- @param active Panel @ The button to make active button
--- @return void
function DColumnSheet:SetActiveButton(active) end

--- (client) Makes the tabs/buttons show only the image and no text. 
--- [https://wiki.facepunch.com/gmod/DColumnSheet:UseButtonOnlyStyle]
--- @return void
function DColumnSheet:UseButtonOnlyStyle() end

