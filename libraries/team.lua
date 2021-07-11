--- @class team
team = {}

--- (client/server) Increases the score of the given team 
--- [https://wiki.facepunch.com/gmod/team.AddScore]
--- @param index number @ Index of the team
--- @param increment number @ Amount to increase the team's score by
--- @return void
function team.AddScore(index, increment) end

--- (client/server) Returns the team index of the team with the least players. Falls back to TEAM_UNASSIGNED 
--- [https://wiki.facepunch.com/gmod/team.BestAutoJoinTeam]
--- @return number
function team.BestAutoJoinTeam() end

--- (client/server) Returns a table consisting of information on every defined team 
--- [https://wiki.facepunch.com/gmod/team.GetAllTeams]
--- @return table
function team.GetAllTeams() end

--- (client/server) Returns the selectable classes for the given team. This can be added to with [team.SetClass](https://wiki.facepunch.com/gmod/team.SetClass) 
--- [https://wiki.facepunch.com/gmod/team.GetClass]
--- @param index number @ Index of the team
--- @return table
function team.GetClass(index) end

--- (client/server) Returns the team's color. 
--- [https://wiki.facepunch.com/gmod/team.GetColor]
--- @param teamIndex number @ The team index.
--- @return table
function team.GetColor(teamIndex) end

--- (client/server) Returns the name of the team. 
--- [https://wiki.facepunch.com/gmod/team.GetName]
--- @param teamIndex number @ The team index.
--- @return string
function team.GetName(teamIndex) end

--- (client/server) Returns a table with all player of the specified team. 
--- [https://wiki.facepunch.com/gmod/team.GetPlayers]
--- @param teamIndex number @ The team index.
--- @return table
function team.GetPlayers(teamIndex) end

--- (client/server) Returns the score of the team. 
--- [https://wiki.facepunch.com/gmod/team.GetScore]
--- @param teamIndex number @ The team index.
--- @return number
function team.GetScore(teamIndex) end

--- (client/server) Returns a table of valid spawnpoint classes the team can use. These are set with [team.SetSpawnPoint](https://wiki.facepunch.com/gmod/team.SetSpawnPoint). 
--- [https://wiki.facepunch.com/gmod/team.GetSpawnPoint]
--- @param index number @ Index of the team
--- @return table
function team.GetSpawnPoint(index) end

--- (client/server) Returns a table of valid spawnpoint entities the team can use. These are set with  [team.SetSpawnPoint](https://wiki.facepunch.com/gmod/team.SetSpawnPoint). 
--- [https://wiki.facepunch.com/gmod/team.GetSpawnPoints]
--- @param index number @ Index of the team
--- @return table
function team.GetSpawnPoints(index) end

--- (client/server) Returns if a team is joinable or not. This is set in [team.SetUp](https://wiki.facepunch.com/gmod/team.SetUp). 
--- [https://wiki.facepunch.com/gmod/team.Joinable]
--- @param index number @ The index of the team.
--- @return boolean
function team.Joinable(index) end

--- (client/server) Returns the amount of players in a team. 
--- [https://wiki.facepunch.com/gmod/team.NumPlayers]
--- @param teamIndex number @ The team index.
--- @return number
function team.NumPlayers(teamIndex) end

--- (client/server) Sets valid classes for use by a team. Classes can be created using [player_manager.RegisterClass](https://wiki.facepunch.com/gmod/player_manager.RegisterClass) 
--- [https://wiki.facepunch.com/gmod/team.SetClass]
--- @param index number @ Index of the team
--- @param classes any @ A class ID or table of class IDs
--- @return void
function team.SetClass(index, classes) end

--- (client/server) Sets the team's color. 
--- [https://wiki.facepunch.com/gmod/team.SetColor]
--- @param teamIndex number @ The team index.
--- @param color table @ The team's new color as a [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function team.SetColor(teamIndex, color) end

--- (client/server) Sets the score of the given team 
--- [https://wiki.facepunch.com/gmod/team.SetScore]
--- @param index number @ Index of the team
--- @param score number @ The team's new score
--- @return void
function team.SetScore(index, score) end

--- (client/server) Sets valid spawnpoint classes for use by a team. 
--- [https://wiki.facepunch.com/gmod/team.SetSpawnPoint]
--- @param index number @ Index of the team
--- @param classes any @ A spawnpoint classname or table of spawnpoint classnames
--- @return void
function team.SetSpawnPoint(index, classes) end

--- (client/server) Creates a new team. 
--- [https://wiki.facepunch.com/gmod/team.SetUp]
--- @param teamIndex number @ The team index.
--- @param teamName string @ The team name.
--- @param teamColor table @ The team color. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param isJoinable boolean @ Whether the team is joinable or not.
--- @return void
function team.SetUp(teamIndex, teamName, teamColor, isJoinable) end

--- (client/server) Returns the total number of deaths of all players in the team. 
--- [https://wiki.facepunch.com/gmod/team.TotalDeaths]
--- @param index number @ The team index.
--- @return number
function team.TotalDeaths(index) end

--- (client/server) Get's the total frags in a team. 
--- [https://wiki.facepunch.com/gmod/team.TotalFrags]
--- @param Entity or number Entity @ Entity or number.
--- @return number
function team.TotalFrags(Entity or number) end

--- (client/server) Returns true if the given team index is valid 
--- [https://wiki.facepunch.com/gmod/team.Valid]
--- @param index number @ Index of the team
--- @return boolean
function team.Valid(index) end

