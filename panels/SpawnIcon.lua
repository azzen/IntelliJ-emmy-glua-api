--- @class SpawnIcon : DButton
SpawnIcon = {}

--- (client) Returns the currently set body groups of the spawn icon. This is set by [SpawnIcon:SetBodyGroup](https://wiki.facepunch.com/gmod/SpawnIcon:SetBodyGroup). 
--- [https://wiki.facepunch.com/gmod/SpawnIcon:GetBodyGroup]
--- @return string
function SpawnIcon:GetBodyGroup() end

--- (client) Returns the currently set model name. This is set by [SpawnIcon:SetModelName](https://wiki.facepunch.com/gmod/SpawnIcon:SetModelName). 
--- [https://wiki.facepunch.com/gmod/SpawnIcon:GetModelName]
--- @return string
function SpawnIcon:GetModelName() end

--- (client) Returns the currently set skin of the spawnicon. This is set by [SpawnIcon:SetSkinID](https://wiki.facepunch.com/gmod/SpawnIcon:SetSkinID). 
--- [https://wiki.facepunch.com/gmod/SpawnIcon:GetSkinID]
--- @return number
function SpawnIcon:GetSkinID() end

--- (client) Called when right clicked on the SpawnIcon. It will not be called if there is a selection ([Panel:GetSelectionCanvas](https://wiki.facepunch.com/gmod/Panel:GetSelectionCanvas)), in which case [SANDBOX:SpawnlistOpenGenericMenu](https://wiki.facepunch.com/gmod/SANDBOX:SpawnlistOpenGenericMenu) is called. 
--- [https://wiki.facepunch.com/gmod/SpawnIcon:OpenMenu]
--- @return void
function SpawnIcon:OpenMenu() end

--- (client) Sets the bodygroups, so it can be retrieved with [SpawnIcon:GetBodyGroup](https://wiki.facepunch.com/gmod/SpawnIcon:GetBodyGroup). Use [Panel:SetModel](https://wiki.facepunch.com/gmod/Panel:SetModel) instead. 
--- [https://wiki.facepunch.com/gmod/SpawnIcon:SetBodyGroup]
--- @param bodygroup string @ Body groups to set. It must be 9 character long string of 0-9 characters.
--- @return void
function SpawnIcon:SetBodyGroup(bodygroup) end

--- (client) Sets the model name, so it can be retrieved with [SpawnIcon:GetModelName](https://wiki.facepunch.com/gmod/SpawnIcon:GetModelName). Use [Panel:SetModel](https://wiki.facepunch.com/gmod/Panel:SetModel) instead. 
--- [https://wiki.facepunch.com/gmod/SpawnIcon:SetModelName]
--- @param mdl string @ The model name to set
--- @return void
function SpawnIcon:SetModelName(mdl) end

--- (client) Sets the skin id of the spawn icon, so it can be retrieved with [SpawnIcon:GetSkinID](https://wiki.facepunch.com/gmod/SpawnIcon:GetSkinID). Use [Panel:SetModel](https://wiki.facepunch.com/gmod/Panel:SetModel) instead. 
--- [https://wiki.facepunch.com/gmod/SpawnIcon:SetSkinID]
--- @param skin number @ Skin ID to set
--- @return void
function SpawnIcon:SetSkinID(skin) end

