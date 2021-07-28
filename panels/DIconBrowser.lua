--- @class DIconBrowser : DScrollPanel
DIconBrowser = {}

--- (client) Automatically called to fill the browser with icons. Will not work if [DIconBrowser:SetManual](https://wiki.facepunch.com/gmod/DIconBrowser:SetManual) is set to true. 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:Fill]
--- @return void
function DIconBrowser:Fill() end

--- (client) A simple unused search feature, hides all icons that do not contain given text in their file path. 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:FilterByText]
--- @param text string @ The text to search for
--- @return void
function DIconBrowser:FilterByText(text) end

--- (client) Returns whether or not the browser should fill itself with icons. 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:GetManual]
--- @return boolean
function DIconBrowser:GetManual() end

--- (client) Returns the currently selected icon's file path. 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:GetSelectedIcon]
--- @return string
function DIconBrowser:GetSelectedIcon() end

--- (client) Called when the selected icon was changed. Use [DIconBrowser:GetSelectedIcon](https://wiki.facepunch.com/gmod/DIconBrowser:GetSelectedIcon) to get the selected icon's filepath. 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:OnChange]
--- @return void
function DIconBrowser:OnChange() end

--- (client) Use [DIconBrowser:OnChange](https://wiki.facepunch.com/gmod/DIconBrowser:OnChange) instead 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:OnChangeInternal]
--- @return void
function DIconBrowser:OnChangeInternal() end

--- (client) Scrolls the browser to the selected icon 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:ScrollToSelected]
--- @return void
function DIconBrowser:ScrollToSelected() end

--- (client) Selects an icon from file path 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:SelectIcon]
--- @param icon string @ The file path of the icon to select. Do not include the "materials/" part.
--- @return void
function DIconBrowser:SelectIcon(icon) end

--- (client) Sets whether or not the browser should automatically fill itself with icons. 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:SetManual]
--- @param manual boolean @ No description provided
--- @return void
function DIconBrowser:SetManual(manual) end

--- (client) Set the currently selected file path. Do not use. Use [DIconBrowser:SelectIcon](https://wiki.facepunch.com/gmod/DIconBrowser:SelectIcon) instead. 
--- [https://wiki.facepunch.com/gmod/DIconBrowser:SetSelectedIcon]
--- @param str string @ No description provided
--- @return void
function DIconBrowser:SetSelectedIcon(str) end

