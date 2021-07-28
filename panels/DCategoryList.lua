--- @class DCategoryList : DScrollPanel
DCategoryList = {}

--- (client) Adds a [DCollapsibleCategory](https://wiki.facepunch.com/gmod/DCollapsibleCategory) to the list. 
--- [https://wiki.facepunch.com/gmod/DCategoryList:Add]
--- @param categoryName string @ The name of the category to add.
--- @return Panel
function DCategoryList:Add(categoryName) end

--- (client) Adds an element to the list. 
--- [https://wiki.facepunch.com/gmod/DCategoryList:AddItem]
--- @param element Panel @ VGUI element to add to the list.
--- @return void
function DCategoryList:AddItem(element) end

--- (client) Calls [Panel:UnselectAll](https://wiki.facepunch.com/gmod/Panel:UnselectAll) on all child elements, if they have it. 
--- [https://wiki.facepunch.com/gmod/DCategoryList:UnselectAll]
--- @return void
function DCategoryList:UnselectAll() end

