--- @class DMenu : DScrollPanel
DMenu = {}

--- (client) Creates a [DMenuOptionCVar](https://wiki.facepunch.com/gmod/DMenuOptionCVar) and adds it as an option into the menu. Checking and unchecking the option will alter the given console variable's value. 
--- [https://wiki.facepunch.com/gmod/DMenu:AddCVar]
--- @param strText string @ The text of the button
--- @param convar string @ The console variable to change
--- @param on string @ The value of the console variable to set when the option is checked
--- @param off string @ The value of the console variable to set when the option is unchecked
--- @param funcFunction function @ If set, the function will be called every time the option is pressed/clicked/selected. It will have only one argument: [Panel](https://wiki.facepunch.com/gmod/Panel) pnl - The created [DMenuOptionCVar](https://wiki.facepunch.com/gmod/DMenuOptionCVar)
--- @return Panel
function DMenu:AddCVar(strText, convar, on, off, funcFunction) end

--- (client) Add an option to the DMenu 
--- [https://wiki.facepunch.com/gmod/DMenu:AddOption]
--- @param name string @ Name of the option.
--- @param func function @ Function to execute when this option is clicked.
--- @return Panel
function DMenu:AddOption(name, func) end

--- (client) Adds a panel to the [DMenu](https://wiki.facepunch.com/gmod/DMenu) as if it were an option.
--- This invokes [DScrollPanel:AddItem](https://wiki.facepunch.com/gmod/DScrollPanel:AddItem) and will not create a new panel if a class name is passed, unlike [Panel:Add](https://wiki.facepunch.com/gmod/Panel:Add). 
--- [https://wiki.facepunch.com/gmod/DMenu:AddPanel]
--- @param pnl Panel @ The panel that you want to add.
--- @return void
function DMenu:AddPanel(pnl) end

--- (client) Adds a horizontal line spacer. 
--- [https://wiki.facepunch.com/gmod/DMenu:AddSpacer]
--- @return void
function DMenu:AddSpacer() end

--- (client) Add a sub menu to the DMenu 
--- [https://wiki.facepunch.com/gmod/DMenu:AddSubMenu]
--- @param Name string @ Name of the sub menu.
--- @param func function @ Function to execute when this sub menu is clicked.
--- @return Panel|Panel
function DMenu:AddSubMenu(Name, func) end

--- (client) Returns the number of child elements of [DMenu](https://wiki.facepunch.com/gmod/DMenu)'s [DScrollPanel:GetCanvas](https://wiki.facepunch.com/gmod/DScrollPanel:GetCanvas). 
--- [https://wiki.facepunch.com/gmod/DMenu:ChildCount]
--- @return number
function DMenu:ChildCount() end

--- (client) Clears all highlights made by [DMenu:HighlightItem](https://wiki.facepunch.com/gmod/DMenu:HighlightItem).
--- Doesn't appear to be used or do anything. 
--- [https://wiki.facepunch.com/gmod/DMenu:ClearHighlights]
--- @return void
function DMenu:ClearHighlights() end

--- (client) Used internally by [DMenu:OpenSubMenu](https://wiki.facepunch.com/gmod/DMenu:OpenSubMenu). 
--- [https://wiki.facepunch.com/gmod/DMenu:CloseSubMenu]
--- @param menu Panel @ The menu to close
--- @return void
function DMenu:CloseSubMenu(menu) end

--- (client) Gets a child by its index. 
--- [https://wiki.facepunch.com/gmod/DMenu:GetChild]
--- @param childIndex number @ The index of the child to get.
--- @return void
function DMenu:GetChild(childIndex) end

--- (client) Set by [DMenu:SetDeleteSelf](https://wiki.facepunch.com/gmod/DMenu:SetDeleteSelf) 
--- [https://wiki.facepunch.com/gmod/DMenu:GetDeleteSelf]
--- @return boolean
function DMenu:GetDeleteSelf() end

--- (client) Returns the value set by [DMenu:SetDrawBorder](https://wiki.facepunch.com/gmod/DMenu:SetDrawBorder). 
--- [https://wiki.facepunch.com/gmod/DMenu:GetDrawBorder]
--- @return boolean
function DMenu:GetDrawBorder() end

--- (client) Returns whether the [DMenu](https://wiki.facepunch.com/gmod/DMenu) should draw the icon column with a different color or not.
--- See [DMenu:SetDrawColumn](https://wiki.facepunch.com/gmod/DMenu:SetDrawColumn) 
--- [https://wiki.facepunch.com/gmod/DMenu:GetDrawColumn]
--- @return boolean
function DMenu:GetDrawColumn() end

--- (client) Returns the maximum height of the [DMenu](https://wiki.facepunch.com/gmod/DMenu). 
--- [https://wiki.facepunch.com/gmod/DMenu:GetMaxHeight]
--- @return number
function DMenu:GetMaxHeight() end

--- (client) Returns the minimum width of the [DMenu](https://wiki.facepunch.com/gmod/DMenu) in pixels 
--- [https://wiki.facepunch.com/gmod/DMenu:GetMinimumWidth]
--- @return number
function DMenu:GetMinimumWidth() end

--- (client) Returns the currently opened submenu.
--- Used internally to store the open submenu by [DMenu:Hide](https://wiki.facepunch.com/gmod/DMenu:Hide), [DMenu:OpenSubMenu](https://wiki.facepunch.com/gmod/DMenu:OpenSubMenu). 
--- [https://wiki.facepunch.com/gmod/DMenu:GetOpenSubMenu]
--- @return Panel
function DMenu:GetOpenSubMenu() end

--- (client) Used to safely hide (not remove) the menu. This will also hide any opened submenues recursively. 
--- [https://wiki.facepunch.com/gmod/DMenu:Hide]
--- @return void
function DMenu:Hide() end

--- (client) Highlights selected item in the [DMenu](https://wiki.facepunch.com/gmod/DMenu) by setting the item's key "Highlight" to true.
--- Doesn't appear to be working or used. 
--- [https://wiki.facepunch.com/gmod/DMenu:HighlightItem]
--- @param item Panel @ The item to highlight.
--- @return void
function DMenu:HighlightItem(item) end

--- (client) Opens the DMenu at the current mouse position 
--- [https://wiki.facepunch.com/gmod/DMenu:Open]
--- @param x number @ Position (X coordinate) to open the menu at.
--- @param y number @ Position (Y coordinate) to open the menu at.
--- @param skipanimation any @ This argument does nothing.
--- @param ownerpanel Panel @ If `x` and `y` are not set manually, setting this argument will offset the `y` position of the opened menu by the height of given panel.
--- @return void
function DMenu:Open(x, y, skipanimation, ownerpanel) end

--- (client) Closes any active sub menus, and opens a new one. 
--- [https://wiki.facepunch.com/gmod/DMenu:OpenSubMenu]
--- @param item Panel @ The [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption) to open the submenu at
--- @param menu Panel @ The submenu to open. If set to nil, the function just closes existing submenus.
--- @return void
function DMenu:OpenSubMenu(item, menu) end

--- (client) Called when a option has been selected 
--- [https://wiki.facepunch.com/gmod/DMenu:OptionSelected]
--- @param option Panel @ The [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption) that was selected
--- @param optionText string @ The options text
--- @return void
function DMenu:OptionSelected(option, optionText) end

--- (client) Called by [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption). Calls [DMenu:OptionSelected](https://wiki.facepunch.com/gmod/DMenu:OptionSelected). 
--- [https://wiki.facepunch.com/gmod/DMenu:OptionSelectedInternal]
--- @param option Panel @ The [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption) that called this function
--- @return void
function DMenu:OptionSelectedInternal(option) end

--- (client) Set to true by default. IF set to true, the menu will be deleted when it is closed, not simply hidden.
--- This is used by [DMenuBar](https://wiki.facepunch.com/gmod/DMenuBar) 
--- [https://wiki.facepunch.com/gmod/DMenu:SetDeleteSelf]
--- @param newState boolean @ true to delete menu on close, false to simply hide.
--- @return void
function DMenu:SetDeleteSelf(newState) end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DMenu:SetDrawBorder]
--- @param bool boolean @ No description provided
--- @return void
function DMenu:SetDrawBorder(bool) end

--- (client) Sets whether the [DMenu](https://wiki.facepunch.com/gmod/DMenu) should draw the icon column with a different color. 
--- [https://wiki.facepunch.com/gmod/DMenu:SetDrawColumn]
--- @param draw boolean @ Whether to draw the column or not
--- @return void
function DMenu:SetDrawColumn(draw) end

--- (client) Sets the maximum height the [DMenu](https://wiki.facepunch.com/gmod/DMenu) can have. If the height of all menu items exceed this value, a scroll bar will be automatically added. 
--- [https://wiki.facepunch.com/gmod/DMenu:SetMaxHeight]
--- @param maxHeight number @ The maximum height of the [DMenu](https://wiki.facepunch.com/gmod/DMenu) to set, in pixels
--- @return void
function DMenu:SetMaxHeight(maxHeight) end

--- (client) Sets the minimum width of the [DMenu](https://wiki.facepunch.com/gmod/DMenu). The menu will be stretched to match the given value. 
--- [https://wiki.facepunch.com/gmod/DMenu:SetMinimumWidth]
--- @param minWidth number @ The minimum width of the [DMenu](https://wiki.facepunch.com/gmod/DMenu) in pixels
--- @return void
function DMenu:SetMinimumWidth(minWidth) end

--- (client) Used internally to store the open submenu by [DMenu:Hide](https://wiki.facepunch.com/gmod/DMenu:Hide), [DMenu:OpenSubMenu](https://wiki.facepunch.com/gmod/DMenu:OpenSubMenu), [DMenu:CloseSubMenu](https://wiki.facepunch.com/gmod/DMenu:CloseSubMenu) 
--- [https://wiki.facepunch.com/gmod/DMenu:SetOpenSubMenu]
--- @param item Panel @ The menu to store
--- @return void
function DMenu:SetOpenSubMenu(item) end

