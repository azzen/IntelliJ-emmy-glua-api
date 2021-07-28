--- @class IconEditor : DFrame
IconEditor = {}

--- (client) Applies the top-down view camera settings for the model in the [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel).
--- Called when a user clicks the `Above` (third) button (See [IconEditor](https://wiki.facepunch.com/gmod/IconEditor)). 
--- [https://wiki.facepunch.com/gmod/IconEditor:AboveLayout]
--- @return void
function IconEditor:AboveLayout() end

--- (client) Applies the best camera settings for the model in the [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel), using the values returned by [PositionSpawnIcon](https://wiki.facepunch.com/gmod/Global.PositionSpawnIcon).
--- Called when a user clicks the `wand` button (See the ) and when [IconEditor:Refresh](https://wiki.facepunch.com/gmod/IconEditor:Refresh) is called. 
--- [https://wiki.facepunch.com/gmod/IconEditor:BestGuessLayout]
--- @return void
function IconEditor:BestGuessLayout() end

--- (client) Fills the [DListView](https://wiki.facepunch.com/gmod/DListView) on the left of the editor with the model entity's animation list. Called by [IconEditor:Refresh](https://wiki.facepunch.com/gmod/IconEditor:Refresh). 
--- [https://wiki.facepunch.com/gmod/IconEditor:FillAnimations]
--- @param ent Entity @ The entity being rendered within the model panel.
--- @return void
function IconEditor:FillAnimations(ent) end

--- (client) Applies the front view camera settings for the model in the [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel).
--- Called when a user clicks the `Front` (second) button (See the ). 
--- [https://wiki.facepunch.com/gmod/IconEditor:FullFrontalLayout]
--- @return void
function IconEditor:FullFrontalLayout() end

--- (client) Places the camera at the origin (0,0,0), relative to the entity, in the [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel).
--- Called when a user clicks the `Center` (fifth) button (See the ). 
--- [https://wiki.facepunch.com/gmod/IconEditor:OriginLayout]
--- @return void
function IconEditor:OriginLayout() end

--- (client) Updates the internal [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel) and [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon). 
--- This should be called immediately after setting the SpawnIcon with [IconEditor:SetIcon](https://wiki.facepunch.com/gmod/IconEditor:SetIcon). 
--- [https://wiki.facepunch.com/gmod/IconEditor:Refresh]
--- @return void
function IconEditor:Refresh() end

--- (client) Re-renders the [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon).
--- Called when a user clicks the `RENDER` button, this retrieves the render data from the internal [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel) and passes it as a table to [Panel:RebuildSpawnIconEx](https://wiki.facepunch.com/gmod/Panel:RebuildSpawnIconEx). 
--- [https://wiki.facepunch.com/gmod/IconEditor:RenderIcon]
--- @return void
function IconEditor:RenderIcon() end

--- (client) Applies the right side view camera settings for the model in the [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel).
--- Called when a user clicks the `Right` (fourth) button (See the ). (Note: The icon for this points left.) 
--- [https://wiki.facepunch.com/gmod/IconEditor:RightLayout]
--- @return void
function IconEditor:RightLayout() end

--- (client) Sets up the default ambient and directional lighting for the [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel). Called by [IconEditor:Refresh](https://wiki.facepunch.com/gmod/IconEditor:Refresh). 
--- [https://wiki.facepunch.com/gmod/IconEditor:SetDefaultLighting]
--- @return void
function IconEditor:SetDefaultLighting() end

--- (client) Sets the editor's model and icon from an entity. Alternative to [IconEditor:SetIcon](https://wiki.facepunch.com/gmod/IconEditor:SetIcon), with uses a [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon).
--- You do not need to call [IconEditor:Refresh](https://wiki.facepunch.com/gmod/IconEditor:Refresh) after this. 
--- [https://wiki.facepunch.com/gmod/IconEditor:SetFromEntity]
--- @param ent Entity @ The entity to retrieve the model and skin from.
--- @return void
function IconEditor:SetFromEntity(ent) end

--- (client) Sets the [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon) to modify. You should call [Panel:Refresh](https://wiki.facepunch.com/gmod/Panel:Refresh) immediately after this, as the user will not be able to make changes to the icon beforehand. 
--- [https://wiki.facepunch.com/gmod/IconEditor:SetIcon]
--- @param icon Panel @ The [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon) object to be modified.
--- @return void
function IconEditor:SetIcon(icon) end

--- (client) Updates the entity being rendered in the internal [DAdjustableModelPanel](https://wiki.facepunch.com/gmod/DAdjustableModelPanel). Called by the model panel's [DModelPanel:LayoutEntity](https://wiki.facepunch.com/gmod/DModelPanel:LayoutEntity) method. 
--- [https://wiki.facepunch.com/gmod/IconEditor:UpdateEntity]
--- @param ent Entity @ The entity being rendered within the model panel.
--- @return void
function IconEditor:UpdateEntity(ent) end

