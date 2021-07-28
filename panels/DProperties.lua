--- @class DProperties : PANEL
DProperties = {}

--- (client) Creates a row in the properties panel. 
--- [https://wiki.facepunch.com/gmod/DProperties:CreateRow]
--- @param category string @ The category to list this row under
--- @param name string @ The label of this row
--- @return Panel
function DProperties:CreateRow(category, name) end

--- (client) Returns the [DScrollPanel](https://wiki.facepunch.com/gmod/DScrollPanel) all the properties panels are attached to. 
--- [https://wiki.facepunch.com/gmod/DProperties:GetCanvas]
--- @return Panel
function DProperties:GetCanvas() end

--- (client) Returns (or creates) a category of properties.
--- See [DProperties:CreateRow](https://wiki.facepunch.com/gmod/DProperties:CreateRow) for adding actual properties. 
--- [https://wiki.facepunch.com/gmod/DProperties:GetCategory]
--- @param name string @ Name of the category
--- @param create boolean @ Create a new category if it doesn't exist.
--- @return Panel
function DProperties:GetCategory(name, create) end

