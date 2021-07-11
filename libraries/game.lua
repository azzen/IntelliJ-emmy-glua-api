--- @class game
game = {}

--- (client/server) Adds a new ammo type to the game.You can find a list of default ammo types [here](https://wiki.facepunch.com/gmod/Default_Ammo_Types). 
--- [https://wiki.facepunch.com/gmod/game.AddAmmoType]
--- @param ammoData table @ The attributes of the ammo. See the [AmmoData](https://wiki.facepunch.com/gmod/Structures/AmmoData).
--- @return void
function game.AddAmmoType(ammoData) end

--- (client/server) Registers a new decal. 
--- [https://wiki.facepunch.com/gmod/game.AddDecal]
--- @param decalName string @ The name of the decal.
--- @param materialName string @ The material to be used for the decal. May also be a list of material names, in which case a random material from that list will be chosen every time the decal is placed.
--- @return void
function game.AddDecal(decalName, materialName) end

--- (client/server) Loads a particle file. 
--- [https://wiki.facepunch.com/gmod/game.AddParticles]
--- @param particleFileName string @ The path of the file to add. Must be (file).pcf.
--- @return void
function game.AddParticles(particleFileName) end

--- (client/server) Called by the engine to retrieve the ammo types. 
--- [https://wiki.facepunch.com/gmod/game.BuildAmmoTypes]
--- @return table
function game.BuildAmmoTypes() end

--- (client/server) If called serverside it will remove **ALL** entities which were not created by the map (not players or weapons held by players).On the client it will remove decals, sounds, gibs, dead NPCs, and entities created via [ents.CreateClientProp](https://wiki.facepunch.com/gmod/ents.CreateClientProp).This function calls [GM:PreCleanupMap](https://wiki.facepunch.com/gmod/GM:PreCleanupMap) before cleaning up the map and [GM:PostCleanupMap](https://wiki.facepunch.com/gmod/GM:PostCleanupMap) after cleaning up the map. 
--- [https://wiki.facepunch.com/gmod/game.CleanUpMap]
--- @param dontSendToClients boolean @ If set to `true`, don't run this functions on all clients.
--- @param extraFilters table @ Entity classes not to reset during cleanup.
--- @return void
function game.CleanUpMap(dontSendToClients, extraFilters) end

--- (server) Runs a console command.Make sure to add a newline ("\n") at the end of the command. 
--- [https://wiki.facepunch.com/gmod/game.ConsoleCommand]
--- @param stringCommand string @ String containing the command and arguments to be ran.
--- @return void
function game.ConsoleCommand(stringCommand) end

--- (client/server) Returns the damage type of given ammo type. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoDamageType]
--- @param id number @ Ammo ID to retrieve the damage type of. Starts from 1.
--- @return number
function game.GetAmmoDamageType(id) end

--- (client/server) Returns the [AmmoData](https://wiki.facepunch.com/gmod/Structures/AmmoData) for given ID. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoData]
--- @param id number @ ID of the ammo type to look up the data for
--- @return table
function game.GetAmmoData(id) end

--- (client/server) Returns the ammo bullet force that is applied when an entity is hit by a bullet of given ammo type. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoForce]
--- @param id number @ Ammo ID to retrieve the force of. Starts from 1.
--- @return number
function game.GetAmmoForce(id) end

--- (client/server) Returns the ammo type ID for given ammo type name.See [game.GetAmmoName](https://wiki.facepunch.com/gmod/game.GetAmmoName) for reverse. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoID]
--- @param name string @ Name of the ammo type to look up ID of
--- @return number
function game.GetAmmoID(name) end

--- (client/server) Returns the real maximum amount of ammo of given ammo ID, regardless of the setting of `gmod_maxammo` convar. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoMax]
--- @param id number @ Ammo type ID
--- @return number
function game.GetAmmoMax(id) end

--- (client/server) Returns the ammo name for given ammo type ID.See [game.GetAmmoID](https://wiki.facepunch.com/gmod/game.GetAmmoID) for reverse. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoName]
--- @param id number @ Ammo ID to retrieve the name of. Starts from 1.
--- @return string
function game.GetAmmoName(id) end

--- (client/server) Returns the damage given ammo type should do to NPCs. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoNPCDamage]
--- @param id number @ Ammo ID to retrieve the damage info of. Starts from 1.
--- @return number
function game.GetAmmoNPCDamage(id) end

--- (client/server) Returns the damage given ammo type should do to players. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoPlayerDamage]
--- @param id number @ Ammo ID to retrieve the damage info of. Starts from 1.
--- @return number
function game.GetAmmoPlayerDamage(id) end

--- (client/server) Returns a list of all ammo types currently registered. 
--- [https://wiki.facepunch.com/gmod/game.GetAmmoTypes]
--- @return table
function game.GetAmmoTypes() end

--- (server) Returns the counter of a Global State.See [Global States](https://wiki.facepunch.com/gmod/Global%20States) for more information. 
--- [https://wiki.facepunch.com/gmod/game.GetGlobalCounter]
--- @param name string @ The name of the Global State to set. If the Global State by that name does not exist, it will be created.See [Global States](https://wiki.facepunch.com/gmod/Global%20States) for a list of default global states.
--- @return number
function game.GetGlobalCounter(name) end

--- (server) Returns whether a Global State is off, active or dead ( inactive )See [Global States](https://wiki.facepunch.com/gmod/Global%20States) for more information. 
--- [https://wiki.facepunch.com/gmod/game.GetGlobalState]
--- @param name string @ The name of the Global State to retrieve the state of. If the Global State by that name does not exist, **GLOBAL_DEAD** will be returned.See [Global States](https://wiki.facepunch.com/gmod/Global%20States) for a list of default global states.
--- @return number
function game.GetGlobalState(name) end

--- (client/server) Returns the public IP address and port of the current server. This will return the IP/port that you are connecting through when ran clientside. 
--- [https://wiki.facepunch.com/gmod/game.GetIPAddress]
--- @return string
function game.GetIPAddress() end

--- (client/menu/server) Returns the name of the current map, without a file extension.On the menu state, returns "menu". 
--- [https://wiki.facepunch.com/gmod/game.GetMap]
--- @return string
function game.GetMap() end

--- (server) Returns the next map that would be loaded according to the file that is set by the mapcyclefile convar. 
--- [https://wiki.facepunch.com/gmod/game.GetMapNext]
--- @return string
function game.GetMapNext() end

--- (server) Returns the VBSP version of the current map. 
--- [https://wiki.facepunch.com/gmod/game.GetMapVersion]
--- @return number
function game.GetMapVersion() end

--- (client/server) Returns the difficulty level of the game.**TIP:** You can use this function in your scripted NPCs or Nextbots to make them harder, however, it is a good idea to lock powerful attacks behind the highest difficulty instead of just increasing the health. 
--- [https://wiki.facepunch.com/gmod/game.GetSkillLevel]
--- @return number
function game.GetSkillLevel() end

--- (client/server) Returns the time scale of the game 
--- [https://wiki.facepunch.com/gmod/game.GetTimeScale]
--- @return number
function game.GetTimeScale() end

--- (client/server) Returns the worldspawn entity. 
--- [https://wiki.facepunch.com/gmod/game.GetWorld]
--- @return Entity
function game.GetWorld() end

--- (client/server) Returns true if the server is a dedicated server, false if it is a listen server or a singleplayer game. 
--- [https://wiki.facepunch.com/gmod/game.IsDedicated]
--- @return boolean
function game.IsDedicated() end

--- (server) Kicks a player from the server. This can be ran before the player has spawned. 
--- [https://wiki.facepunch.com/gmod/game.KickID]
--- @param id string @ UserID or SteamID of the player to kick.
--- @param reason string @ Reason to display to the player. This can span across multiple lines.
--- @return void
function game.KickID(id, reason) end

--- (server) Loads the next map according to the nextlevel convar, or from the current mapcycle file set by the respective convar. 
--- [https://wiki.facepunch.com/gmod/game.LoadNextMap]
--- @return void
function game.LoadNextMap() end

--- (server) Returns the map load type of the current map.After changing the map with the console command `changelevel`, "newgame" is returned. With `changelevel2` (single player only), "transition" is returned. 
--- [https://wiki.facepunch.com/gmod/game.MapLoadType]
--- @return string
function game.MapLoadType() end

--- (client/server) Returns the maximum amount of players (including bots) that the server can have. 
--- [https://wiki.facepunch.com/gmod/game.MaxPlayers]
--- @return number
function game.MaxPlayers() end

--- (client/server) Mounts a GMA addon from the disk.Can be used with [steamworks.DownloadUGC](https://wiki.facepunch.com/gmod/steamworks.DownloadUGC) 
--- [https://wiki.facepunch.com/gmod/game.MountGMA]
--- @param path string @ Location of the GMA file to mount, retrieved from [steamworks.DownloadUGC](https://wiki.facepunch.com/gmod/steamworks.DownloadUGC). This file does not have to end with the .gma extension, but will be interpreted as a GMA.
--- @return boolean|table
function game.MountGMA(path) end

--- (client/server) Removes all the clientside ragdolls. 
--- [https://wiki.facepunch.com/gmod/game.RemoveRagdolls]
--- @return void
function game.RemoveRagdolls() end

--- (server) Sets the counter of a Global State.See [Global States](https://wiki.facepunch.com/gmod/Global%20States) for more information. 
--- [https://wiki.facepunch.com/gmod/game.SetGlobalCounter]
--- @param name string @ The name of the Global State to set. If the Global State by that name does not exist, it will be created.See [Global States](https://wiki.facepunch.com/gmod/Global%20States) for a list of default global states.
--- @param count number @ The value to set for that Global State.
--- @return void
function game.SetGlobalCounter(name, count) end

--- (server) Sets whether a Global State is off, active or dead ( inactive )See [Global States](https://wiki.facepunch.com/gmod/Global%20States) for more information. 
--- [https://wiki.facepunch.com/gmod/game.SetGlobalState]
--- @param name string @ The name of the Global State to set. If the Global State by that name does not exist, it will be created.See [Global States](https://wiki.facepunch.com/gmod/Global%20States) for a list of default global states.
--- @param state number @ The state of the Global State. See [GLOBAL](https://wiki.facepunch.com/gmod/Enums/GLOBAL)
--- @return void
function game.SetGlobalState(name, state) end

--- (server) Sets the difficulty level of the game, can be retrieved with [game.GetSkillLevel](https://wiki.facepunch.com/gmod/game.GetSkillLevel).This will automatically change whenever the "skill" convar is modified serverside. 
--- [https://wiki.facepunch.com/gmod/game.SetSkillLevel]
--- @param level number @ The difficulty level, Easy( 1 ), Normal( 2 ), Hard( 3 ).
--- @return void
function game.SetSkillLevel(level) end

--- (server) Sets the time scale of the game.This function is supposed to remove the need of using the host_timescale convar, which is cheat protected.To slow down or speed up the movement of a specific player, use [Player:SetLaggedMovementValue](https://wiki.facepunch.com/gmod/Player:SetLaggedMovementValue) instead. 
--- [https://wiki.facepunch.com/gmod/game.SetTimeScale]
--- @param timeScale number @ The new timescale, minimum value is 0.001 and maximum is 5.
--- @return void
function game.SetTimeScale(timeScale) end

--- (client/server) Returns whether the current session is a single player game. 
--- [https://wiki.facepunch.com/gmod/game.SinglePlayer]
--- @return boolean
function game.SinglePlayer() end

--- (client/server) Returns position the player should start from, this is not the same thing as spawn points, it is used to properly transit the player between maps. 
--- [https://wiki.facepunch.com/gmod/game.StartSpot]
--- @return Vector
function game.StartSpot() end

