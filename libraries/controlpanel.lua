--- @class controlpanel
controlpanel = {}

--- (client) Clears ALL the control panels ( for tools ) 
--- [https://wiki.facepunch.com/gmod/controlpanel.Clear]
--- @return void
function controlpanel.Clear() end

--- (client) Returns (or creates if not exists) a control panel. 
--- [https://wiki.facepunch.com/gmod/controlpanel.Get]
--- @param name string @ The name of the panel. For normal tools this will be equal to `TOOL.Mode` (the tool's filename without the extension).When you create a tool/option via [spawnmenu.AddToolMenuOption](https://wiki.facepunch.com/gmod/spawnmenu.AddToolMenuOption), the internal control panel name is `TOOL.Mode .. "_" .. tool_tab:lower() .. "_" .. tool_category:lower()`.
--- @return Panel
function controlpanel.Get(name) end

