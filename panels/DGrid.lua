--- @class DGrid : PANEL
DGrid = {}

--- (client) Adds a new item to the grid. 
--- [https://wiki.facepunch.com/gmod/DGrid:AddItem]
--- @param item Panel @ The item to add. It will be forced visible and parented to the [DGrid](https://wiki.facepunch.com/gmod/DGrid).
--- @return void
function DGrid:AddItem(item) end

--- (client) Returns the number of columns of this [DGrid](https://wiki.facepunch.com/gmod/DGrid). Set by [DGrid:SetCols](https://wiki.facepunch.com/gmod/DGrid:SetCols). 
--- [https://wiki.facepunch.com/gmod/DGrid:GetCols]
--- @return number
function DGrid:GetCols() end

--- (client) Returns the width of each column of the [DGrid](https://wiki.facepunch.com/gmod/DGrid), which is set by [DGrid:SetColWide](https://wiki.facepunch.com/gmod/DGrid:SetColWide). 
--- [https://wiki.facepunch.com/gmod/DGrid:GetColWide]
--- @return number
function DGrid:GetColWide() end

--- (client) Returns a list of panels in the grid. 
--- [https://wiki.facepunch.com/gmod/DGrid:GetItems]
--- @return table
function DGrid:GetItems() end

--- (client) Returns the height of each row of the [DGrid](https://wiki.facepunch.com/gmod/DGrid), which is set by [DGrid:SetRowHeight](https://wiki.facepunch.com/gmod/DGrid:SetRowHeight). 
--- [https://wiki.facepunch.com/gmod/DGrid:GetRowHeight]
--- @return number
function DGrid:GetRowHeight() end

--- (client) Removes given panel from the [DGrid:GetItems](https://wiki.facepunch.com/gmod/DGrid:GetItems). 
--- [https://wiki.facepunch.com/gmod/DGrid:RemoveItem]
--- @param item Panel @ Item to remove from the grid
--- @param bDontDelete boolean @ If set to true, the actual panel will not be removed via [Panel:Remove](https://wiki.facepunch.com/gmod/Panel:Remove).
--- @return void
function DGrid:RemoveItem(item, bDontDelete) end

--- (client) Sets the number of columns this panel should have.
--- The [DGrid](https://wiki.facepunch.com/gmod/DGrid) will resize its width to match this value. 
--- [https://wiki.facepunch.com/gmod/DGrid:SetCols]
--- @param cols number @ The desired number of columns
--- @return void
function DGrid:SetCols(cols) end

--- (client) Sets the width of each column.
--- The cell panels (grid items) will not be resized or centered. 
--- [https://wiki.facepunch.com/gmod/DGrid:SetColWide]
--- @param colWidth number @ The width of each column.
--- @return void
function DGrid:SetColWide(colWidth) end

--- (client) Sets the height of each row. 
--- The cell panels (grid items) will not be resized or centered. 
--- [https://wiki.facepunch.com/gmod/DGrid:SetRowHeight]
--- @param rowHeight number @ The height of each row
--- @return void
function DGrid:SetRowHeight(rowHeight) end

--- (client) Sorts the items in the grid. Does not visually update the grid, use [Panel:InvalidateLayout](https://wiki.facepunch.com/gmod/Panel:InvalidateLayout) for that. 
--- [https://wiki.facepunch.com/gmod/DGrid:SortByMember]
--- @param key string @ A key in the panel from [DGrid:GetItems](https://wiki.facepunch.com/gmod/DGrid:GetItems). The key's value must be numeric.
--- @param desc boolean @ True for descending order, false for ascending.
--- @return void
function DGrid:SortByMember(key, desc) end

