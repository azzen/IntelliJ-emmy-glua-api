--- @class cleanup
cleanup = {}

--- (server) Adds an entity to a player's cleanup list. 
--- [https://wiki.facepunch.com/gmod/cleanup.Add]
--- @param pl Player @ Who's cleanup list to add the entity to.
--- @param type string @ The type of cleanup.
--- @param ent Entity @ The entity to add to the player's cleanup list.
--- @return void
function cleanup.Add(pl, type, ent) end

--- (server) Called by the `gmod_admin_cleanup` console command. Allows admins to clean up the server. 
--- [https://wiki.facepunch.com/gmod/cleanup.CC_AdminCleanup]
--- @param pl Player @ The player that called the console command.
--- @param command string @ The console command that called this function.
--- @param args table @ First and only arg is the cleanup type.
--- @return void
function cleanup.CC_AdminCleanup(pl, command, args) end

--- (server) Called by the `gmod_cleanup` console command. Allows players to cleanup their own props. 
--- [https://wiki.facepunch.com/gmod/cleanup.CC_Cleanup]
--- @param pl Player @ The player that called the console command.
--- @param command string @ The console command that called this function.
--- @param args table @ First and only arg is the cleanup type.
--- @return void
function cleanup.CC_Cleanup(pl, command, args) end

--- (server) Gets the cleanup list. 
--- [https://wiki.facepunch.com/gmod/cleanup.GetList]
--- @return void
function cleanup.GetList() end

--- (client/server) Gets the table of cleanup types. 
--- [https://wiki.facepunch.com/gmod/cleanup.GetTable]
--- @return table
function cleanup.GetTable() end

--- (client/server) Registers a new cleanup type. 
--- [https://wiki.facepunch.com/gmod/cleanup.Register]
--- @param type string @ Name of type.
--- @return void
function cleanup.Register(type) end

--- (server) Replaces one entity in the cleanup module with another 
--- [https://wiki.facepunch.com/gmod/cleanup.ReplaceEntity]
--- @param from Entity @ Old entity
--- @param to Entity @ New entity
--- @return boolean
function cleanup.ReplaceEntity(from, to) end

--- (client) Repopulates the clients cleanup menu 
--- [https://wiki.facepunch.com/gmod/cleanup.UpdateUI]
--- @return void
function cleanup.UpdateUI() end

