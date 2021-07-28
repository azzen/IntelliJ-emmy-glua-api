--- @class DPropertySheet : PANEL
DPropertySheet = {}

--- (client) Adds a new tab. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:AddSheet]
--- @param name string @ Name of the tab
--- @param pnl Panel @ Panel to be used as contents of the tab. This normally should be a [DPanel](https://wiki.facepunch.com/gmod/DPanel)
--- @param icon string @ Icon for the tab. This will ideally be a [silkicon](https://wiki.facepunch.com/gmod/Silkicons), but any material name can be used.
--- @param noStretchX boolean @ Should [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet) try to fill itself with given panel horizontally.
--- @param noStretchY boolean @ Should [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet) try to fill itself with given panel vertically.
--- @param tooltip string @ Tooltip for the tab when user hovers over it with his cursor
--- @return table
function DPropertySheet:AddSheet(name, pnl, icon, noStretchX, noStretchY, tooltip) end

--- (client) Removes tab and/or panel from the parent DPropertySheet. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:CloseTab]
--- @param tab Panel @ The [DTab](https://wiki.facepunch.com/gmod/DTab) of the sheet from [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet). See [DPropertySheet:GetItems](https://wiki.facepunch.com/gmod/DPropertySheet:GetItems).
--- @param removePanel boolean @ Set to true to remove the associated panel object as well.
--- @return Panel
function DPropertySheet:CloseTab(tab, removePanel) end

--- (client) Internal function that handles the cross fade animation when the player switches tabs. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:CrossFade]
--- @param anim table @ No description provided
--- @param delta number @ No description provided
--- @param data table @ No description provided
--- @return void
function DPropertySheet:CrossFade(anim, delta, data) end

--- (client) Returns the active [DTab](https://wiki.facepunch.com/gmod/DTab) of this [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet). 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:GetActiveTab]
--- @return Panel
function DPropertySheet:GetActiveTab() end

--- (client) Returns the amount of time (in seconds) it takes to fade between tabs.
--- Set by [DPropertySheet:SetFadeTime](https://wiki.facepunch.com/gmod/DPropertySheet:SetFadeTime) 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:GetFadeTime]
--- @return number
function DPropertySheet:GetFadeTime() end

--- (client) Returns a list of all tabs of this [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet). 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:GetItems]
--- @return table
function DPropertySheet:GetItems() end

--- (client) Gets the padding from the parent panel to child panels. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:GetPadding]
--- @return number
function DPropertySheet:GetPadding() end

--- (client) Returns whatever value was set by [DPropertySheet:SetShowIcons](https://wiki.facepunch.com/gmod/DPropertySheet:SetShowIcons). 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:GetShowIcons]
--- @return boolean
function DPropertySheet:GetShowIcons() end

--- (client) Called when a player switches the tabs.
--- 		Source code states that this is meant to be overridden. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:OnActiveTabChanged]
--- @param old Panel @ The previously active [DTab](https://wiki.facepunch.com/gmod/DTab)
--- @param new Panel @ The newly active [DTab](https://wiki.facepunch.com/gmod/DTab)
--- @return void
function DPropertySheet:OnActiveTabChanged(old, new) end

--- (client) Sets the active tab of the [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet). 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:SetActiveTab]
--- @param tab Panel @ The [DTab](https://wiki.facepunch.com/gmod/DTab) to set active. See [DPropertySheet:GetItems](https://wiki.facepunch.com/gmod/DPropertySheet:GetItems)
--- @return void
function DPropertySheet:SetActiveTab(tab) end

--- (client) Sets the amount of time (in seconds) it takes to fade between tabs. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:SetFadeTime]
--- @param time number @ The amount of time it takes (in seconds) to fade between tabs.
--- @return void
function DPropertySheet:SetFadeTime(time) end

--- (client) Sets the padding from parent panel to children panel. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:SetPadding]
--- @param padding number @ Amount of padding
--- @return void
function DPropertySheet:SetPadding(padding) end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:SetShowIcons]
--- @param show boolean @ No description provided
--- @return void
function DPropertySheet:SetShowIcons(show) end

--- (client) Creates a close button on the right side of the [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet) that will run the given callback function when pressed. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:SetupCloseButton]
--- @param func function @ Callback function to be called when the close button is pressed.
--- @return void
function DPropertySheet:SetupCloseButton(func) end

--- (client) Sets the width of the [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet) to fit the contents of all of the tabs. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:SizeToContentWidth]
--- @return void
function DPropertySheet:SizeToContentWidth() end

--- (client) Switches the active tab to a tab with given name. 
--- [https://wiki.facepunch.com/gmod/DPropertySheet:SwitchToName]
--- @param name string @ Case sensitive name of the tab.
--- @return void
function DPropertySheet:SwitchToName(name) end

