--- @class ContentIcon : DButton
ContentIcon = {}

--- (client) Returns the color set by [ContentIcon:SetColor](https://wiki.facepunch.com/gmod/ContentIcon:SetColor) 
--- [https://wiki.facepunch.com/gmod/ContentIcon:GetColor]
--- @return table
function ContentIcon:GetColor() end

--- (client) Returns the content type used to save and restore the content icon in a spawnlist. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:GetContentType]
--- @return string
function ContentIcon:GetContentType() end

--- (client) Returns a table of weapon classes for the content icon with "NPC" content type to be randomly chosen from when user tries to spawn the NPC. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:GetNPCWeapon]
--- @return table
function ContentIcon:GetNPCWeapon() end

--- (client) Returns the internal "name" for the content icon, usually a class name for an entity. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:GetSpawnName]
--- @return string
function ContentIcon:GetSpawnName() end

--- (client) A hook for override, by default does nothing. Called when user right clicks on the content icon, you are supposed to open a [DermaMenu](https://wiki.facepunch.com/gmod/Global.DermaMenu) here with additional options. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:OpenMenu]
--- @return void
function ContentIcon:OpenMenu() end

--- (client) Sets whether the content item is admin only. This makes the icon to display a admin icon in the top left corner of the icon. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:SetAdminOnly]
--- @param adminOnly boolean @ Whether this content should be admin only or not
--- @return void
function ContentIcon:SetAdminOnly(adminOnly) end

--- (client) Sets the color for the content icon. Currently is not used by the content icon panel. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:SetColor]
--- @param clr table @ The color to set. See [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function ContentIcon:SetColor(clr) end

--- (client) Sets the content type used to save and restore the content icon in a spawnlist. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:SetContentType]
--- @param type string @ The content type, for example "entity" or "weapon"
--- @return void
function ContentIcon:SetContentType(type) end

--- (client) Sets the material to be displayed as the content icon. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:SetMaterial]
--- @param path string @ Path to the icon to use.
--- @return void
function ContentIcon:SetMaterial(path) end

--- (client) Sets the tool tip and the "nice" name to be displayed by the content icon. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:SetName]
--- @param name string @ "Nice" name to display.
--- @return void
function ContentIcon:SetName(name) end

--- (client) Sets a table of weapon classes for the content icon with "NPC" content type to be randomly chosen from when user tries to spawn the NPC. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:SetNPCWeapon]
--- @param weapons table @ A table of weapon classes to be chosen from when user tries to spawn the NPC.
--- @return void
function ContentIcon:SetNPCWeapon(weapons) end

--- (client) Sets the internal "name" for the content icon, usually a class name for an entity. 
--- [https://wiki.facepunch.com/gmod/ContentIcon:SetSpawnName]
--- @param name string @ Internal "name" to be used when user left clicks the icon.
--- @return void
function ContentIcon:SetSpawnName(name) end

