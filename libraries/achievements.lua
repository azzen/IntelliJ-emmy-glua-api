--- @class achievements
achievements = {}

--- (client) Adds one to the count of balloons burst. Once this count reaches 1000, the 'Popper' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.BalloonPopped]
--- @return void
function achievements.BalloonPopped() end

--- (client/menu) Returns the amount of achievements in Garry's Mod. 
--- [https://wiki.facepunch.com/gmod/achievements.Count]
--- @return number
function achievements.Count() end

--- (client) Adds one to the count of balls eaten. Once this count reaches 200, the 'Ball Eater' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.EatBall]
--- @return void
function achievements.EatBall() end

--- (client/menu) Retrieves progress of given achievement 
--- [https://wiki.facepunch.com/gmod/achievements.GetCount]
--- @param achievementID number @ The ID of achievement to retrieve progress of. Note: IDs start from 0, not 1.
--- @return void
function achievements.GetCount(achievementID) end

--- (client/menu) Retrieves description of given achievement 
--- [https://wiki.facepunch.com/gmod/achievements.GetDesc]
--- @param achievementID number @ The ID of achievement to retrieve description of. Note: IDs start from 0, not 1.
--- @return string
function achievements.GetDesc(achievementID) end

--- (client/menu) Retrieves progress goal of given achievement 
--- [https://wiki.facepunch.com/gmod/achievements.GetGoal]
--- @param achievementID number @ The ID of achievement to retrieve goal of. Note: IDs start from 0, not 1.
--- @return number
function achievements.GetGoal(achievementID) end

--- (client/menu) Retrieves name of given achievement 
--- [https://wiki.facepunch.com/gmod/achievements.GetName]
--- @param achievementID number @ The ID of achievement to retrieve name of. Note: IDs start from 0, not 1.
--- @return string
function achievements.GetName(achievementID) end

--- (client) Adds one to the count of baddies killed. Once this count reaches 1000, the 'War Zone' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.IncBaddies]
--- @return void
function achievements.IncBaddies() end

--- (client) Adds one to the count of innocent animals killed. Once this count reaches 1000, the 'Innocent Bystander' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.IncBystander]
--- @return void
function achievements.IncBystander() end

--- (client) Adds one to the count of friendly NPCs killed. Once this count reaches 1000, the 'Bad Friend' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.IncGoodies]
--- @return void
function achievements.IncGoodies() end

--- (client/menu) Used in GMod 12 in the achievements menu to show the user if they have unlocked certain achievements. 
--- [https://wiki.facepunch.com/gmod/achievements.IsAchieved]
--- @param AchievementID number @ Internal Achievement ID number
--- @return boolean
function achievements.IsAchieved(AchievementID) end

--- (client) Adds one to the count of things removed. Once this count reaches 5000, the 'Destroyer' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.Remover]
--- @return void
function achievements.Remover() end

--- (client) Adds one to the count of NPCs spawned. Once this count reaches 1000, the 'Procreator' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.SpawnedNPC]
--- @return void
function achievements.SpawnedNPC() end

--- (client) Adds one to the count of props spawned. Once this count reaches 5000, the 'Creator' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.SpawnedProp]
--- @return void
function achievements.SpawnedProp() end

--- (client) Adds one to the count of ragdolls spawned. Once this count reaches 2000, the 'Dollhouse' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.SpawnedRagdoll]
--- @return void
function achievements.SpawnedRagdoll() end

--- (client) Adds one to the count of how many times the spawnmenu has been opened. Once this count reaches 100,000, the 'Menu User' achievement is unlocked. 
--- [https://wiki.facepunch.com/gmod/achievements.SpawnMenuOpen]
--- @return void
function achievements.SpawnMenuOpen() end

