--- @class vgui
vgui = {}

--- (client/menu) Creates a panel by the specified classname. 
--- [https://wiki.facepunch.com/gmod/vgui.Create]
--- @param classname string @ Classname of the panel to create. Valid classnames are listed at: [VGUI Element List](https://wiki.facepunch.com/gmod/VGUI%20Element%20List).
--- @param parent Panel @ Parent of the created panel.
--- @param name string @ Name of the created panel.
--- @return Panel
function vgui.Create(classname, parent, name) end

--- (client/menu) Creates a panel from table. 
--- [https://wiki.facepunch.com/gmod/vgui.CreateFromTable]
--- @param metatable table @ Your PANEL table
--- @param parent Panel @ Which panel to parent the newly created panel to
--- @param name string @ Name of your panel
--- @return Panel
function vgui.CreateFromTable(metatable, parent, name) end

--- (client/menu) Creates an engine panel. 
--- [https://wiki.facepunch.com/gmod/vgui.CreateX]
--- @param class string @ Class of the panel to create
--- @param parent Panel @ If specified, parents created panel to given one
--- @param name string @ Name of the created panel
--- @return Panel
function vgui.CreateX(class, parent, name) end

--- (client/menu) Returns whenever the cursor is currently active and visible. 
--- [https://wiki.facepunch.com/gmod/vgui.CursorVisible]
--- @return boolean
function vgui.CursorVisible() end

--- (client/menu) Returns whether the currently focused panel is a child of the given one. 
--- [https://wiki.facepunch.com/gmod/vgui.FocusedHasParent]
--- @param parent Panel @ The parent panel to check the currently focused one against. This doesn't need to be a direct parent (focused panel can be a child of a child and so on).
--- @return boolean
function vgui.FocusedHasParent(parent) end

--- (client/menu) Gets the method table of this panel. Does not return parent methods! 
--- [https://wiki.facepunch.com/gmod/vgui.GetControlTable]
--- @param Panelname string @ The name of the panel
--- @return table
function vgui.GetControlTable(Panelname) end

--- (client/menu) Returns the panel the cursor is hovering above. 
--- [https://wiki.facepunch.com/gmod/vgui.GetHoveredPanel]
--- @return Panel
function vgui.GetHoveredPanel() end

--- (client/menu) Returns the panel which is currently receiving keyboard input. 
--- [https://wiki.facepunch.com/gmod/vgui.GetKeyboardFocus]
--- @return Panel
function vgui.GetKeyboardFocus() end

--- (client/menu) Returns the global world panel which is the parent to all others, except for the HUD panel.See also [GetHUDPanel](https://wiki.facepunch.com/gmod/Global.GetHUDPanel). 
--- [https://wiki.facepunch.com/gmod/vgui.GetWorldPanel]
--- @return Panel
function vgui.GetWorldPanel() end

--- (client/menu) Returns whenever the cursor is hovering the world panel. 
--- [https://wiki.facepunch.com/gmod/vgui.IsHoveringWorld]
--- @return boolean
function vgui.IsHoveringWorld() end

--- (client/menu) Registers a panel for later creation. 
--- [https://wiki.facepunch.com/gmod/vgui.Register]
--- @param classname string @ Classname of the panel to create.
--- @param panelTable table @ The table containg the panel information.
--- @param baseName string @ Name of the base of the panel.
--- @return table
function vgui.Register(classname, panelTable, baseName) end

--- (client/menu) Registers a new VGUI panel from a file. 
--- [https://wiki.facepunch.com/gmod/vgui.RegisterFile]
--- @param file string @ The file to register
--- @return table
function vgui.RegisterFile(file) end

--- (client/menu) Registers a table to use as a panel. All this function does is assigns Base key to your table and returns the table. 
--- [https://wiki.facepunch.com/gmod/vgui.RegisterTable]
--- @param panel table @ The PANEL table
--- @param base string @ A base for the panel
--- @return table
function vgui.RegisterTable(panel, base) end

