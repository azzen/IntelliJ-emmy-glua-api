--- @class derma
derma = {}

--- (client/menu) Gets the color from a Derma skin of a panel and returns default color if not found 
--- [https://wiki.facepunch.com/gmod/derma.Color]
--- @param name string @ No description provided
--- @param pnl Panel @ No description provided
--- @param default table @ The default color in case of failure.
--- @return void
function derma.Color(name, pnl, default) end

--- (client/menu) Defines a new Derma control with an optional base.
--- This calls [vgui.Register](https://wiki.facepunch.com/gmod/vgui.Register) internally, but also does the following:
--- * Adds the control to [derma.GetControlList](https://wiki.facepunch.com/gmod/derma.GetControlList)
--- * Adds a key "Derma" - This is returned by [derma.GetControlList](https://wiki.facepunch.com/gmod/derma.GetControlList)
--- * Makes a global table with the name of the control (This is technically deprecated and should not be relied upon)
--- * If reloading (i.e. called this function with name of an existing panel), updates all existing instances of panels with this name. (Updates functions, calls [PANEL:PreAutoRefresh](https://wiki.facepunch.com/gmod/PANEL:PreAutoRefresh) and [PANEL:PostAutoRefresh](https://wiki.facepunch.com/gmod/PANEL:PostAutoRefresh), etc.) 
--- [https://wiki.facepunch.com/gmod/derma.DefineControl]
--- @param name string @ Name of the newly created control
--- @param description string @ Description of the control
--- @param tab table @ Table containing control methods and properties
--- @param base string @ Derma control to base the new control off of
--- @return table
function derma.DefineControl(name, description, tab, base) end

--- (client/menu) Defines a new skin so that it is usable by Derma. The default skin can be found in `garrysmod/lua/skins/default.lua` 
--- [https://wiki.facepunch.com/gmod/derma.DefineSkin]
--- @param name string @ Name of the skin
--- @param descriptions string @ Description of the skin
--- @param skin table @ Table containing skin data
--- @return void
function derma.DefineSkin(name, descriptions, skin) end

--- (client/menu) Returns the [derma.Controls](https://wiki.facepunch.com/gmod/derma.Controls) table, a list of all derma controls registered with [derma.DefineControl](https://wiki.facepunch.com/gmod/derma.DefineControl). 
--- [https://wiki.facepunch.com/gmod/derma.GetControlList]
--- @return table
function derma.GetControlList() end

--- (client/menu) Returns the default skin table, which can be changed with the hook [GM:ForceDermaSkin](https://wiki.facepunch.com/gmod/GM:ForceDermaSkin) 
--- [https://wiki.facepunch.com/gmod/derma.GetDefaultSkin]
--- @return table
function derma.GetDefaultSkin() end

--- (client/menu) Returns the skin table of the skin with the supplied name 
--- [https://wiki.facepunch.com/gmod/derma.GetNamedSkin]
--- @param name string @ Name of skin
--- @return table
function derma.GetNamedSkin(name) end

--- (client/menu) Returns a copy of the table containing every Derma skin 
--- [https://wiki.facepunch.com/gmod/derma.GetSkinTable]
--- @return table
function derma.GetSkinTable() end

--- (client/menu) Clears all cached panels so that they reassess which skin they should be using. 
--- [https://wiki.facepunch.com/gmod/derma.RefreshSkins]
--- @return void
function derma.RefreshSkins() end

--- (client/menu) Returns how many times [derma.RefreshSkins](https://wiki.facepunch.com/gmod/derma.RefreshSkins) has been called. 
--- [https://wiki.facepunch.com/gmod/derma.SkinChangeIndex]
--- @return number
function derma.SkinChangeIndex() end

--- (client/menu) Calls the specified hook for the given panel 
--- [https://wiki.facepunch.com/gmod/derma.SkinHook]
--- @param type string @ The type of hook to run
--- @param name string @ The name of the hook to run
--- @param panel Panel @ The panel to call the hook for
--- @param w number @ The width of the panel
--- @param h number @ The height of the panel
--- @return any
function derma.SkinHook(type, name, panel, w, h) end

--- (client/menu) Returns a function to draw a specified texture of panels skin. 
--- [https://wiki.facepunch.com/gmod/derma.SkinTexture]
--- @param name string @ The identifier of the texture
--- @param pnl Panel @ Panel to get the skin of.
--- @param fallback any @ What to return if we failed to retrieve the texture
--- @return function
function derma.SkinTexture(name, pnl, fallback) end

--- () [derma.DefineControl](https://wiki.facepunch.com/gmod/derma.DefineControl).
--- Use [derma.GetControlList](https://wiki.facepunch.com/gmod/derma.GetControlList) to retrieve this list.
--- It's a list of tables, each having 3 keys, all from [derma.DefineControl](https://wiki.facepunch.com/gmod/derma.DefineControl) arguments:
--- * [string](https://wiki.facepunch.com/gmod/string) ClassName - The class name of the panel
--- * [string](https://wiki.facepunch.com/gmod/string) Description - The description of the panel
--- * [string](https://wiki.facepunch.com/gmod/string) BaseClass - The base class of the panel 
--- [https://wiki.facepunch.com/gmod/derma.Controls]
--- @return void
function derma.Controls() end

--- () No description provided 
--- [https://wiki.facepunch.com/gmod/derma.SkinList]
--- @return void
function derma.SkinList() end

