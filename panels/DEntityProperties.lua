--- @class DEntityProperties : DProperties
DEntityProperties = {}

--- (client) Called internally by [DEntityProperties:RebuildControls](https://wiki.facepunch.com/gmod/DEntityProperties:RebuildControls). 
--- [https://wiki.facepunch.com/gmod/DEntityProperties:EditVariable]
--- @param varname string @ No description provided
--- @param editdata table @ No description provided
--- @return void
function DEntityProperties:EditVariable(varname, editdata) end

--- (client) Called internally when an entity being edited became invalid.
--- You should use [DEntityProperties:OnEntityLost](https://wiki.facepunch.com/gmod/DEntityProperties:OnEntityLost) instead. 
--- [https://wiki.facepunch.com/gmod/DEntityProperties:EntityLost]
--- @return void
function DEntityProperties:EntityLost() end

--- (client) Called when we were editing an entity and then it became invalid (probably removed) 
--- [https://wiki.facepunch.com/gmod/DEntityProperties:OnEntityLost]
--- @return void
function DEntityProperties:OnEntityLost() end

--- (client) Called internally by [DEntityProperties:SetEntity](https://wiki.facepunch.com/gmod/DEntityProperties:SetEntity) to rebuild the controls. 
--- [https://wiki.facepunch.com/gmod/DEntityProperties:RebuildControls]
--- @return void
function DEntityProperties:RebuildControls() end

--- (client) Sets the entity to be edited by this panel. The entity must support the [Editable Entities](https://wiki.facepunch.com/gmod/Editable%20Entities) system or nothing will happen. 
--- [https://wiki.facepunch.com/gmod/DEntityProperties:SetEntity]
--- @param ent Entity @ The entity to edit
--- @return void
function DEntityProperties:SetEntity(ent) end

