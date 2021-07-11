--- @class spawnmenu
spawnmenu = {}

--- (client) Activates a tool, opens context menu and brings up the tool gun. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.ActivateTool]
--- @param tool string @ Tool class/file name
--- @param menu_only boolean @ Should we activate this tool in the menu only or also the toolgun? `true` = menu only,`false` = toolgun aswell
--- @return void
function spawnmenu.ActivateTool(tool, menu_only) end

--- (client) Activates tools context menu in specified tool tab. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.ActivateToolPanel]
--- @param tab number @ The tabID of the tab to open the context menu in
--- @param cp Panel @ The control panel to open
--- @return void
function spawnmenu.ActivateToolPanel(tab, cp) end

--- (client) Returns currently opened control panel of a tool, post process effect or some other menu in spawnmenu. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.ActiveControlPanel]
--- @return Panel
function spawnmenu.ActiveControlPanel() end

--- (client) Registers a new content type that is saveable into spawnlists.Created/called by [spawnmenu.CreateContentIcon](https://wiki.facepunch.com/gmod/spawnmenu.CreateContentIcon). 
--- [https://wiki.facepunch.com/gmod/spawnmenu.AddContentType]
--- @param name string @ An unique name of the content type.
--- @param constructor function @ A function that is called whenever we need create a new panel for this content type.It has two arguments:[Panel](https://wiki.facepunch.com/gmod/Panel) container - The container/parent of the new panel[table](https://wiki.facepunch.com/gmod/table) data - Data for the content type passed from [spawnmenu.CreateContentIcon](https://wiki.facepunch.com/gmod/spawnmenu.CreateContentIcon)
--- @return void
function spawnmenu.AddContentType(name, constructor) end

--- (client) Inserts a new tab into the CreationMenus table, which will be used by the creation menu to generate its tabs (Spawnlists, Weapons, Entities, etc.) 
--- [https://wiki.facepunch.com/gmod/spawnmenu.AddCreationTab]
--- @param name string @ What text will appear on the tab (I.E Spawnlists).
--- @param function function @ The function called to generate the content of the tab.
--- @param material string @ Path to the material that will be used as an icon on the tab.
--- @param order number @ The order in which this tab should be shown relative to the other tabs on the creation menu.
--- @param tooltip string @ The tooltip to be shown for this tab.
--- @return void
function spawnmenu.AddCreationTab(name, function, material, order, tooltip) end

--- (client) Used to add addon spawnlists to the spawnmenu tree. This function should be called within [SANDBOX:PopulatePropMenu](https://wiki.facepunch.com/gmod/SANDBOX:PopulatePropMenu).Addon spawnlists will not save to disk if edited. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.AddPropCategory]
--- @param classname string @ A unique classname of the list.
--- @param name string @ The name of the category displayed to the player, e.g. `Comic Props`.
--- @param contents table @ A table of entries for the spawn menu. It must be numerically indexed.Each member of the table is a sub-table containing a type member, and other members depending on the type.New content types can be added via [spawnmenu.AddContentType](https://wiki.facepunch.com/gmod/spawnmenu.AddContentType).| [string](https://wiki.facepunch.com/gmod/string) type | Description | Other members || ------------- | ---------- | ----------------- || "header" | a simple header for organization | [string](https://wiki.facepunch.com/gmod/string) text - The text that the header will display || "model" | spawns a model where the player is looking | [string](https://wiki.facepunch.com/gmod/string) model - The path to the model file 	 [number](https://wiki.facepunch.com/gmod/number) skin - The skin for the model to use (optional)  [string](https://wiki.facepunch.com/gmod/string) body - The bodygroups for the model (optional)  [number](https://wiki.facepunch.com/gmod/number) wide - The width of the spawnicon (optional)  [number](https://wiki.facepunch.com/gmod/number) tall - The height of the spawnicon (optional) || "entity" | spawns an entity where the player is looking(appears in the Entities tab by default) | [string](https://wiki.facepunch.com/gmod/string) spawnname - The filename of the entity, for example "sent_ball"  [string](https://wiki.facepunch.com/gmod/string) nicename - The name of the entity to display  [string](https://wiki.facepunch.com/gmod/string) material - The icon to display, this should be set to "entities/
--- @param icon string @ The icon to use in the tree.
--- @param id number @ The unique ID number for the spawnlist category. Used to make sub categories. See "parentID" parameter below. If not set, it will be automatically set to ever increasing number, starting with 1000.
--- @param parentID number @ The unique ID of the parent category. This will make the created category a subcategory of category with given unique ID. `0` makes this a base category (such as `Builder`).
--- @param needsApp string @ The needed game for this prop category, if one is needed. If the specified game is not mounted, the category isn't shown. This uses the shortcut name, e.g. `cstrike`, and not the Steam AppID.
--- @return void
function spawnmenu.AddPropCategory(classname, name, contents, icon, id, parentID, needsApp) end

--- (client) Used to create a new category in the list inside of a spawnmenu ToolTab.You must call this function from [SANDBOX:AddToolMenuCategories](https://wiki.facepunch.com/gmod/SANDBOX:AddToolMenuCategories) for it to work properly. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.AddToolCategory]
--- @param tab string @ The ToolTab name, as created with [spawnmenu.AddToolTab](https://wiki.facepunch.com/gmod/spawnmenu.AddToolTab).You can also use the default ToolTab names "Main" and "Utilities".
--- @param RealName string @ The identifier name
--- @param PrintName string @ The displayed name
--- @return void
function spawnmenu.AddToolCategory(tab, RealName, PrintName) end

--- (client) Adds an option to the right side of the spawnmenu 
--- [https://wiki.facepunch.com/gmod/spawnmenu.AddToolMenuOption]
--- @param tab string @ The spawnmenu tab to add into (for example "Utilities")
--- @param category string @ The category to add into (for example "Admin")
--- @param class string @ Unique identifier of option to add
--- @param name string @ The nice name of item
--- @param cmd string @ Command to execute when the item is selected
--- @param config string @ Config name, used in older versions to load tool settings UI from a file. No longer works.
--- @param cpanel function @ A function to build the context panel. The function has one argument:* [Panel](https://wiki.facepunch.com/gmod/Panel) pnl - A [DForm](https://wiki.facepunch.com/gmod/DForm) that will be shown in the context menu
--- @param table table @ Allows to override the table that will be added to the tool list. Some of the fields will be overwritten by this function.
--- @return void
function spawnmenu.AddToolMenuOption(tab, category, class, name, cmd, config, cpanel, table) end

--- (client) Adds a new tool tab to the right side of the spawnmenu via the [SANDBOX:AddToolMenuTabs](https://wiki.facepunch.com/gmod/SANDBOX:AddToolMenuTabs) hook.This function is a inferior duplicate of [spawnmenu.GetToolMenu](https://wiki.facepunch.com/gmod/spawnmenu.GetToolMenu), just without its return value. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.AddToolTab]
--- @param name string @ The internal name of the tab. This is used for sorting.
--- @param label string @ The 'nice' name of the tab (Tip: [language.Add](https://wiki.facepunch.com/gmod/language.Add))
--- @param icon string @ The filepath to the icon of the tab. Should be a .png
--- @return void
function spawnmenu.AddToolTab(name, label, icon) end

--- (client) Clears all the tools from the different tool categories and the categories itself, if ran at the correct place.Seems to only work when ran at initialization. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.ClearToolMenus]
--- @return void
function spawnmenu.ClearToolMenus() end

--- (client) Creates a new content icon. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.CreateContentIcon]
--- @param type string @ The type of the content icon.
--- @param parent Panel @ The parent to add the content icon to.
--- @param data table @ The data to send to the content icon in [spawnmenu.AddContentType](https://wiki.facepunch.com/gmod/spawnmenu.AddContentType)
--- @return Panel
function spawnmenu.CreateContentIcon(type, parent, data) end

--- (client) Calls [spawnmenu.SaveToTextFiles](https://wiki.facepunch.com/gmod/spawnmenu.SaveToTextFiles). 
--- [https://wiki.facepunch.com/gmod/spawnmenu.DoSaveToTextFiles]
--- @param spawnlists table @ A table containing spawnlists.
--- @return void
function spawnmenu.DoSaveToTextFiles(spawnlists) end

--- (client) Returns the function to create an vgui element for a specified content type 
--- [https://wiki.facepunch.com/gmod/spawnmenu.GetContentType]
--- @param contentType string @ No description provided
--- @return function
function spawnmenu.GetContentType(contentType) end

--- (client) Gets the CreationMenus table, which was filled with creation menu tabs from [spawnmenu.AddCreationTab](https://wiki.facepunch.com/gmod/spawnmenu.AddCreationTab). 
--- [https://wiki.facepunch.com/gmod/spawnmenu.GetCreationTabs]
--- @return table
function spawnmenu.GetCreationTabs() end

--- (client) Similar to [spawnmenu.GetPropTable](https://wiki.facepunch.com/gmod/spawnmenu.GetPropTable), but only returns spawnlists created by addons via [spawnmenu.AddPropCategory](https://wiki.facepunch.com/gmod/spawnmenu.AddPropCategory).These spawnlists are shown in a separate menu in-game. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.GetCustomPropTable]
--- @return table
function spawnmenu.GetCustomPropTable() end

--- (client) Returns a table of all prop categories and their props in the spawnmenu.Note that if the spawnmenu has not been populated, this will return an empty table.This will not return spawnlists created by addons, see  [spawnmenu.GetCustomPropTable](https://wiki.facepunch.com/gmod/spawnmenu.GetCustomPropTable) for that. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.GetPropTable]
--- @return table
function spawnmenu.GetPropTable() end

--- (client) Adds a new tool tab (or returns an existing one by name) to the right side of the spawnmenu via the [SANDBOX:AddToolMenuTabs](https://wiki.facepunch.com/gmod/SANDBOX:AddToolMenuTabs) hook. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.GetToolMenu]
--- @param name string @ The internal name of the tab. This is used for sorting.
--- @param label string @ The 'nice' name of the tab
--- @param icon string @ The filepath to the icon of the tab. Should be a .png
--- @return table
function spawnmenu.GetToolMenu(name, label, icon) end

--- (client) Gets a table of tools on the client. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.GetTools]
--- @return table
function spawnmenu.GetTools() end

--- (client) Calls [spawnmenu.PopulateFromTextFiles](https://wiki.facepunch.com/gmod/spawnmenu.PopulateFromTextFiles). 
--- [https://wiki.facepunch.com/gmod/spawnmenu.PopulateFromEngineTextFiles]
--- @return void
function spawnmenu.PopulateFromEngineTextFiles() end

--- (client) Loads spawnlists from text files. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.PopulateFromTextFiles]
--- @param callback function @ The function to call. Arguments are ( strFilename, strName, tabContents, icon, id, parentid, needsapp )
--- @return void
function spawnmenu.PopulateFromTextFiles(callback) end

--- (client) Saves a table of spawnlists to files. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.SaveToTextFiles]
--- @param spawnlists table @ A table containing spawnlists.
--- @return void
function spawnmenu.SaveToTextFiles(spawnlists) end

--- (client) Sets currently active control panel to be returned by [spawnmenu.ActiveControlPanel](https://wiki.facepunch.com/gmod/spawnmenu.ActiveControlPanel). 
--- [https://wiki.facepunch.com/gmod/spawnmenu.SetActiveControlPanel]
--- @param pnl Panel @ The panel to set.
--- @return void
function spawnmenu.SetActiveControlPanel(pnl) end

--- (client) Supposed to open specified tool tab in spawnmenu, in reality does nothing. 
--- [https://wiki.facepunch.com/gmod/spawnmenu.SwitchToolTab]
--- @param id number @ The tab ID to open
--- @return void
function spawnmenu.SwitchToolTab(id) end

