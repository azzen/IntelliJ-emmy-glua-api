--- @class permissions
permissions = {}

--- (client) Requests the player to connect to a specified server. The player will be prompted with a confirmation window. 
--- [https://wiki.facepunch.com/gmod/permissions.AskToConnect]
--- @param address string @ The address to ask to connect to. If a port is not given, the default `:27015` port will be added.
--- @return void
function permissions.AskToConnect(address) end

--- (client) Returns whether the player has granted the current server a specific permission. 
--- [https://wiki.facepunch.com/gmod/permissions.IsGranted]
--- @param permission string @ The permission to poll. Currently only 1 permission is valid:* "connect"
--- @return boolean
function permissions.IsGranted(permission) end

