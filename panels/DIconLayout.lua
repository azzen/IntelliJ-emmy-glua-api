--- @class DIconLayout : DDragBase
DIconLayout = {}

--- (client) Creates a replica of the DIconLayout it is called on. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:Copy]
--- @return Panel
function DIconLayout:Copy() end

--- (client) Copies the contents (Child elements) of another [DIconLayout](https://wiki.facepunch.com/gmod/DIconLayout) to itself. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:CopyContents]
--- @param from Panel @ [DIconLayout](https://wiki.facepunch.com/gmod/DIconLayout) to copy from.
--- @return void
function DIconLayout:CopyContents(from) end

--- (client) Returns the size of the border. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:GetBorder]
--- @return number
function DIconLayout:GetBorder() end

--- (client) Returns the direction that it will be layed out, using the DOCK enumerations. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:GetLayoutDir]
--- @return number
function DIconLayout:GetLayoutDir() end

--- (client) Returns the distance between two 'icons' on the X axis. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:GetSpaceX]
--- @return number
function DIconLayout:GetSpaceX() end

--- (client) Returns distance between two "Icons" on the Y axis. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:GetSpaceY]
--- @return number
function DIconLayout:GetSpaceY() end

--- (client) Returns whether the icon layout will stretch its height to fit all the children.
--- See also [DIconLayout:GetStretchWidth](https://wiki.facepunch.com/gmod/DIconLayout:GetStretchWidth) 
--- [https://wiki.facepunch.com/gmod/DIconLayout:GetStretchHeight]
--- @return boolean
function DIconLayout:GetStretchHeight() end

--- (client) Returns whether the icon layout will stretch its width to fit all the children.
--- See also [DIconLayout:GetStretchHeight](https://wiki.facepunch.com/gmod/DIconLayout:GetStretchHeight) 
--- [https://wiki.facepunch.com/gmod/DIconLayout:GetStretchWidth]
--- @return boolean
function DIconLayout:GetStretchWidth() end

--- (client) Resets layout vars before calling [Panel:InvalidateLayout](https://wiki.facepunch.com/gmod/Panel:InvalidateLayout). This is called when children are added or removed, and must be called when the spacing, border or layout direction is changed. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:Layout]
--- @return void
function DIconLayout:Layout() end

--- (client) Used internally to layout the child elements if the [DIconLayout:SetLayoutDir](https://wiki.facepunch.com/gmod/DIconLayout:SetLayoutDir) is set to LEFT (See [DOCK](https://wiki.facepunch.com/gmod/Enums/DOCK)). 
--- [https://wiki.facepunch.com/gmod/DIconLayout:LayoutIcons_LEFT]
--- @return void
function DIconLayout:LayoutIcons_LEFT() end

--- (client) Used internally to layout the child elements if the [DIconLayout:SetLayoutDir](https://wiki.facepunch.com/gmod/DIconLayout:SetLayoutDir) is set to TOP (See [DOCK](https://wiki.facepunch.com/gmod/Enums/DOCK)). 
--- [https://wiki.facepunch.com/gmod/DIconLayout:LayoutIcons_TOP]
--- @return void
function DIconLayout:LayoutIcons_TOP() end

--- (client) Called when the panel is modified. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:OnModified]
--- @return void
function DIconLayout:OnModified() end

--- (client) Sets the internal border (padding) within the DIconLayout. This will not change its size, only the positioning of children. You must call [DIconLayout:Layout](https://wiki.facepunch.com/gmod/DIconLayout:Layout) in order for the changes to take effect. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:SetBorder]
--- @param width number @ The border (padding) inside the DIconLayout.
--- @return void
function DIconLayout:SetBorder(width) end

--- (client) Sets the direction that it will be layed out, using the [DOCK](https://wiki.facepunch.com/gmod/Enums/DOCK).
--- Currently only TOP and LEFT are supported. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:SetLayoutDir]
--- @param direction number @ [DOCK](https://wiki.facepunch.com/gmod/Enums/DOCK)
--- @return void
function DIconLayout:SetLayoutDir(direction) end

--- (client) Sets the horizontal (x) spacing between children within the DIconLayout. You must call [DIconLayout:Layout](https://wiki.facepunch.com/gmod/DIconLayout:Layout) in order for the changes to take effect. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:SetSpaceX]
--- @param xSpacing number @ The width of the gap between child objects.
--- @return void
function DIconLayout:SetSpaceX(xSpacing) end

--- (client) Sets the vertical (y) spacing between children within the DIconLayout. You must call [DIconLayout:Layout](https://wiki.facepunch.com/gmod/DIconLayout:Layout) in order for the changes to take effect. 
--- [https://wiki.facepunch.com/gmod/DIconLayout:SetSpaceY]
--- @param ySpacing number @ The vertical gap between rows in the DIconLayout.
--- @return void
function DIconLayout:SetSpaceY(ySpacing) end

--- (client) If set to true, the icon layout will stretch its height to fit all the children.
--- See also [DIconLayout:SetStretchWidth](https://wiki.facepunch.com/gmod/DIconLayout:SetStretchWidth) 
--- [https://wiki.facepunch.com/gmod/DIconLayout:SetStretchHeight]
--- @param do_stretch boolean @ No description provided
--- @return void
function DIconLayout:SetStretchHeight(do_stretch) end

--- (client) If set to true, the icon layout will stretch its width to fit all the children.
--- See also [DIconLayout:SetStretchHeight](https://wiki.facepunch.com/gmod/DIconLayout:SetStretchHeight) 
--- [https://wiki.facepunch.com/gmod/DIconLayout:SetStretchWidth]
--- @param stretchW boolean @ No description provided
--- @return void
function DIconLayout:SetStretchWidth(stretchW) end

