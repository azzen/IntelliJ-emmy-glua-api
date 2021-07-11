--- @class player
player = {}

--- (server) Similar to the serverside command "bot", this function creates a new Player bot with the given name. This bot will not obey to the usual "bot_*" commands, and it's the same bot base used in TF2 and CS:S.The best way to control the behaviour of a Player bot right now is to use the [GM:StartCommand](https://wiki.facepunch.com/gmod/GM:StartCommand) hook and modify its input serverside. 
--- [https://wiki.facepunch.com/gmod/player.CreateNextBot]
--- @param botName string @ The name of the bot, using an already existing name will append brackets at the end of it with a number pertaining it.Example: "Bot name test", "Bot name test(1)".
--- @return Player
function player.CreateNextBot(botName) end

--- (client/server) Gets all the current players in the server (not including connecting clients). 
--- [https://wiki.facepunch.com/gmod/player.GetAll]
--- @return table
function player.GetAll() end

--- (client/server) Returns a table of all bots on the server. 
--- [https://wiki.facepunch.com/gmod/player.GetBots]
--- @return table
function player.GetBots() end

--- (client/server) Gets the player with the specified AccountID. 
--- [https://wiki.facepunch.com/gmod/player.GetByAccountID]
--- @param accountID number @ The [Player:AccountID](https://wiki.facepunch.com/gmod/Player:AccountID) to find the player by.
--- @return Player
function player.GetByAccountID(accountID) end

--- (client/server) Gets the player with the specified connection ID.Connection ID can be retrieved via [gameevent.Listen](https://wiki.facepunch.com/gmod/gameevent.Listen) events.For a function that returns a player based on their [Entity:EntIndex](https://wiki.facepunch.com/gmod/Entity:EntIndex), see [Entity](https://wiki.facepunch.com/gmod/Global.Entity).For a function that returns a player based on their [Player:UserID](https://wiki.facepunch.com/gmod/Player:UserID), see [Player](https://wiki.facepunch.com/gmod/Global.Player). 
--- [https://wiki.facepunch.com/gmod/player.GetByID]
--- @param connectionID number @ The connection ID to find the player by.
--- @return Player
function player.GetByID(connectionID) end

--- (client/server) Gets the player with the specified SteamID. 
--- [https://wiki.facepunch.com/gmod/player.GetBySteamID]
--- @param steamID string @ The [Player:SteamID](https://wiki.facepunch.com/gmod/Player:SteamID) to find the player by.
--- @return Player
function player.GetBySteamID(steamID) end

--- (client/server) Gets the player with the specified SteamID64. 
--- [https://wiki.facepunch.com/gmod/player.GetBySteamID64]
--- @param steamID64 string @ The [Player:SteamID64](https://wiki.facepunch.com/gmod/Player:SteamID64) to find the player by.
--- @return Player
function player.GetBySteamID64(steamID64) end

--- (client/server) Gets the player with the specified uniqueID (not recommended way to identify players). 
--- [https://wiki.facepunch.com/gmod/player.GetByUniqueID]
--- @param uniqueID string @ The [Player:UniqueID](https://wiki.facepunch.com/gmod/Player:UniqueID) to find the player by.
--- @return Player
function player.GetByUniqueID(uniqueID) end

--- (client/server) Gives you the player count. 
--- [https://wiki.facepunch.com/gmod/player.GetCount]
--- @return number
function player.GetCount() end

--- (client/server) Returns a table of all human ( non bot/AI ) players.Unlike [player.GetAll](https://wiki.facepunch.com/gmod/player.GetAll), this does not include bots. 
--- [https://wiki.facepunch.com/gmod/player.GetHumans]
--- @return table
function player.GetHumans() end

