--- @class Player
Player = {}

--- (client/server) Returns the player's AccountID aka SteamID3. (`[U:1:AccountID]`)For bots this will return values starting with 0 for the first bot, 1 for the second bot and so on.  See [Player:SteamID](https://wiki.facepunch.com/gmod/Player:SteamID) for the text representation of the full SteamID.See [Player:SteamID64](https://wiki.facepunch.com/gmod/Player:SteamID64) for a 64bit representation of the full SteamID.Unlike other variations of SteamID, SteamID3 does not include the "Account Type" and "Account Instance" part of the SteamID. 
--- [https://wiki.facepunch.com/gmod/Player:AccountID]
--- @return number
function Player:AccountID() end

--- (client/server) Adds an entity to the players clean up list. 
--- [https://wiki.facepunch.com/gmod/Player:AddCleanup]
--- @param type string @ Cleanup type
--- @param ent Entity @ Entity to add
--- @return void
function Player:AddCleanup(type, ent) end

--- (client/server) Adds an entity to the total count of entities of same class. 
--- [https://wiki.facepunch.com/gmod/Player:AddCount]
--- @param str string @ Entity type
--- @param ent Entity @ Entity
--- @return void
function Player:AddCount(str, ent) end

--- (server) Add a certain amount to the player's death count 
--- [https://wiki.facepunch.com/gmod/Player:AddDeaths]
--- @param count number @ number of deaths to add
--- @return void
function Player:AddDeaths(count) end

--- (server) Add a certain amount to the player's frag count (or kills count) 
--- [https://wiki.facepunch.com/gmod/Player:AddFrags]
--- @param count number @ number of frags to add
--- @return void
function Player:AddFrags(count) end

--- (server) Adds a entity to the players list of frozen objects. 
--- [https://wiki.facepunch.com/gmod/Player:AddFrozenPhysicsObject]
--- @param ent Entity @ Entity
--- @param physobj PhysObj @ Physics object belonging to ent
--- @return void
function Player:AddFrozenPhysicsObject(ent, physobj) end

--- (client) Sets up the voting system for the player.This is a really barebone system. By calling this a vote gets started, when the player presses 0-9 the callback function gets called along with the key the player pressed. Use the draw callback to draw the vote panel. 
--- [https://wiki.facepunch.com/gmod/Player:AddPlayerOption]
--- @param name string @ Name of the vote
--- @param timeout number @ Time until the vote expires
--- @param vote_callback function @ The function to be run when the player presses 0-9 while a vote is active.
--- @param draw_callback function @ Used to draw the vote panel.
--- @return void
function Player:AddPlayerOption(name, timeout, vote_callback, draw_callback) end

--- (client/server) Plays a sequence directly from a sequence number, similar to [Player:AnimRestartGesture](https://wiki.facepunch.com/gmod/Player:AnimRestartGesture). This function has the advantage to play sequences that haven't been bound to an existing [ACT](https://wiki.facepunch.com/gmod/Enums/ACT) 
--- [https://wiki.facepunch.com/gmod/Player:AddVCDSequenceToGestureSlot]
--- @param slot number @ Gesture slot using [GESTURE_SLOT](https://wiki.facepunch.com/gmod/Enums/GESTURE_SLOT)
--- @param sequenceId number @ The sequence ID to play, can be retrieved with [Entity:LookupSequence](https://wiki.facepunch.com/gmod/Entity:LookupSequence).
--- @param cycle number @ The cycle to start the animation at, ranges from 0 to 1.
--- @param autokill boolean @ If the animation should not loop. true = stops the animation, false = the animation keeps playing.
--- @return void
function Player:AddVCDSequenceToGestureSlot(slot, sequenceId, cycle, autokill) end

--- (client/server) Checks if the player is alive. 
--- [https://wiki.facepunch.com/gmod/Player:Alive]
--- @return boolean
function Player:Alive() end

--- (client/server) Sets if the player can toggle his flashlight. Function exists on both the server and client but has no effect when ran on the client. 
--- [https://wiki.facepunch.com/gmod/Player:AllowFlashlight]
--- @param canFlashlight boolean @ True allows flashlight toggling
--- @return void
function Player:AllowFlashlight(canFlashlight) end

--- (server) Lets the player spray their decal without delay 
--- [https://wiki.facepunch.com/gmod/Player:AllowImmediateDecalPainting]
--- @param allow boolean @ Allow or disallow
--- @return void
function Player:AllowImmediateDecalPainting(allow) end

--- (client/server) Resets player gesture in selected slot. 
--- [https://wiki.facepunch.com/gmod/Player:AnimResetGestureSlot]
--- @param slot number @ Slot to reset. See the [GESTURE_SLOT](https://wiki.facepunch.com/gmod/Enums/GESTURE_SLOT).
--- @return void
function Player:AnimResetGestureSlot(slot) end

--- (client/server) Restart a gesture on a player, within a gesture slot. 
--- [https://wiki.facepunch.com/gmod/Player:AnimRestartGesture]
--- @param slot number @ Gesture slot using [GESTURE_SLOT](https://wiki.facepunch.com/gmod/Enums/GESTURE_SLOT)
--- @param activity number @ The activity ( see [ACT](https://wiki.facepunch.com/gmod/Enums/ACT) ) or sequence that should be played
--- @param autokill boolean @ Whether the animation should be automatically stopped. true = stops the animation, false = the animation keeps playing/looping
--- @return void
function Player:AnimRestartGesture(slot, activity, autokill) end

--- (client/server) Restarts the main animation on the player, has the same effect as calling [Entity:SetCycle](https://wiki.facepunch.com/gmod/Entity:SetCycle)( 0 ). 
--- [https://wiki.facepunch.com/gmod/Player:AnimRestartMainSequence]
--- @return void
function Player:AnimRestartMainSequence() end

--- (client/server) Sets the sequence of the animation playing in the given gesture slot. 
--- [https://wiki.facepunch.com/gmod/Player:AnimSetGestureSequence]
--- @param slot number @ The gesture slot. See [GESTURE_SLOT](https://wiki.facepunch.com/gmod/Enums/GESTURE_SLOT)
--- @param sequenceID number @ Sequence ID to set.
--- @return void
function Player:AnimSetGestureSequence(slot, sequenceID) end

--- (client/server) Sets the weight of the animation playing in the given gesture slot. 
--- [https://wiki.facepunch.com/gmod/Player:AnimSetGestureWeight]
--- @param slot number @ The gesture slot. See [GESTURE_SLOT](https://wiki.facepunch.com/gmod/Enums/GESTURE_SLOT)
--- @param weight number @ The weight this slot should be set to. Value must be ranging from 0 to 1.
--- @return void
function Player:AnimSetGestureWeight(slot, weight) end

--- (client/server) Returns the player's armor. 
--- [https://wiki.facepunch.com/gmod/Player:Armor]
--- @return number
function Player:Armor() end

--- (server) Bans the player from the server for a certain amount of minutes. 
--- [https://wiki.facepunch.com/gmod/Player:Ban]
--- @param minutes number @ Duration of the ban in minutes (0 is permanent)
--- @param kick boolean @ Whether to kick the player after banning them or not
--- @return void
function Player:Ban(minutes, kick) end

--- (client/server) Returns true if the player's flashlight hasn't been disabled by [Player:AllowFlashlight](https://wiki.facepunch.com/gmod/Player:AllowFlashlight). 
--- [https://wiki.facepunch.com/gmod/Player:CanUseFlashlight]
--- @return boolean
function Player:CanUseFlashlight() end

--- (client/server) Prints a string to the chatbox of the client. 
--- [https://wiki.facepunch.com/gmod/Player:ChatPrint]
--- @param message string @ String to be printed
--- @return void
function Player:ChatPrint(message) end

--- (client/server) Checks if the limit is hit or not. If it is, it will throw a notification saying so. 
--- [https://wiki.facepunch.com/gmod/Player:CheckLimit]
--- @param limitType string @ Limit type. In unmodified Sandbox possible values are:* "props"* "ragdolls"* "vehicles"* "effects"* "balloons"* "cameras"* "npcs"* "sents"* "dynamite"* "lamps"* "lights"* "wheels"* "thrusters"* "hoverballs"* "buttons"* "emitters"
--- @return boolean
function Player:CheckLimit(limitType) end

--- (client/server) Runs the concommand on the player. This does not work on bots.If you wish to directly modify the movement input of bots, use [GM:StartCommand](https://wiki.facepunch.com/gmod/GM:StartCommand) instead. 
--- [https://wiki.facepunch.com/gmod/Player:ConCommand]
--- @param command string @ command to run
--- @return void
function Player:ConCommand(command) end

--- (server) Creates the player's death ragdoll entity and deletes the old one.This is normally used when a player dies, to create their death ragdoll.The ragdoll will be created with the player's properties such as [Position](https://wiki.facepunch.com/gmod/Entity:GetPos), [Angles](https://wiki.facepunch.com/gmod/Entity:GetAngles), [PlayerColor](https://wiki.facepunch.com/gmod/Player:GetPlayerColor), [Velocity](https://wiki.facepunch.com/gmod/Entity:GetVelocity) and [Model](https://wiki.facepunch.com/gmod/Entity:GetModel).You can retrieve the entity this creates with [Player:GetRagdollEntity](https://wiki.facepunch.com/gmod/Player:GetRagdollEntity). 
--- [https://wiki.facepunch.com/gmod/Player:CreateRagdoll]
--- @return void
function Player:CreateRagdoll() end

--- (server) Disables the default player's crosshair. Can be reenabled with [Player:CrosshairEnable](https://wiki.facepunch.com/gmod/Player:CrosshairEnable). This will affect [WEAPON:DoDrawCrosshair](https://wiki.facepunch.com/gmod/WEAPON:DoDrawCrosshair). 
--- [https://wiki.facepunch.com/gmod/Player:CrosshairDisable]
--- @return void
function Player:CrosshairDisable() end

--- (server) Enables the player's crosshair, if it was previously disabled via [Player:CrosshairDisable](https://wiki.facepunch.com/gmod/Player:CrosshairDisable). 
--- [https://wiki.facepunch.com/gmod/Player:CrosshairEnable]
--- @return void
function Player:CrosshairEnable() end

--- (client/server) Returns whether the player is crouching or not ([FL_DUCKING](https://wiki.facepunch.com/gmod/Enums/FL) flag). 
--- [https://wiki.facepunch.com/gmod/Player:Crouching]
--- @return boolean
function Player:Crouching() end

--- (client/server) Returns the player's death count 
--- [https://wiki.facepunch.com/gmod/Player:Deaths]
--- @return number
function Player:Deaths() end

--- (server) Prints the players' name and position to the console. 
--- [https://wiki.facepunch.com/gmod/Player:DebugInfo]
--- @return void
function Player:DebugInfo() end

--- (server) Detonates all tripmines belonging to the player. 
--- [https://wiki.facepunch.com/gmod/Player:DetonateTripmines]
--- @return void
function Player:DetonateTripmines() end

--- (client/server) Sends a third person animation event to the player.Calls [GM:DoAnimationEvent](https://wiki.facepunch.com/gmod/GM:DoAnimationEvent) with [PLAYERANIMEVENT_CUSTOM_GESTURE](https://wiki.facepunch.com/gmod/Enums/PLAYERANIMEVENT) as the event, data as the given data. 
--- [https://wiki.facepunch.com/gmod/Player:DoAnimationEvent]
--- @param data number @ The data to send.
--- @return void
function Player:DoAnimationEvent(data) end

--- (client/server) Starts the player's attack animation. The attack animation is determined by the weapon's HoldType.Similar to other animation event functions, calls [GM:DoAnimationEvent](https://wiki.facepunch.com/gmod/GM:DoAnimationEvent) with [PLAYERANIMEVENT_ATTACK_PRIMARY](https://wiki.facepunch.com/gmod/Enums/PLAYERANIMEVENT) as the event and no extra data. 
--- [https://wiki.facepunch.com/gmod/Player:DoAttackEvent]
--- @return void
function Player:DoAttackEvent() end

--- (client/server) Sends a specified third person animation event to the player.Calls [GM:DoAnimationEvent](https://wiki.facepunch.com/gmod/GM:DoAnimationEvent) with specified arguments. 
--- [https://wiki.facepunch.com/gmod/Player:DoCustomAnimEvent]
--- @param event number @ The event to send. See [PLAYERANIMEVENT](https://wiki.facepunch.com/gmod/Enums/PLAYERANIMEVENT).
--- @param data number @ The data to send alongside the event.
--- @return void
function Player:DoCustomAnimEvent(event, data) end

--- (client/server) Sends a third person reload animation event to the player.Similar to other animation event functions, calls [GM:DoAnimationEvent](https://wiki.facepunch.com/gmod/GM:DoAnimationEvent) with [PLAYERANIMEVENT_RELOAD](https://wiki.facepunch.com/gmod/Enums/PLAYERANIMEVENT) as the event and no extra data. 
--- [https://wiki.facepunch.com/gmod/Player:DoReloadEvent]
--- @return void
function Player:DoReloadEvent() end

--- (client/server) Sends a third person secondary fire animation event to the player.Similar to other animation event functions, calls [GM:DoAnimationEvent](https://wiki.facepunch.com/gmod/GM:DoAnimationEvent) with [PLAYERANIMEVENT_ATTACK_SECONDARY](https://wiki.facepunch.com/gmod/Enums/PLAYERANIMEVENT) as the event and no extra data. 
--- [https://wiki.facepunch.com/gmod/Player:DoSecondaryAttack]
--- @return void
function Player:DoSecondaryAttack() end

--- (client/server) Show/Hide the player's weapon's viewmodel. 
--- [https://wiki.facepunch.com/gmod/Player:DrawViewModel]
--- @param draw boolean @ Should draw
--- @param vm number @ Which view model to show/hide, 0-2.
--- @return void
function Player:DrawViewModel(draw, vm) end

--- (server) Show/Hide the player's weapon's worldmodel. 
--- [https://wiki.facepunch.com/gmod/Player:DrawWorldModel]
--- @param draw boolean @ Should draw
--- @return void
function Player:DrawWorldModel(draw) end

--- (server) Drops the players' weapon of a specific class. 
--- [https://wiki.facepunch.com/gmod/Player:DropNamedWeapon]
--- @param class string @ The class to drop.
--- @param target Vector @ If set, launches the weapon at given position. There is a limit to how far it is willing to throw the weapon. Overrides velocity argument.
--- @param velocity Vector @ If set and previous argument is unset, launches the weapon with given velocity. If the velocity is higher than 400, it will be clamped to 400.
--- @return void
function Player:DropNamedWeapon(class, target, velocity) end

--- (server) Drops any object the player is currently holding with either gravitygun or +Use (E key) 
--- [https://wiki.facepunch.com/gmod/Player:DropObject]
--- @return void
function Player:DropObject() end

--- (server) Forces the player to drop the specified weapon 
--- [https://wiki.facepunch.com/gmod/Player:DropWeapon]
--- @param weapon Weapon @ Weapon to be dropped. If unset, will default to the currently equipped weapon.
--- @param target Vector @ If set, launches the weapon at given position. There is a limit to how far it is willing to throw the weapon. Overrides velocity argument.
--- @param velocity Vector @ If set and previous argument is unset, launches the weapon with given velocity. If the velocity is higher than 400, it will be clamped to 400.
--- @return void
function Player:DropWeapon(weapon, target, velocity) end

--- (server) Enters the player into specified vehicle 
--- [https://wiki.facepunch.com/gmod/Player:EnterVehicle]
--- @param vehicle Vehicle @ Vehicle the player will enter
--- @return void
function Player:EnterVehicle(vehicle) end

--- (server) Equips the player with the HEV suit.Allows the player to zoom, walk slowly, sprint, pickup armor batteries, use the health and armor stations and also shows the HUD.The player also emits a flatline sound on death, which can be overridden with [GM:PlayerDeathSound](https://wiki.facepunch.com/gmod/GM:PlayerDeathSound).The player is automatically equipped with the suit on spawn, if you wish to stop that, use [Player:RemoveSuit](https://wiki.facepunch.com/gmod/Player:RemoveSuit). 
--- [https://wiki.facepunch.com/gmod/Player:EquipSuit]
--- @return void
function Player:EquipSuit() end

--- (server) Makes the player exit the vehicle if they're in one. 
--- [https://wiki.facepunch.com/gmod/Player:ExitVehicle]
--- @return void
function Player:ExitVehicle() end

--- (server) Enables/Disables the player's flashlight.[Player:CanUseFlashlight](https://wiki.facepunch.com/gmod/Player:CanUseFlashlight) must be true in order for the player's flashlight to be changed. 
--- [https://wiki.facepunch.com/gmod/Player:Flashlight]
--- @param isOn boolean @ Turns the flashlight on/off
--- @return void
function Player:Flashlight(isOn) end

--- (client/server) Returns true if the player's flashlight is on. 
--- [https://wiki.facepunch.com/gmod/Player:FlashlightIsOn]
--- @return boolean
function Player:FlashlightIsOn() end

--- (client/server) Returns the amount of kills a player has. 
--- [https://wiki.facepunch.com/gmod/Player:Frags]
--- @return number
function Player:Frags() end

--- (server) Freeze the player. Frozen players cannot move, look around, or attack. Key bindings are still called. Similar to [Player:Lock](https://wiki.facepunch.com/gmod/Player:Lock) but the player can still take damage.Adds or removes the [FL_FROZEN](https://wiki.facepunch.com/gmod/Enums/FL) flag from the player. 
--- [https://wiki.facepunch.com/gmod/Player:Freeze]
--- @param frozen boolean @ Whether the player should be frozen.
--- @return void
function Player:Freeze(frozen) end

--- (client/server) Returns the player's active weapon.If used on a [LocalPlayer](https://wiki.facepunch.com/gmod/Global.LocalPlayer)() and the player is spectating another player with `OBS_MODE_IN_EYE`, the weapon returned will be of the spectated player. 
--- [https://wiki.facepunch.com/gmod/Player:GetActiveWeapon]
--- @return Weapon
function Player:GetActiveWeapon() end

--- (server) Returns the player's current activity. 
--- [https://wiki.facepunch.com/gmod/Player:GetActivity]
--- @return number
function Player:GetActivity() end

--- (client/server) Returns the direction that the player is aiming. 
--- [https://wiki.facepunch.com/gmod/Player:GetAimVector]
--- @return Vector
function Player:GetAimVector() end

--- (client/server) Returns true if the players' model is allowed to rotate around the pitch and roll axis. 
--- [https://wiki.facepunch.com/gmod/Player:GetAllowFullRotation]
--- @return boolean
function Player:GetAllowFullRotation() end

--- (client/server) Returns whether the player is allowed to use his weapons in a vehicle or not. 
--- [https://wiki.facepunch.com/gmod/Player:GetAllowWeaponsInVehicle]
--- @return boolean
function Player:GetAllowWeaponsInVehicle() end

--- (client/server) Returns a table of all ammo the player has. 
--- [https://wiki.facepunch.com/gmod/Player:GetAmmo]
--- @return table
function Player:GetAmmo() end

--- (client/server) Gets the amount of ammo the player has. 
--- [https://wiki.facepunch.com/gmod/Player:GetAmmoCount]
--- @param ammotype any @ The ammunition type. Can be either [number](https://wiki.facepunch.com/gmod/number) ammo ID or [string](https://wiki.facepunch.com/gmod/string) ammo name.
--- @return number
function Player:GetAmmoCount(ammotype) end

--- (client/server) Gets if the player will be pushed out of nocollided players. 
--- [https://wiki.facepunch.com/gmod/Player:GetAvoidPlayers]
--- @return boolean
function Player:GetAvoidPlayers() end

--- (client/server) Returns true if the player is able to walk using the (default) alt key. 
--- [https://wiki.facepunch.com/gmod/Player:GetCanWalk]
--- @return boolean
function Player:GetCanWalk() end

--- (client/server) Determines whenever the player is allowed to use the zoom functionality. 
--- [https://wiki.facepunch.com/gmod/Player:GetCanZoom]
--- @return boolean
function Player:GetCanZoom() end

--- (client/server) Returns the player's class id. 
--- [https://wiki.facepunch.com/gmod/Player:GetClassID]
--- @return number
function Player:GetClassID() end

--- (client/server) Gets total count of entities of same class. 
--- [https://wiki.facepunch.com/gmod/Player:GetCount]
--- @param type string @ Entity type to get count of.
--- @param minus number @ If specified, it will reduce the counter by this value. Works only serverside.
--- @return number
function Player:GetCount(type, minus) end

--- (client/server) Returns the crouched walk speed multiplier.See also [Player:GetWalkSpeed](https://wiki.facepunch.com/gmod/Player:GetWalkSpeed) and [Player:SetCrouchedWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetCrouchedWalkSpeed). 
--- [https://wiki.facepunch.com/gmod/Player:GetCrouchedWalkSpeed]
--- @return number
function Player:GetCrouchedWalkSpeed() end

--- (client/server) Returns the last command which was sent by the specified player. This can only be called on the player which [GetPredictionPlayer](https://wiki.facepunch.com/gmod/Global.GetPredictionPlayer)() returns. 
--- [https://wiki.facepunch.com/gmod/Player:GetCurrentCommand]
--- @return CUserCmd
function Player:GetCurrentCommand() end

--- (client/server) Gets the **actual** view offset which equals the difference between the players actual position and their view when standing.Do not confuse with [Player:GetViewOffset](https://wiki.facepunch.com/gmod/Player:GetViewOffset) and [Player:GetViewOffsetDucked](https://wiki.facepunch.com/gmod/Player:GetViewOffsetDucked) 
--- [https://wiki.facepunch.com/gmod/Player:GetCurrentViewOffset]
--- @return Vector
function Player:GetCurrentViewOffset() end

--- (client/server) Gets the entity the player is currently driving via the [drive](https://wiki.facepunch.com/gmod/drive) library. 
--- [https://wiki.facepunch.com/gmod/Player:GetDrivingEntity]
--- @return Entity
function Player:GetDrivingEntity() end

--- (client/server) Returns driving mode of the player. See [Entity Driving](https://wiki.facepunch.com/gmod/Entity%20Driving). 
--- [https://wiki.facepunch.com/gmod/Player:GetDrivingMode]
--- @return number
function Player:GetDrivingMode() end

--- (client/server) Returns a player's duck speed (in seconds) 
--- [https://wiki.facepunch.com/gmod/Player:GetDuckSpeed]
--- @return number
function Player:GetDuckSpeed() end

--- (client/server) Returns the entity the player is currently using, like func_tank mounted turrets or +use prop pickups. 
--- [https://wiki.facepunch.com/gmod/Player:GetEntityInUse]
--- @return Entity
function Player:GetEntityInUse() end

--- (client/server) Returns a table with information of what the player is looking at.The results of this function are **cached** clientside every frame.Uses [util.GetPlayerTrace](https://wiki.facepunch.com/gmod/util.GetPlayerTrace) internally and is therefore bound by its limits.See also [Player:GetEyeTraceNoCursor](https://wiki.facepunch.com/gmod/Player:GetEyeTraceNoCursor). 
--- [https://wiki.facepunch.com/gmod/Player:GetEyeTrace]
--- @return table
function Player:GetEyeTrace() end

--- (client/server) Returns the trace according to the players view direction, ignoring their mouse (holding  and moving the mouse in Sandbox).The results of this function are **cached** clientside every frame.Uses [util.GetPlayerTrace](https://wiki.facepunch.com/gmod/util.GetPlayerTrace) internally and is therefore bound by its limits.See also [Player:GetEyeTrace](https://wiki.facepunch.com/gmod/Player:GetEyeTrace). 
--- [https://wiki.facepunch.com/gmod/Player:GetEyeTraceNoCursor]
--- @return table
function Player:GetEyeTraceNoCursor() end

--- (client/server) Returns the FOV of the player. 
--- [https://wiki.facepunch.com/gmod/Player:GetFOV]
--- @return number
function Player:GetFOV() end

--- (client) Returns the steam "relationship" towards the player. 
--- [https://wiki.facepunch.com/gmod/Player:GetFriendStatus]
--- @return string
function Player:GetFriendStatus() end

--- (client/server) Gets the hands entity of a player 
--- [https://wiki.facepunch.com/gmod/Player:GetHands]
--- @return Entity
function Player:GetHands() end

--- (client/server) Returns the widget the player is hovering with his mouse. 
--- [https://wiki.facepunch.com/gmod/Player:GetHoveredWidget]
--- @return Entity
function Player:GetHoveredWidget() end

--- (client/server) Gets the bottom base and the top base size of the player's hull. 
--- [https://wiki.facepunch.com/gmod/Player:GetHull]
--- @return Vector|Vector
function Player:GetHull() end

--- (client/server) Gets the bottom base and the top base size of the player's crouch hull. 
--- [https://wiki.facepunch.com/gmod/Player:GetHullDuck]
--- @return Vector|Vector
function Player:GetHullDuck() end

--- (client/server) Retrieves the value of a client-side [ConVar](https://wiki.facepunch.com/gmod/ConVar). The [ConVar](https://wiki.facepunch.com/gmod/ConVar) must have a [FCVAR_USERINFO](https://wiki.facepunch.com/gmod/Enums/FCVAR) flag for this to work. 
--- [https://wiki.facepunch.com/gmod/Player:GetInfo]
--- @param cVarName string @ The name of the client-side [ConVar](https://wiki.facepunch.com/gmod/ConVar).
--- @return string
function Player:GetInfo(cVarName) end

--- (client/server) Retrieves the numeric value of a client-side convar, returns nil if value is not convertible to a number. The [ConVar](https://wiki.facepunch.com/gmod/ConVar) must have a [FCVAR_USERINFO](https://wiki.facepunch.com/gmod/Enums/FCVAR) flag for this to work. 
--- [https://wiki.facepunch.com/gmod/Player:GetInfoNum]
--- @param cVarName string @ The name of the [ConVar](https://wiki.facepunch.com/gmod/ConVar) to query the value of
--- @param default number @ Default value if we failed to retrieve the number.
--- @return number
function Player:GetInfoNum(cVarName, default) end

--- (client/server) Returns the jump power of the player 
--- [https://wiki.facepunch.com/gmod/Player:GetJumpPower]
--- @return number
function Player:GetJumpPower() end

--- (client/server) Returns the player's ladder climbing speed.See [Player:GetWalkSpeed](https://wiki.facepunch.com/gmod/Player:GetWalkSpeed) for normal walking speed, [Player:GetRunSpeed](https://wiki.facepunch.com/gmod/Player:GetRunSpeed) for sprinting speed and [Player:GetSlowWalkSpeed](https://wiki.facepunch.com/gmod/Player:GetSlowWalkSpeed) for slow walking speed. 
--- [https://wiki.facepunch.com/gmod/Player:GetLadderClimbSpeed]
--- @return number
function Player:GetLadderClimbSpeed() end

--- (client/server) Returns the timescale multiplier of the player movement. 
--- [https://wiki.facepunch.com/gmod/Player:GetLaggedMovementValue]
--- @return number
function Player:GetLaggedMovementValue() end

--- (client/server) Returns the maximum amount of armor the player should have. Default value is 100. 
--- [https://wiki.facepunch.com/gmod/PlayerGetMaxArmor]
--- @return number
function Player:GetMaxArmor() end

--- (client/server) Returns the player's maximum movement speed.See also [Player:SetMaxSpeed](https://wiki.facepunch.com/gmod/Player:SetMaxSpeed), [Player:GetWalkSpeed](https://wiki.facepunch.com/gmod/Player:GetWalkSpeed) and [Player:GetRunSpeed](https://wiki.facepunch.com/gmod/Player:GetRunSpeed). 
--- [https://wiki.facepunch.com/gmod/Player:GetMaxSpeed]
--- @return number
function Player:GetMaxSpeed() end

--- (client/server) Returns the player's name, this is an alias of [Player:Nick](https://wiki.facepunch.com/gmod/Player:Nick). 
--- [https://wiki.facepunch.com/gmod/Player:GetName]
--- @return string
function Player:GetName() end

--- (client/server) Returns whenever the player is set not to collide with their teammates. 
--- [https://wiki.facepunch.com/gmod/Player:GetNoCollideWithTeammates]
--- @return boolean
function Player:GetNoCollideWithTeammates() end

--- (client/server) Returns the the observer mode of the player 
--- [https://wiki.facepunch.com/gmod/Player:GetObserverMode]
--- @return number
function Player:GetObserverMode() end

--- (client/server) Returns the entity the player is currently observing.Set using [Player:SpectateEntity](https://wiki.facepunch.com/gmod/Player:SpectateEntity). 
--- [https://wiki.facepunch.com/gmod/Player:GetObserverTarget]
--- @return Entity
function Player:GetObserverTarget() end

--- (client/server) Returns a **P**layer **Data** key-value pair from the SQL database. (sv.db when called on server,  cl.db when called on client)Internally uses the [sql](https://wiki.facepunch.com/gmod/sql). 
--- [https://wiki.facepunch.com/gmod/Player:GetPData]
--- @param key string @ Name of the PData key
--- @param default any @ Default value if PData key doesn't exist.
--- @return string
function Player:GetPData(key, default) end

--- (client/server) Returns a player model's color. The part of the model that is colored is determined by the model itself, and is different for each model. The format is Vector(r,g,b), and each color should be between 0 and 1. 
--- [https://wiki.facepunch.com/gmod/Player:GetPlayerColor]
--- @return Vector
function Player:GetPlayerColor() end

--- (client) Returns a table containing player information. 
--- [https://wiki.facepunch.com/gmod/Player:GetPlayerInfo]
--- @return table
function Player:GetPlayerInfo() end

--- (server) Returns the preferred carry angles of an object, if any are set.Calls [GM:GetPreferredCarryAngles](https://wiki.facepunch.com/gmod/GM:GetPreferredCarryAngles) with the target entity and returns the carry angles. 
--- [https://wiki.facepunch.com/gmod/Player:GetPreferredCarryAngles]
--- @param carryEnt Entity @ Entity to retrieve the carry angles of.
--- @return Angle
function Player:GetPreferredCarryAngles(carryEnt) end

--- (client/server) Returns the widget entity the player is using.Having a pressed widget stops the player from firing his weapon to allow input to be passed onto the widget. 
--- [https://wiki.facepunch.com/gmod/Player:GetPressedWidget]
--- @return Entity
function Player:GetPressedWidget() end

--- (client/server) Returns the weapon the player previously had equipped. 
--- [https://wiki.facepunch.com/gmod/Player:GetPreviousWeapon]
--- @return Entity
function Player:GetPreviousWeapon() end

--- (client/server) Returns players screen punch effect angle. See [Player:ViewPunch](https://wiki.facepunch.com/gmod/Player:ViewPunch) and [Player:SetViewPunchAngles](https://wiki.facepunch.com/gmod/Player:SetViewPunchAngles) 
--- [https://wiki.facepunch.com/gmod/Player:GetPunchAngle]
--- @return Angle
function Player:GetPunchAngle() end

--- (client/server) Returns players death ragdoll. The ragdoll is created by [Player:CreateRagdoll](https://wiki.facepunch.com/gmod/Player:CreateRagdoll). 
--- [https://wiki.facepunch.com/gmod/Player:GetRagdollEntity]
--- @return Entity
function Player:GetRagdollEntity() end

--- (client/server) Returns the render angles for the player. 
--- [https://wiki.facepunch.com/gmod/Player:GetRenderAngles]
--- @return Angle
function Player:GetRenderAngles() end

--- (client/server) Returns the player's sprint speed.See also [Player:SetRunSpeed](https://wiki.facepunch.com/gmod/Player:SetRunSpeed), [Player:GetWalkSpeed](https://wiki.facepunch.com/gmod/Player:GetWalkSpeed) and [Player:GetMaxSpeed](https://wiki.facepunch.com/gmod/Player:GetMaxSpeed). 
--- [https://wiki.facepunch.com/gmod/Player:GetRunSpeed]
--- @return number
function Player:GetRunSpeed() end

--- (client/server) Returns the position of a Player's view 
--- [https://wiki.facepunch.com/gmod/Player:GetShootPos]
--- @return Vector
function Player:GetShootPos() end

--- (client/server) Returns the player's slow walking speed, which is activated via  keybind.See [Player:GetWalkSpeed](https://wiki.facepunch.com/gmod/Player:GetWalkSpeed) for normal walking speed, [Player:GetRunSpeed](https://wiki.facepunch.com/gmod/Player:GetRunSpeed) for sprinting speed and [Player:GetLadderClimbSpeed](https://wiki.facepunch.com/gmod/Player:GetLadderClimbSpeed) for ladder climb speed. 
--- [https://wiki.facepunch.com/gmod/Player:GetSlowWalkSpeed]
--- @return number
function Player:GetSlowWalkSpeed() end

--- (client/server) Returns the maximum height player can step onto. 
--- [https://wiki.facepunch.com/gmod/Player:GetStepSize]
--- @return number
function Player:GetStepSize() end

--- (client/server) Returns the player's HEV suit power. 
--- [https://wiki.facepunch.com/gmod/Player:GetSuitPower]
--- @return number
function Player:GetSuitPower() end

--- (server) Returns the number of seconds that the player has been timing out for. You can check if a player is timing out with [Player:IsTimingOut](https://wiki.facepunch.com/gmod/Player:IsTimingOut). 
--- [https://wiki.facepunch.com/gmod/Player:GetTimeoutSeconds]
--- @return number
function Player:GetTimeoutSeconds() end

--- (client/server) Returns [TOOL](https://wiki.facepunch.com/gmod/Structures/TOOL) table of players current tool, or of the one specified. 
--- [https://wiki.facepunch.com/gmod/Player:GetTool]
--- @param mode string @ Classname of the tool to retrieve. ( Filename of the tool in gmod_tool/stools/ )
--- @return table
function Player:GetTool(mode) end

--- (client/server) Returns a player's unduck speed (in seconds) 
--- [https://wiki.facepunch.com/gmod/Player:GetUnDuckSpeed]
--- @return number
function Player:GetUnDuckSpeed() end

--- (client/server) Returns the entity the player would use if they would press their `+use` keybind. 
--- [https://wiki.facepunch.com/gmod/Player:GetUseEntity]
--- @return Entity
function Player:GetUseEntity() end

--- (client/server) Returns the player's user group. By default, player user groups are loaded from `garrysmod/settings/users.txt`. 
--- [https://wiki.facepunch.com/gmod/Player:GetUserGroup]
--- @return string
function Player:GetUserGroup() end

--- (client/server) Gets the vehicle the player is driving, returns NULL ENTITY if the player is not driving. 
--- [https://wiki.facepunch.com/gmod/Player:GetVehicle]
--- @return Vehicle
function Player:GetVehicle() end

--- (client/server) Returns the entity the player is using to see from (such as the player itself, the camera, or another entity). 
--- [https://wiki.facepunch.com/gmod/Player:GetViewEntity]
--- @return Entity
function Player:GetViewEntity() end

--- (client/server) Returns the player's view model entity by the index.Each player has 3 view models by default, but only the first one is used.To use the other viewmodels in your SWEP, see [Entity:SetWeaponModel](https://wiki.facepunch.com/gmod/Entity:SetWeaponModel). 
--- [https://wiki.facepunch.com/gmod/Player:GetViewModel]
--- @param index number @ optional index of the view model to return, can range from 0 to 2
--- @return Entity
function Player:GetViewModel(index) end

--- (client/server) Returns the view offset of the player which equals the difference between the players actual position and their view.See also [Player:GetViewOffsetDucked](https://wiki.facepunch.com/gmod/Player:GetViewOffsetDucked). 
--- [https://wiki.facepunch.com/gmod/Player:GetViewOffset]
--- @return Vector
function Player:GetViewOffset() end

--- (client/server) Returns the view offset of the player which equals the difference between the players actual position and their view when ducked.See also [Player:GetViewOffset](https://wiki.facepunch.com/gmod/Player:GetViewOffset). 
--- [https://wiki.facepunch.com/gmod/Player:GetViewOffsetDucked]
--- @return Vector
function Player:GetViewOffsetDucked() end

--- (client/server) Returns players screen punch effect angle. 
--- [https://wiki.facepunch.com/gmod/Player:GetViewPunchAngles]
--- @return Angle
function Player:GetViewPunchAngles() end

--- (client/server) Returns client's view punch velocity. See [Player:ViewPunch](https://wiki.facepunch.com/gmod/Player:ViewPunch) and [Player:SetViewPunchVelocity](https://wiki.facepunch.com/gmod/Player:SetViewPunchVelocity) 
--- [https://wiki.facepunch.com/gmod/Player:GetViewPunchVelocity]
--- @return Angle
function Player:GetViewPunchVelocity() end

--- (client) Returns the current voice volume scale for given player on client. 
--- [https://wiki.facepunch.com/gmod/Player:GetVoiceVolumeScale]
--- @return number
function Player:GetVoiceVolumeScale() end

--- (client/server) Returns the player's normal walking speed. Not sprinting, not slow walking. (+walk)See also [Player:SetWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetWalkSpeed), [Player:GetMaxSpeed](https://wiki.facepunch.com/gmod/Player:GetMaxSpeed) and [Player:GetRunSpeed](https://wiki.facepunch.com/gmod/Player:GetRunSpeed). 
--- [https://wiki.facepunch.com/gmod/Player:GetWalkSpeed]
--- @return number
function Player:GetWalkSpeed() end

--- (client/server) Returns the weapon for the specified class 
--- [https://wiki.facepunch.com/gmod/Player:GetWeapon]
--- @param className string @ Class name of weapon
--- @return Weapon
function Player:GetWeapon(className) end

--- (client/server) Returns a player's weapon color. The part of the model that is colored is determined by the model itself, and is different for each model. The format is Vector(r,g,b), and each color should be between 0 and 1. 
--- [https://wiki.facepunch.com/gmod/Player:GetWeaponColor]
--- @return Vector
function Player:GetWeaponColor() end

--- (client/server) Returns a table of the player's weapons. 
--- [https://wiki.facepunch.com/gmod/Player:GetWeapons]
--- @return table
function Player:GetWeapons() end

--- (server) Gives the player a weapon. 
--- [https://wiki.facepunch.com/gmod/Player:Give]
--- @param weaponClassName string @ Class name of weapon to give the player
--- @param bNoAmmo boolean @ Set to true to not give any ammo on weapon spawn. (Reserve ammo set by DefaultClip)
--- @return Weapon
function Player:Give(weaponClassName, bNoAmmo) end

--- (server) Gives ammo to a player 
--- [https://wiki.facepunch.com/gmod/Player:GiveAmmo]
--- @param amount number @ Amount of ammo
--- @param type string @ Type of ammo.This can also be a number for ammo ID, useful for custom ammo types.You can find a list of default ammo types [here](https://wiki.facepunch.com/gmod/Default_Ammo_Types).
--- @param hidePopup boolean @ Hide display popup when giving the ammo
--- @return number
function Player:GiveAmmo(amount, type, hidePopup) end

--- (server) Disables god mode on the player. 
--- [https://wiki.facepunch.com/gmod/Player:GodDisable]
--- @return void
function Player:GodDisable() end

--- (server) Enables god mode on the player. 
--- [https://wiki.facepunch.com/gmod/Player:GodEnable]
--- @return void
function Player:GodEnable() end

--- (client/server) Returns whether the player has god mode or not, contolled by [Player:GodEnable](https://wiki.facepunch.com/gmod/Player:GodEnable) and [Player:GodDisable](https://wiki.facepunch.com/gmod/Player:GodDisable). 
--- [https://wiki.facepunch.com/gmod/Player:HasGodMode]
--- @return boolean
function Player:HasGodMode() end

--- (client/server) Returns if the player has the specified weapon 
--- [https://wiki.facepunch.com/gmod/Player:HasWeapon]
--- @param className string @ Class name of the weapon
--- @return boolean
function Player:HasWeapon(className) end

--- (client/server) Returns if the player is in a vehicle 
--- [https://wiki.facepunch.com/gmod/Player:InVehicle]
--- @return boolean
function Player:InVehicle() end

--- (server) Returns the player's IP address and connection port in ip:port form 
--- [https://wiki.facepunch.com/gmod/Player:IPAddress]
--- @return string
function Player:IPAddress() end

--- (client/server) Returns whether the player is an admin or not. It will also return `true` if the player is [Player:IsSuperAdmin](https://wiki.facepunch.com/gmod/Player:IsSuperAdmin) by default.Internally this is determined by [Player:IsUserGroup](https://wiki.facepunch.com/gmod/Player:IsUserGroup). 
--- [https://wiki.facepunch.com/gmod/Player:IsAdmin]
--- @return boolean
function Player:IsAdmin() end

--- (client/server) Returns if the player is an bot or not 
--- [https://wiki.facepunch.com/gmod/Player:IsBot]
--- @return boolean
function Player:IsBot() end

--- (server) Returns true from the point when the player is sending client info but not fully in the game until they disconnect. 
--- [https://wiki.facepunch.com/gmod/Player:IsConnected]
--- @return boolean
function Player:IsConnected() end

--- (client/server) Used to find out if a player is currently 'driving' an entity (by which we mean 'right click > drive' ). 
--- [https://wiki.facepunch.com/gmod/Player:IsDrivingEntity]
--- @return boolean
function Player:IsDrivingEntity() end

--- (client/server) Returns whether the players movement is currently frozen, controlled by [Player:Freeze](https://wiki.facepunch.com/gmod/Player:Freeze). 
--- [https://wiki.facepunch.com/gmod/Player:IsFrozen]
--- @return boolean
function Player:IsFrozen() end

--- (server) Returns whether the player identity was confirmed by the steam network.See also [GM:PlayerAuthed](https://wiki.facepunch.com/gmod/GM:PlayerAuthed). 
--- [https://wiki.facepunch.com/gmod/Player:IsFullyAuthenticated]
--- @return boolean
function Player:IsFullyAuthenticated() end

--- (server) Returns if a player is the host of the current session. 
--- [https://wiki.facepunch.com/gmod/Player:IsListenServerHost]
--- @return boolean
function Player:IsListenServerHost() end

--- (client) Returns whether or not the player is muted locally. 
--- [https://wiki.facepunch.com/gmod/Player:IsMuted]
--- @return boolean
function Player:IsMuted() end

--- (client/server) Returns true if the player is playing a taunt. 
--- [https://wiki.facepunch.com/gmod/Player:IsPlayingTaunt]
--- @return boolean
function Player:IsPlayingTaunt() end

--- (client/server) Returns whenever the player is heard by the local player clientside, or if the player is speaking serverside. 
--- [https://wiki.facepunch.com/gmod/Player:IsSpeaking]
--- @return boolean
function Player:IsSpeaking() end

--- (client/server) Returns whether the player is currently sprinting or not, specifically if they are holding their sprint key and are allowed to sprint.This will not check if the player is currently sprinting into a wall. (i.e. holding their sprint key but not moving) 
--- [https://wiki.facepunch.com/gmod/Player:IsSprinting]
--- @return boolean
function Player:IsSprinting() end

--- (client/server) Returns whenever the player is equipped with the suit item. 
--- [https://wiki.facepunch.com/gmod/Player:IsSuitEquipped]
--- @return boolean
function Player:IsSuitEquipped() end

--- (client/server) Returns whether the player is a super admin.Internally this is determined by [Player:IsUserGroup](https://wiki.facepunch.com/gmod/Player:IsUserGroup). See also [Player:IsAdmin](https://wiki.facepunch.com/gmod/Player:IsAdmin). 
--- [https://wiki.facepunch.com/gmod/Player:IsSuperAdmin]
--- @return boolean
function Player:IsSuperAdmin() end

--- (server) Returns true if the player is timing out (i.e. is losing connection), false otherwise.A player is considered timing out when more than 4 seconds has elapsed since a network packet was received from given player. 
--- [https://wiki.facepunch.com/gmod/Player:IsTimingOut]
--- @return boolean
function Player:IsTimingOut() end

--- (client/server) Returns whether the player is typing in their chat.This may not work properly if the server uses a custom chatbox. 
--- [https://wiki.facepunch.com/gmod/Player:IsTyping]
--- @return boolean
function Player:IsTyping() end

--- (client/server) Returns true/false if the player is in specified group or not. See [Player:GetUserGroup](https://wiki.facepunch.com/gmod/Player:GetUserGroup) for a way to get player's usergroup. 
--- [https://wiki.facepunch.com/gmod/Player:IsUserGroup]
--- @param groupname string @ Group to check the player for.
--- @return boolean
function Player:IsUserGroup(groupname) end

--- (client) Returns if the player can be heard by the local player. 
--- [https://wiki.facepunch.com/gmod/Player:IsVoiceAudible]
--- @return boolean
function Player:IsVoiceAudible() end

--- (client/server) Returns if the player is in the context menu. 
--- [https://wiki.facepunch.com/gmod/Player:IsWorldClicking]
--- @return boolean
function Player:IsWorldClicking() end

--- (client/server) Gets whether a key is down. This is not networked to other players, meaning only the local client can see the keys they are pressing. 
--- [https://wiki.facepunch.com/gmod/Player:KeyDown]
--- @param key number @ The key, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return boolean
function Player:KeyDown(key) end

--- (client/server) Gets whether a key was down one tick ago. 
--- [https://wiki.facepunch.com/gmod/Player:KeyDownLast]
--- @param key number @ The key, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return boolean
function Player:KeyDownLast(key) end

--- (client/server) Gets whether a key was just pressed this tick. 
--- [https://wiki.facepunch.com/gmod/Player:KeyPressed]
--- @param key number @ Corresponds to an [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return boolean
function Player:KeyPressed(key) end

--- (client/server) Gets whether a key was just released this tick. 
--- [https://wiki.facepunch.com/gmod/Player:KeyReleased]
--- @param key number @ The key, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return boolean
function Player:KeyReleased(key) end

--- (server) Kicks the player from the server. 
--- [https://wiki.facepunch.com/gmod/Player:Kick]
--- @param reason string @ Reason to show for disconnection.
--- @return void
function Player:Kick(reason) end

--- (server) Kills a player and calls [GM:PlayerDeath](https://wiki.facepunch.com/gmod/GM:PlayerDeath). 
--- [https://wiki.facepunch.com/gmod/Player:Kill]
--- @return void
function Player:Kill() end

--- (server) Kills a player without notifying the rest of the server.This will call [GM:PlayerSilentDeath](https://wiki.facepunch.com/gmod/GM:PlayerSilentDeath) instead of [GM:PlayerDeath](https://wiki.facepunch.com/gmod/GM:PlayerDeath). 
--- [https://wiki.facepunch.com/gmod/Player:KillSilent]
--- @return void
function Player:KillSilent() end

--- (client/server) This allows the server to mitigate the lag of the player by moving back all the entities that can be lag compensated to the time the player attacked with his weapon.This technique is most commonly used on things that hit other entities instantaneously, such as traces.Lag compensation only works for players and entities that have been enabled with [Entity:SetLagCompensated](https://wiki.facepunch.com/gmod/Entity:SetLagCompensated)Despite being defined shared, it can only be used server-side in a [Predicted Hook](https://wiki.facepunch.com/gmod/~search:%3Cpredicted%3EYes). 
--- [https://wiki.facepunch.com/gmod/Player:LagCompensation]
--- @param lagCompensation boolean @ The state of the lag compensation, true to enable and false to disable.
--- @return void
function Player:LagCompensation(lagCompensation) end

--- (server) Returns the hitgroup where the player was last hit. 
--- [https://wiki.facepunch.com/gmod/Player:LastHitGroup]
--- @return number
function Player:LastHitGroup() end

--- (client/server) Shows "limit hit" notification in sandbox. 
--- [https://wiki.facepunch.com/gmod/Player:LimitHit]
--- @param type string @ Type of hit limit.
--- @return void
function Player:LimitHit(type) end

--- (client/server) Returns the direction a player is looking as a entity/local-oriented angle.Unlike [Entity:EyeAngles](https://wiki.facepunch.com/gmod/Entity:EyeAngles), this function does not include angles of the Player's [Entity:GetParent](https://wiki.facepunch.com/gmod/Entity:GetParent). 
--- [https://wiki.facepunch.com/gmod/Player:LocalEyeAngles]
--- @return Angle
function Player:LocalEyeAngles() end

--- (server) Stops a player from using any inputs, such as moving, turning, or attacking. Key binds are still called. Similar to [Player:Freeze](https://wiki.facepunch.com/gmod/Player:Freeze) but the player takes no damage.Adds the [FL_FROZEN](https://wiki.facepunch.com/gmod/Enums/FL) and [FL_GODMODE](https://wiki.facepunch.com/gmod/Enums/FL) flags to the player. 
--- [https://wiki.facepunch.com/gmod/Player:Lock]
--- @return void
function Player:Lock() end

--- (client/server) Returns the position of a Kinect bone. 
--- [https://wiki.facepunch.com/gmod/Player:MotionSensorPos]
--- @param bone number @ Bone to get the position of. Must be from 0 to 19.
--- @return Vector
function Player:MotionSensorPos(bone) end

--- (client/server) Returns the players name. Identical to [Player:Nick](https://wiki.facepunch.com/gmod/Player:Nick) and [Player:GetName](https://wiki.facepunch.com/gmod/Player:GetName). 
--- [https://wiki.facepunch.com/gmod/Player:Name]
--- @return string
function Player:Name() end

--- (client/server) Returns the player's nickname. 
--- [https://wiki.facepunch.com/gmod/Player:Nick]
--- @return string
function Player:Nick() end

--- (server) Returns the 64-bit SteamID aka CommunityID of the Steam Account that owns the Garry's Mod license this player is using. This is useful for detecting players using Steam Family Sharing.If player is not using Steam Family Sharing, this will return the player's actual SteamID64(). 
--- [https://wiki.facepunch.com/gmod/Player:OwnerSteamID64]
--- @return string
function Player:OwnerSteamID64() end

--- (client/server) Returns the packet loss of the client. It is not networked so it only returns 0 when run clientside. 
--- [https://wiki.facepunch.com/gmod/Player:PacketLoss]
--- @return number
function Player:PacketLoss() end

--- (client/server) Unfreezes the props player is looking at. This is essentially the same as pressing reload with the physics gun, including double press for unfreeze all. 
--- [https://wiki.facepunch.com/gmod/Player:PhysgunUnfreeze]
--- @return number
function Player:PhysgunUnfreeze() end

--- (server) This makes the player hold ( same as pressing  on a small prop ) the provided entity. 
--- [https://wiki.facepunch.com/gmod/Player:PickupObject]
--- @param entity Entity @ Entity to pick up.
--- @return void
function Player:PickupObject(entity) end

--- (server) Forces the player to pickup an existing weapon entity. The player will not pick up the weapon if they already own a weapon of given type, or if the player could not normally have this weapon in their inventory.This function **will** bypass [GM:PlayerCanPickupWeapon](https://wiki.facepunch.com/gmod/GM:PlayerCanPickupWeapon). 
--- [https://wiki.facepunch.com/gmod/Player:PickupWeapon]
--- @param wep Weapon @ The weapon to try to pick up.
--- @param ammoOnly boolean @ If set to true, the player will only attempt to pick up the ammo from the weapon. The weapon will not be picked up even if the player doesn't have a weapon of this type, and the weapon will be removed if the player picks up any ammo from it.
--- @return boolean
function Player:PickupWeapon(wep, ammoOnly) end

--- (client/server) Returns the player's ping to server. 
--- [https://wiki.facepunch.com/gmod/Player:Ping]
--- @return number
function Player:Ping() end

--- (server) Plays the correct step sound according to what the player is staying on. 
--- [https://wiki.facepunch.com/gmod/Player:PlayStepSound]
--- @param volume number @ Volume for the sound, in range from 0 to 1
--- @return void
function Player:PlayStepSound(volume) end

--- (client/server) Displays a message either in their chat, console, or center of the screen. See also [PrintMessage](https://wiki.facepunch.com/gmod/Global.PrintMessage). 
--- [https://wiki.facepunch.com/gmod/Player:PrintMessage]
--- @param type number @ Which type of message should be sent to the player ([HUD](https://wiki.facepunch.com/gmod/Enums/HUD)).
--- @param message string @ Message to be sent to the player.
--- @return void
function Player:PrintMessage(type, message) end

--- (server) Removes all ammo from a certain player 
--- [https://wiki.facepunch.com/gmod/Player:RemoveAllAmmo]
--- @return void
function Player:RemoveAllAmmo() end

--- (server) Removes all weapons and ammo from the player. 
--- [https://wiki.facepunch.com/gmod/Player:RemoveAllItems]
--- @return void
function Player:RemoveAllItems() end

--- (client/server) Removes the amount of the specified ammo from the player. 
--- [https://wiki.facepunch.com/gmod/Player:RemoveAmmo]
--- @param ammoCount number @ The amount of ammunition to remove.
--- @param ammoName string @ The name of the ammunition to remove from. This can also be a [number](https://wiki.facepunch.com/gmod/number) ammoID.
--- @return void
function Player:RemoveAmmo(ammoCount, ammoName) end

--- (client/server) Removes a **P**layer **Data** key-value pair from the SQL database. (sv.db when called on server,  cl.db when called on client)Internally uses the [sql](https://wiki.facepunch.com/gmod/sql). 
--- [https://wiki.facepunch.com/gmod/Player:RemovePData]
--- @param key string @ Key to remove
--- @return boolean
function Player:RemovePData(key) end

--- (server) Strips the player's suit item. 
--- [https://wiki.facepunch.com/gmod/Player:RemoveSuit]
--- @return void
function Player:RemoveSuit() end

--- (client/server) Resets both normal and duck hulls to their default values. 
--- [https://wiki.facepunch.com/gmod/Player:ResetHull]
--- @return void
function Player:ResetHull() end

--- (server) Forces the player to say whatever the first argument is. Works on bots too. 
--- [https://wiki.facepunch.com/gmod/Player:Say]
--- @param text string @ The text to force the player to say.
--- @param teamOnly boolean @ Whether to send this message to our own team only.
--- @return void
function Player:Say(text, teamOnly) end

--- (client/server) Fades the screen 
--- [https://wiki.facepunch.com/gmod/Player:ScreenFade]
--- @param flags number @ Fade flags defined with [SCREENFADE](https://wiki.facepunch.com/gmod/Enums/SCREENFADE).
--- @param clr number @ The color of the screenfade
--- @param fadeTime number @ Fade(in/out) effect transition time ( From no fade to full fade and vice versa ).This is limited to 7 bits integer part and 9 bits fractional part.
--- @param fadeHold number @ Fade effect hold time.This is limited to 7 bits integer part and 9 bits fractional part.
--- @return void
function Player:ScreenFade(flags, clr, fadeTime, fadeHold) end

--- (server) Sets the active weapon of the player by its class name. 
--- [https://wiki.facepunch.com/gmod/Player:SelectWeapon]
--- @param className string @ The class name of the weapon to switch to.If the player doesn't have the specified weapon, nothing will happen. You can use [Player:Give](https://wiki.facepunch.com/gmod/Player:Give) to give the weapon first.
--- @return void
function Player:SelectWeapon(className) end

--- (server) Sends a hint to a player. 
--- [https://wiki.facepunch.com/gmod/Player:SendHint]
--- @param name string @ Name/class/index of the hint. The text of the hint will contain this value. ( "#Hint_" .. name ) An example is `PhysgunFreeze`.
--- @param delay number @ Delay in seconds before showing the hint
--- @return void
function Player:SendHint(name, delay) end

--- (server) Executes a simple Lua string on the player. 
--- [https://wiki.facepunch.com/gmod/Player:SendLua]
--- @param script string @ The script to execute.
--- @return void
function Player:SendLua(script) end

--- (server) Sets the player's active weapon. You should use [CUserCmd:SelectWeapon](https://wiki.facepunch.com/gmod/CUserCmd:SelectWeapon) or [Player:SelectWeapon](https://wiki.facepunch.com/gmod/Player:SelectWeapon), instead in most cases.This function will not trigger the weapon switch events or associated equip animations. It will bypass  [GM:PlayerSwitchWeapon](https://wiki.facepunch.com/gmod/GM:PlayerSwitchWeapon) and the currently active weapon's [WEAPON:Holster](https://wiki.facepunch.com/gmod/WEAPON:Holster) return value. 
--- [https://wiki.facepunch.com/gmod/Player:SetActiveWeapon]
--- @param weapon Weapon @ The weapon to equip.
--- @return void
function Player:SetActiveWeapon(weapon) end

--- (server) Sets the player's activity. 
--- [https://wiki.facepunch.com/gmod/Player:SetActivity]
--- @param act number @ The new activity to set. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return void
function Player:SetActivity(act) end

--- (client/server) Set if the players' model is allowed to rotate around the pitch and roll axis. 
--- [https://wiki.facepunch.com/gmod/Player:SetAllowFullRotation]
--- @param Allowed boolean @ Allowed to rotate
--- @return void
function Player:SetAllowFullRotation(Allowed) end

--- (server) Allows player to use his weapons in a vehicle. You need to call this before entering a vehicle. 
--- [https://wiki.facepunch.com/gmod/Player:SetAllowWeaponsInVehicle]
--- @param allow boolean @ Show we allow player to use his weapons in a vehicle or not.
--- @return void
function Player:SetAllowWeaponsInVehicle(allow) end

--- (client/server) Sets the amount of the specified ammo for the player. 
--- [https://wiki.facepunch.com/gmod/Player:SetAmmo]
--- @param ammoCount number @ The amount of ammunition to set.
--- @param ammoType any @ The ammunition type. Can be either [number](https://wiki.facepunch.com/gmod/number) ammo ID or [string](https://wiki.facepunch.com/gmod/string) ammo name.
--- @return void
function Player:SetAmmo(ammoCount, ammoType) end

--- (server) Sets the player armor to the argument. 
--- [https://wiki.facepunch.com/gmod/Player:SetArmor]
--- @param Amount number @ The amount that the player armor is going to be set to.
--- @return void
function Player:SetArmor(Amount) end

--- (client/server) Pushes the player away from another player whenever it's inside the other players bounding box. 
--- [https://wiki.facepunch.com/gmod/Player:SetAvoidPlayers]
--- @param avoidPlayers boolean @ Avoid or not avoid.
--- @return void
function Player:SetAvoidPlayers(avoidPlayers) end

--- (client/server) Set if the player should be allowed to walk using the (default) alt key. 
--- [https://wiki.facepunch.com/gmod/Player:SetCanWalk]
--- @param abletowalk boolean @ True allows the player to walk.
--- @return void
function Player:SetCanWalk(abletowalk) end

--- (client/server) Sets whether the player can use the HL2 suit zoom ("+zoom" bind) or not. 
--- [https://wiki.facepunch.com/gmod/Player:SetCanZoom]
--- @param canZoom boolean @ Whether to make the player able or unable to zoom.
--- @return void
function Player:SetCanZoom(canZoom) end

--- (client/server) Sets the player's class id. 
--- [https://wiki.facepunch.com/gmod/Player:SetClassID]
--- @param classID number @ The class id the player is being set with.
--- @return void
function Player:SetClassID(classID) end

--- (client/server) Sets the crouched walk speed multiplier.Doesn't work for values above 1.See also [Player:SetWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetWalkSpeed) and [Player:GetCrouchedWalkSpeed](https://wiki.facepunch.com/gmod/Player:GetCrouchedWalkSpeed). 
--- [https://wiki.facepunch.com/gmod/Player:SetCrouchedWalkSpeed]
--- @param speed number @ The walk speed multiplier that crouch speed should be.
--- @return void
function Player:SetCrouchedWalkSpeed(speed) end

--- (client/server) Sets the **actual** view offset which equals the difference between the players actual position and their view when standing.Do not confuse with [Player:SetViewOffset](https://wiki.facepunch.com/gmod/Player:SetViewOffset) and [Player:SetViewOffsetDucked](https://wiki.facepunch.com/gmod/Player:SetViewOffsetDucked) 
--- [https://wiki.facepunch.com/gmod/Player:SetCurrentViewOffset]
--- @param viewOffset Vector @ The new view offset.
--- @return void
function Player:SetCurrentViewOffset(viewOffset) end

--- (server) Sets a player's death count 
--- [https://wiki.facepunch.com/gmod/Player:SetDeaths]
--- @param deathcount number @ Number of deaths (positive or negative)
--- @return void
function Player:SetDeaths(deathcount) end

--- (client/server) Sets the driving entity and driving mode.Use [drive.PlayerStartDriving](https://wiki.facepunch.com/gmod/drive.PlayerStartDriving) instead, see [Entity Driving](https://wiki.facepunch.com/gmod/Entity%20Driving). 
--- [https://wiki.facepunch.com/gmod/Player:SetDrivingEntity]
--- @param drivingEntity Entity @ The entity the player should drive.
--- @param drivingMode number @ The driving mode index.
--- @return void
function Player:SetDrivingEntity(drivingEntity, drivingMode) end

--- (client/server) Applies the specified sound filter to the player. 
--- [https://wiki.facepunch.com/gmod/Player:SetDSP]
--- @param soundFilter number @ The index of the sound filter to apply.Pick from the [list of DSP's](https://developer.valvesoftware.com/wiki/Dsp_presets).
--- @param fastReset boolean @ If set to true the sound filter will be removed faster.
--- @return void
function Player:SetDSP(soundFilter, fastReset) end

--- (client/server) Sets how quickly a player ducks. 
--- [https://wiki.facepunch.com/gmod/Player:SetDuckSpeed]
--- @param duckSpeed number @ How quickly the player will duck.
--- @return void
function Player:SetDuckSpeed(duckSpeed) end

--- (client/server) Sets the local angle of the player's view (may rotate body too if angular difference is large) 
--- [https://wiki.facepunch.com/gmod/Player:SetEyeAngles]
--- @param angle Angle @ Angle to set the view to
--- @return void
function Player:SetEyeAngles(angle) end

--- (client/server) Set a player's FOV (Field Of View) over a certain amount of time. 
--- [https://wiki.facepunch.com/gmod/Player:SetFOV]
--- @param fov number @ the angle of perception (FOV). Set to 0 to return to default user FOV. ( Which is ranging from 75 to 90, depending on user settings )
--- @param time number @ the time it takes to transition to the FOV expressed in a floating point.
--- @param requester Entity @ The requester or "owner" of the zoom event.
--- @return void
function Player:SetFOV(fov, time, requester) end

--- (server) Sets a player's frags (kills) 
--- [https://wiki.facepunch.com/gmod/Player:SetFrags]
--- @param fragcount number @ Number of frags (positive or negative)
--- @return void
function Player:SetFrags(fragcount) end

--- (client/server) Sets the hands entity of a player.The hands entity is an entity introduced in Garry's Mod 13 and it's used to show the player's hands attached to the viewmodel.This is similar to the approach used in L4D and CS:GO, for more information on how to implement this system in your gamemode visit [Using Viewmodel Hands](https://wiki.facepunch.com/gmod/Using%20Viewmodel%20Hands). 
--- [https://wiki.facepunch.com/gmod/Player:SetHands]
--- @param hands Entity @ The hands entity to set
--- @return void
function Player:SetHands(hands) end

--- (client/server) Sets the widget that is currently hovered by the player's mouse. 
--- [https://wiki.facepunch.com/gmod/Player:SetHoveredWidget]
--- @param widget Entity @ The widget entity that the player is hovering.
--- @return void
function Player:SetHoveredWidget(widget) end

--- (client/server) Sets the mins and maxs of the AABB of the players collision.See [Player:SetHullDuck](https://wiki.facepunch.com/gmod/Player:SetHullDuck) for the hull while crouching/ducking. 
--- [https://wiki.facepunch.com/gmod/Player:SetHull]
--- @param hullMins Vector @ The min coordinates of the hull.
--- @param hullMaxs Vector @ The max coordinates of the hull.
--- @return void
function Player:SetHull(hullMins, hullMaxs) end

--- (client/server) Sets the mins and maxs of the AABB of the players collision when ducked.See [Player:SetHull](https://wiki.facepunch.com/gmod/Player:SetHull) for setting the hull while standing. 
--- [https://wiki.facepunch.com/gmod/Player:SetHullDuck]
--- @param hullMins Vector @ The min coordinates of the hull.
--- @param hullMaxs Vector @ The max coordinates of the hull.
--- @return void
function Player:SetHullDuck(hullMins, hullMaxs) end

--- (client/server) Sets the jump power, eg. the velocity the player will applied to when he jumps. 
--- [https://wiki.facepunch.com/gmod/Player:SetJumpPower]
--- @param jumpPower number @ The new jump velocity.
--- @return void
function Player:SetJumpPower(jumpPower) end

--- (client/server) Sets the player's ladder climbing speed.See [Player:SetWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetWalkSpeed) for normal walking speed, [Player:SetRunSpeed](https://wiki.facepunch.com/gmod/Player:SetRunSpeed) for sprinting speed and [Player:SetSlowWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetSlowWalkSpeed) for slow walking speed. 
--- [https://wiki.facepunch.com/gmod/Player:SetLadderClimbSpeed]
--- @param speed number @ The ladder climbing speed.
--- @return void
function Player:SetLadderClimbSpeed(speed) end

--- (server) Slows down the player movement simulation by the timescale, this is used internally in the HL2 weapon stripping sequence.It achieves such behavior by multiplying the [FrameTime](https://wiki.facepunch.com/gmod/Global.FrameTime) by the specified timescale at the start of the movement simulation and then restoring it afterwards. 
--- [https://wiki.facepunch.com/gmod/Player:SetLaggedMovementValue]
--- @param timescale number @ The timescale multiplier.
--- @return void
function Player:SetLaggedMovementValue(timescale) end

--- (server) Sets the hitgroup where the player was last hit. 
--- [https://wiki.facepunch.com/gmod/Player:SetLastHitGroup]
--- @param hitgroup number @ The hitgroup to set as the "last hit", see [HITGROUP](https://wiki.facepunch.com/gmod/Enums/HITGROUP).
--- @return void
function Player:SetLastHitGroup(hitgroup) end

--- (server) Sets the maximum amount of armor the player should have. This affects default built-in armor pickups, but not [Player:SetArmor](https://wiki.facepunch.com/gmod/Player:SetArmor). 
--- [https://wiki.facepunch.com/gmod/Player:SetMaxArmor]
--- @param maxarmor number @ The new max armor value.
--- @return void
function Player:SetMaxArmor(maxarmor) end

--- (client/server) Sets the maximum speed which the player can move at. 
--- [https://wiki.facepunch.com/gmod/Player:SetMaxSpeed]
--- @param walkSpeed number @ The maximum speed.
--- @return void
function Player:SetMaxSpeed(walkSpeed) end

--- (client) Sets if the player should be muted locally. 
--- [https://wiki.facepunch.com/gmod/Player:SetMuted]
--- @param mute boolean @ Mute or unmute.
--- @return void
function Player:SetMuted(mute) end

--- (server) Sets whenever the player should not collide with their teammates. 
--- [https://wiki.facepunch.com/gmod/Player:SetNoCollideWithTeammates]
--- @param shouldNotCollide boolean @ True to disable, false to enable collision.
--- @return void
function Player:SetNoCollideWithTeammates(shouldNotCollide) end

--- (server) Sets the players visibility towards NPCs.Internally this toggles the [FL_NOTARGET](https://wiki.facepunch.com/gmod/Enums/FL) flag, which you can manually test for using [Entity:IsFlagSet](https://wiki.facepunch.com/gmod/Entity:IsFlagSet) 
--- [https://wiki.facepunch.com/gmod/Player:SetNoTarget]
--- @param visibility boolean @ The visibility.
--- @return void
function Player:SetNoTarget(visibility) end

--- (client/server) Sets the players observer mode. You must start the spectating first with [Player:Spectate](https://wiki.facepunch.com/gmod/Player:Spectate). 
--- [https://wiki.facepunch.com/gmod/Player:SetObserverMode]
--- @param mode number @ Spectator mode using [OBS_MODE](https://wiki.facepunch.com/gmod/Enums/OBS_MODE).
--- @return void
function Player:SetObserverMode(mode) end

--- (client/server) Writes a **P**layer **Data** key-value pair to the SQL database. (sv.db when called on server,  cl.db when called on client)Internally uses the [sql](https://wiki.facepunch.com/gmod/sql). 
--- [https://wiki.facepunch.com/gmod/Player:SetPData]
--- @param key string @ Name of the PData key
--- @param value any @ Value to write to the key (**must** be an SQL valid data type, such as a string or integer)
--- @return boolean
function Player:SetPData(key, value) end

--- (client/server) Sets the player model's color. The part of the model that is colored is determined by the model itself, and is different for each model. 
--- [https://wiki.facepunch.com/gmod/Player:SetPlayerColor]
--- @param Color Vector @ This is the color to be set. The format is Vector(r, g, b), and each color should be between 0 and 1.
--- @return void
function Player:SetPlayerColor(Color) end

--- (client/server) Sets the widget that is currently in use by the player's mouse.Having a pressed widget stops the player from firing his weapon to allow input to be passed onto the widget. 
--- [https://wiki.facepunch.com/gmod/Player:SetPressedWidget]
--- @param pressedWidget Entity @ The widget the player is currently using.
--- @return void
function Player:SetPressedWidget(pressedWidget) end

--- (client/server) Sets the render angles of a player. 
--- [https://wiki.facepunch.com/gmod/Player:SetRenderAngles]
--- @param ang Angle @ The new render angles to set
--- @return void
function Player:SetRenderAngles(ang) end

--- (client/server) Sets the player's sprint speed.See also [Player:GetRunSpeed](https://wiki.facepunch.com/gmod/Player:GetRunSpeed), [Player:SetWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetWalkSpeed) and [Player:SetMaxSpeed](https://wiki.facepunch.com/gmod/Player:SetMaxSpeed). 
--- [https://wiki.facepunch.com/gmod/Player:SetRunSpeed]
--- @param runSpeed number @ The new sprint speed when sv_friction is below 10. Higher sv_friction values will result in slower speed.Has to be 7 or above or the player won't be able to move.
--- @return void
function Player:SetRunSpeed(runSpeed) end

--- (client/server) Sets the player's slow walking speed, which is activated via  keybind.See [Player:SetWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetWalkSpeed) for normal walking speed, [Player:SetRunSpeed](https://wiki.facepunch.com/gmod/Player:SetRunSpeed) for sprinting speed and [Player:SetLadderClimbSpeed](https://wiki.facepunch.com/gmod/Player:SetLadderClimbSpeed) for ladder climb speed. 
--- [https://wiki.facepunch.com/gmod/Player:SetSlowWalkSpeed]
--- @param speed number @ The new slow walking speed.
--- @return void
function Player:SetSlowWalkSpeed(speed) end

--- (client/server) Sets the maximum height a player can step onto without jumping. 
--- [https://wiki.facepunch.com/gmod/Player:SetStepSize]
--- @param stepHeight number @ The new maximum height the player can step onto without jumping
--- @return void
function Player:SetStepSize(stepHeight) end

--- (client/server) Sets the player's HEV suit power. 
--- [https://wiki.facepunch.com/gmod/Player:SetSuitPower]
--- @param power number @ The new suit power.
--- @return void
function Player:SetSuitPower(power) end

--- (client/server) Sets whenever to suppress the pickup notification for the player. 
--- [https://wiki.facepunch.com/gmod/Player:SetSuppressPickupNotices]
--- @param doSuppress boolean @ Whenever to suppress the notice or not.
--- @return void
function Player:SetSuppressPickupNotices(doSuppress) end

--- (server) Sets the player to the chosen team. 
--- [https://wiki.facepunch.com/gmod/Player:SetTeam]
--- @param Team number @ The team that the player is being set to.
--- @return void
function Player:SetTeam(Team) end

--- (client/server) Sets how quickly a player un-ducks 
--- [https://wiki.facepunch.com/gmod/Player:SetUnDuckSpeed]
--- @param UnDuckSpeed number @ How quickly the player will un-duck
--- @return void
function Player:SetUnDuckSpeed(UnDuckSpeed) end

--- (server) Sets up the players view model hands. Calls [GM:PlayerSetHandsModel](https://wiki.facepunch.com/gmod/GM:PlayerSetHandsModel) to set the model of the hands. 
--- [https://wiki.facepunch.com/gmod/Player:SetupHands]
--- @param ent Entity @ If the player is spectating an entity, this should be the entity the player is spectating, so we can use its hands model instead.
--- @return void
function Player:SetupHands(ent) end

--- (server) Sets the usergroup of the player. 
--- [https://wiki.facepunch.com/gmod/Player:SetUserGroup]
--- @param groupName string @ The user group of the player.
--- @return void
function Player:SetUserGroup(groupName) end

--- (server) Attaches the players view to the position and angles of the specified entity. 
--- [https://wiki.facepunch.com/gmod/Player:SetViewEntity]
--- @param viewEntity Entity @ The entity to attach the player view to.
--- @return void
function Player:SetViewEntity(viewEntity) end

--- (client/server) Sets the **desired** view offset which equals the difference between the players actual position and their view when standing.If you want to set **actual** view offset, use [Player:SetCurrentViewOffset](https://wiki.facepunch.com/gmod/Player:SetCurrentViewOffset)See also [Player:SetViewOffsetDucked](https://wiki.facepunch.com/gmod/Player:SetViewOffsetDucked) for **desired** view offset when crouching. 
--- [https://wiki.facepunch.com/gmod/Player:SetViewOffset]
--- @param viewOffset Vector @ The new desired view offset when standing.
--- @return void
function Player:SetViewOffset(viewOffset) end

--- (client/server) Sets the **desired** view offset which equals the difference between the players actual position and their view when crouching.If you want to set **actual** view offset, use [Player:SetCurrentViewOffset](https://wiki.facepunch.com/gmod/Player:SetCurrentViewOffset)See also [Player:SetViewOffset](https://wiki.facepunch.com/gmod/Player:SetViewOffset) for **desired** view offset when standing. 
--- [https://wiki.facepunch.com/gmod/Player:SetViewOffsetDucked]
--- @param viewOffset Vector @ The new desired view offset when crouching.
--- @return void
function Player:SetViewOffsetDucked(viewOffset) end

--- (client/server) Sets client's view punch angle, but not the velocity. See [Player:ViewPunch](https://wiki.facepunch.com/gmod/Player:ViewPunch) 
--- [https://wiki.facepunch.com/gmod/Player:SetViewPunchAngles]
--- @param punchAngle Angle @ The angle to set.
--- @return void
function Player:SetViewPunchAngles(punchAngle) end

--- (client/server) Sets client's view punch velocity. See [Player:ViewPunch](https://wiki.facepunch.com/gmod/Player:ViewPunch) and [Player:SetViewPunchAngles](https://wiki.facepunch.com/gmod/Player:SetViewPunchAngles) 
--- [https://wiki.facepunch.com/gmod/Player:SetViewPunchVelocity]
--- @param punchVel Angle @ The angle velocity to set.
--- @return void
function Player:SetViewPunchVelocity(punchVel) end

--- (client) Sets the voice volume scale for given player on client. This value will persist from server to server, but will be reset when the game is shut down. 
--- [https://wiki.facepunch.com/gmod/Player:SetVoiceVolumeScale]
--- @param number number @ The voice volume scale, where `0` is 0% and `1` is 100%.
--- @return void
function Player:SetVoiceVolumeScale(number) end

--- (client/server) Sets the player's normal walking speed. Not sprinting, not slow walking .See also [Player:SetSlowWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetSlowWalkSpeed), [Player:GetWalkSpeed](https://wiki.facepunch.com/gmod/Player:GetWalkSpeed), [Player:SetCrouchedWalkSpeed](https://wiki.facepunch.com/gmod/Player:SetCrouchedWalkSpeed), [Player:SetMaxSpeed](https://wiki.facepunch.com/gmod/Player:SetMaxSpeed) and [Player:SetRunSpeed](https://wiki.facepunch.com/gmod/Player:SetRunSpeed). 
--- [https://wiki.facepunch.com/gmod/Player:SetWalkSpeed]
--- @param walkSpeed number @ The new walk speed when sv_friction is below 10. Higher sv_friction values will result in slower speed.Has to be 7 or above or the player won't be able to move.
--- @return void
function Player:SetWalkSpeed(walkSpeed) end

--- (client/server) Sets the player weapon's color. The part of the model that is colored is determined by the model itself, and is different for each model. 
--- [https://wiki.facepunch.com/gmod/Player:SetWeaponColor]
--- @param Color Vector @ This is the color to be set. The format is Vector(r,g,b), and each color should be between 0 and 1.
--- @return void
function Player:SetWeaponColor(Color) end

--- (client) Returns whether the player's player model will be drawn at the time the function is called. 
--- [https://wiki.facepunch.com/gmod/Player:ShouldDrawLocalPlayer]
--- @return boolean
function Player:ShouldDrawLocalPlayer() end

--- (server) Sets whether the player's current weapon should drop on death. 
--- [https://wiki.facepunch.com/gmod/Player:ShouldDropWeapon]
--- @param drop boolean @ Whether to drop the player's current weapon or not
--- @return void
function Player:ShouldDropWeapon(drop) end

--- (client) Opens the player steam profile page in the steam overlay browser. 
--- [https://wiki.facepunch.com/gmod/Player:ShowProfile]
--- @return void
function Player:ShowProfile() end

--- (server) Signals the entity that it was dropped by the gravity gun. 
--- [https://wiki.facepunch.com/gmod/Player:SimulateGravGunDrop]
--- @param ent Entity @ Entity that was dropped.
--- @return void
function Player:SimulateGravGunDrop(ent) end

--- (server) Signals the entity that it was picked up by the gravity gun. This call is only required if you want to simulate the situation of picking up objects. 
--- [https://wiki.facepunch.com/gmod/Player:SimulateGravGunPickup]
--- @param ent Entity @ The entity picked up
--- @return void
function Player:SimulateGravGunPickup(ent) end

--- (server) Starts spectate mode for given player. This will also affect the players movetype in some cases. 
--- [https://wiki.facepunch.com/gmod/Player:Spectate]
--- @param mode number @ Spectate mode, see [OBS_MODE](https://wiki.facepunch.com/gmod/Enums/OBS_MODE).
--- @return void
function Player:Spectate(mode) end

--- (server) Makes the player spectate the entity.To get the applied spectated entity, use [Player:GetObserverTarget](https://wiki.facepunch.com/gmod/Player:GetObserverTarget). 
--- [https://wiki.facepunch.com/gmod/Player:SpectateEntity]
--- @param entity Entity @ Entity to spectate.
--- @return void
function Player:SpectateEntity(entity) end

--- (server) Makes a player spray their decal. 
--- [https://wiki.facepunch.com/gmod/Player:SprayDecal]
--- @param sprayOrigin Vector @ The location to spray from
--- @param sprayEndPos Vector @ The location to spray to
--- @return void
function Player:SprayDecal(sprayOrigin, sprayEndPos) end

--- (server) Disables the sprint on the player. 
--- [https://wiki.facepunch.com/gmod/Player:SprintDisable]
--- @return void
function Player:SprintDisable() end

--- (server) Enables the sprint on the player. 
--- [https://wiki.facepunch.com/gmod/Player:SprintEnable]
--- @return void
function Player:SprintEnable() end

--- (client/server) Doesn't appear to do anything. 
--- [https://wiki.facepunch.com/gmod/Player:StartSprinting]
--- @return void
function Player:StartSprinting() end

--- (client/server) When used in a [GM:SetupMove](https://wiki.facepunch.com/gmod/GM:SetupMove) hook, this function will force the player to walk, as well as preventing the player from sprinting. 
--- [https://wiki.facepunch.com/gmod/Player:StartWalking]
--- @return void
function Player:StartWalking() end

--- (client/server) Returns the player's SteamID.For Bots this will return `BOT` on the server and on the client it returns `NULL`.See [Player:AccountID](https://wiki.facepunch.com/gmod/Player:AccountID) for a shorter version of the SteamID and [Player:SteamID64](https://wiki.facepunch.com/gmod/Player:SteamID64) for the Community/Profile formatted SteamID. 
--- [https://wiki.facepunch.com/gmod/Player:SteamID]
--- @return string
function Player:SteamID() end

--- (client/server) Returns the player's 64-bit SteamID aka CommunityID.See [Player:AccountID](https://wiki.facepunch.com/gmod/Player:AccountID) for a shorter version of the SteamID and [Player:SteamID](https://wiki.facepunch.com/gmod/Player:SteamID) for the normal version of the SteamID. 
--- [https://wiki.facepunch.com/gmod/Player:SteamID64]
--- @return string
function Player:SteamID64() end

--- (client/server) When used in a [GM:SetupMove](https://wiki.facepunch.com/gmod/GM:SetupMove) hook, this function will prevent the player from sprinting.When +walk is engaged, the player will still be able to sprint to half speed (normal run speed) as opposed to full sprint speed without this function. 
--- [https://wiki.facepunch.com/gmod/Player:StopSprinting]
--- @return void
function Player:StopSprinting() end

--- (client/server) When used in a [GM:SetupMove](https://wiki.facepunch.com/gmod/GM:SetupMove) hook, this function behaves unexpectedly by preventing the player from sprinting similar to [Player:StopSprinting](https://wiki.facepunch.com/gmod/Player:StopSprinting). 
--- [https://wiki.facepunch.com/gmod/Player:StopWalking]
--- @return void
function Player:StopWalking() end

--- (server) Turns off the zoom mode of the player. (+zoom console command)Basically equivalent of entering "-zoom" into player's console. 
--- [https://wiki.facepunch.com/gmod/Player:StopZooming]
--- @return void
function Player:StopZooming() end

--- (server) Removes all ammo from the player. 
--- [https://wiki.facepunch.com/gmod/Player:StripAmmo]
--- @return void
function Player:StripAmmo() end

--- (server) Removes the specified weapon class from a certain player 
--- [https://wiki.facepunch.com/gmod/Player:StripWeapon]
--- @param weapon string @ The weapon class to remove
--- @return void
function Player:StripWeapon(weapon) end

--- (server) Removes all weapons from a certain player 
--- [https://wiki.facepunch.com/gmod/Player:StripWeapons]
--- @return void
function Player:StripWeapons() end

--- (server) Prevents a hint from showing up. 
--- [https://wiki.facepunch.com/gmod/Player:SuppressHint]
--- @param name string @ Hint name/class/index to prevent from showing up
--- @return void
function Player:SuppressHint(name) end

--- (server) Attempts to switch the player weapon to the one specified in the "cl_defaultweapon" convar, if the player does not own the specified weapon nothing will happen.If you want to switch to a specific weapon, use: [Player:SetActiveWeapon](https://wiki.facepunch.com/gmod/Player:SetActiveWeapon) 
--- [https://wiki.facepunch.com/gmod/Player:SwitchToDefaultWeapon]
--- @return void
function Player:SwitchToDefaultWeapon() end

--- (client/server) Returns the player's team ID.Returns 0 clientside when the game is not fully loaded. 
--- [https://wiki.facepunch.com/gmod/Player:Team]
--- @return number
function Player:Team() end

--- (server) Returns the time in seconds since the player connected. 
--- [https://wiki.facepunch.com/gmod/Player:TimeConnected]
--- @return number
function Player:TimeConnected() end

--- (server) Performs a trace hull and applies damage to the entities hit, returns the first entity hit. 
--- [https://wiki.facepunch.com/gmod/Player:TraceHullAttack]
--- @param startPos Vector @ The start position of the hull trace.
--- @param endPos Vector @ The end position of the hull trace.
--- @param mins Vector @ The minimum coordinates of the hull.
--- @param maxs Vector @ The maximum coordinates of the hull.
--- @param damage number @ The damage to be applied.
--- @param damageFlags number @ Bitflag specifying the damage type, see [DMG](https://wiki.facepunch.com/gmod/Enums/DMG).
--- @param damageForce number @ The force to be applied to the hit object.
--- @param damageAllNPCs boolean @ Whether to apply damage to all hit NPCs or not.
--- @return Entity
function Player:TraceHullAttack(startPos, endPos, mins, maxs, damage, damageFlags, damageForce, damageAllNPCs) end

--- (client/server) Translates [ACT](https://wiki.facepunch.com/gmod/Enums/ACT) according to the holdtype of players currently held weapon. 
--- [https://wiki.facepunch.com/gmod/Player:TranslateWeaponActivity]
--- @param act number @ The initial [ACT](https://wiki.facepunch.com/gmod/Enums/ACT)
--- @return number
function Player:TranslateWeaponActivity(act) end

--- (client/server) Unfreezes all objects the player has frozen with their Physics Gun. Same as double pressing R while holding Physics Gun. 
--- [https://wiki.facepunch.com/gmod/Player:UnfreezePhysicsObjects]
--- @return void
function Player:UnfreezePhysicsObjects() end

--- (client/server) Returns a 32 bit integer that remains constant for a player across joins/leaves and across different servers. This can be used when a string is inappropriate - e.g. in a database primary key. 
--- [https://wiki.facepunch.com/gmod/Player:UniqueID]
--- @return number
function Player:UniqueID() end

--- (client/server) Returns a table that will stay allocated for the specific player between connects until the server shuts down. Note, that this table is not synchronized between client and server. 
--- [https://wiki.facepunch.com/gmod/Player:UniqueIDTable]
--- @param key any @ Unique table key.
--- @return table
function Player:UniqueIDTable(key) end

--- (server) Unlocks the player movement if locked previously.Will disable godmode for the player if locked previously. 
--- [https://wiki.facepunch.com/gmod/Player:UnLock]
--- @return void
function Player:UnLock() end

--- (server) Stops the player from spectating another entity. 
--- [https://wiki.facepunch.com/gmod/Player:UnSpectate]
--- @return void
function Player:UnSpectate() end

--- (client/server) Returns the player's ID.You can use [Player](https://wiki.facepunch.com/gmod/Global.Player)() to get the player by their ID. 
--- [https://wiki.facepunch.com/gmod/Player:UserID]
--- @return number
function Player:UserID() end

--- (client/server) Simulates a push on the client's screen. This **adds** view punch velocity, and does not touch the current view punch angle, for which you can use [Player:SetViewPunchAngles](https://wiki.facepunch.com/gmod/Player:SetViewPunchAngles). 
--- [https://wiki.facepunch.com/gmod/Player:ViewPunch]
--- @param PunchAngle Angle @ The angle in which to push the player's screen.
--- @return void
function Player:ViewPunch(PunchAngle) end

--- (client/server) Resets the player's view punch (and the view punch velocity, read more at [Player:ViewPunch](https://wiki.facepunch.com/gmod/Player:ViewPunch)) effect back to normal. 
--- [https://wiki.facepunch.com/gmod/Player:ViewPunchReset]
--- @param tolerance number @ Reset all ViewPunch below this threshold.
--- @return void
function Player:ViewPunchReset(tolerance) end

--- (client) Returns the players voice volume, how loud the player's voice communication currently is, as a normal number. Doesn't work on local player unless the voice_loopback convar is set to 1. 
--- [https://wiki.facepunch.com/gmod/Player:VoiceVolume]
--- @return number
function Player:VoiceVolume() end

