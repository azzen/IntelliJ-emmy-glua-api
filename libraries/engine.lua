--- @class engine
engine = {}

--- (client/menu/server) Returns the name of the currently running gamemode. 
--- [https://wiki.facepunch.com/gmod/engine.ActiveGamemode]
--- @return string
function engine.ActiveGamemode() end

--- (server) Closes the server and completely exits.This is only functional when running in server test mode (launch option -systemtest). Server test mode is used internally at Facepunch as part of the build process to make sure that the dedicated servers aren't crashing on startup. 
--- [https://wiki.facepunch.com/gmod/engine.CloseServer]
--- @return void
function engine.CloseServer() end

--- (client/menu/server) Returns a list of addons the player have subscribed to on the workshop.This list will also include "Floating" .gma addons that are mounted by the game, but not the folder addons. 
--- [https://wiki.facepunch.com/gmod/engine.GetAddons]
--- @return table
function engine.GetAddons() end

--- (client/menu) When starting playing a demo, [engine.GetDemoPlaybackTick](https://wiki.facepunch.com/gmod/engine.GetDemoPlaybackTick) will be reset and its old value will be added to this functions return value. 
--- [https://wiki.facepunch.com/gmod/engine.GetDemoPlaybackStartTick]
--- @return number
function engine.GetDemoPlaybackStartTick() end

--- (client/menu) Current tick of currently loaded demo.If not playing a demo, it will return amount of ticks since last demo playback. 
--- [https://wiki.facepunch.com/gmod/engine.GetDemoPlaybackTick]
--- @return number
function engine.GetDemoPlaybackTick() end

--- (client/menu) Returns time scale of demo playback.If not during demo playback, returns 1. 
--- [https://wiki.facepunch.com/gmod/engine.GetDemoPlaybackTimeScale]
--- @return number
function engine.GetDemoPlaybackTimeScale() end

--- (client/menu) Returns total amount of ticks of currently loaded demo.If not playing a demo, returns 0 or the value of last played demo. 
--- [https://wiki.facepunch.com/gmod/engine.GetDemoPlaybackTotalTicks]
--- @return number
function engine.GetDemoPlaybackTotalTicks() end

--- (client/menu/server) Returns a table containing info for all installed gamemodes 
--- [https://wiki.facepunch.com/gmod/engine.GetGamemodes]
--- @return table
function engine.GetGamemodes() end

--- (client/menu/server) Returns an array of tables corresponding to all games from which Garry's Mod supports mounting content. 
--- [https://wiki.facepunch.com/gmod/engine.GetGames]
--- @return table
function engine.GetGames() end

--- (client/menu/server) Returns the UGC (demos, saves and dupes) the player have subscribed to on the workshop. 
--- [https://wiki.facepunch.com/gmod/engine.GetUserContent]
--- @return table
function engine.GetUserContent() end

--- (client/menu) Returns true if we're currently playing a demo.You will notice that there's no server-side version of this. That's because there is no server when playing a demo. Demos are both recorded and played back purely clientside. 
--- [https://wiki.facepunch.com/gmod/engine.IsPlayingDemo]
--- @return boolean
function engine.IsPlayingDemo() end

--- (client/menu) Returns true if the game is currently recording a demo file (.dem) using gm_demo 
--- [https://wiki.facepunch.com/gmod/engine.IsRecordingDemo]
--- @return boolean
function engine.IsRecordingDemo() end

--- (server) This is a direct binding to the function `engine->LightStyle`. This function allows you to change the default light style of the map - so you can make lighting lighter or darker. You’ll need to call [render.RedownloadAllLightmaps](https://wiki.facepunch.com/gmod/render.RedownloadAllLightmaps) clientside to refresh the lightmaps to this new color. 
--- [https://wiki.facepunch.com/gmod/engine.LightStyle]
--- @param lightstyle number @ The lightstyle to edit. 0 to 63. If you want to edit map lighting, you want to set this to 0.
--- @param pattern string @ The pattern to change the lightstyle to. `a` is the darkest, `z` is the brightest. You can use stuff like "abcxyz" to make flashing patterns. The normal brightness for a map is `m`. Values over `z` are allowed, `~` for instance.
--- @return void
function engine.LightStyle(lightstyle, pattern) end

--- (client) Loads a duplication from the local filesystem. 
--- [https://wiki.facepunch.com/gmod/engine.OpenDupe]
--- @param dupeName string @ Name of the file. e.g, engine.OpenDupe("dupes/8b809dd7a1a9a375e75be01cdc12e61f.dupe")
--- @return string
function engine.OpenDupe(dupeName) end

--- (client) Returns an estimate of the server's performance. Equivalent to calling [FrameTime](https://wiki.facepunch.com/gmod/Global.FrameTime) from the server, according to source code. 
--- [https://wiki.facepunch.com/gmod/engine.ServerFrameTime]
--- @return number|number
function engine.ServerFrameTime() end

--- (menu) Sets the mounting options for mountable content. 
--- [https://wiki.facepunch.com/gmod/engine.SetMounted]
--- @param depotID string @ The depot id of the game to mount.
--- @param doMount boolean @ The mount state, true to mount, false to unmount
--- @return void
function engine.SetMounted(depotID, doMount) end

--- (client/server) Returns the number of ticks since the game server started. 
--- [https://wiki.facepunch.com/gmod/engine.TickCount]
--- @return number
function engine.TickCount() end

--- (client/menu/server) Returns the number of seconds between each gametick. 
--- [https://wiki.facepunch.com/gmod/engine.TickInterval]
--- @return number
function engine.TickInterval() end

--- (client) Returns video recording settings set by [video.Record](https://wiki.facepunch.com/gmod/video.Record). Used by Demo-To-Video feature. 
--- [https://wiki.facepunch.com/gmod/engine.VideoSettings]
--- @return table
function engine.VideoSettings() end

--- (client) Saves a duplication as a file. 
--- [https://wiki.facepunch.com/gmod/engine.WriteDupe]
--- @param dupe string @ Dupe table, encoded by [util.TableToJSON](https://wiki.facepunch.com/gmod/util.TableToJSON) and compressed by [util.Compress](https://wiki.facepunch.com/gmod/util.Compress)
--- @param jpeg string @ The dupe icon, created by [render.Capture](https://wiki.facepunch.com/gmod/render.Capture)
--- @return void
function engine.WriteDupe(dupe, jpeg) end

--- (client) Stores savedata into the game (can be loaded using the LoadGame menu) 
--- [https://wiki.facepunch.com/gmod/engine.WriteSave]
--- @param saveData string @ Data generated by gmsave.SaveMap
--- @param name string @ Name the save will have.
--- @param time number @ When the save was saved during the game (Put CurTime here)
--- @param map string @ The map the save is used for.
--- @return void
function engine.WriteSave(saveData, name, time, map) end

