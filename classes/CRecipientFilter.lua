--- @class CRecipientFilter
CRecipientFilter = {}

--- (server) Adds all players to the recipient filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:AddAllPlayers]
--- @return void
function CRecipientFilter:AddAllPlayers() end

--- (server) Adds all players that are in the same [PAS (Potentially Audible Set)](https://developer.valvesoftware.com/wiki/PAS "PAS - Valve Developer Community") as this position. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:AddPAS]
--- @param pos Vector @ A position that players may be able to hear, usually the position of an entity the sound is playing played from.
--- @return void
function CRecipientFilter:AddPAS(pos) end

--- (server) Adds a player to the recipient filter 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:AddPlayer]
--- @param Player Player @ Player to add to the recipient filter.
--- @return void
function CRecipientFilter:AddPlayer(Player) end

--- (server) Adds all players that are in the same [PVS(Potential Visibility Set)](https://developer.valvesoftware.com/wiki/PVS "PVS - Valve Developer Community") as this position. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:AddPVS]
--- @param Position Vector @ PVS position that players may be able to see.
--- @return void
function CRecipientFilter:AddPVS(Position) end

--- (server) Adds all players that are on the given team to the filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:AddRecipientsByTeam]
--- @param teamid number @ Team index to add players from.
--- @return void
function CRecipientFilter:AddRecipientsByTeam(teamid) end

--- (server) Returns the number of valid players in the recipient filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:GetCount]
--- @return number
function CRecipientFilter:GetCount() end

--- (server) Returns a table of all valid players currently in the recipient filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:GetPlayers]
--- @return table
function CRecipientFilter:GetPlayers() end

--- (server) Removes all players from the recipient filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:RemoveAllPlayers]
--- @return void
function CRecipientFilter:RemoveAllPlayers() end

--- (server) Removes all players from the filter that are in Potentially Audible Set for given position. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:RemovePAS]
--- @param position Vector @ The position to test
--- @return void
function CRecipientFilter:RemovePAS(position) end

--- (server) Removes the player from the recipient filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:RemovePlayer]
--- @param Player Player @ The player that should be in the recipient filter if you call this function.
--- @return void
function CRecipientFilter:RemovePlayer(Player) end

--- (server) Removes all players that can see this PVS from the recipient filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:RemovePVS]
--- @param pos Vector @ Position that players may be able to see.
--- @return void
function CRecipientFilter:RemovePVS(pos) end

--- (server) Removes all players that are on the given team from the filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:RemoveRecipientsByTeam]
--- @param teamid number @ Team index to remove players from.
--- @return void
function CRecipientFilter:RemoveRecipientsByTeam(teamid) end

--- (server) Removes all players that are not on the given team from the filter. 
--- [https://wiki.facepunch.com/gmod/CRecipientFilter:RemoveRecipientsNotOnTeam]
--- @param teamid number @ Team index.
--- @return void
function CRecipientFilter:RemoveRecipientsNotOnTeam(teamid) end

