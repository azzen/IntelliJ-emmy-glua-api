--- @class NPC
NPC = {}

--- (server) Makes the NPC like, hate, feel neutral towards, or fear the entity in question. If you want to setup relationship towards a certain entity `class`, use [NPC:AddRelationship](https://wiki.facepunch.com/gmod/NPC:AddRelationship). 
--- [https://wiki.facepunch.com/gmod/NPC:AddEntityRelationship]
--- @param target Entity @ The entity for the relationship to be applied to.
--- @param disposition number @ A [D](https://wiki.facepunch.com/gmod/Enums/D) representing the relationship type.
--- @param priority number @ How strong the relationship is.
--- @return void
function NPC:AddEntityRelationship(target, disposition, priority) end

--- (server) Changes how an NPC feels towards another NPC.  If you want to setup relationship towards a certain `entity`, use [NPC:AddEntityRelationship](https://wiki.facepunch.com/gmod/NPC:AddEntityRelationship). 
--- [https://wiki.facepunch.com/gmod/NPC:AddRelationship]
--- @param relationstring string @ A string representing how the relationship should be set up. Should be formatted as `"npc_class `[D](https://wiki.facepunch.com/gmod/Enums/D)` numberPriority"`.
--- @return void
function NPC:AddRelationship(relationstring) end

--- (server) Force an NPC to play his Alert sound. 
--- [https://wiki.facepunch.com/gmod/NPC:AlertSound]
--- @return void
function NPC:AlertSound() end

--- (server) Executes any movement the current sequence may have. 
--- [https://wiki.facepunch.com/gmod/NPC:AutoMovement]
--- @param interval number @ This is a good place to use [Entity:GetAnimTimeInterval](https://wiki.facepunch.com/gmod/Entity:GetAnimTimeInterval).
--- @param target Entity @ No description provided
--- @return boolean
function NPC:AutoMovement(interval, target) end

--- (server) Adds a capability to the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:CapabilitiesAdd]
--- @param capabilities number @ Capabilities to add, see [CAP](https://wiki.facepunch.com/gmod/Enums/CAP).
--- @return void
function NPC:CapabilitiesAdd(capabilities) end

--- (server) Removes all of Capabilities the NPC has. 
--- [https://wiki.facepunch.com/gmod/NPC:CapabilitiesClear]
--- @return void
function NPC:CapabilitiesClear() end

--- (server) Returns the NPC's capabilities along the ones defined on its weapon. 
--- [https://wiki.facepunch.com/gmod/NPC:CapabilitiesGet]
--- @return number
function NPC:CapabilitiesGet() end

--- (server) Remove a certain capability. 
--- [https://wiki.facepunch.com/gmod/NPC:CapabilitiesRemove]
--- @param capabilities number @ Capabilities to remove, see [CAP](https://wiki.facepunch.com/gmod/Enums/CAP)
--- @return void
function NPC:CapabilitiesRemove(capabilities) end

--- (server) Returns the NPC class. Do not confuse with [Entity:GetClass](https://wiki.facepunch.com/gmod/Entity:GetClass)! 
--- [https://wiki.facepunch.com/gmod/NPC:Classify]
--- @return number
function NPC:Classify() end

--- (server) Resets the [NPC:GetBlockingEntity](https://wiki.facepunch.com/gmod/NPC:GetBlockingEntity). 
--- [https://wiki.facepunch.com/gmod/NPC:ClearBlockingEntity]
--- @return void
function NPC:ClearBlockingEntity() end

--- (server) Clears out the specified [COND](https://wiki.facepunch.com/gmod/Enums/COND) on this NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:ClearCondition]
--- @param condition number @ The [COND](https://wiki.facepunch.com/gmod/Enums/COND) to clear out.
--- @return void
function NPC:ClearCondition(condition) end

--- (server) Clears the Enemy from the NPC's memory, effectively forgetting it until met again with either the NPC vision or with [NPC:UpdateEnemyMemory](https://wiki.facepunch.com/gmod/NPC:UpdateEnemyMemory). 
--- [https://wiki.facepunch.com/gmod/NPC:ClearEnemyMemory]
--- @param enemy Entity @ The enemy to mark
--- @return void
function NPC:ClearEnemyMemory(enemy) end

--- (server) Clears the NPC's current expression which can be set with [NPC:SetExpression](https://wiki.facepunch.com/gmod/NPC:SetExpression). 
--- [https://wiki.facepunch.com/gmod/NPC:ClearExpression]
--- @return void
function NPC:ClearExpression() end

--- (server) Clears the current NPC goal or target. 
--- [https://wiki.facepunch.com/gmod/NPC:ClearGoal]
--- @return void
function NPC:ClearGoal() end

--- (server) Stops the current schedule that the NPC is doing. 
--- [https://wiki.facepunch.com/gmod/NPC:ClearSchedule]
--- @return void
function NPC:ClearSchedule() end

--- (server) Translates condition ID to a string. 
--- [https://wiki.facepunch.com/gmod/NPC:ConditionName]
--- @param cond number @ The NPCs condition ID, see [COND](https://wiki.facepunch.com/gmod/Enums/COND)
--- @return string
function NPC:ConditionName(cond) end

--- (server) Returns the way the NPC "feels" about the entity. 
--- [https://wiki.facepunch.com/gmod/NPC:Disposition]
--- @param ent Entity @ The entity to get the disposition from.
--- @return number
function NPC:Disposition(ent) end

--- (server) Forces the NPC to drop the specified weapon. 
--- [https://wiki.facepunch.com/gmod/NPC:DropWeapon]
--- @param weapon Weapon @ Weapon to be dropped. If unset, will default to the currently equipped weapon.
--- @param target Vector @ If set, launches the weapon at given position. There is a limit to how far it is willing to throw the weapon. Overrides velocity argument.
--- @param velocity Vector @ If set and previous argument is unset, launches the weapon with given velocity. If the velocity is higher than 400, it will be clamped to 400.
--- @return void
function NPC:DropWeapon(weapon, target, velocity) end

--- (server) Makes an NPC exit a scripted sequence, if one is playing. 
--- [https://wiki.facepunch.com/gmod/NPC:ExitScriptedSequence]
--- @return void
function NPC:ExitScriptedSequence() end

--- (server) Force an NPC to play his Fear sound. 
--- [https://wiki.facepunch.com/gmod/NPC:FearSound]
--- @return void
function NPC:FearSound() end

--- (server) Force an NPC to play its FoundEnemy sound. 
--- [https://wiki.facepunch.com/gmod/NPC:FoundEnemySound]
--- @return void
function NPC:FoundEnemySound() end

--- (client/server) Returns the weapon the NPC is currently carrying, or [NULL](https://wiki.facepunch.com/gmod/Global_Variables). 
--- [https://wiki.facepunch.com/gmod/NPC:GetActiveWeapon]
--- @return Entity
function NPC:GetActiveWeapon() end

--- (server) Returns the NPC's current activity. 
--- [https://wiki.facepunch.com/gmod/NPC:GetActivity]
--- @return number
function NPC:GetActivity() end

--- (server) Returns the aim vector of the NPC. NPC alternative of [Player:GetAimVector](https://wiki.facepunch.com/gmod/Player:GetAimVector). 
--- [https://wiki.facepunch.com/gmod/NPC:GetAimVector]
--- @return Vector
function NPC:GetAimVector() end

--- (server) Returns the activity to be played when the NPC arrives at its goal 
--- [https://wiki.facepunch.com/gmod/NPC:GetArrivalActivity]
--- @return number
function NPC:GetArrivalActivity() end

--- (server) Returns the sequence to be played when the NPC arrives at its goal. 
--- [https://wiki.facepunch.com/gmod/NPC:GetArrivalSequence]
--- @return number
function NPC:GetArrivalSequence() end

--- (server) Returns the most dangerous/closest sound hint based on the NPCs location and the types of sounds it can sense. 
--- [https://wiki.facepunch.com/gmod/NPC:GetBestSoundHint]
--- @param types number @ The types of sounds to choose from. See [SOUND_ enums](https://wiki.facepunch.com/gmod/Enums/SOUND)
--- @return table
function NPC:GetBestSoundHint(types) end

--- (server) Returns the entity blocking the NPC along its path. 
--- [https://wiki.facepunch.com/gmod/NPC:GetBlockingEntity]
--- @return Entity
function NPC:GetBlockingEntity() end

--- (server) Returns the NPC's current schedule. 
--- [https://wiki.facepunch.com/gmod/NPC:GetCurrentSchedule]
--- @return number
function NPC:GetCurrentSchedule() end

--- (server) Returns how proficient (skilled) an NPC is with its current weapon. 
--- [https://wiki.facepunch.com/gmod/NPC:GetCurrentWeaponProficiency]
--- @return number
function NPC:GetCurrentWeaponProficiency() end

--- (server) Gets the NPC's current waypoint position (where NPC is currently moving towards), if any is available. 
--- [https://wiki.facepunch.com/gmod/NPC:GetCurWaypointPos]
--- @return Vector
function NPC:GetCurWaypointPos() end

--- (server) Returns the entity that this NPC is trying to fight. 
--- [https://wiki.facepunch.com/gmod/NPC:GetEnemy]
--- @return NPC
function NPC:GetEnemy() end

--- (server) Returns the first time an NPC's enemy was seen by the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:GetEnemyFirstTimeSeen]
--- @param enemy Entity @ The enemy to check.
--- @return number
function NPC:GetEnemyFirstTimeSeen(enemy) end

--- (server) Returns the last known position of an NPC's enemy. 
--- [https://wiki.facepunch.com/gmod/NPC:GetEnemyLastKnownPos]
--- @param enemy Entity @ The enemy to check.
--- @return Vector
function NPC:GetEnemyLastKnownPos(enemy) end

--- (server) Returns the last seen position of an NPC's enemy. 
--- [https://wiki.facepunch.com/gmod/NPC:GetEnemyLastSeenPos]
--- @param enemy Entity @ The enemy to check.
--- @return Vector
function NPC:GetEnemyLastSeenPos(enemy) end

--- (server) Returns the last time an NPC's enemy was seen by the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:GetEnemyLastTimeSeen]
--- @param enemy Entity @ The enemy to check.
--- @return number
function NPC:GetEnemyLastTimeSeen(enemy) end

--- (server) Returns the expression file the NPC is currently playing. 
--- [https://wiki.facepunch.com/gmod/NPC:GetExpression]
--- @return string
function NPC:GetExpression() end

--- (server) Returns NPCs hull type set by [NPC:SetHullType](https://wiki.facepunch.com/gmod/NPC:SetHullType). 
--- [https://wiki.facepunch.com/gmod/NPC:GetHullType]
--- @return number
function NPC:GetHullType() end

--- (server) Returns the ideal activity the NPC currently wants to achieve. 
--- [https://wiki.facepunch.com/gmod/NPC:GetIdealActivity]
--- @return number
function NPC:GetIdealActivity() end

--- (server) Returns the ideal move acceleration of the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:GetIdealMoveAcceleration]
--- @return number
function NPC:GetIdealMoveAcceleration() end

--- (server) Returns the ideal move speed of the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:GetIdealMoveSpeed]
--- @return number
function NPC:GetIdealMoveSpeed() end

--- (server) Returns how far should the NPC look ahead in its route. 
--- [https://wiki.facepunch.com/gmod/NPC:GetMinMoveCheckDist]
--- @return number
function NPC:GetMinMoveCheckDist() end

--- (server) Returns how far before the NPC can come to a complete stop. 
--- [https://wiki.facepunch.com/gmod/NPC:GetMinMoveStopDist]
--- @param minResult  number @ The minimum value that will be returned by this function.
--- @return number
function NPC:GetMinMoveStopDist(minResult ) end

--- (server) Returns the current timestep the internal NPC motor is working on. 
--- [https://wiki.facepunch.com/gmod/NPC:GetMoveInterval]
--- @return number
function NPC:GetMoveInterval() end

--- (server) Returns the NPC's current movement activity. 
--- [https://wiki.facepunch.com/gmod/NPC:GetMovementActivity]
--- @return number
function NPC:GetMovementActivity() end

--- (server) Returns the index of the sequence the NPC uses to move. 
--- [https://wiki.facepunch.com/gmod/NPC:GetMovementSequence]
--- @return number
function NPC:GetMovementSequence() end

--- (server) Returns the current move velocity of the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:GetMoveVelocity]
--- @return Vector
function NPC:GetMoveVelocity() end

--- (server) Returns the NPC's navigation type. 
--- [https://wiki.facepunch.com/gmod/NPC:GetNavType]
--- @return number
function NPC:GetNavType() end

--- (server) Returns the nearest member of the squad the NPC is in. 
--- [https://wiki.facepunch.com/gmod/NPC:GetNearestSquadMember]
--- @return NPC
function NPC:GetNearestSquadMember() end

--- (server) Gets the NPC's next waypoint position, where NPC will be moving after reaching current waypoint, if any is available. 
--- [https://wiki.facepunch.com/gmod/NPC:GetNextWaypointPos]
--- @return Vector
function NPC:GetNextWaypointPos() end

--- (server) Returns the NPC's state. 
--- [https://wiki.facepunch.com/gmod/NPC:GetNPCState]
--- @return number
function NPC:GetNPCState() end

--- (server) Returns the distance the NPC is from Target Goal. 
--- [https://wiki.facepunch.com/gmod/NPC:GetPathDistanceToGoal]
--- @return number
function NPC:GetPathDistanceToGoal() end

--- (server) Returns the amount of time it will take for the NPC to get to its Target Goal. 
--- [https://wiki.facepunch.com/gmod/NPC:GetPathTimeToGoal]
--- @return number
function NPC:GetPathTimeToGoal() end

--- (server) Returns the shooting position of the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:GetShootPos]
--- @return Vector
function NPC:GetShootPos() end

--- (server) Returns the current squad name of the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:GetSquad]
--- @return string
function NPC:GetSquad() end

--- (server) Returns the NPC's current target set by [NPC:SetTarget](https://wiki.facepunch.com/gmod/NPC:SetTarget). 
--- [https://wiki.facepunch.com/gmod/NPC:GetTarget]
--- @return Entity
function NPC:GetTarget() end

--- (server) Returns the status of the current task. 
--- [https://wiki.facepunch.com/gmod/NPC:GetTaskStatus]
--- @return number
function NPC:GetTaskStatus() end

--- (server) Returns a specific weapon the NPC owns. 
--- [https://wiki.facepunch.com/gmod/NPC:GetWeapon]
--- @param class string @ A classname of the weapon to try to get.
--- @return Weapon
function NPC:GetWeapon(class) end

--- (server) Returns a table of the NPC's weapons. 
--- [https://wiki.facepunch.com/gmod/NPC:GetWeapons]
--- @return table
function NPC:GetWeapons() end

--- (server) Used to give a weapon to an already spawned NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:Give]
--- @param weapon string @ Class name of the weapon to equip to the NPC.
--- @return Weapon
function NPC:Give(weapon) end

--- (server) Returns whether or not the NPC has the given condition. 
--- [https://wiki.facepunch.com/gmod/NPC:HasCondition]
--- @param condition number @ The condition index, see [COND](https://wiki.facepunch.com/gmod/Enums/COND).
--- @return boolean
function NPC:HasCondition(condition) end

--- (server) Polls the enemy memory to check if the given entity has eluded us or not. 
--- [https://wiki.facepunch.com/gmod/NPC:HasEnemyEluded]
--- @param enemy Entity @ The enemy to test.
--- @return boolean
function NPC:HasEnemyEluded(enemy) end

--- (server) Polls the enemy memory to check if the NPC has any memory of given enemy. 
--- [https://wiki.facepunch.com/gmod/NPC:HasEnemyMemory]
--- @param enemy Entity @ The entity to test.
--- @return boolean
function NPC:HasEnemyMemory(enemy) end

--- (server) Returns true if the current navigation has a obstacle, this is different from [NPC:GetBlockingEntity](https://wiki.facepunch.com/gmod/NPC:GetBlockingEntity), this includes obstacles that it can steer around. 
--- [https://wiki.facepunch.com/gmod/NPC:HasObstacles]
--- @return boolean
function NPC:HasObstacles() end

--- (server) Force an NPC to play his Idle sound. 
--- [https://wiki.facepunch.com/gmod/NPC:IdleSound]
--- @return void
function NPC:IdleSound() end

--- (server) Returns whether or not the NPC is performing the given schedule. 
--- [https://wiki.facepunch.com/gmod/NPC:IsCurrentSchedule]
--- @param schedule number @ The schedule number, see [SCHED](https://wiki.facepunch.com/gmod/Enums/SCHED).
--- @return boolean
function NPC:IsCurrentSchedule(schedule) end

--- (server) Returns whether the NPC has an active goal. 
--- [https://wiki.facepunch.com/gmod/NPC:IsGoalActive]
--- @return boolean
function NPC:IsGoalActive() end

--- (server) Returns if the current movement is locked on the Yaw axis. 
--- [https://wiki.facepunch.com/gmod/NPC:IsMoveYawLocked]
--- @return boolean
function NPC:IsMoveYawLocked() end

--- (server) Returns whether the NPC is moving or not. 
--- [https://wiki.facepunch.com/gmod/NPC:IsMoving]
--- @return boolean
function NPC:IsMoving() end

--- (server) Checks if the NPC is running an **ai_goal**. ( e.g. An npc_citizen NPC following the Player. ) 
--- [https://wiki.facepunch.com/gmod/NPC:IsRunningBehavior]
--- @return boolean
function NPC:IsRunningBehavior() end

--- (server) Returns whether the current NPC is the leader of the squad it is in. 
--- [https://wiki.facepunch.com/gmod/NPC:IsSquadLeader]
--- @return boolean
function NPC:IsSquadLeader() end

--- (server) Returns true if the entity was remembered as unreachable. The memory is updated automatically from following engine tasks if they failed:
--- * TASK_GET_CHASE_PATH_TO_ENEMY
--- * TASK_GET_PATH_TO_ENEMY_LKP
--- * TASK_GET_PATH_TO_INTERACTION_PARTNER
--- * TASK_ANTLIONGUARD_GET_CHASE_PATH_ENEMY_TOLERANCE
--- * SCHED_FAIL_ESTABLISH_LINE_OF_FIRE - Combine NPCs, also when failing to change their enemy 
--- [https://wiki.facepunch.com/gmod/NPC:IsUnreachable]
--- @param testEntity Entity @ The entity to test.
--- @return boolean
function NPC:IsUnreachable(testEntity) end

--- (server) Force an NPC to play his LostEnemy sound. 
--- [https://wiki.facepunch.com/gmod/NPC:LostEnemySound]
--- @return void
function NPC:LostEnemySound() end

--- (server) Tries to achieve our ideal animation state, playing any transition sequences that we need to play to get there. 
--- [https://wiki.facepunch.com/gmod/NPC:MaintainActivity]
--- @return void
function NPC:MaintainActivity() end

--- (server) Causes the NPC to temporarily forget the current enemy and switch on to a better one. 
--- [https://wiki.facepunch.com/gmod/NPC:MarkEnemyAsEluded]
--- @param enemy Entity @ The enemy to mark
--- @return void
function NPC:MarkEnemyAsEluded(enemy) end

--- (server) Executes a climb move.
--- Related functions are [NPC:MoveClimbStart](https://wiki.facepunch.com/gmod/NPC:MoveClimbStart) and [NPC:MoveClimbStop](https://wiki.facepunch.com/gmod/NPC:MoveClimbStop). 
--- [https://wiki.facepunch.com/gmod/NPC:MoveClimbExec]
--- @param destination Vector @ The destination of the climb.
--- @param dir Vector @ The direction of the climb.
--- @param distance number @ The distance.
--- @param yaw number @ The yaw angle.
--- @param left number @ Amount of climb nodes left?
--- @return number
function NPC:MoveClimbExec(destination, dir, distance, yaw, left) end

--- (server) Starts a climb move.
--- Related functions are [NPC:MoveClimbExec](https://wiki.facepunch.com/gmod/NPC:MoveClimbExec) and [NPC:MoveClimbStop](https://wiki.facepunch.com/gmod/NPC:MoveClimbStop). 
--- [https://wiki.facepunch.com/gmod/NPC:MoveClimbStart]
--- @param destination Vector @ The destination of the climb.
--- @param dir Vector @ The direction of the climb.
--- @param distance number @ The distance.
--- @param yaw number @ The yaw angle.
--- @return void
function NPC:MoveClimbStart(destination, dir, distance, yaw) end

--- (server) Stops a climb move.
--- Related functions are [NPC:MoveClimbExec](https://wiki.facepunch.com/gmod/NPC:MoveClimbExec) and [NPC:MoveClimbStart](https://wiki.facepunch.com/gmod/NPC:MoveClimbStart). 
--- [https://wiki.facepunch.com/gmod/NPC:MoveClimbStop]
--- @return void
function NPC:MoveClimbStop() end

--- (server) Executes a jump move.
--- Related functions are [NPC:MoveJumpStart](https://wiki.facepunch.com/gmod/NPC:MoveJumpStart) and [NPC:MoveJumpStop](https://wiki.facepunch.com/gmod/NPC:MoveJumpStop). 
--- [https://wiki.facepunch.com/gmod/NPC:MoveJumpExec]
--- @return number
function NPC:MoveJumpExec() end

--- (server) Starts a jump move.
--- Related functions are [NPC:MoveJumpExec](https://wiki.facepunch.com/gmod/NPC:MoveJumpExec) and [NPC:MoveJumpStop](https://wiki.facepunch.com/gmod/NPC:MoveJumpStop). 
--- [https://wiki.facepunch.com/gmod/NPC:MoveJumpStart]
--- @param vel Vector @ The jump velocity.
--- @return void
function NPC:MoveJumpStart(vel) end

--- (server) Stops a jump move.
--- Related functions are [NPC:MoveJumpExec](https://wiki.facepunch.com/gmod/NPC:MoveJumpExec) and [NPC:MoveJumpStart](https://wiki.facepunch.com/gmod/NPC:MoveJumpStart). 
--- [https://wiki.facepunch.com/gmod/NPC:MoveJumpStop]
--- @return number
function NPC:MoveJumpStop() end

--- (server) Makes the NPC walk toward the given position. The NPC will return to the player after amount of time set by **player_squad_autosummon_time** [ConVar](https://wiki.facepunch.com/gmod/ConVar).
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.
--- The NPC **must** be in the player's squad for this to work. 
--- [https://wiki.facepunch.com/gmod/NPC:MoveOrder]
--- @param position Vector @ The target position for the NPC to walk to.
--- @return void
function NPC:MoveOrder(position) end

--- (server) Pauses the NPC movement?
--- Related functions are [NPC:MoveStart](https://wiki.facepunch.com/gmod/NPC:MoveStart), [NPC:MoveStop](https://wiki.facepunch.com/gmod/NPC:MoveStop) and [NPC:ResetMoveCalc](https://wiki.facepunch.com/gmod/NPC:ResetMoveCalc). 
--- [https://wiki.facepunch.com/gmod/NPC:MovePause]
--- @return void
function NPC:MovePause() end

--- (server) Starts NPC movement?
--- Related functions are [NPC:MoveStop](https://wiki.facepunch.com/gmod/NPC:MoveStop), [NPC:MovePause](https://wiki.facepunch.com/gmod/NPC:MovePause) and [NPC:ResetMoveCalc](https://wiki.facepunch.com/gmod/NPC:ResetMoveCalc). 
--- [https://wiki.facepunch.com/gmod/NPC:MoveStart]
--- @return void
function NPC:MoveStart() end

--- (server) Stops the NPC movement?
--- Related functions are [NPC:MoveStart](https://wiki.facepunch.com/gmod/NPC:MoveStart), [NPC:MovePause](https://wiki.facepunch.com/gmod/NPC:MovePause) and [NPC:ResetMoveCalc](https://wiki.facepunch.com/gmod/NPC:ResetMoveCalc). 
--- [https://wiki.facepunch.com/gmod/NPC:MoveStop]
--- @return void
function NPC:MoveStop() end

--- (server) Works similarly to [NPC:NavSetRandomGoal](https://wiki.facepunch.com/gmod/NPC:NavSetRandomGoal). 
--- [https://wiki.facepunch.com/gmod/NPC:NavSetGoal]
--- @param pos Vector @ The origin to calculate a path from.
--- @param length number @ The target length of the path to calculate.
--- @param dir Vector @ The direction in which to look for a new path end goal.
--- @return boolean
function NPC:NavSetGoal(pos, length, dir) end

--- (server) Set the goal target for an NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:NavSetGoalTarget]
--- @param target Entity @ The targeted entity to set the goal to.
--- @param offset Vector @ The offset to apply to the targeted entity's position.
--- @return boolean
function NPC:NavSetGoalTarget(target, offset) end

--- (server) Creates a random path of specified minimum length between a closest start node and random node in the specified direction. This won't actually force the NPC to move. 
--- [https://wiki.facepunch.com/gmod/NPC:NavSetRandomGoal]
--- @param minPathLength number @ Minimum length of path in units
--- @param dir Vector @ Unit vector pointing in the direction of the target random node
--- @return boolean
function NPC:NavSetRandomGoal(minPathLength, dir) end

--- (server) Sets a goal in x, y offsets for the NPC to wander to 
--- [https://wiki.facepunch.com/gmod/NPC:NavSetWanderGoal]
--- @param xOffset number @ X offset
--- @param yOffset number @ Y offset
--- @return boolean
function NPC:NavSetWanderGoal(xOffset, yOffset) end

--- (server) Forces the NPC to pickup an existing weapon entity. The NPC will not pick up the weapon if they already own a weapon of given type, or if the NPC could not normally have this weapon in their inventory. 
--- [https://wiki.facepunch.com/gmod/NPC:PickupWeapon]
--- @param wep Weapon @ The weapon to try to pick up.
--- @return boolean
function NPC:PickupWeapon(wep) end

--- (server) Forces the NPC to play a sentence from scripts/sentences.txt 
--- [https://wiki.facepunch.com/gmod/NPC:PlaySentence]
--- @param sentence string @ The sentence string to speak.
--- @param delay number @ Delay in seconds until the sentence starts playing.
--- @param volume number @ The volume of the sentence, from 0 to 1.
--- @return number
function NPC:PlaySentence(sentence, delay, volume) end

--- (server) Makes the NPC remember an entity or an enemy as unreachable, for a specified amount of time. Use [NPC:IsUnreachable](https://wiki.facepunch.com/gmod/NPC:IsUnreachable) to check if an entity is still unreachable. 
--- [https://wiki.facepunch.com/gmod/NPC:RememberUnreachable]
--- @param ent Entity @ The entity to mark as unreachable.
--- @param time number @ For how long to remember the entity as unreachable. Negative values will act as `3` seconds.
--- @return void
function NPC:RememberUnreachable(ent, time) end

--- (server) This function crashes the game no matter how it is used and will be removed in a future update.
--- Use [NPC:ClearEnemyMemory](https://wiki.facepunch.com/gmod/NPC:ClearEnemyMemory) instead. 
--- [https://wiki.facepunch.com/gmod/NPC:RemoveMemory]
--- @return void
function NPC:RemoveMemory() end

--- (server) Resets the ideal activity of the NPC. See also [NPC:SetIdealActivity](https://wiki.facepunch.com/gmod/NPC:SetIdealActivity). 
--- [https://wiki.facepunch.com/gmod/NPC:ResetIdealActivity]
--- @param act number @ The new activity. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return void
function NPC:ResetIdealActivity(act) end

--- (server) Resets all the movement calculations.
--- Related functions are [NPC:MoveStart](https://wiki.facepunch.com/gmod/NPC:MoveStart), [NPC:MovePause](https://wiki.facepunch.com/gmod/NPC:MovePause) and [NPC:MoveStop](https://wiki.facepunch.com/gmod/NPC:MoveStop). 
--- [https://wiki.facepunch.com/gmod/NPC:ResetMoveCalc]
--- @return void
function NPC:ResetMoveCalc() end

--- (server) Starts an engine task.
--- Used internally by the [ai_task](https://wiki.facepunch.com/gmod/ai_task). 
--- [https://wiki.facepunch.com/gmod/NPC:RunEngineTask]
--- @param taskID number @ The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/ai_task.h#L89-L502)
--- @param taskData number @ The task data.
--- @return void
function NPC:RunEngineTask(taskID, taskData) end

--- (server) Forces the NPC to switch to a specific weapon the NPC owns. See [NPC:GetWeapons](https://wiki.facepunch.com/gmod/NPC:GetWeapons). 
--- [https://wiki.facepunch.com/gmod/NPC:SelectWeapon]
--- @param class string @ A classname of the weapon or a [Weapon](https://wiki.facepunch.com/gmod/Weapon) entity to switch to.
--- @return void
function NPC:SelectWeapon(class) end

--- (server) Stops any sounds (speech) the NPC is currently palying.
--- Equivalent to `Entity:EmitSound( "AI_BaseNPC.SentenceStop" )` 
--- [https://wiki.facepunch.com/gmod/NPC:SentenceStop]
--- @return void
function NPC:SentenceStop() end

--- (server) Sets the NPC's current activity. 
--- [https://wiki.facepunch.com/gmod/NPC:SetActivity]
--- @param act number @ The new activity to set, see [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return void
function NPC:SetActivity(act) end

--- (server) No description provided 
--- [https://wiki.facepunch.com/gmod/NPC:SetArrivalActivity]
--- @param act number @ No description provided
--- @return void
function NPC:SetArrivalActivity(act) end

--- (server) No description provided 
--- [https://wiki.facepunch.com/gmod/NPC:SetArrivalDirection]
--- @return void
function NPC:SetArrivalDirection() end

--- (server) Sets the distance to goal at which the NPC should stop moving and continue to other business such as doing the rest of their tasks in a schedule. 
--- [https://wiki.facepunch.com/gmod/NPC:SetArrivalDistance]
--- @param dist number @ The distance to goal that is close enough for the NPC
--- @return void
function NPC:SetArrivalDistance(dist) end

--- (server) No description provided 
--- [https://wiki.facepunch.com/gmod/NPC:SetArrivalSequence]
--- @return void
function NPC:SetArrivalSequence() end

--- (server) Sets the arrival speed? of the NPC 
--- [https://wiki.facepunch.com/gmod/NPC:SetArrivalSpeed]
--- @param speed number @ The new arrival speed
--- @return void
function NPC:SetArrivalSpeed(speed) end

--- (server) Sets an NPC condition. 
--- [https://wiki.facepunch.com/gmod/NPC:SetCondition]
--- @param condition number @ The condition index, see [COND](https://wiki.facepunch.com/gmod/Enums/COND).
--- @return void
function NPC:SetCondition(condition) end

--- (server) Sets the weapon proficiency of an NPC (how skilled an NPC is with its current weapon). 
--- [https://wiki.facepunch.com/gmod/NPC:SetCurrentWeaponProficiency]
--- @param proficiency number @ The proficiency for the NPC's current weapon. See [WEAPON_PROFICIENCY](https://wiki.facepunch.com/gmod/Enums/WEAPON_PROFICIENCY).
--- @return void
function NPC:SetCurrentWeaponProficiency(proficiency) end

--- (server) Sets the target for an NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:SetEnemy]
--- @param enemy Entity @ The enemy that the NPC should target
--- @param newenemy boolean @ Calls [NPC:SetCondition](https://wiki.facepunch.com/gmod/NPC:SetCondition)(COND_NEW_ENEMY) if the new enemy is valid and not equal to the last enemy.
--- @return void
function NPC:SetEnemy(enemy, newenemy) end

--- (server) Sets the NPC's .vcd expression. Similar to [Entity:PlayScene](https://wiki.facepunch.com/gmod/Entity:PlayScene) except the scene is looped until it's interrupted by default NPC behavior or [NPC:ClearExpression](https://wiki.facepunch.com/gmod/NPC:ClearExpression). 
--- [https://wiki.facepunch.com/gmod/NPC:SetExpression]
--- @param expression string @ The expression filepath.
--- @return number
function NPC:SetExpression(expression) end

--- (server) Updates the NPC's hull and physics hull in order to match its model scale. [Entity:SetModelScale](https://wiki.facepunch.com/gmod/Entity:SetModelScale) seems to take care of this regardless. 
--- [https://wiki.facepunch.com/gmod/NPC:SetHullSizeNormal]
--- @return void
function NPC:SetHullSizeNormal() end

--- (server) Sets the hull type for the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:SetHullType]
--- @param hullType number @ Hull type. See [HULL](https://wiki.facepunch.com/gmod/Enums/HULL)
--- @return void
function NPC:SetHullType(hullType) end

--- (server) Sets the ideal activity the NPC currently wants to achieve. This is most useful for custom SNPCs. 
--- [https://wiki.facepunch.com/gmod/NPC:SetIdealActivity]
--- @param number number @ The ideal activity to set. [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return void
function NPC:SetIdealActivity(number) end

--- (server) Sets the ideal yaw angle (left-right rotation) for the NPC and forces them to turn to that angle. 
--- [https://wiki.facepunch.com/gmod/NPC:SetIdealYawAndUpdate]
--- @param angle number @ The aim direction to set, the `yaw` component.
--- @param speed number @ The turn speed. Special values are:  `-1` - Calculate automatically  `-2` - Keep the previous yaw speed
--- @return void
function NPC:SetIdealYawAndUpdate(angle, speed) end

--- (server) Sets the last registered or memorized position for an npc. When using scheduling, the NPC will focus on navigating to the last position via nodes. 
--- [https://wiki.facepunch.com/gmod/NPC:SetLastPosition]
--- @param Position Vector @ Where the NPC's last position will be set.
--- @return void
function NPC:SetLastPosition(Position) end

--- (server) Sets how long to try rebuilding path before failing task. 
--- [https://wiki.facepunch.com/gmod/NPC:SetMaxRouteRebuildTime]
--- @param time number @ How long to try rebuilding path before failing task
--- @return void
function NPC:SetMaxRouteRebuildTime(time) end

--- (server) Sets the timestep the internal NPC motor is working on. 
--- [https://wiki.facepunch.com/gmod/NPC:SetMoveInterval]
--- @param time number @ The new timestep.
--- @return void
function NPC:SetMoveInterval(time) end

--- (server) Sets the activity the NPC uses when it moves. 
--- [https://wiki.facepunch.com/gmod/NPC:SetMovementActivity]
--- @param activity number @ The movement activity, see [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return void
function NPC:SetMovementActivity(activity) end

--- (server) Sets the sequence the NPC navigation path uses for speed calculation. Doesn't seem to have any visible effect on NPC movement. 
--- [https://wiki.facepunch.com/gmod/NPC:SetMovementSequence]
--- @param sequenceId number @ The movement sequence index
--- @return void
function NPC:SetMovementSequence(sequenceId) end

--- (server) Sets the move velocity of the NPC 
--- [https://wiki.facepunch.com/gmod/NPC:SetMoveVelocity]
--- @param vel Vector @ The new movement velocity.
--- @return void
function NPC:SetMoveVelocity(vel) end

--- (server) Sets whether the current movement should locked on the Yaw axis or not. 
--- [https://wiki.facepunch.com/gmod/NPC:SetMoveYawLocked]
--- @param lock boolean @ Whether the movement should yaw locked or not.
--- @return void
function NPC:SetMoveYawLocked(lock) end

--- (server) Sets the navigation type of the NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:SetNavType]
--- @param navtype number @ The new nav type. See [NAV](https://wiki.facepunch.com/gmod/Enums/NAV).
--- @return void
function NPC:SetNavType(navtype) end

--- (server) Sets the state the NPC is in to help it decide on a ideal schedule. 
--- [https://wiki.facepunch.com/gmod/NPC:SetNPCState]
--- @param state number @ New NPC state, see [NPC_STATE](https://wiki.facepunch.com/gmod/Enums/NPC_STATE)
--- @return void
function NPC:SetNPCState(state) end

--- (server) Sets the NPC's current schedule. 
--- [https://wiki.facepunch.com/gmod/NPC:SetSchedule]
--- @param schedule number @ The NPC schedule, see [SCHED](https://wiki.facepunch.com/gmod/Enums/SCHED).
--- @return void
function NPC:SetSchedule(schedule) end

--- (server) Assigns the NPC to a new squad. A squad can have up to 16 NPCs. NPCs in a single squad should be friendly to each other. 
--- [https://wiki.facepunch.com/gmod/NPC:SetSquad]
--- @param name string @ The new squad name to set.
--- @return void
function NPC:SetSquad(name) end

--- (server) Sets the NPC's target. This is used in some engine schedules. 
--- [https://wiki.facepunch.com/gmod/NPC:SetTarget]
--- @param entity Entity @ The target of the NPC.
--- @return void
function NPC:SetTarget(entity) end

--- (server) Sets the status of the current task. 
--- [https://wiki.facepunch.com/gmod/NPC:SetTaskStatus]
--- @param status number @ The status. See [TASKSTATUS](https://wiki.facepunch.com/gmod/Enums/TASKSTATUS).
--- @return void
function NPC:SetTaskStatus(status) end

--- (server) Forces the NPC to start an engine task, this has different results for every NPC. 
--- [https://wiki.facepunch.com/gmod/NPC:StartEngineTask]
--- @param task number @ The id of the task to start, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/ai_task.h#L89-L502)
--- @param taskData number @ The task data as a float, not all tasks make use of it.
--- @return void
function NPC:StartEngineTask(task, taskData) end

--- (server) Resets the NPC's movement animation and velocity. Does not actually stop the NPC from moving. 
--- [https://wiki.facepunch.com/gmod/NPC:StopMoving]
--- @return void
function NPC:StopMoving() end

--- (server) Cancels [NPC:MoveOrder](https://wiki.facepunch.com/gmod/NPC:MoveOrder) basically.
--- Only works on Citizens (npc_citizen) and is a part of the Half-Life 2 squad system.
--- The NPC **must** be in the player's squad for this to work. 
--- [https://wiki.facepunch.com/gmod/NPC:TargetOrder]
--- @param target Entity @ Must be a player, does nothing otherwise.
--- @return void
function NPC:TargetOrder(target) end

--- (server) Marks the current NPC task as completed.
--- This is meant to be used alongside [NPC:TaskFail](https://wiki.facepunch.com/gmod/NPC:TaskFail) to complete or fail custom Lua defined tasks. ([Schedule:AddTask](https://wiki.facepunch.com/gmod/Schedule:AddTask)) 
--- [https://wiki.facepunch.com/gmod/NPC:TaskComplete]
--- @return void
function NPC:TaskComplete() end

--- (server) Marks the current NPC task as failed.
--- This is meant to be used alongside [NPC:TaskComplete](https://wiki.facepunch.com/gmod/NPC:TaskComplete) to complete or fail custom Lua defined tasks. ([Schedule:AddTask](https://wiki.facepunch.com/gmod/Schedule:AddTask)) 
--- [https://wiki.facepunch.com/gmod/NPC:TaskFail]
--- @param task string @ A string most likely defined as a Source Task, for more information on Tasks go to https://developer.valvesoftware.com/wiki/Task
--- @return void
function NPC:TaskFail(task) end

--- (server) Force the NPC to update information on the supplied enemy, as if it had line of sight to it. 
--- [https://wiki.facepunch.com/gmod/NPC:UpdateEnemyMemory]
--- @param enemy Entity @ The enemy to update.
--- @param pos Vector @ The last known position of the enemy.
--- @return void
function NPC:UpdateEnemyMemory(enemy, pos) end

--- (server) Updates the turn activity. Basically applies the turn animations depending on the current turn yaw. 
--- [https://wiki.facepunch.com/gmod/NPC:UpdateTurnActivity]
--- @return void
function NPC:UpdateTurnActivity() end

--- (server) Only usable on "ai" base entities. 
--- [https://wiki.facepunch.com/gmod/NPC:UseActBusyBehavior]
--- @return boolean
function NPC:UseActBusyBehavior() end

--- (server) No description provided 
--- [https://wiki.facepunch.com/gmod/NPC:UseAssaultBehavior]
--- @return boolean
function NPC:UseAssaultBehavior() end

--- (server) Only usable on "ai" base entities. 
--- [https://wiki.facepunch.com/gmod/NPC:UseFollowBehavior]
--- @return boolean
function NPC:UseFollowBehavior() end

--- (server) No description provided 
--- [https://wiki.facepunch.com/gmod/NPC:UseFuncTankBehavior]
--- @return boolean
function NPC:UseFuncTankBehavior() end

--- (server) No description provided 
--- [https://wiki.facepunch.com/gmod/NPC:UseLeadBehavior]
--- @return boolean
function NPC:UseLeadBehavior() end

--- (server) Undoes the other Use*Behavior functions.
--- Only usable on "ai" base entities. 
--- [https://wiki.facepunch.com/gmod/NPC:UseNoBehavior]
--- @return void
function NPC:UseNoBehavior() end

