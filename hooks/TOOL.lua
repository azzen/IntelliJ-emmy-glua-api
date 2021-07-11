--- @class TOOL
TOOL = {}

--- (client/server) Called when [WEAPON:Deploy](https://wiki.facepunch.com/gmod/WEAPON:Deploy) of the toolgun is called.This is also called when switching from another tool on the server. 
--- [https://wiki.facepunch.com/gmod/TOOL:Deploy]
--- @return void
function TOOL:Deploy() end

--- (client) Called when [WEAPON:DrawHUD](https://wiki.facepunch.com/gmod/WEAPON:DrawHUD) of the toolgun is called, only when the user has this tool selected. 
--- [https://wiki.facepunch.com/gmod/TOOL:DrawHUD]
--- @return void
function TOOL:DrawHUD() end

--- (client) Called after the default tool screen has been drawn from [WEAPON:RenderScreen](https://wiki.facepunch.com/gmod/WEAPON:RenderScreen). 
--- [https://wiki.facepunch.com/gmod/TOOL:DrawToolScreen]
--- @param width number @ The width of the tool's screen in pixels.
--- @param height number @ The height of the tool's screen in pixels.
--- @return void
function TOOL:DrawToolScreen(width, height) end

--- (client) Called when [WEAPON:Think](https://wiki.facepunch.com/gmod/WEAPON:Think) of the toolgun is called, only when the user has this tool selected. 
--- [https://wiki.facepunch.com/gmod/TOOL:FreezeMovement]
--- @return boolean
function TOOL:FreezeMovement() end

--- (client/server) Called when [WEAPON:Holster](https://wiki.facepunch.com/gmod/WEAPON:Holster) of the toolgun is called, as well as when switching between different toolguns. 
--- [https://wiki.facepunch.com/gmod/TOOL:Holster]
--- @return void
function TOOL:Holster() end

--- (client/server) Called when the user left clicks with the tool 
--- [https://wiki.facepunch.com/gmod/TOOL:LeftClick]
--- @param tr table @ A trace from users eyes to wherever he aims at. See [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult)
--- @return boolean
function TOOL:LeftClick(tr) end

--- (client/server) Called when the user presses the reload key with the tool out. 
--- [https://wiki.facepunch.com/gmod/TOOL:Reload]
--- @param tr table @ A trace from users eyes to wherever he aims at. See [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult)
--- @return boolean
function TOOL:Reload(tr) end

--- (client/server) Called when the user right clicks with the tool. 
--- [https://wiki.facepunch.com/gmod/TOOL:RightClick]
--- @param tr table @ A trace from users eyes to wherever he aims at. See [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult)
--- @return boolean
function TOOL:RightClick(tr) end

--- (client/server) Called when [WEAPON:Think](https://wiki.facepunch.com/gmod/WEAPON:Think) of the toolgun is called. This only happens when the tool gun is currently equipped/selected by the player and the selected tool is this tool. 
--- [https://wiki.facepunch.com/gmod/TOOL:Think]
--- @return void
function TOOL:Think() end

