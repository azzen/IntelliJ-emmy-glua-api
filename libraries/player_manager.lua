--- @class player_manager
player_manager = {}

--- (client/server) Assigns view model hands to player model. 
--- [https://wiki.facepunch.com/gmod/player_manager.AddValidHands]
--- @param name string @ Player model name
--- @param model string @ Hands model
--- @param skin number @ Skin to apply to the hands
--- @param bodygroups string @ Bodygroups to apply to the hands
--- @return void
function player_manager.AddValidHands(name, model, skin, bodygroups) end

--- (client/server) Associates a simplified name with a path to a valid player model.Only used internally. 
--- [https://wiki.facepunch.com/gmod/player_manager.AddValidModel]
--- @param name string @ Simplified name
--- @param model string @ Valid PlayerModel path
--- @return void
function player_manager.AddValidModel(name, model) end

--- (client/server) Returns the entire list of valid player models. 
--- [https://wiki.facepunch.com/gmod/player_manager.AllValidModels]
--- @return void
function player_manager.AllValidModels() end

--- (client/server) Clears a player's class association by setting their ClassID to 0 
--- [https://wiki.facepunch.com/gmod/player_manager.ClearPlayerClass]
--- @param ply Player @ Player to clear class from
--- @return void
function player_manager.ClearPlayerClass(ply) end

--- (client/server) Gets a players class 
--- [https://wiki.facepunch.com/gmod/player_manager.GetPlayerClass]
--- @param ply Player @ Player to get class
--- @return string
function player_manager.GetPlayerClass(ply) end

--- (client/server) Retrieves a copy of all registered player classes. 
--- [https://wiki.facepunch.com/gmod/player_manager.GetPlayerClasses]
--- @return table
function player_manager.GetPlayerClasses() end

--- (client/server) Applies basic class variables when the player spawns.Called from [GM:PlayerSpawn](https://wiki.facepunch.com/gmod/GM:PlayerSpawn) in the base gamemode. 
--- [https://wiki.facepunch.com/gmod/player_manager.OnPlayerSpawn]
--- @param ply Player @ Player to setup
--- @return void
function player_manager.OnPlayerSpawn(ply) end

--- (client/server) Register a class metatable to be assigned to players later 
--- [https://wiki.facepunch.com/gmod/player_manager.RegisterClass]
--- @param name string @ Class name
--- @param table table @ Class metatable
--- @param base string @ Base class name
--- @return void
function player_manager.RegisterClass(name, table, base) end

--- (client/server) Execute a named function within the player's set class 
--- [https://wiki.facepunch.com/gmod/player_manager.RunClass]
--- @param ply Player @ Player to execute function on.
--- @param funcName string @ Name of function.
--- @param arguments vararg @ Optional arguments. Can be of any type.
--- @return vararg
function player_manager.RunClass(ply, funcName, arguments) end

--- (client/server) Sets a player's class 
--- [https://wiki.facepunch.com/gmod/player_manager.SetPlayerClass]
--- @param ply Player @ Player to set class
--- @param classname string @ Name of class to set
--- @return void
function player_manager.SetPlayerClass(ply, classname) end

--- (client/server) Retrieves correct hands for given player model. By default returns citizen hands. 
--- [https://wiki.facepunch.com/gmod/player_manager.TranslatePlayerHands]
--- @param name string @ Player model name
--- @return table
function player_manager.TranslatePlayerHands(name) end

--- (client/server) Returns the valid model path for a simplified name. 
--- [https://wiki.facepunch.com/gmod/player_manager.TranslatePlayerModel]
--- @param shortName string @ The short name of the model.
--- @return string
function player_manager.TranslatePlayerModel(shortName) end

--- (client/server) Returns the simplified name for a valid model path of a player model.Opposite of [player_manager.TranslatePlayerModel](https://wiki.facepunch.com/gmod/player_manager.TranslatePlayerModel). 
--- [https://wiki.facepunch.com/gmod/player_manager.TranslateToPlayerModelName]
--- @param model string @ The model path to a player model
--- @return string
function player_manager.TranslateToPlayerModelName(model) end

