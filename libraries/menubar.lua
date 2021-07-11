--- @class menubar
menubar = {}

--- (client) Creates the menu bar ( The bar at the top of the screen when holding C or Q in sandbox ) and docks it to the top of the screen. It will not appear.Calling this multiple times will **NOT** remove previous panel. 
--- [https://wiki.facepunch.com/gmod/menubar.Init]
--- @return void
function menubar.Init() end

--- (client) Checks if the supplied panel is parent to the menubar 
--- [https://wiki.facepunch.com/gmod/menubar.IsParent]
--- @param pnl Panel @ The panel to check
--- @return boolean
function menubar.IsParent(pnl) end

--- (client) Parents the menubar to the panel and displays the menubar. 
--- [https://wiki.facepunch.com/gmod/menubar.ParentTo]
--- @param pnl Panel @ The panel to parent to
--- @return void
function menubar.ParentTo(pnl) end

