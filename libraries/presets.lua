--- @class presets
presets = {}

--- (client) Adds preset to a preset group. 
--- [https://wiki.facepunch.com/gmod/presets.Add]
--- @param groupname string @ The preset group name, usually it's tool class name.
--- @param name string @ Preset name, must be unique.
--- @param values table @ A table of preset console commands.
--- @return void
function presets.Add(groupname, name, values) end

--- (client) Used internally to tell the player that the name they tried to use in their preset is not acceptable. 
--- [https://wiki.facepunch.com/gmod/presets.BadNameAlert]
--- @return void
function presets.BadNameAlert() end

--- (client) Returns whether a preset with given name exists or not 
--- [https://wiki.facepunch.com/gmod/presets.Exists]
--- @param type string @ The preset group name, usually it's tool class name.
--- @param name string @ Name of the preset to test
--- @return boolean
function presets.Exists(type, name) end

--- (client) Returns a table with preset names and values from a single preset group. 
--- [https://wiki.facepunch.com/gmod/presets.GetTable]
--- @param groupname string @ Preset group name.
--- @return table
function presets.GetTable(groupname) end

--- (client) Used internally to ask the player if they want to override an already existing preset. 
--- [https://wiki.facepunch.com/gmod/presets.OverwritePresetPrompt]
--- @param callback function @ No description provided
--- @return void
function presets.OverwritePresetPrompt(callback) end

--- (client) Removes a preset entry from a preset group. 
--- [https://wiki.facepunch.com/gmod/presets.Remove]
--- @param groupname string @ Preset group to remove from
--- @param name string @ Name of preset to remove
--- @return void
function presets.Remove(groupname, name) end

--- (client) Renames preset. 
--- [https://wiki.facepunch.com/gmod/presets.Rename]
--- @param groupname string @ Preset group name
--- @param oldname string @ Old preset name
--- @param newname string @ New preset name
--- @return void
function presets.Rename(groupname, oldname, newname) end

