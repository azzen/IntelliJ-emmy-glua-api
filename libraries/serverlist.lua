--- @class serverlist
serverlist = {}

--- (menu) Adds current server the player is on to their favorites. 
--- [https://wiki.facepunch.com/gmod/serverlist.AddCurrentServerToFavorites]
--- @return void
function serverlist.AddCurrentServerToFavorites() end

--- (menu) Queries a server for its information/ping. 
--- [https://wiki.facepunch.com/gmod/serverlist.PingServer]
--- @param ip string @ The IP address of the server, including the port.
--- @param callback function @ The function to be called if and when the request finishes. Function has the same arguments as the callback of [serverlist.Query](https://wiki.facepunch.com/gmod/serverlist.Query).
--- @return void
function serverlist.PingServer(ip, callback) end

--- (menu) Queries a server for its player list. 
--- [https://wiki.facepunch.com/gmod/serverlist.PlayerList]
--- @param ip string @ The IP address of the server, including the port.
--- @param callback function @ The function to be called if and when the request finishes. Function has one argument, a table containing tables with player info. Each table with player info has next fields:[number](https://wiki.facepunch.com/gmod/number) time - The amount of time the player is playing on the server, in seconds[string](https://wiki.facepunch.com/gmod/string) name - The player name[number](https://wiki.facepunch.com/gmod/number) score - The players score
--- @return void
function serverlist.PlayerList(ip, callback) end

--- (menu) Queries the master server for server list. 
--- [https://wiki.facepunch.com/gmod/serverlist.Query]
--- @param data table @ The information about what kind of servers we want. See [ServerQueryData](https://wiki.facepunch.com/gmod/Structures/ServerQueryData).
--- @return void
function serverlist.Query(data) end

