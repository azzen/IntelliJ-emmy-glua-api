--- @class ContextBase : PANEL
ContextBase = {}

--- (client) Called by spawnmenu functions (when creating a context menu) to fill this control with data. 
--- [https://wiki.facepunch.com/gmod/ContextBase:ControlValues]
--- @param contextData table @ A two-membered table:  [string](https://wiki.facepunch.com/gmod/string) convar - The console variable to use. Calls [ContextBase:SetConVar](https://wiki.facepunch.com/gmod/ContextBase:SetConVar).  [string](https://wiki.facepunch.com/gmod/string) label - The text to display inside the control's label.
--- @return void
function ContextBase:ControlValues(contextData) end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) for the panel to change/handle, set by [ContextBase:SetConVar](https://wiki.facepunch.com/gmod/ContextBase:SetConVar) 
--- [https://wiki.facepunch.com/gmod/ContextBase:ConVar]
--- @return string
function ContextBase:ConVar() end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) for the panel to change/handle. 
--- [https://wiki.facepunch.com/gmod/ContextBase:SetConVar]
--- @param cvar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) for the panel to change.
--- @return void
function ContextBase:SetConVar(cvar) end

--- (client) You should override this function and use it to check whether your convar value changed. 
--- [https://wiki.facepunch.com/gmod/ContextBase:TestForChanges]
--- @return void
function ContextBase:TestForChanges() end

