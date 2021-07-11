--- @class gmsave
gmsave = {}

--- (server) Loads a saved map. 
--- [https://wiki.facepunch.com/gmod/gmsave.LoadMap]
--- @param mapData string @ The JSON encoded string containing all the map data.
--- @param ply Player @ The player to load positions for.
--- @param callback function @ A function to be called after all the entities have been placed.
--- @return void
function gmsave.LoadMap(mapData, ply, callback) end

--- (server) Sets player position and angles from supplied table 
--- [https://wiki.facepunch.com/gmod/gmsave.PlayerLoad]
--- @param ply Player @ The player to "load" values for
--- @param data table @ A table containing Origin and Angle keys for position and angles to set.
--- @return void
function gmsave.PlayerLoad(ply, data) end

--- (server) Returns a table containing player position and angles. Used by [gmsave.SaveMap](https://wiki.facepunch.com/gmod/gmsave.SaveMap). 
--- [https://wiki.facepunch.com/gmod/gmsave.PlayerSave]
--- @param ply Player @ The player to "save"
--- @return table
function gmsave.PlayerSave(ply) end

--- (server) Saves the map 
--- [https://wiki.facepunch.com/gmod/gmsave.SaveMap]
--- @param ply Player @ The player, whose position should be saved for loading the save
--- @return string
function gmsave.SaveMap(ply) end

--- (server) Returns if we should save this entity in a duplication or a map save or not. 
--- [https://wiki.facepunch.com/gmod/gmsave.ShouldSaveEntity]
--- @param ent Entity @ The entity
--- @param t table @ A table containing classname key with entities classname.
--- @return boolean
function gmsave.ShouldSaveEntity(ent, t) end

