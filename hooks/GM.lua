--- @class GM
GM = {}

--- (server) Called when a map I/O event occurs.See also [Entity:Fire](https://wiki.facepunch.com/gmod/Entity:Fire) and [Entity:Input](https://wiki.facepunch.com/gmod/Entity:Input) for functions to fire Inputs on entities. 
--- [https://wiki.facepunch.com/gmod/GM:AcceptInput]
--- @param ent Entity @ Entity that receives the input
--- @param input string @ The input name. Is not guaranteed to be a valid input on the entity.
--- @param activator Entity @ Activator of the input
--- @param caller Entity @ Caller of the input
--- @param value any @ Data provided with the input. Will be either a [string](https://wiki.facepunch.com/gmod/string), a [number](https://wiki.facepunch.com/gmod/number), a [boolean](https://wiki.facepunch.com/gmod/boolean) or a [nil](https://wiki.facepunch.com/gmod/nil).
--- @return boolean
function GM:AcceptInput(ent, input, activator, caller, value) end

--- (client) Adds a death notice entry. 
--- [https://wiki.facepunch.com/gmod/GM:AddDeathNotice]
--- @param attacker string @ The name of the attacker
--- @param attackerTeam number @ The team of the attacker
--- @param inflictor string @ Class name of the entity inflicting the damage
--- @param victim string @ Name of the victim
--- @param victimTeam number @ Team of the victim
--- @return void
function GM:AddDeathNotice(attacker, attackerTeam, inflictor, victim, victimTeam) end

--- (client) Allows you to adjust the mouse sensitivity. 
--- [https://wiki.facepunch.com/gmod/GM:AdjustMouseSensitivity]
--- @param defaultSensitivity number @ The old sensitivityIn general it will be 0, which is equivalent to a sensitivity of 1.
--- @return number
function GM:AdjustMouseSensitivity(defaultSensitivity) end

--- (server) Called when a player tries to pick up something using the "use" key, return to override.This hook will not be called if `sv_playerpickupallowed` is set to 0.See [GM:GravGunPickupAllowed](https://wiki.facepunch.com/gmod/GM:GravGunPickupAllowed) for the Gravity Gun pickup variant.See [GM:PhysgunPickup](https://wiki.facepunch.com/gmod/GM:PhysgunPickup) for the Physics Gun pickup variant. 
--- [https://wiki.facepunch.com/gmod/GM:AllowPlayerPickup]
--- @param ply Player @ The player trying to pick up something.
--- @param ent Entity @ The Entity the player attempted to pick up.
--- @return boolean
function GM:AllowPlayerPickup(ply, ent) end

--- (client/server) This hook is used to calculate animations for a player. 
--- [https://wiki.facepunch.com/gmod/GM:CalcMainActivity]
--- @param ply Player @ The player to apply the animation.
--- @param vel Vector @ The velocity of the player.
--- @return number|number
function GM:CalcMainActivity(ply, vel) end

--- (client) Called from [GM:CalcView](https://wiki.facepunch.com/gmod/GM:CalcView) when player is in driving a vehicle.This hook may not be called in gamemodes that override [GM:CalcView](https://wiki.facepunch.com/gmod/GM:CalcView). 
--- [https://wiki.facepunch.com/gmod/GM:CalcVehicleView]
--- @param veh Vehicle @ The vehicle the player is driving
--- @param ply Player @ The vehicle driver
--- @param view table @ The view data containing players FOV, view position and angles, see [CamData](https://wiki.facepunch.com/gmod/Structures/CamData)
--- @return table
function GM:CalcVehicleView(veh, ply, view) end

--- (client) Allows override of the default view. 
--- [https://wiki.facepunch.com/gmod/GM:CalcView]
--- @param ply Player @ The local player.
--- @param origin Vector @ The player's view position.
--- @param angles Angle @ The player's view angles.
--- @param fov number @ Field of view.
--- @param znear number @ Distance to near clipping plane.
--- @param zfar number @ Distance to far clipping plane.
--- @return table
function GM:CalcView(ply, origin, angles, fov, znear, zfar) end

--- (client) Allows overriding the position and angle of the viewmodel. 
--- [https://wiki.facepunch.com/gmod/GM:CalcViewModelView]
--- @param wep Weapon @ The weapon entity
--- @param vm Entity @ The viewmodel entity
--- @param oldPos Vector @ Original position (before viewmodel bobbing and swaying)
--- @param oldAng Angle @ Original angle (before viewmodel bobbing and swaying)
--- @param pos Vector @ Current position
--- @param ang Angle @ Current angle
--- @return Vector|Angle
function GM:CalcViewModelView(wep, vm, oldPos, oldAng, pos, ang) end

--- (server) Called when a variable is edited on an Entity (called by `Edit Properties...` menu), to determine if the edit should be permitted.See [Editable entities](https://wiki.facepunch.com/gmod/Editable_Entities) for more details about the system. 
--- [https://wiki.facepunch.com/gmod/GM:CanEditVariable]
--- @param ent Entity @ The entity being edited.
--- @param ply Player @ The player doing the editing.
--- @param key string @ The name of the variable.
--- @param val string @ The new value, as a string which will later be converted to its appropriate type.
--- @param editor table @ The edit table defined in [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar).
--- @return boolean
function GM:CanEditVariable(ent, ply, key, val, editor) end

--- (server) Determines if the player can exit the vehicle. 
--- [https://wiki.facepunch.com/gmod/GM:CanExitVehicle]
--- @param veh Vehicle @ The vehicle entity
--- @param ply Player @ The player
--- @return boolean
function GM:CanExitVehicle(veh, ply) end

--- (server) Determines whether or not the player can enter the vehicle.Called just before [GM:PlayerEnteredVehicle](https://wiki.facepunch.com/gmod/GM:PlayerEnteredVehicle). 
--- [https://wiki.facepunch.com/gmod/GM:CanPlayerEnterVehicle]
--- @param player Player @ The player.
--- @param vehicle Vehicle @ The vehicle.
--- @param role number @ The seat number.
--- @return boolean
function GM:CanPlayerEnterVehicle(player, vehicle, role) end

--- (server) Determines if the player can kill themselves using the concommands `kill` or `explode`. 
--- [https://wiki.facepunch.com/gmod/GM:CanPlayerSuicide]
--- @param player Player @ The player
--- @return boolean
function GM:CanPlayerSuicide(player) end

--- (server) Determines if the player can unfreeze the entity. 
--- [https://wiki.facepunch.com/gmod/GM:CanPlayerUnfreeze]
--- @param player Player @ The player
--- @param entity Entity @ The entity
--- @param phys PhysObj @ The physics object of the entity
--- @return boolean
function GM:CanPlayerUnfreeze(player, entity, phys) end

--- (server) Called whenever a players tries to undo. 
--- [https://wiki.facepunch.com/gmod/GM:CanUndo]
--- @param ply Player @ The player who tried to undo something.
--- @param undo table @ The undo table as a [Undo](https://wiki.facepunch.com/gmod/Structures/Undo).
--- @return boolean
function GM:CanUndo(ply, undo) end

--- (menu) Called each frame to record demos to video using [IVideoWriter](https://wiki.facepunch.com/gmod/IVideoWriter). 
--- [https://wiki.facepunch.com/gmod/GM:CaptureVideo]
--- @return void
function GM:CaptureVideo() end

--- (client) Called when a message is printed to the chat box. Note, that this isn't working with player messages even though there are arguments for it.For player messages see [GM:PlayerSay](https://wiki.facepunch.com/gmod/GM:PlayerSay) and [GM:OnPlayerChat](https://wiki.facepunch.com/gmod/GM:OnPlayerChat) 
--- [https://wiki.facepunch.com/gmod/GM:ChatText]
--- @param index number @ The index of the player.
--- @param name string @ The name of the player.
--- @param text string @ The text that is being sent.
--- @param type string @ Chat filter type. Possible values are:* `joinleave` - Player join and leave messages* `namechange` - Player name change messages* `servermsg` - Server messages such as convar changes* `teamchange` - Team changes?* `chat` - (Obsolete?) Player chat?* `none` - A fallback value
--- @return boolean
function GM:ChatText(index, name, text, type) end

--- (client) Called whenever the content of the user's chat input box is changed. 
--- [https://wiki.facepunch.com/gmod/GM:ChatTextChanged]
--- @param text string @ The new contents of the input box
--- @return void
function GM:ChatTextChanged(text) end

--- (server) Called when a non local player connects to allow the Lua system to check the password.The default behaviour in the base gamemodes emulates what would normally happen. If sv_password is set and its value matches the password passed in by the client - then they are allowed to join. If it isn't set it lets them in too. 
--- [https://wiki.facepunch.com/gmod/GM:CheckPassword]
--- @param steamID64 string @ The 64bit Steam ID of the joining player, use [util.SteamIDFrom64](https://wiki.facepunch.com/gmod/util.SteamIDFrom64) to convert it to a `STEAM_0:` one.
--- @param ipAddress string @ The IP of the connecting client
--- @param svPassword string @ The current value of sv_password (the password set by the server)
--- @param clPassword string @ The password provided by the client
--- @param name string @ The name of the joining player
--- @return boolean|string
function GM:CheckPassword(steamID64, ipAddress, svPassword, clPassword, name) end

--- (client/server) Called when a player's sign on state changes. 
--- [https://wiki.facepunch.com/gmod/GM:ClientSignOnStateChanged]
--- @param userID number @ The userID of the player whose sign on state has changed.
--- @param oldState number @ The previous sign on state. See [SIGNONSTATE](https://wiki.facepunch.com/gmod/Enums/SIGNONSTATE) enums.
--- @param newState number @ The new/current sign on state. See [SIGNONSTATE](https://wiki.facepunch.com/gmod/Enums/SIGNONSTATE) enums.
--- @return void
function GM:ClientSignOnStateChanged(userID, oldState, newState) end

--- (client/menu) Called when derma menus are closed with [CloseDermaMenus](https://wiki.facepunch.com/gmod/Global.CloseDermaMenus). 
--- [https://wiki.facepunch.com/gmod/GM:CloseDermaMenus]
--- @return void
function GM:CloseDermaMenus() end

--- (client) Called whenever an entity becomes a clientside ragdoll.See [GM:CreateEntityRagdoll](https://wiki.facepunch.com/gmod/GM:CreateEntityRagdoll) for serverside ragdolls. 
--- [https://wiki.facepunch.com/gmod/GM:CreateClientsideRagdoll]
--- @param entity Entity @ The Entity that created the ragdoll
--- @param ragdoll Entity @ The ragdoll being created.
--- @return void
function GM:CreateClientsideRagdoll(entity, ragdoll) end

--- (server) Called when a serverside ragdoll of an entity has been created.See [GM:CreateClientsideRagdoll](https://wiki.facepunch.com/gmod/GM:CreateClientsideRagdoll) for clientside ragdolls. 
--- [https://wiki.facepunch.com/gmod/GM:CreateEntityRagdoll]
--- @param owner Entity @ Entity that owns the ragdoll
--- @param ragdoll Entity @ The ragdoll entity
--- @return void
function GM:CreateEntityRagdoll(owner, ragdoll) end

--- (client) Allows you to change the players movements before they're sent to the server.See [Game Movement](https://wiki.facepunch.com/gmod/Game%20Movement) for an explanation on the move system. 
--- [https://wiki.facepunch.com/gmod/GM:CreateMove]
--- @param cmd CUserCmd @ The User Command data
--- @return boolean
function GM:CreateMove(cmd) end

--- (client/server) Teams are created within this hook using [team.SetUp](https://wiki.facepunch.com/gmod/team.SetUp).This hook is called before [GM:PreGamemodeLoaded](https://wiki.facepunch.com/gmod/GM:PreGamemodeLoaded). 
--- [https://wiki.facepunch.com/gmod/GM:CreateTeams]
--- @return void
function GM:CreateTeams() end

--- (client/server) Called upon an animation event, this is the ideal place to call player animation functions such as [Player:AddVCDSequenceToGestureSlot](https://wiki.facepunch.com/gmod/Player:AddVCDSequenceToGestureSlot), [Player:AnimRestartGesture](https://wiki.facepunch.com/gmod/Player:AnimRestartGesture) and so on. 
--- [https://wiki.facepunch.com/gmod/GM:DoAnimationEvent]
--- @param ply Player @ Player who is being animated
--- @param event number @ Animation event. See [PLAYERANIMEVENT](https://wiki.facepunch.com/gmod/Enums/PLAYERANIMEVENT)
--- @param data number @ The data for the event. This is interpreted as an [ACT](https://wiki.facepunch.com/gmod/Enums/ACT) by `PLAYERANIMEVENT_CUSTOM` and `PLAYERANIMEVENT_CUSTOM_GESTURE`, or a sequence by `PLAYERANIMEVENT_CUSTOM_SEQUENCE`.
--- @return number
function GM:DoAnimationEvent(ply, event, data) end

--- (server) Handles the player's death.This hook is **not** called if the player is killed by [Player:KillSilent](https://wiki.facepunch.com/gmod/Player:KillSilent). See [GM:PlayerSilentDeath](https://wiki.facepunch.com/gmod/GM:PlayerSilentDeath) for that.* [GM:PlayerDeath](https://wiki.facepunch.com/gmod/GM:PlayerDeath) is called after this hook* [GM:PostPlayerDeath](https://wiki.facepunch.com/gmod/GM:PostPlayerDeath) is called after that 
--- [https://wiki.facepunch.com/gmod/GM:DoPlayerDeath]
--- @param ply Player @ The player
--- @param attacker Entity @ The entity that killed the player
--- @param dmg CTakeDamageInfo @ Damage info
--- @return void
function GM:DoPlayerDeath(ply, attacker, dmg) end

--- (client) This hook is called every frame to draw all of the current death notices. 
--- [https://wiki.facepunch.com/gmod/GM:DrawDeathNotice]
--- @param x number @ X position to draw death notices as a ratio
--- @param y number @ Y position to draw death notices as a ratio
--- @return void
function GM:DrawDeathNotice(x, y) end

--- (client) Called every frame before drawing the in-game monitors ( Breencast, in-game TVs, etc ), but doesn't seem to be doing anything, trying to render 2D or 3D elements fail. 
--- [https://wiki.facepunch.com/gmod/GM:DrawMonitors]
--- @return void
function GM:DrawMonitors() end

--- (client/menu) Called after all other 2D draw hooks are called. Draws over all VGUI Panels and HUDs.Unlike [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint), this hook is called with the game paused and while the Camera SWEP is equipped. 
--- [https://wiki.facepunch.com/gmod/GM:DrawOverlay]
--- @return void
function GM:DrawOverlay() end

--- (client) Allows you to override physgun beam drawing. 
--- [https://wiki.facepunch.com/gmod/GM:DrawPhysgunBeam]
--- @param ply Player @ Physgun owner
--- @param physgun Weapon @ The physgun
--- @param enabled boolean @ Is the beam enabled
--- @param target Entity @ Entity we are grabbing. This will be NULL if nothing is being held
--- @param physBone number @ ID of the physics bone ([PhysObj](https://wiki.facepunch.com/gmod/PhysObj)) we are grabbing at. Use [Entity:TranslatePhysBoneToBone](https://wiki.facepunch.com/gmod/Entity:TranslatePhysBoneToBone) to translate to an actual bone.
--- @param hitPos Vector @ Beam hit position relative to the physics bone ([PhysObj](https://wiki.facepunch.com/gmod/PhysObj)) we are grabbing.
--- @return boolean
function GM:DrawPhysgunBeam(ply, physgun, enabled, target, physBone, hitPos) end

--- (client/server) Called right before an entity stops driving. Overriding this hook will cause it to not call [drive.End](https://wiki.facepunch.com/gmod/drive.End) and the player will not stop driving. 
--- [https://wiki.facepunch.com/gmod/GM:EndEntityDriving]
--- @param ent Entity @ The entity being driven
--- @param ply Player @ The player driving the entity
--- @return void
function GM:EndEntityDriving(ent, ply) end

--- (client/server) Called whenever a sound has been played. This will not be called clientside if the server played the sound without the client also calling [Entity:EmitSound](https://wiki.facepunch.com/gmod/Entity:EmitSound). 
--- [https://wiki.facepunch.com/gmod/GM:EntityEmitSound]
--- @param data table @ Information about the played sound. Changes done to this table can be applied by returning `true` from this hook.See [EmitSoundInfo](https://wiki.facepunch.com/gmod/Structures/EmitSoundInfo).
--- @return boolean
function GM:EntityEmitSound(data) end

--- (client/server) Called every time a bullet is fired from an entity. 
--- [https://wiki.facepunch.com/gmod/GM:EntityFireBullets]
--- @param entity Entity @ The entity that fired the bullet
--- @param data table @ The bullet data. See [Bullet](https://wiki.facepunch.com/gmod/Structures/Bullet).
--- @return boolean
function GM:EntityFireBullets(entity, data) end

--- (client/server) Called when a key-value pair is set on an entity, either by the engine (for example when map spawns) or [Entity:SetKeyValue](https://wiki.facepunch.com/gmod/Entity:SetKeyValue).See [ENTITY:KeyValue](https://wiki.facepunch.com/gmod/ENTITY:KeyValue) for a hook that works for scripted entities.See [WEAPON:KeyValue](https://wiki.facepunch.com/gmod/WEAPON:KeyValue) for a hook that works for scripted weapons. 
--- [https://wiki.facepunch.com/gmod/GM:EntityKeyValue]
--- @param ent Entity @ Entity that the keyvalue is being set on
--- @param key string @ Key of the key/value pair
--- @param value string @ Value of the key/value pair
--- @return string
function GM:EntityKeyValue(ent, key, value) end

--- (client/server) Called when an NWVar is changed. 
--- [https://wiki.facepunch.com/gmod/GM:EntityNetworkedVarChanged]
--- @param ent Entity @ The owner entity of changed NWVar
--- @param name string @ The name if changed NWVar
--- @param oldval any @ The old value of the NWVar
--- @param newval any @ The new value of the NWVar
--- @return void
function GM:EntityNetworkedVarChanged(ent, name, oldval, newval) end

--- (client/server) Called right before the removal of an entity. 
--- [https://wiki.facepunch.com/gmod/GM:EntityRemoved]
--- @param ent Entity @ Entity being removed
--- @return void
function GM:EntityRemoved(ent) end

--- (server) Called when an entity takes damage. You can modify all parts of the damage info in this hook. 
--- [https://wiki.facepunch.com/gmod/GM:EntityTakeDamage]
--- @param target Entity @ The entity taking damage
--- @param dmg CTakeDamageInfo @ Damage info
--- @return boolean
function GM:EntityTakeDamage(target, dmg) end

--- (client/server) This hook polls the entity the player use action should be applied to. 
--- [https://wiki.facepunch.com/gmod/GM:FindUseEntity]
--- @param ply Player @ The player who initiated the use action.
--- @param defaultEnt Entity @ The entity that was chosen by the engine.
--- @return Entity
function GM:FindUseEntity(ply, defaultEnt) end

--- (client) Runs when user cancels/finishes typing. 
--- [https://wiki.facepunch.com/gmod/GM:FinishChat]
--- @return void
function GM:FinishChat() end

--- (client/server) Called after [GM:Move](https://wiki.facepunch.com/gmod/GM:Move), applies all the changes from the [CMoveData](https://wiki.facepunch.com/gmod/CMoveData) to the player.See [Game Movement](https://wiki.facepunch.com/gmod/Game%20Movement) for an explanation on the move system. 
--- [https://wiki.facepunch.com/gmod/GM:FinishMove]
--- @param ply Player @ Player
--- @param mv CMoveData @ Movement data
--- @return boolean
function GM:FinishMove(ply, mv) end

--- (client) Called to allow override of the default Derma skin for all panels. 
--- [https://wiki.facepunch.com/gmod/GM:ForceDermaSkin]
--- @return string
function GM:ForceDermaSkin() end

--- (client/menu/server) Called when game content has been changed, for example an addon or a mountable game was (un)mounted. 
--- [https://wiki.facepunch.com/gmod/GM:GameContentChanged]
--- @return void
function GM:GameContentChanged() end

--- (server) Called when a player takes damage from falling, allows to override the damage. 
--- [https://wiki.facepunch.com/gmod/GM:GetFallDamage]
--- @param ply Player @ The player
--- @param speed number @ The fall speed
--- @return number
function GM:GetFallDamage(ply, speed) end

--- (client/server) Called when the game(server) needs to update the text shown in the server browser as the gamemode. 
--- [https://wiki.facepunch.com/gmod/GM:GetGameDescription]
--- @return string
function GM:GetGameDescription() end

--- (client) Allows you to modify the Source Engine's motion blur shaders. 
--- [https://wiki.facepunch.com/gmod/GM:GetMotionBlurValues]
--- @param horizontal number @ The amount of horizontal blur.
--- @param vertical number @ The amount of vertical  blur.
--- @param forward number @ The amount of forward/radial blur.
--- @param rotational number @ The amount of rotational blur.
--- @return number|number|number|number
function GM:GetMotionBlurValues(horizontal, vertical, forward, rotational) end

--- (server) Called to determine preferred carry angles for the entity. It works for both, +use pickup and gravity gun pickup. 
--- [https://wiki.facepunch.com/gmod/GM:GetPreferredCarryAngles]
--- @param ent Entity @ The entity to generate carry angles for
--- @param ply Player @ The player who is holding the object
--- @return Angle
function GM:GetPreferredCarryAngles(ent, ply) end

--- (client) Returns the color for the given entity's team. This is used in chat and deathnotice text. 
--- [https://wiki.facepunch.com/gmod/GM:GetTeamColor]
--- @param ent Entity @ Entity
--- @return table
function GM:GetTeamColor(ent) end

--- (client) Returns the team color for the given team index. 
--- [https://wiki.facepunch.com/gmod/GM:GetTeamNumColor]
--- @param team number @ Team index
--- @return table
function GM:GetTeamNumColor(team) end

--- (client/server) Override this hook to disable/change ear-grabbing in your gamemode. 
--- [https://wiki.facepunch.com/gmod/GM:GrabEarAnimation]
--- @param ply Player @ Player
--- @return void
function GM:GrabEarAnimation(ply) end

--- (server) Called when an entity is released by a gravity gun.See [GM:PhysgunDrop](https://wiki.facepunch.com/gmod/GM:PhysgunDrop) for the Physics Gun drop variant. 
--- [https://wiki.facepunch.com/gmod/GM:GravGunOnDropped]
--- @param ply Player @ Player who is wielding the gravity gun
--- @param ent Entity @ The entity that has been dropped
--- @return void
function GM:GravGunOnDropped(ply, ent) end

--- (server) Called when an entity is picked up by a gravity gun.See [GM:OnPlayerPhysicsPickup](https://wiki.facepunch.com/gmod/GM:OnPlayerPhysicsPickup) for the player `+use` pickup variant.See [GM:OnPhysgunPickup](https://wiki.facepunch.com/gmod/GM:OnPhysgunPickup) for the Physics Gun pickup variant. 
--- [https://wiki.facepunch.com/gmod/GM:GravGunOnPickedUp]
--- @param ply Player @ The player wielding the gravity gun
--- @param ent Entity @ The entity that has been picked up by the gravity gun
--- @return void
function GM:GravGunOnPickedUp(ply, ent) end

--- (server) Called every tick to poll whether a player is allowed to pick up an entity with the gravity gun or not.See [GM:AllowPlayerPickup](https://wiki.facepunch.com/gmod/GM:AllowPlayerPickup) for the +USE pickup variant.See [GM:PhysgunPickup](https://wiki.facepunch.com/gmod/GM:PhysgunPickup) for the Physics Gun pickup variant.Calls [ENTITY:GravGunPickupAllowed](https://wiki.facepunch.com/gmod/ENTITY:GravGunPickupAllowed) on the entity being hovered every frame in Sandbox-derived gamemodes. 
--- [https://wiki.facepunch.com/gmod/GM:GravGunPickupAllowed]
--- @param ply Player @ The player wielding the gravity gun
--- @param ent Entity @ The entity the player is attempting to pick up
--- @return boolean
function GM:GravGunPickupAllowed(ply, ent) end

--- (client/server) Called when an entity is about to be punted with the gravity gun (primary fire).By default this function makes [ENTITY:GravGunPunt](https://wiki.facepunch.com/gmod/ENTITY:GravGunPunt) work in Sandbox derived gamemodes. 
--- [https://wiki.facepunch.com/gmod/GM:GravGunPunt]
--- @param ply Player @ The player wielding the gravity gun
--- @param ent Entity @ The entity the player is attempting to punt
--- @return boolean
function GM:GravGunPunt(ply, ent) end

--- (client) Called when the mouse has been double clicked on any panel derived from CGModBase, such as the panel used by [gui.EnableScreenClicker](https://wiki.facepunch.com/gmod/gui.EnableScreenClicker) and the panel used by [Panel:ParentToHUD](https://wiki.facepunch.com/gmod/Panel:ParentToHUD).By default this hook calls [GM:GUIMousePressed](https://wiki.facepunch.com/gmod/GM:GUIMousePressed). 
--- [https://wiki.facepunch.com/gmod/GM:GUIMouseDoublePressed]
--- @param mouseCode number @ The code of the mouse button pressed, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE)
--- @param aimVector Vector @ A normalized vector pointing in the direction the client has clicked
--- @return void
function GM:GUIMouseDoublePressed(mouseCode, aimVector) end

--- (client) Called whenever a players presses a mouse key on the context menu in Sandbox or on any panel derived from CGModBase, such as the panel used by [gui.EnableScreenClicker](https://wiki.facepunch.com/gmod/gui.EnableScreenClicker) and the panel used by [Panel:ParentToHUD](https://wiki.facepunch.com/gmod/Panel:ParentToHUD).See [GM:VGUIMousePressed](https://wiki.facepunch.com/gmod/GM:VGUIMousePressed) for a hook that is called on all VGUI elements. 
--- [https://wiki.facepunch.com/gmod/GM:GUIMousePressed]
--- @param mouseCode number @ The key that the player pressed using [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @param aimVector Vector @ A normalized direction vector local to the camera. Internally, this is  [gui.ScreenToVector](https://wiki.facepunch.com/gmod/gui.ScreenToVector)( [gui.MousePos](https://wiki.facepunch.com/gmod/gui.MousePos)() ).
--- @return void
function GM:GUIMousePressed(mouseCode, aimVector) end

--- (client) Called whenever a players releases a mouse key on the context menu in Sandbox or on any panel derived from CGModBase, such as the panel used by [gui.EnableScreenClicker](https://wiki.facepunch.com/gmod/gui.EnableScreenClicker) and the panel used by [Panel:ParentToHUD](https://wiki.facepunch.com/gmod/Panel:ParentToHUD). 
--- [https://wiki.facepunch.com/gmod/GM:GUIMouseReleased]
--- @param mouseCode number @ The key the player released, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE)
--- @param aimVector Vector @ A normalized direction vector local to the camera. Internally this is  [gui.ScreenToVector](https://wiki.facepunch.com/gmod/gui.ScreenToVector)( [gui.MousePos](https://wiki.facepunch.com/gmod/gui.MousePos)() ).
--- @return void
function GM:GUIMouseReleased(mouseCode, aimVector) end

--- (client/server) Allows to override player driving animations. 
--- [https://wiki.facepunch.com/gmod/GM:HandlePlayerDriving]
--- @param ply Player @ Player to process
--- @return boolean
function GM:HandlePlayerDriving(ply) end

--- (client/server) Allows to override player crouch animations. 
--- [https://wiki.facepunch.com/gmod/GM:HandlePlayerDucking]
--- @param ply Player @ The player
--- @param velocity number @ Players velocity
--- @return boolean
function GM:HandlePlayerDucking(ply, velocity) end

--- (client/server) Called every frame by the player model animation system. Allows to override player jumping animations. 
--- [https://wiki.facepunch.com/gmod/GM:HandlePlayerJumping]
--- @param ply Player @ The player
--- @param velocity number @ Players velocity
--- @return boolean
function GM:HandlePlayerJumping(ply, velocity) end

--- (client/server) Allows to override player landing animations. 
--- [https://wiki.facepunch.com/gmod/GM:HandlePlayerLanding]
--- @param ply Player @ The player
--- @param velocity number @ Players velocity
--- @param onGround boolean @ Was the player on ground?
--- @return boolean
function GM:HandlePlayerLanding(ply, velocity, onGround) end

--- (client/server) Allows to override player noclip animations. 
--- [https://wiki.facepunch.com/gmod/GM:HandlePlayerNoClipping]
--- @param ply Player @ The player
--- @param velocity number @ Players velocity
--- @return boolean
function GM:HandlePlayerNoClipping(ply, velocity) end

--- (client/server) Allows to override player swimming animations. 
--- [https://wiki.facepunch.com/gmod/GM:HandlePlayerSwimming]
--- @param ply Player @ The player
--- @param velocity number @ Players velocity
--- @return boolean
function GM:HandlePlayerSwimming(ply, velocity) end

--- (client/server) Allows to override player flying ( in mid-air, not noclipping ) animations. 
--- [https://wiki.facepunch.com/gmod/GM:HandlePlayerVaulting]
--- @param ply Player @ The player
--- @param velocity number @ Players velocity
--- @return boolean
function GM:HandlePlayerVaulting(ply, velocity) end

--- (client) Hides the team selection panel. 
--- [https://wiki.facepunch.com/gmod/GM:HideTeam]
--- @return void
function GM:HideTeam() end

--- (client) Called when the client has picked up ammo. Override to disable default HUD notification. 
--- [https://wiki.facepunch.com/gmod/GM:HUDAmmoPickedUp]
--- @param itemName string @ Name of the item (ammo) picked up
--- @param amount number @ Amount of the item (ammo) picked up
--- @return void
function GM:HUDAmmoPickedUp(itemName, amount) end

--- (client) Renders the HUD pick-up history. Override to hide default or draw your own HUD. 
--- [https://wiki.facepunch.com/gmod/GM:HUDDrawPickupHistory]
--- @return void
function GM:HUDDrawPickupHistory() end

--- (client) Called every frame to render the scoreboard.It is recommended to use Derma and VGUI for this job instead of this hook. Called right after [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint). 
--- [https://wiki.facepunch.com/gmod/GM:HUDDrawScoreBoard]
--- @return void
function GM:HUDDrawScoreBoard() end

--- (client) Called from [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint) to draw player info when you hover over a player with your crosshair or mouse. 
--- [https://wiki.facepunch.com/gmod/GM:HUDDrawTargetID]
--- @return void
function GM:HUDDrawTargetID() end

--- (client) Called when an item has been picked up. Override to disable the default HUD notification. 
--- [https://wiki.facepunch.com/gmod/GM:HUDItemPickedUp]
--- @param itemName string @ Name of the picked up item
--- @return void
function GM:HUDItemPickedUp(itemName) end

--- (client) Called whenever the HUD should be drawn.Called right before [GM:HUDDrawScoreBoard](https://wiki.facepunch.com/gmod/GM:HUDDrawScoreBoard) and after [GM:HUDPaintBackground](https://wiki.facepunch.com/gmod/GM:HUDPaintBackground).Not called when the Camera SWEP is equipped, or when the main menu is visible. [GM:PostDrawHUD](https://wiki.facepunch.com/gmod/GM:PostDrawHUD) does not have this behavior.See also [GM:DrawOverlay](https://wiki.facepunch.com/gmod/GM:DrawOverlay). 
--- [https://wiki.facepunch.com/gmod/GM:HUDPaint]
--- @return void
function GM:HUDPaint() end

--- (client) Called before [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint) when the HUD background is being drawn.Just like [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint), this hook will not be called when the main menu is visible. [GM:PostDrawHUD](https://wiki.facepunch.com/gmod/GM:PostDrawHUD) does not have this behavior.Things rendered in this hook will **always** appear behind things rendered in [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint). 
--- [https://wiki.facepunch.com/gmod/GM:HUDPaintBackground]
--- @return void
function GM:HUDPaintBackground() end

--- (client) Called when the Gamemode is about to draw a given element on the client's HUD (heads-up display). 
--- [https://wiki.facepunch.com/gmod/GM:HUDShouldDraw]
--- @param name string @ The name of the HUD element. You can find a full list of HUD elements for this hook [here](https://wiki.facepunch.com/gmod/HUD_Element_List).
--- @return boolean
function GM:HUDShouldDraw(name) end

--- (client) Called when a weapon has been picked up. Override to disable the default HUD notification. 
--- [https://wiki.facepunch.com/gmod/GM:HUDWeaponPickedUp]
--- @param weapon Weapon @ The picked up weapon
--- @return void
function GM:HUDWeaponPickedUp(weapon) end

--- (client/server) Called after the gamemode loads and starts. 
--- [https://wiki.facepunch.com/gmod/GM:Initialize]
--- @return void
function GM:Initialize() end

--- (client/server) Called after all the entities are initialized. Starting from this hook [LocalPlayer](https://wiki.facepunch.com/gmod/Global.LocalPlayer) will return valid object. 
--- [https://wiki.facepunch.com/gmod/GM:InitPostEntity]
--- @return void
function GM:InitPostEntity() end

--- (client) Allows you to modify the supplied User Command with mouse input. This could be used to make moving the mouse do funky things to view angles. 
--- [https://wiki.facepunch.com/gmod/GM:InputMouseApply]
--- @param cmd CUserCmd @ User command.
--- @param x number @ The amount of mouse movement across the X axis this frame.
--- @param y number @ The amount of mouse movement across the Y axis this frame.
--- @param ang Angle @ The current view angle.
--- @return boolean
function GM:InputMouseApply(cmd, x, y, ang) end

--- (server) Check if a player can spawn at a certain spawnpoint. 
--- [https://wiki.facepunch.com/gmod/GM:IsSpawnpointSuitable]
--- @param ply Player @ The player who is spawned
--- @param spawnpoint Entity @ The spawnpoint entity (on the map).
--- @param makeSuitable boolean @ If this is true, it'll kill any players blocking the spawnpoint.
--- @return boolean
function GM:IsSpawnpointSuitable(ply, spawnpoint, makeSuitable) end

--- (client/server) Called whenever a player pressed a key included within the IN keys.For a more general purpose function that handles all kinds of input, see [GM:PlayerButtonDown](https://wiki.facepunch.com/gmod/GM:PlayerButtonDown). 
--- [https://wiki.facepunch.com/gmod/GM:KeyPress]
--- @param ply Player @ The player pressing the key. If running client-side, this will always be [LocalPlayer](https://wiki.facepunch.com/gmod/Global.LocalPlayer).
--- @param key number @ The key that the player pressed using [IN](https://wiki.facepunch.com/gmod/Enums/IN).
--- @return void
function GM:KeyPress(ply, key) end

--- (client/server) Runs when a IN key was released by a player.For a more general purpose function that handles all kinds of input, see [GM:PlayerButtonUp](https://wiki.facepunch.com/gmod/GM:PlayerButtonUp). 
--- [https://wiki.facepunch.com/gmod/GM:KeyRelease]
--- @param ply Player @ The player releasing the key. If running client-side, this will always be [LocalPlayer](https://wiki.facepunch.com/gmod/Global.LocalPlayer).
--- @param key number @ The key that the player released using [IN](https://wiki.facepunch.com/gmod/Enums/IN).
--- @return void
function GM:KeyRelease(ply, key) end

--- (server) Called from gm_load when the game should load a map. 
--- [https://wiki.facepunch.com/gmod/GM:LoadGModSave]
--- @param data string @ Compressed save data
--- @param map string @ The name of the map the save was created on
--- @param timestamp number @ The time the save was created on. Will always be 0.
--- @return void
function GM:LoadGModSave(data, map, timestamp) end

--- (menu) Called when `menu.lua` has finished loading. 
--- [https://wiki.facepunch.com/gmod/GM:MenuStart]
--- @return void
function GM:MenuStart() end

--- (client/server) Override this gamemode function to disable mouth movement when talking on voice chat. 
--- [https://wiki.facepunch.com/gmod/GM:MouthMoveAnimation]
--- @param ply Player @ Player in question
--- @return void
function GM:MouthMoveAnimation(ply) end

--- (client/server) The Move hook is called for you to manipulate the player's MoveData. You shouldn't adjust the player's position in any way in the move hook. This is because due to prediction errors, the netcode might run the move hook multiple times as packets arrive late. Therefore you should only adjust the movedata construct in this hook.Generally you shouldn't have to use this hook - if you want to make a custom move type you should look at the drive system.This hook is called after [GM:PlayerTick](https://wiki.facepunch.com/gmod/GM:PlayerTick).See [Game Movement](https://wiki.facepunch.com/gmod/Game%20Movement) for an explanation on the move system. 
--- [https://wiki.facepunch.com/gmod/GM:Move]
--- @param ply Player @ Player
--- @param mv CMoveData @ Movement information
--- @return boolean
function GM:Move(ply, mv) end

--- (client) Returning true in this hook will cause it to render depth buffers defined with [render.GetResolvedFullFrameDepth](https://wiki.facepunch.com/gmod/render.GetResolvedFullFrameDepth). 
--- [https://wiki.facepunch.com/gmod/GM:NeedsDepthPass]
--- @return boolean
function GM:NeedsDepthPass() end

--- (client) Called when an entity has been created over the network. 
--- [https://wiki.facepunch.com/gmod/GM:NetworkEntityCreated]
--- @param ent Entity @ Created entity
--- @return void
function GM:NetworkEntityCreated(ent) end

--- (server) Called when a player's SteamID has been validated by Steam.See also [GM:PlayerAuthed](https://wiki.facepunch.com/gmod/GM:PlayerAuthed). 
--- [https://wiki.facepunch.com/gmod/GM:NetworkIDValidated]
--- @param name string @ Player name
--- @param steamID string @ Player SteamID
--- @return void
function GM:NetworkIDValidated(name, steamID) end

--- (client) Called whenever this entity changes its transmission state for this [LocalPlayer](https://wiki.facepunch.com/gmod/Global.LocalPlayer), such as exiting or re entering the [PVS](https://developer.valvesoftware.com/wiki/PVS). 
--- [https://wiki.facepunch.com/gmod/GM:NotifyShouldTransmit]
--- @param entity Entity @ The entity that changed its transmission state.
--- @param shouldtransmit boolean @ `True` if we started transmitting to this client and `false` if we stopped.
--- @return void
function GM:NotifyShouldTransmit(entity, shouldtransmit) end

--- (client) Called when a player has achieved an achievement. You can get the name and other information from an achievement ID with the [achievements](https://wiki.facepunch.com/gmod/achievements) library. 
--- [https://wiki.facepunch.com/gmod/GM:OnAchievementAchieved]
--- @param ply Player @ The player that earned the achievement
--- @param achievement number @ The index of the achievement
--- @return void
function GM:OnAchievementAchieved(ply, achievement) end

--- (client) Called when the local player presses TAB while having their chatbox opened. 
--- [https://wiki.facepunch.com/gmod/GM:OnChatTab]
--- @param text string @ The currently typed into chatbox text
--- @return string
function GM:OnChatTab(text) end

--- (client) Called when the player cleans up something. 
--- [https://wiki.facepunch.com/gmod/GM:OnCleanup]
--- @param name string @ The name of the cleanup type
--- @return boolean
function GM:OnCleanup(name) end

--- (client) Called when the context menu keybind (+menu_context) is released, which by default is C.This hook will not run if [input.IsKeyTrapping](https://wiki.facepunch.com/gmod/input.IsKeyTrapping) returns true.See also [GM:OnContextMenuOpen](https://wiki.facepunch.com/gmod/GM:OnContextMenuOpen). 
--- [https://wiki.facepunch.com/gmod/GM:OnContextMenuClose]
--- @return void
function GM:OnContextMenuClose() end

--- (client) Called when the context menu keybind (`+menu_context`) is pressed, which by default is .See also [GM:OnContextMenuClose](https://wiki.facepunch.com/gmod/GM:OnContextMenuClose). 
--- [https://wiki.facepunch.com/gmod/GM:OnContextMenuOpen]
--- @return void
function GM:OnContextMenuOpen() end

--- (client/server) Called when the crazy physics detection detects an entity with Crazy Physics. 
--- [https://wiki.facepunch.com/gmod/GM:OnCrazyPhysics]
--- @param ent Entity @ The entity that was detected as crazy
--- @param physobj PhysObj @ The physics object that is going crazy
--- @return void
function GM:OnCrazyPhysics(ent, physobj) end

--- (server) Called when a player has been hurt by an explosion. Override to disable default sound effect. 
--- [https://wiki.facepunch.com/gmod/GM:OnDamagedByExplosion]
--- @param ply Player @ Player who has been hurt
--- @param dmginfo CTakeDamageInfo @ Damage info from explsion
--- @return void
function GM:OnDamagedByExplosion(ply, dmginfo) end

--- (client/server) Called as soon as the entity is created. Very little of the entity's properties will be initialized at this stage. (keyvalues, classname, flags, anything), especially on the serverside. 
--- [https://wiki.facepunch.com/gmod/GM:OnEntityCreated]
--- @param entity Entity @ The entity
--- @return void
function GM:OnEntityCreated(entity) end

--- (server) Called when the [Entity:WaterLevel](https://wiki.facepunch.com/gmod/Entity:WaterLevel) of an entity is changed. 
--- [https://wiki.facepunch.com/gmod/GM:OnEntityWaterLevelChanged]
--- @param entity Entity @ The entity.
--- @param old number @ Previous water level.
--- @param new number @ The new water level.
--- @return void
function GM:OnEntityWaterLevelChanged(entity, old, new) end

--- (client/server) Called when the gamemode is loaded.[LocalPlayer](https://wiki.facepunch.com/gmod/Global.LocalPlayer)() returns NULL at the time this is run. 
--- [https://wiki.facepunch.com/gmod/GM:OnGamemodeLoaded]
--- @return void
function GM:OnGamemodeLoaded() end

--- (menu) Called when a Lua error occurs, only works in the Menu realm. 
--- [https://wiki.facepunch.com/gmod/GM:OnLuaError]
--- @param error string @ The error that occurred.
--- @param realm number @ Where the Lua error took place
--- @param stack table @ The Lua error stack trace
--- @param name string @ Title of the addon that is creating the Lua errors.
--- @param id number @ Steam Workshop ID of the addon creating Lua errors, if it is an addon.
--- @return void
function GM:OnLuaError(error, realm, stack, name, id) end

--- (server) Called whenever an NPC is killed. 
--- [https://wiki.facepunch.com/gmod/GM:OnNPCKilled]
--- @param npc NPC @ The killed NPC
--- @param attacker Entity @ The NPCs attacker, the entity that gets the kill credit, for example a player or an NPC.
--- @param inflictor Entity @ Death inflictor. The entity that did the killing. Not necessarily a weapon.
--- @return void
function GM:OnNPCKilled(npc, attacker, inflictor) end

--- (server) Called when a player freezes an entity with the physgun. 
--- [https://wiki.facepunch.com/gmod/GM:OnPhysgunFreeze]
--- @param weapon Entity @ The weapon that was used to freeze the entity.
--- @param physobj PhysObj @ Physics object of the entity.
--- @param ent Entity @ The target entity.
--- @param ply Player @ The player who tried to freeze the entity.
--- @return boolean
function GM:OnPhysgunFreeze(weapon, physobj, ent, ply) end

--- (server) Called to when a player has successfully picked up an entity with their Physics Gun.Not to be confused with [GM:PhysgunPickup](https://wiki.facepunch.com/gmod/GM:PhysgunPickup) which is called multiple times to ask if the player should be able to pick up an entity.See [GM:GravGunOnPickedUp](https://wiki.facepunch.com/gmod/GM:GravGunOnPickedUp) for the Gravity Gun pickup variant.See [GM:OnPlayerPhysicsPickup](https://wiki.facepunch.com/gmod/GM:OnPlayerPhysicsPickup) for the player `+use` pickup variant. 
--- [https://wiki.facepunch.com/gmod/GM:OnPhysgunPickup]
--- @param ply Player @ The player that has picked up something using the physics gun.
--- @param ent Entity @ The entity that was picked up.
--- @return void
function GM:OnPhysgunPickup(ply, ent) end

--- (server) Called when a player reloads with the physgun. Override this to disable default unfreezing behavior. 
--- [https://wiki.facepunch.com/gmod/GM:OnPhysgunReload]
--- @param physgun Weapon @ The physgun in question
--- @param ply Player @ The player wielding the physgun
--- @return boolean
function GM:OnPhysgunReload(physgun, ply) end

--- (server) Called when a player has changed team using [GM:PlayerJoinTeam](https://wiki.facepunch.com/gmod/GM:PlayerJoinTeam). 
--- [https://wiki.facepunch.com/gmod/GM:OnPlayerChangedTeam]
--- @param ply Player @ Player who has changed team
--- @param oldTeam number @ Index of the team the player was originally in
--- @param newTeam number @ Index of the team the player has changed to
--- @return void
function GM:OnPlayerChangedTeam(ply, oldTeam, newTeam) end

--- (client) Called whenever a player sends a chat message. For the serverside equivalent, see [GM:PlayerSay](https://wiki.facepunch.com/gmod/GM:PlayerSay). 
--- [https://wiki.facepunch.com/gmod/GM:OnPlayerChat]
--- @param ply Player @ The player
--- @param text string @ The message's text
--- @param teamChat boolean @ Is the player typing in team chat?
--- @param isDead boolean @ Is the player dead?
--- @return boolean
function GM:OnPlayerChat(ply, text, teamChat, isDead) end

--- (client/server) Called when a player makes contact with the ground after a jump or a fall. 
--- [https://wiki.facepunch.com/gmod/GM:OnPlayerHitGround]
--- @param player Entity @ Player
--- @param inWater boolean @ Did the player land in water?
--- @param onFloater boolean @ Did the player land on an object floating in the water?
--- @param speed number @ The speed at which the player hit the ground
--- @return boolean
function GM:OnPlayerHitGround(player, inWater, onFloater, speed) end

--- (server) Called when a player +use drops an entity. 
--- [https://wiki.facepunch.com/gmod/GM:OnPlayerPhysicsDrop]
--- @param ply Player @ The player that dropped the object
--- @param ent Entity @ The object that was dropped.
--- @param thrown boolean @ Whether the object was throw or simply let go of.
--- @return void
function GM:OnPlayerPhysicsDrop(ply, ent, thrown) end

--- (server) Called when a player +use pickups up an entity. This will be called after the entity passes though [GM:AllowPlayerPickup](https://wiki.facepunch.com/gmod/GM:AllowPlayerPickup).See [GM:GravGunOnPickedUp](https://wiki.facepunch.com/gmod/GM:GravGunOnPickedUp) for the Gravity Gun pickup variant.See [GM:OnPhysgunPickup](https://wiki.facepunch.com/gmod/GM:OnPhysgunPickup) for the Physics Gun pickup variant. 
--- [https://wiki.facepunch.com/gmod/GM:OnPlayerPhysicsPickup]
--- @param ply Player @ The player that picked up the object
--- @param ent Entity @ The object that was picked up.
--- @return void
function GM:OnPlayerPhysicsPickup(ply, ent) end

--- (client/server) Called when gamemode has been reloaded by auto refresh. 
--- [https://wiki.facepunch.com/gmod/GM:OnReloaded]
--- @return void
function GM:OnReloaded() end

--- (client) Called when the player's screen resolution of the game changes.[ScrW](https://wiki.facepunch.com/gmod/Global.ScrW) and [ScrH](https://wiki.facepunch.com/gmod/Global.ScrH) will return the new values when this hook is called. 
--- [https://wiki.facepunch.com/gmod/GM:OnScreenSizeChanged]
--- @param oldWidth number @ The previous width of the game's window.
--- @param oldHeight number @ The previous height of the game's window.
--- @return void
function GM:OnScreenSizeChanged(oldWidth, oldHeight) end

--- (client) Called when a player releases the `+menu` bind on their keyboard, which is bound to Q by default. 
--- [https://wiki.facepunch.com/gmod/GM:OnSpawnMenuClose]
--- @return void
function GM:OnSpawnMenuClose() end

--- (client) Called when a player presses the `+menu` bind on their keyboard, which is bound to Q by default. 
--- [https://wiki.facepunch.com/gmod/GM:OnSpawnMenuOpen]
--- @return void
function GM:OnSpawnMenuOpen() end

--- (client) Called when a [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) gets focus.This hook is run from [DTextEntry:OnGetFocus](https://wiki.facepunch.com/gmod/DTextEntry:OnGetFocus) and [PANEL:OnMousePressed](https://wiki.facepunch.com/gmod/PANEL:OnMousePressed) of [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry). 
--- [https://wiki.facepunch.com/gmod/GM:OnTextEntryGetFocus]
--- @param panel Panel @ The panel that got focus
--- @return void
function GM:OnTextEntryGetFocus(panel) end

--- (client) Called when DTextEntry loses focus. 
--- [https://wiki.facepunch.com/gmod/GM:OnTextEntryLoseFocus]
--- @param panel Panel @ The panel that lost focus
--- @return void
function GM:OnTextEntryLoseFocus(panel) end

--- (client) Called when the player undoes something. 
--- [https://wiki.facepunch.com/gmod/GM:OnUndo]
--- @param name string @ The name of the undo action
--- @param customText string @ The custom text for the undo, set by [undo.SetCustomUndoText](https://wiki.facepunch.com/gmod/undo.SetCustomUndoText)
--- @return boolean
function GM:OnUndo(name, customText) end

--- (client/server) Called when the player changes their weapon to another one - and their viewmodel model changes. 
--- [https://wiki.facepunch.com/gmod/GM:OnViewModelChanged]
--- @param viewmodel Entity @ The viewmodel that is changing
--- @param oldModel string @ The old model
--- @param newModel string @ The new model
--- @return void
function GM:OnViewModelChanged(viewmodel, oldModel, newModel) end

--- (client/server) Called when a player drops an entity with the Physgun.See [GM:GravGunOnDropped](https://wiki.facepunch.com/gmod/GM:GravGunOnDropped) for the Gravity Gun drop variant. 
--- [https://wiki.facepunch.com/gmod/GM:PhysgunDrop]
--- @param ply Player @ The player who dropped an entitiy
--- @param ent Entity @ The dropped entity
--- @return void
function GM:PhysgunDrop(ply, ent) end

--- (client/server) Called to determine if a player should be able to pick up an entity with the Physics Gun.See [GM:OnPhysgunPickup](https://wiki.facepunch.com/gmod/GM:OnPhysgunPickup) for a hook which is called when a player has successfully picked up an entity.See [GM:GravGunPickupAllowed](https://wiki.facepunch.com/gmod/GM:GravGunPickupAllowed) for the Gravity Gun pickup variant.See [GM:AllowPlayerPickup](https://wiki.facepunch.com/gmod/GM:AllowPlayerPickup) for the +USE pickup variant. 
--- [https://wiki.facepunch.com/gmod/GM:PhysgunPickup]
--- @param player Player @ The player that is picking up using the Physics Gun.
--- @param entity Entity @ The entity that is being picked up.
--- @return boolean
function GM:PhysgunPickup(player, entity) end

--- (client/server) Called when player's reserve ammo count changes. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerAmmoChanged]
--- @param ply Player @ The player whose ammo is being affected.
--- @param ammoID number @ The ammo type ID.
--- @param oldCount number @ The old ammo count.
--- @param newCount number @ The new ammo count.
--- @return void
function GM:PlayerAmmoChanged(ply, ammoID, oldCount, newCount) end

--- (server) Called after the player is authenticated by Steam. This hook will also be called in singleplayer. See also [GM:NetworkIDValidated](https://wiki.facepunch.com/gmod/GM:NetworkIDValidated) 
--- [https://wiki.facepunch.com/gmod/GM:PlayerAuthed]
--- @param ply Player @ The player
--- @param steamid string @ The player's SteamID
--- @param uniqueid string @ The player's UniqueID
--- @return void
function GM:PlayerAuthed(ply, steamid, uniqueid) end

--- (client) Runs when a bind has been pressed. Allows to block commands. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerBindPress]
--- @param ply Player @ The player who used the command; this will always be equal to [LocalPlayer](https://wiki.facepunch.com/gmod/Global.LocalPlayer).
--- @param bind string @ The bind command.
--- @param pressed boolean @ If the bind was activated or deactivated.
--- @param code number @ The button code. See [BUTTON_CODE](https://wiki.facepunch.com/gmod/Enums/BUTTON_CODE) Enums.
--- @return boolean
function GM:PlayerBindPress(ply, bind, pressed, code) end

--- (client/server) Called when a player presses a button.This will not be called if player has a panel opened with keyboard input enabled, use [PANEL:OnKeyCodePressed](https://wiki.facepunch.com/gmod/PANEL:OnKeyCodePressed) instead. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerButtonDown]
--- @param ply Player @ Player who pressed the button
--- @param button number @ The button, see [BUTTON_CODE](https://wiki.facepunch.com/gmod/Enums/BUTTON_CODE)
--- @return void
function GM:PlayerButtonDown(ply, button) end

--- (client/server) Called when a player releases a button.This will not be called if player has a panel opened with keyboard input enabled, use [PANEL:OnKeyCodeReleased](https://wiki.facepunch.com/gmod/PANEL:OnKeyCodeReleased) instead. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerButtonUp]
--- @param ply Player @ Player who released the button
--- @param button number @ The button, see [BUTTON_CODE](https://wiki.facepunch.com/gmod/Enums/BUTTON_CODE)
--- @return void
function GM:PlayerButtonUp(ply, button) end

--- (server) Decides whether a player can hear another player using voice chat. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerCanHearPlayersVoice]
--- @param listener Player @ The listening player.
--- @param talker Player @ The talking player.
--- @return boolean|boolean
function GM:PlayerCanHearPlayersVoice(listener, talker) end

--- (server) Returns whether or not a player is allowed to join a team 
--- [https://wiki.facepunch.com/gmod/GM:PlayerCanJoinTeam]
--- @param ply Player @ Player attempting to switch teams
--- @param team number @ Index of the team
--- @return boolean
function GM:PlayerCanJoinTeam(ply, team) end

--- (server) Returns whether or not a player is allowed to pick an item up. (ammo, health, armor) 
--- [https://wiki.facepunch.com/gmod/GM:PlayerCanPickupItem]
--- @param ply Player @ Player attempting to pick up
--- @param item Entity @ The item the player is attempting to pick up
--- @return boolean
function GM:PlayerCanPickupItem(ply, item) end

--- (server) Returns whether or not a player is allowed to pick up a weapon. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerCanPickupWeapon]
--- @param ply Player @ The player attempting to pick up the weapon.
--- @param weapon Weapon @ The weapon entity in question.
--- @return boolean
function GM:PlayerCanPickupWeapon(ply, weapon) end

--- (server) Returns whether or not the player can see the other player's chat. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerCanSeePlayersChat]
--- @param text string @ The chat text
--- @param teamOnly boolean @ If the message is team-only
--- @param listener Player @ The player receiving the message
--- @param speaker Player @ The player sending the message.
--- @return boolean
function GM:PlayerCanSeePlayersChat(text, teamOnly, listener, speaker) end

--- (server) Called when a player has changed team using [Player:SetTeam](https://wiki.facepunch.com/gmod/Player:SetTeam). 
--- [https://wiki.facepunch.com/gmod/GM:PlayerChangedTeam]
--- @param ply Player @ Player whose team has changed.
--- @param oldTeam number @ Index of the team the player was originally in. See [team.GetName](https://wiki.facepunch.com/gmod/team.GetName) and the [team](https://wiki.facepunch.com/gmod/team) library.
--- @param newTeam number @ Index of the team the player has changed to.
--- @return void
function GM:PlayerChangedTeam(ply, oldTeam, newTeam) end

--- (client/server) Called whenever a player is about to spawn something to see if they hit a limit for whatever they are spawning. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerCheckLimit]
--- @param ply Player @ The player who is trying to spawn something.
--- @param limitName string @ The limit's name.
--- @param current number @ The amount of whatever player is trying to spawn that the player already has spawned.
--- @param defaultMax number @ The default maximum count, as dictated by the `sbox_max
--- @return boolean
function GM:PlayerCheckLimit(ply, limitName, current, defaultMax) end

--- (client) Called whenever a player's class is changed on the server-side with [player_manager.SetPlayerClass](https://wiki.facepunch.com/gmod/player_manager.SetPlayerClass). 
--- [https://wiki.facepunch.com/gmod/GM:PlayerClassChanged]
--- @param ply Player @ The player whose class has been changed.
--- @param newID number @ The network ID of the player class's name string, or `0` if we are clearing a player class from the player.Pass this into [util.NetworkIDToString](https://wiki.facepunch.com/gmod/util.NetworkIDToString) to retrieve the proper name of the player class.
--- @return void
function GM:PlayerClassChanged(ply, newID) end

--- (client/server) Executes when a player connects to the server. Called before the player has been assigned a [UserID](https://wiki.facepunch.com/gmod/Player:UserID) and entity. See the [player_connect gameevent](https://wiki.facepunch.com/gmod/Game_Events) for a version of this hook called after the player entity has been created. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerConnect]
--- @param name string @ The player's name.
--- @param ip string @ The player's IP address. Will be "none" for bots.
--- @return void
function GM:PlayerConnect(name, ip) end

--- (server) Called when a player is killed by [Player:Kill](https://wiki.facepunch.com/gmod/Player:Kill) or any other normal means.This hook is **not** called if the player is killed by [Player:KillSilent](https://wiki.facepunch.com/gmod/Player:KillSilent). See [GM:PlayerSilentDeath](https://wiki.facepunch.com/gmod/GM:PlayerSilentDeath) for that.* [GM:DoPlayerDeath](https://wiki.facepunch.com/gmod/GM:DoPlayerDeath) is called **before** this hook.* [GM:PostPlayerDeath](https://wiki.facepunch.com/gmod/GM:PostPlayerDeath) is called **after** this hook.See [Player:LastHitGroup](https://wiki.facepunch.com/gmod/Player:LastHitGroup) if you need to get the last hit hitgroup of the player. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerDeath]
--- @param victim Player @ The player who died
--- @param inflictor Entity @ Item used to kill the victim
--- @param attacker Entity @ Player or entity that killed the victim
--- @return void
function GM:PlayerDeath(victim, inflictor, attacker) end

--- (server) Returns whether or not the default death sound should be muted. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerDeathSound]
--- @param ply Player @ The player
--- @return boolean
function GM:PlayerDeathSound(ply) end

--- (server) Called every think while the player is dead. The return value will determine if the player respawns.Overwriting this function will prevent players from respawning by pressing space or clicking. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerDeathThink]
--- @param ply Player @ The player affected in the hook.
--- @return boolean
function GM:PlayerDeathThink(ply) end

--- (server) Called when a player leaves the server. See the [player_disconnect gameevent](https://wiki.facepunch.com/gmod/Game_Events) for a shared version of this hook. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerDisconnected]
--- @param ply Player @ the player
--- @return void
function GM:PlayerDisconnected(ply) end

--- (client/server) Called to update the player's animation during a drive. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerDriveAnimate]
--- @param ply Player @ The driving player
--- @return void
function GM:PlayerDriveAnimate(ply) end

--- (server) Called when a weapon is dropped by a player via [Player:DropWeapon](https://wiki.facepunch.com/gmod/Player:DropWeapon).Also called when a weapon is removed from a player via [Player:StripWeapon](https://wiki.facepunch.com/gmod/Player:StripWeapon).See also [GM:WeaponEquip](https://wiki.facepunch.com/gmod/GM:WeaponEquip) for a hook when a player picks up a weapon.The weapon's [Entity:GetOwner](https://wiki.facepunch.com/gmod/Entity:GetOwner) will be NULL at the time this hook is called.[WEAPON:OnDrop](https://wiki.facepunch.com/gmod/WEAPON:OnDrop) will be called before this hook is. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerDroppedWeapon]
--- @param owner Player @ The player who owned this weapon before it was dropped
--- @param wep Weapon @ The weapon that was dropped
--- @return void
function GM:PlayerDroppedWeapon(owner, wep) end

--- (client) Called when player stops using voice chat. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerEndVoice]
--- @param ply Player @ Player who stopped talking
--- @return void
function GM:PlayerEndVoice(ply) end

--- (server) Called when a player enters a vehicle.Called just after [GM:CanPlayerEnterVehicle](https://wiki.facepunch.com/gmod/GM:CanPlayerEnterVehicle).See also [GM:PlayerLeaveVehicle](https://wiki.facepunch.com/gmod/GM:PlayerLeaveVehicle). 
--- [https://wiki.facepunch.com/gmod/GM:PlayerEnteredVehicle]
--- @param ply Player @ Player who entered vehicle.
--- @param veh Vehicle @ Vehicle the player entered.
--- @param role number @ The seat number.
--- @return void
function GM:PlayerEnteredVehicle(ply, veh, role) end

--- (client) Called before firing clientside animation events on a player model.See [GM:PlayerHandleAnimEvent](https://wiki.facepunch.com/gmod/GM:PlayerHandleAnimEvent) for the serverside version. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerFireAnimationEvent]
--- @param ply Player @ The player who has triggered the event.
--- @param pos Vector @ Position of the effect
--- @param ang Angle @ Angle of the effect
--- @param event number @ The event ID of happened even. See [this page](http://developer.valvesoftware.com/wiki/Animation_Events).
--- @param name string @ Name of the event
--- @return boolean
function GM:PlayerFireAnimationEvent(ply, pos, ang, event, name) end

--- (client/server) Called whenever a player steps. Return true to mute the normal sound. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerFootstep]
--- @param ply Player @ The stepping player
--- @param pos Vector @ The position of the step
--- @param foot number @ Foot that is stepped. 0 for left, 1 for right
--- @param sound string @ Sound that is going to play
--- @param volume number @ Volume of the footstep
--- @param filter CRecipientFilter @ The Recipient filter of players who can hear the footstep
--- @return boolean
function GM:PlayerFootstep(ply, pos, foot, sound, volume, filter) end

--- (server) Called when a player freezes an object. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerFrozeObject]
--- @param ply Player @ Player who has frozen an object
--- @param ent Entity @ The frozen object
--- @param physobj PhysObj @ The frozen physics object of the frozen entity ( For ragdolls )
--- @return void
function GM:PlayerFrozeObject(ply, ent, physobj) end

--- (server) Called before firing serverside animation events on the player models.See [GM:PlayerFireAnimationEvent](https://wiki.facepunch.com/gmod/GM:PlayerFireAnimationEvent) for the clientside version. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerHandleAnimEvent]
--- @param ply Player @ The player who has triggered the event.
--- @param event number @ The event ID of happened even. See [this page](http://developer.valvesoftware.com/wiki/Animation_Events).
--- @param eventTime number @ The absolute time this event occurred using [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime).
--- @param cycle number @ The frame this event occurred as a number between 0 and 1.
--- @param type number @ Event type. See [the Source SDK](https://github.com/ValveSoftware/source-sdk-2013/blob/master/mp/src/game/shared/eventlist.h#L14-L23).
--- @param options string @ Name or options of this event.
--- @return void
function GM:PlayerHandleAnimEvent (ply, event, eventTime, cycle, type, options) end

--- (server) Called when a player gets hurt. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerHurt]
--- @param victim Player @ Victim
--- @param attacker Entity @ Attacker Entity
--- @param healthRemaining number @ Remaining Health
--- @param damageTaken number @ Damage Taken
--- @return void
function GM:PlayerHurt(victim, attacker, healthRemaining, damageTaken) end

--- (server) Called when the player spawns for the first time.See [GM:PlayerSpawn](https://wiki.facepunch.com/gmod/GM:PlayerSpawn) for a hook called every player spawn. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerInitialSpawn]
--- @param player Player @ The player who spawned.
--- @param transition boolean @ If `true`, the player just spawned from a map transition.
--- @return void
function GM:PlayerInitialSpawn(player, transition) end

--- (server) Makes the player join a specified team. This is a convenience function that calls [Player:SetTeam](https://wiki.facepunch.com/gmod/Player:SetTeam) and runs the [GM:OnPlayerChangedTeam](https://wiki.facepunch.com/gmod/GM:OnPlayerChangedTeam) hook. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerJoinTeam]
--- @param ply Player @ Player to force
--- @param team number @ The team to put player into
--- @return void
function GM:PlayerJoinTeam(ply, team) end

--- (server) Called when a player leaves a vehicle. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerLeaveVehicle]
--- @param ply Player @ Player who left a vehicle.
--- @param veh Vehicle @ Vehicle the player left.
--- @return void
function GM:PlayerLeaveVehicle(ply, veh) end

--- (server) Called to give players the default set of weapons. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerLoadout]
--- @param ply Player @ Player to give weapons to.
--- @return void
function GM:PlayerLoadout(ply) end

--- (client/server) Called when a player tries to switch noclip mode. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerNoClip]
--- @param ply Player @ The person who entered/exited noclip
--- @param desiredState boolean @ Represents the noclip state (on/off) the user will enter if this hook allows them to.
--- @return boolean
function GM:PlayerNoClip(ply, desiredState) end

--- (client/server) Called after the player's think. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerPostThink]
--- @param ply Player @ The player
--- @return void
function GM:PlayerPostThink(ply) end

--- (server) Request a player to join the team. This function will check if the team is available to join or not.This hook is called when the player runs "changeteam" in the console.To prevent the player from changing teams, see [GM:PlayerCanJoinTeam](https://wiki.facepunch.com/gmod/GM:PlayerCanJoinTeam) 
--- [https://wiki.facepunch.com/gmod/GM:PlayerRequestTeam]
--- @param ply Player @ The player to try to put into a team
--- @param team number @ Team to put the player into if the checks succeeded
--- @return void
function GM:PlayerRequestTeam(ply, team) end

--- (server) Called when a player dispatched a chat message. For the clientside equivalent, see [GM:OnPlayerChat](https://wiki.facepunch.com/gmod/GM:OnPlayerChat). 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSay]
--- @param sender Player @ The player which sent the message.
--- @param text string @ The message's content.
--- @param teamChat boolean @ Is team chat?
--- @return string
function GM:PlayerSay(sender, text, teamChat) end

--- (server) Called to determine a spawn point for a player to spawn at. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSelectSpawn]
--- @param ply Player @ The player who needs a spawn point
--- @param transition boolean @ If true, the player just spawned from a map transition (`trigger_changelevel`). You probably want to not return an entity for that case to not override player's position.
--- @return Entity
function GM:PlayerSelectSpawn(ply, transition) end

--- (server) Find a team spawn point entity for this player. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSelectTeamSpawn]
--- @param team number @ Players team
--- @param ply Player @ The player
--- @return Entity
function GM:PlayerSelectTeamSpawn(team, ply) end

--- (server) Called whenever view model hands needs setting a model. By default this calls [PLAYER:GetHandsModel](https://wiki.facepunch.com/gmod/PLAYER:GetHandsModel) and if that fails, sets the hands model according to his player model. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSetHandsModel]
--- @param ply Player @ The player whose hands needs a model set
--- @param ent Entity @ The hands to set model of
--- @return void
function GM:PlayerSetHandsModel(ply, ent) end

--- (server) Called whenever a player spawns and must choose a model. A good place to assign a model to a player. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSetModel]
--- @param ply Player @ The player being chosen
--- @return void
function GM:PlayerSetModel(ply) end

--- (server) Returns true if the player should take damage from the given attacker. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerShouldTakeDamage]
--- @param ply Player @ The player
--- @param attacker Entity @ The attacker
--- @return boolean
function GM:PlayerShouldTakeDamage(ply, attacker) end

--- (server) Allows to suppress player taunts. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerShouldTaunt]
--- @param ply Player @ Player who tried to taunt
--- @param act number @ Act ID of the taunt player tries to do, see [ACT](https://wiki.facepunch.com/gmod/Enums/ACT)
--- @return boolean
function GM:PlayerShouldTaunt(ply, act) end

--- (server) Called when the player is killed by [Player:KillSilent](https://wiki.facepunch.com/gmod/Player:KillSilent).The player is already considered dead when this hook is called.* See [GM:PlayerDeath](https://wiki.facepunch.com/gmod/GM:PlayerDeath) for a hook which handles all other death causes.* [GM:PostPlayerDeath](https://wiki.facepunch.com/gmod/GM:PostPlayerDeath) is called **after** this hook. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSilentDeath]
--- @param ply Player @ The player who was killed
--- @return void
function GM:PlayerSilentDeath(ply) end

--- (server) Called whenever a player spawns, including respawns.See [GM:PlayerInitialSpawn](https://wiki.facepunch.com/gmod/GM:PlayerInitialSpawn) for a hook called only the first time a player spawns.See the [player_spawn gameevent](https://wiki.facepunch.com/gmod/Game_Events) for a shared version of this hook. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSpawn]
--- @param player Player @ The player who spawned.
--- @param transition boolean @ If true, the player just spawned from a map transition. You probably want to not touch player's weapons if this is set to true from this hook.
--- @return void
function GM:PlayerSpawn(player, transition) end

--- (server) Called to spawn the player as a spectator. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSpawnAsSpectator]
--- @param ply Player @ The player to spawn as a spectator
--- @return void
function GM:PlayerSpawnAsSpectator(ply) end

--- (server) Determines if the player can spray using the `impulse 201` console command. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSpray]
--- @param sprayer Player @ The player.
--- @return boolean
function GM:PlayerSpray(sprayer) end

--- (server) Called when player starts taunting. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerStartTaunt]
--- @param ply Player @ The player who is taunting
--- @param act number @ The sequence ID of the taunt
--- @param length number @ Length of the taunt
--- @return void
function GM:PlayerStartTaunt(ply, act, length) end

--- (client) Called when a player starts using voice chat. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerStartVoice]
--- @param ply Player @ Player who started using voice chat
--- @return void
function GM:PlayerStartVoice(ply) end

--- (client/server) Allows you to override the time between footsteps. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerStepSoundTime]
--- @param ply Player @ Player who is walking
--- @param type number @ The type of footsteps, see [STEPSOUNDTIME](https://wiki.facepunch.com/gmod/Enums/STEPSOUNDTIME)
--- @param walking boolean @ Is the player walking or not ( +walk? )
--- @return number
function GM:PlayerStepSoundTime(ply, type, walking) end

--- (server) Called whenever a player attempts to either turn on or off their flashlight, returning false will deny the change. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSwitchFlashlight]
--- @param ply Player @ The player who attempts to change their flashlight state.
--- @param enabled boolean @ The new state the player requested, true for on, false for off.
--- @return boolean
function GM:PlayerSwitchFlashlight(ply, enabled) end

--- (client/server) Called when a player attempts to switch their weapon.Primary usage of this hook is to prevent/allow weapon switching, **not** to detect weapon switching. It will not be called for [Player:SetActiveWeapon](https://wiki.facepunch.com/gmod/Player:SetActiveWeapon). 
--- [https://wiki.facepunch.com/gmod/GM:PlayerSwitchWeapon]
--- @param player Player @ The player switching weapons.
--- @param oldWeapon Weapon @ The previous weapon. Will be `NULL` if the previous weapon was removed or the player is switching from nothing.
--- @param newWeapon Weapon @ The weapon the player switched to. Will be `NULL` if the player is switching to nothing.
--- @return boolean
function GM:PlayerSwitchWeapon(player, oldWeapon, newWeapon) end

--- (client/server) The Move hook is called for you to manipulate the player's [CMoveData](https://wiki.facepunch.com/gmod/CMoveData). This hook is called moments before [GM:Move](https://wiki.facepunch.com/gmod/GM:Move) and [GM:PlayerNoClip](https://wiki.facepunch.com/gmod/GM:PlayerNoClip). 
--- [https://wiki.facepunch.com/gmod/GM:PlayerTick]
--- @param player Player @ The player
--- @param mv CMoveData @ The current movedata for the player.
--- @return void
function GM:PlayerTick(player, mv) end

--- (client/server) Called when a player has been hit by a trace and damaged (such as from a bullet). Returning true overrides the damage handling and prevents [GM:ScalePlayerDamage](https://wiki.facepunch.com/gmod/GM:ScalePlayerDamage) from being called. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerTraceAttack]
--- @param ply Player @ The player that has been hit
--- @param dmginfo CTakeDamageInfo @ The damage info of the bullet
--- @param dir Vector @ Normalized vector direction of the bullet's path
--- @param trace table @ The trace of the bullet's path, see [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult)
--- @return boolean
function GM:PlayerTraceAttack(ply, dmginfo, dir, trace) end

--- (server) Called when a player unfreezes an object. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerUnfrozeObject]
--- @param ply Player @ Player who has unfrozen an object
--- @param ent Entity @ The unfrozen object
--- @param physobj PhysObj @ The frozen physics object of the unfrozen entity ( For ragdolls )
--- @return void
function GM:PlayerUnfrozeObject(ply, ent, physobj) end

--- (server) Triggered when the player presses use on an object. Continuously runs until USE is released but will not activate other Entities until the USE key is released; dependent on activation type of the Entity. 
--- [https://wiki.facepunch.com/gmod/GM:PlayerUse]
--- @param ply Player @ The player pressing the "use" key.
--- @param ent Entity @ The entity which the player is looking at / activating USE on.
--- @return boolean
function GM:PlayerUse(ply, ent) end

--- (client) Called when it's time to populate the context menu menu bar at the top. 
--- [https://wiki.facepunch.com/gmod/GM:PopulateMenuBar]
--- @param menubar Panel @ The [DMenuBar](https://wiki.facepunch.com/gmod/DMenuBar) itself.
--- @return void
function GM:PopulateMenuBar(menubar) end

--- (client/server) Called right after the map has cleaned up (usually because [game.CleanUpMap](https://wiki.facepunch.com/gmod/game.CleanUpMap) was called)See also [GM:PreCleanupMap](https://wiki.facepunch.com/gmod/GM:PreCleanupMap). 
--- [https://wiki.facepunch.com/gmod/GM:PostCleanupMap]
--- @return void
function GM:PostCleanupMap() end

--- (client) Called right after the 2D skybox has been drawn - allowing you to draw over it. 
--- [https://wiki.facepunch.com/gmod/GM:PostDraw2DSkyBox]
--- @return void
function GM:PostDraw2DSkyBox() end

--- (client) Called after rendering effects. This is where halos are drawn. Called just before [GM:PreDrawHUD](https://wiki.facepunch.com/gmod/GM:PreDrawHUD). 
--- [https://wiki.facepunch.com/gmod/GM:PostDrawEffects]
--- @return void
function GM:PostDrawEffects() end

--- (client) Called after [GM:PreDrawHUD](https://wiki.facepunch.com/gmod/GM:PreDrawHUD),  [GM:HUDPaintBackground](https://wiki.facepunch.com/gmod/GM:HUDPaintBackground) and [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint) but before  [GM:DrawOverlay](https://wiki.facepunch.com/gmod/GM:DrawOverlay).Unlike [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint)([Background](https://wiki.facepunch.com/gmod/GM:HUDPaintBackground)) hooks, this will still be called when the main menu is visible. And so will be [GM:PreDrawHUD](https://wiki.facepunch.com/gmod/GM:PreDrawHUD) 
--- [https://wiki.facepunch.com/gmod/GM:PostDrawHUD]
--- @return void
function GM:PostDrawHUD() end

--- (client) Called after drawing opaque entities.See also [GM:PostDrawTranslucentRenderables](https://wiki.facepunch.com/gmod/GM:PostDrawTranslucentRenderables) and [GM:PreDrawOpaqueRenderables](https://wiki.facepunch.com/gmod/GM:PreDrawOpaqueRenderables). 
--- [https://wiki.facepunch.com/gmod/GM:PostDrawOpaqueRenderables]
--- @param bDrawingDepth boolean @ Whether the current draw is writing depth.
--- @param bDrawingSkybox boolean @ Whether the current draw is drawing the 3D or 2D skybox.In case of 2D skyboxes it is possible for this hook to always be called with this parameter set to `true`.
--- @param isDraw3DSkybox boolean @ Whether the current draw is drawing the 3D.
--- @return void
function GM:PostDrawOpaqueRenderables(bDrawingDepth, bDrawingSkybox, isDraw3DSkybox) end

--- (client) Called after the player hands are drawn. 
--- [https://wiki.facepunch.com/gmod/GM:PostDrawPlayerHands]
--- @param hands Entity @ This is the gmod_hands entity.
--- @param vm Entity @ This is the view model entity.
--- @param ply Player @ The the owner of the view model.
--- @param weapon Weapon @ This is the weapon that is from the view model.
--- @return void
function GM:PostDrawPlayerHands(hands, vm, ply, weapon) end

--- (client) Called after drawing the 3D skybox. This will not be called if skybox rendering was prevented via the [GM:PreDrawSkyBox](https://wiki.facepunch.com/gmod/GM:PreDrawSkyBox) hook.See also [GM:PostDraw2DSkyBox](https://wiki.facepunch.com/gmod/GM:PostDraw2DSkyBox). 
--- [https://wiki.facepunch.com/gmod/GM:PostDrawSkyBox]
--- @return void
function GM:PostDrawSkyBox() end

--- (client) Called after all translucent entities are drawn.See also [GM:PostDrawOpaqueRenderables](https://wiki.facepunch.com/gmod/GM:PostDrawOpaqueRenderables) and  [GM:PreDrawTranslucentRenderables](https://wiki.facepunch.com/gmod/GM:PreDrawTranslucentRenderables). 
--- [https://wiki.facepunch.com/gmod/GM:PostDrawTranslucentRenderables]
--- @param bDrawingDepth boolean @ Whether the current call is writing depth.
--- @param bDrawingSkybox boolean @ Whether the current draw is drawing the 3D or 2D skybox.In case of 2D skyboxes it is possible for this hook to always be called with this parameter set to `true`.
--- @param isDraw3DSkybox boolean @ Whether the current draw is drawing the 3D.
--- @return void
function GM:PostDrawTranslucentRenderables(bDrawingDepth, bDrawingSkybox, isDraw3DSkybox) end

--- (client) Called after view model is drawn. 
--- [https://wiki.facepunch.com/gmod/GM:PostDrawViewModel]
--- @param viewmodel Entity @ Players view model
--- @param player Player @ The owner of the weapon/view model
--- @param weapon Weapon @ The weapon the player is currently holding
--- @return void
function GM:PostDrawViewModel(viewmodel, player, weapon) end

--- (server) Called when an entity receives a damage event, after passing damage filters, etc. 
--- [https://wiki.facepunch.com/gmod/GM:PostEntityTakeDamage]
--- @param ent Entity @ The entity that took the damage.
--- @param dmg CTakeDamageInfo @ No description provided
--- @param took boolean @ Whether the entity actually took the damage. (For example, shooting a Strider will generate this event, but it won't take bullet damage).
--- @return void
function GM:PostEntityTakeDamage(ent, dmg, took) end

--- (client/server) Called after the gamemode has loaded. 
--- [https://wiki.facepunch.com/gmod/GM:PostGamemodeLoaded]
--- @return void
function GM:PostGamemodeLoaded() end

--- (server) Called right after [GM:DoPlayerDeath](https://wiki.facepunch.com/gmod/GM:DoPlayerDeath), [GM:PlayerDeath](https://wiki.facepunch.com/gmod/GM:PlayerDeath) and [GM:PlayerSilentDeath](https://wiki.facepunch.com/gmod/GM:PlayerSilentDeath).This hook will be called for all deaths, including [Player:KillSilent](https://wiki.facepunch.com/gmod/Player:KillSilent) 
--- [https://wiki.facepunch.com/gmod/GM:PostPlayerDeath]
--- @param ply Player @ The player
--- @return void
function GM:PostPlayerDeath(ply) end

--- (client) Called after the player was drawn. 
--- [https://wiki.facepunch.com/gmod/GM:PostPlayerDraw]
--- @param ply Player @ The player that was drawn.
--- @param flags number @ The [STUDIO_](https://wiki.facepunch.com/gmod/Enums/STUDIO) flags for this render operation.
--- @return void
function GM:PostPlayerDraw(ply, flags) end

--- (client) Allows you to suppress post processing effect drawing. 
--- [https://wiki.facepunch.com/gmod/GM:PostProcessPermitted]
--- @param ppeffect string @ The classname of Post Processing effect
--- @return boolean
function GM:PostProcessPermitted(ppeffect) end

--- (client) Called after the frame has been rendered. 
--- [https://wiki.facepunch.com/gmod/GM:PostRender]
--- @return void
function GM:PostRender() end

--- (client) Called after the VGUI has been drawn. 
--- [https://wiki.facepunch.com/gmod/GM:PostRenderVGUI]
--- @return void
function GM:PostRenderVGUI() end

--- (server) Called just after performing an undo. 
--- [https://wiki.facepunch.com/gmod/GM:PostUndo]
--- @param undo table @ The undo table. See [Undo](https://wiki.facepunch.com/gmod/Structures/Undo) struct.
--- @param count number @ The amount of props/actions undone. This will be `0` for undos that are skipped in cases where for example the entity that is meant to be undone is already deleted.
--- @return void
function GM:PostUndo(undo, count) end

--- (client/server) Called right before the map cleans up (usually because [game.CleanUpMap](https://wiki.facepunch.com/gmod/game.CleanUpMap) was called)See also [GM:PostCleanupMap](https://wiki.facepunch.com/gmod/GM:PostCleanupMap). 
--- [https://wiki.facepunch.com/gmod/GM:PreCleanupMap]
--- @return void
function GM:PreCleanupMap() end

--- (client) Called just after [GM:PreDrawViewModel](https://wiki.facepunch.com/gmod/GM:PreDrawViewModel) and can technically be considered "PostDrawAllViewModels". 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawEffects]
--- @return void
function GM:PreDrawEffects() end

--- (client) Called before rendering the halos. This is the place to call [halo.Add](https://wiki.facepunch.com/gmod/halo.Add). This hook is actually running inside of [GM:PostDrawEffects](https://wiki.facepunch.com/gmod/GM:PostDrawEffects). 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawHalos]
--- @return void
function GM:PreDrawHalos() end

--- (client) Called just after [GM:PostDrawEffects](https://wiki.facepunch.com/gmod/GM:PostDrawEffects). Drawing anything in it seems to work incorrectly. 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawHUD]
--- @return void
function GM:PreDrawHUD() end

--- (client) Called before all opaque entities are drawn.See also [GM:PreDrawTranslucentRenderables](https://wiki.facepunch.com/gmod/GM:PreDrawTranslucentRenderables) and  [GM:PostDrawOpaqueRenderables](https://wiki.facepunch.com/gmod/GM:PostDrawOpaqueRenderables). 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawOpaqueRenderables]
--- @param isDrawingDepth boolean @ Whether the current draw is writing depth.
--- @param isDrawSkybox boolean @ Whether the current draw is drawing the 3D or 2D skybox.In case of 2D skyboxes it is possible for this hook to always be called with this parameter set to `true`.
--- @param isDraw3DSkybox boolean @ Whether the current draw is drawing the 3D.
--- @return boolean
function GM:PreDrawOpaqueRenderables(isDrawingDepth, isDrawSkybox, isDraw3DSkybox) end

--- (client) Called before the player hands are drawn. 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawPlayerHands]
--- @param hands Entity @ This is the gmod_hands entity before it is drawn.
--- @param vm Entity @ This is the view model entity before it is drawn.
--- @param ply Player @ The the owner of the view model.
--- @param weapon Weapon @ This is the weapon that is from the view model.
--- @return boolean
function GM:PreDrawPlayerHands(hands, vm, ply, weapon) end

--- (client) Called before the 3D sky box is drawn. This will not be called for maps with no 3D skybox, or when the 3d skybox is disabled. (`r_3dsky 0`)See also [GM:PostDrawSkyBox](https://wiki.facepunch.com/gmod/GM:PostDrawSkyBox) 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawSkyBox]
--- @return boolean
function GM:PreDrawSkyBox() end

--- (client) Called before all the translucent entities are drawn.See also [GM:PreDrawOpaqueRenderables](https://wiki.facepunch.com/gmod/GM:PreDrawOpaqueRenderables) and  [GM:PostDrawTranslucentRenderables](https://wiki.facepunch.com/gmod/GM:PostDrawTranslucentRenderables). 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawTranslucentRenderables]
--- @param isDrawingDepth boolean @ Whether the current draw is writing depth.
--- @param isDrawSkybox boolean @ Whether the current draw is drawing the 3D or 2D skybox.In case of 2D skyboxes it is possible for this hook to always be called with this parameter set to `true`.
--- @param isDraw3DSkybox boolean @ Whether the current draw is drawing the 3D.
--- @return boolean
function GM:PreDrawTranslucentRenderables(isDrawingDepth, isDrawSkybox, isDraw3DSkybox) end

--- (client) Called before the view model has been drawn. This hook by default also calls this on weapons, so you can use [WEAPON:PreDrawViewModel](https://wiki.facepunch.com/gmod/WEAPON:PreDrawViewModel).You can use [GM:PreDrawEffects](https://wiki.facepunch.com/gmod/GM:PreDrawEffects) as a "PostDrawViewModel" hook as it is called just after the view model(s) are drawn. 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawViewModel]
--- @param vm Entity @ This is the view model entity before it is drawn. On server-side, this entity is the predicted view model.
--- @param ply Player @ The owner of the view model.
--- @param weapon Weapon @ This is the weapon that is from the view model.
--- @return boolean
function GM:PreDrawViewModel(vm, ply, weapon) end

--- (client) Called before view models and entities with `RENDERGROUP_VIEWMODEL` are drawn.You can use [GM:PreDrawEffects](https://wiki.facepunch.com/gmod/GM:PreDrawEffects) as a `PostDrawViewModel` hook as it is called just after the view model(s) are drawn. 
--- [https://wiki.facepunch.com/gmod/GM:PreDrawViewModels]
--- @return void
function GM:PreDrawViewModels() end

--- (client/server) Called before the gamemode is loaded. 
--- [https://wiki.facepunch.com/gmod/GM:PreGamemodeLoaded]
--- @return void
function GM:PreGamemodeLoaded() end

--- (client) Called before the player is drawn. 
--- [https://wiki.facepunch.com/gmod/GM:PrePlayerDraw]
--- @param player Player @ The player that is about to be drawn.
--- @param flags number @ The [STUDIO_](https://wiki.facepunch.com/gmod/Enums/STUDIO) flags for this render operation.
--- @return boolean
function GM:PrePlayerDraw(player, flags) end

--- (client/server) Called by [scripted_ents.Register](https://wiki.facepunch.com/gmod/scripted_ents.Register). 
--- [https://wiki.facepunch.com/gmod/GM:PreRegisterSENT]
--- @param ent table @ The entity table to be registered.
--- @param class string @ The class name to be assigned.
--- @return boolean
function GM:PreRegisterSENT(ent, class) end

--- (client/server) Called when a Scripted Weapon (SWEP) is about to be registered, allowing addons to alter the weapon's SWEP table with custom data for later usage. Called internally from [weapons.Register](https://wiki.facepunch.com/gmod/weapons.Register). 
--- [https://wiki.facepunch.com/gmod/GM:PreRegisterSWEP]
--- @param swep table @ The SWEP table to be registered.
--- @param class string @ The class name to be assigned.
--- @return boolean
function GM:PreRegisterSWEP(swep, class) end

--- (client) Called before the renderer is about to start rendering the next frame. 
--- [https://wiki.facepunch.com/gmod/GM:PreRender]
--- @return boolean
function GM:PreRender() end

--- (server) Called just before performing an undo. 
--- [https://wiki.facepunch.com/gmod/GM:PreUndo]
--- @param undo table @ The undo table. See [Undo](https://wiki.facepunch.com/gmod/Structures/Undo) struct.
--- @return void
function GM:PreUndo(undo) end

--- (client) This will prevent  from sending to server when player tries to shoot from C menu. 
--- [https://wiki.facepunch.com/gmod/GM:PreventScreenClicks]
--- @return boolean
function GM:PreventScreenClicks() end

--- (client/server) Called when a prop has been destroyed. 
--- [https://wiki.facepunch.com/gmod/GM:PropBreak]
--- @param attacker Player @ The person who broke the prop.
--- @param prop Entity @ The entity that has been broken by the attacker.
--- @return void
function GM:PropBreak(attacker, prop) end

--- (client) Render the scene. Used by the `Stereoscopy` post-processing effect. 
--- [https://wiki.facepunch.com/gmod/GM:RenderScene]
--- @param origin Vector @ View origin
--- @param angles Angle @ View angles
--- @param fov number @ View FOV
--- @return boolean
function GM:RenderScene(origin, angles, fov) end

--- (client) Used to render post processing effects. 
--- [https://wiki.facepunch.com/gmod/GM:RenderScreenspaceEffects]
--- @return void
function GM:RenderScreenspaceEffects() end

--- (client/server) Called when the game is reloaded from a Source Engine save system ( not the Sandbox saves or dupes ).See [GM:Saved](https://wiki.facepunch.com/gmod/GM:Saved) for a hook that is called when such a save file is created. 
--- [https://wiki.facepunch.com/gmod/GM:Restored]
--- @return void
function GM:Restored() end

--- (client/server) Called when the game is saved using the Source Engine save system (not the Sandbox saves or dupes).See [GM:Restored](https://wiki.facepunch.com/gmod/GM:Restored) for a hook that is called when such a save file is loaded.See also the [saverestore](https://wiki.facepunch.com/gmod/saverestore) for relevant functions. 
--- [https://wiki.facepunch.com/gmod/GM:Saved]
--- @return void
function GM:Saved() end

--- (server) Called when an NPC takes damage. 
--- [https://wiki.facepunch.com/gmod/GM:ScaleNPCDamage]
--- @param npc NPC @ The NPC that takes damage
--- @param hitgroup number @ The hitgroup (hitbox) enum where the NPC took damage. See [HITGROUP](https://wiki.facepunch.com/gmod/Enums/HITGROUP)
--- @param dmginfo CTakeDamageInfo @ Damage info
--- @return void
function GM:ScaleNPCDamage(npc, hitgroup, dmginfo) end

--- (client/server) This hook allows you to change how much damage a player receives when one takes damage to a specific body part. 
--- [https://wiki.facepunch.com/gmod/GM:ScalePlayerDamage]
--- @param ply Player @ The player taking damage.
--- @param hitgroup number @ The hitgroup where the player took damage. See [HITGROUP](https://wiki.facepunch.com/gmod/Enums/HITGROUP)
--- @param dmginfo CTakeDamageInfo @ The damage info.
--- @return boolean
function GM:ScalePlayerDamage(ply, hitgroup, dmginfo) end

--- (client) Called when player released the scoreboard button. ( TAB by default ) 
--- [https://wiki.facepunch.com/gmod/GM:ScoreboardHide]
--- @return void
function GM:ScoreboardHide() end

--- (client) Called when player presses the scoreboard button. ( TAB by default ) 
--- [https://wiki.facepunch.com/gmod/GM:ScoreboardShow]
--- @return void
function GM:ScoreboardShow() end

--- (client/server) Sets player run and sprint speeds. 
--- [https://wiki.facepunch.com/gmod/GM:SetPlayerSpeed]
--- @param ply Player @ The player to set the speed of.
--- @param walkSpeed number @ The walk speed.
--- @param runSpeed number @ The run speed.
--- @return void
function GM:SetPlayerSpeed(ply, walkSpeed, runSpeed) end

--- (client/server) SetupMove is called before the engine process movements. This allows us to override the players movement.See [Game Movement](https://wiki.facepunch.com/gmod/Game%20Movement) for an explanation on the move system. 
--- [https://wiki.facepunch.com/gmod/GM:SetupMove]
--- @param ply Player @ The player whose movement we are about to process
--- @param mv CMoveData @ The move data to override/use
--- @param cmd CUserCmd @ The command data
--- @return void
function GM:SetupMove(ply, mv, cmd) end

--- (server) Allows you to add extra positions to the player's PVS. This is the place to call [AddOriginToPVS](https://wiki.facepunch.com/gmod/Global.AddOriginToPVS). 
--- [https://wiki.facepunch.com/gmod/GM:SetupPlayerVisibility]
--- @param ply Player @ The player
--- @param viewEntity Entity @ Players [Player:GetViewEntity](https://wiki.facepunch.com/gmod/Player:GetViewEntity)
--- @return void
function GM:SetupPlayerVisibility(ply, viewEntity) end

--- (client) Allows you to use render.Fog* functions to manipulate skybox fog.		This will not be called for maps with no 3D skybox, or when the 3d skybox is disabled. (`r_3dsky 0`) 
--- [https://wiki.facepunch.com/gmod/GM:SetupSkyboxFog]
--- @param scale number @ The scale of 3D skybox
--- @return boolean
function GM:SetupSkyboxFog(scale) end

--- (client) Allows you to use render.Fog* functions to manipulate world fog. 
--- [https://wiki.facepunch.com/gmod/GM:SetupWorldFog]
--- @return boolean
function GM:SetupWorldFog() end

--- (client/server) Called to decide whether a pair of entities should collide with each other. This is only called if [Entity:SetCustomCollisionCheck](https://wiki.facepunch.com/gmod/Entity:SetCustomCollisionCheck) was used on one or both entities.Where applicable, consider using [constraint.NoCollide](https://wiki.facepunch.com/gmod/constraint.NoCollide) or a [logic_collision_pair](https://developer.valvesoftware.com/wiki/Logic_collision_pair) entity instead - they are considerably easier to use and may be more appropriate in some situations. 
--- [https://wiki.facepunch.com/gmod/GM:ShouldCollide]
--- @param ent1 Entity @ The first entity in the collision poll.
--- @param ent2 Entity @ The second entity in the collision poll.
--- @return boolean
function GM:ShouldCollide(ent1, ent2) end

--- (client) Called to determine if the [LocalPlayer](https://wiki.facepunch.com/gmod/Global.LocalPlayer) should be drawn.If you're using this hook to draw a player for a [GM:CalcView](https://wiki.facepunch.com/gmod/GM:CalcView) hook, then you may want to consider using the `drawviewer` variable you can use in your [CamData](https://wiki.facepunch.com/gmod/Structures/CamData) table instead. 
--- [https://wiki.facepunch.com/gmod/GM:ShouldDrawLocalPlayer]
--- @param ply Player @ The player
--- @return boolean
function GM:ShouldDrawLocalPlayer(ply) end

--- (server) Called when a player executes gm_showhelp console command. ( Default bind is F1 ) 
--- [https://wiki.facepunch.com/gmod/GM:ShowHelp]
--- @param ply Player @ Player who executed the command
--- @return void
function GM:ShowHelp(ply) end

--- (server) Called when a player executes `gm_showspare1` console command ( Default bind is  ). 
--- [https://wiki.facepunch.com/gmod/GM:ShowSpare1]
--- @param ply Player @ Player who executed the command.
--- @return void
function GM:ShowSpare1(ply) end

--- (server) Called when a player executes `gm_showspare2` console command ( Default bind is  ). 
--- [https://wiki.facepunch.com/gmod/GM:ShowSpare2]
--- @param ply Player @ Player who executed the command.
--- @return void
function GM:ShowSpare2(ply) end

--- (server) Called when a player executes gm_showteam console command. ( Default bind is F2 ) 
--- [https://wiki.facepunch.com/gmod/GM:ShowTeam]
--- @param ply Player @ Player who executed the command
--- @return void
function GM:ShowTeam(ply) end

--- (client/server) Called whenever the Lua environment is about to be shut down, for example on map change, or when the server is going to shut down. 
--- [https://wiki.facepunch.com/gmod/GM:ShutDown]
--- @return void
function GM:ShutDown() end

--- (client) Called when spawn icon is generated. 
--- [https://wiki.facepunch.com/gmod/GM:SpawniconGenerated]
--- @param lastmodel string @ File path of previously generated model.
--- @param imagename string @ File path of the generated icon.
--- @param modelsleft number @ Amount of models left to generate.
--- @return void
function GM:SpawniconGenerated(lastmodel, imagename, modelsleft) end

--- (client) Runs when the user tries to open the chat box. 
--- [https://wiki.facepunch.com/gmod/GM:StartChat]
--- @param isTeamChat boolean @ Whether the message was sent through team chat.
--- @return boolean
function GM:StartChat(isTeamChat) end

--- (client/server) Allows you to change the players inputs before they are processed by the server.This is basically a shared version of [GM:CreateMove](https://wiki.facepunch.com/gmod/GM:CreateMove). 
--- [https://wiki.facepunch.com/gmod/GM:StartCommand]
--- @param ply Player @ The player
--- @param ucmd CUserCmd @ The usercommand
--- @return void
function GM:StartCommand(ply, ucmd) end

--- (client/server) Called right before an entity starts driving. Overriding this hook will cause it to not call [drive.Start](https://wiki.facepunch.com/gmod/drive.Start) and the player will not begin driving the entity. 
--- [https://wiki.facepunch.com/gmod/GM:StartEntityDriving]
--- @param ent Entity @ The entity that is going to be driven
--- @param ply Player @ The player that is going to drive the entity
--- @return void
function GM:StartEntityDriving(ent, ply) end

--- (menu) Called when you start a new game via the menu. 
--- [https://wiki.facepunch.com/gmod/GM:StartGame]
--- @return void
function GM:StartGame() end

--- (client/server) Called every frame on client and server. This will be the same as [GM:Tick](https://wiki.facepunch.com/gmod/GM:Tick) on the server when there is no lag, but will only be called once every processed server frame during lag.See [GM:Tick](https://wiki.facepunch.com/gmod/GM:Tick) for a hook that runs every tick on both the client and server. 
--- [https://wiki.facepunch.com/gmod/GM:Think]
--- @return void
function GM:Think() end

--- (client/server) Called every server tick. Serverside, this is similar to [GM:Think](https://wiki.facepunch.com/gmod/GM:Think). 
--- [https://wiki.facepunch.com/gmod/GM:Tick]
--- @return void
function GM:Tick() end

--- (client/server) Allows you to translate player activities. 
--- [https://wiki.facepunch.com/gmod/GM:TranslateActivity]
--- @param ply Player @ The player
--- @param act number @ The activity. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT)
--- @return number
function GM:TranslateActivity(ply, act) end

--- (client/server) Animation updates (pose params etc) should be done here. 
--- [https://wiki.facepunch.com/gmod/GM:UpdateAnimation]
--- @param ply Player @ The player to update the animation info for.
--- @param velocity Vector @ The player's velocity.
--- @param maxSeqGroundSpeed number @ Speed of the animation - used for playback rate scaling.
--- @return void
function GM:UpdateAnimation(ply, velocity, maxSeqGroundSpeed) end

--- (server) Called when a variable is edited on an Entity (called by Edit Properties... menu). See [Editable Entities](https://wiki.facepunch.com/gmod/Editable%20Entities) for more information. 
--- [https://wiki.facepunch.com/gmod/GM:VariableEdited]
--- @param ent Entity @ The entity being edited
--- @param ply Player @ The player doing the editing
--- @param key string @ The name of the variable
--- @param val string @ The new value, as a string which will later be converted to its appropriate type
--- @param editor table @ The edit table defined in [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar)
--- @return void
function GM:VariableEdited(ent, ply, key, val, editor) end

--- (client/server) Called when you are driving a vehicle. This hook works just like [GM:Move](https://wiki.facepunch.com/gmod/GM:Move).This hook is called before [GM:Move](https://wiki.facepunch.com/gmod/GM:Move) and will be called when [GM:PlayerTick](https://wiki.facepunch.com/gmod/GM:PlayerTick) is not. 
--- [https://wiki.facepunch.com/gmod/GM:VehicleMove]
--- @param ply Player @ Player who is driving the vehicle
--- @param veh Vehicle @ The vehicle being driven
--- @param mv CMoveData @ Move data
--- @return void
function GM:VehicleMove(ply, veh, mv) end

--- (client) Called when user clicks on a VGUI panel. 
--- [https://wiki.facepunch.com/gmod/GM:VGUIMousePressAllowed]
--- @param button number @ The button that was pressed, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE)
--- @return boolean
function GM:VGUIMousePressAllowed(button) end

--- (client) Called when a mouse button is pressed on a VGUI element or menu. 
--- [https://wiki.facepunch.com/gmod/GM:VGUIMousePressed]
--- @param pnl Panel @ Panel that currently has focus.
--- @param mouseCode number @ The key that the player pressed using [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @return void
function GM:VGUIMousePressed(pnl, mouseCode) end

--- (server) Called as a weapon entity is picked up by a player.See also [GM:PlayerDroppedWeapon](https://wiki.facepunch.com/gmod/GM:PlayerDroppedWeapon). 
--- [https://wiki.facepunch.com/gmod/GM:WeaponEquip]
--- @param weapon Weapon @ The equipped weapon.
--- @param owner Player @ The player that is picking up the weapon.
--- @return void
function GM:WeaponEquip(weapon, owner) end

--- (menu) Called when an addon from the Steam workshop finishes downloading. Used by default to update details on the workshop downloading panel. 
--- [https://wiki.facepunch.com/gmod/GM:WorkshopDownloadedFile]
--- @param id number @ Workshop ID of addon.
--- @param title string @ Name of addon.
--- @return void
function GM:WorkshopDownloadedFile(id, title) end

--- (menu) Called when an addon from the Steam workshop begins downloading. Used by default to place details on the workshop downloading panel. 
--- [https://wiki.facepunch.com/gmod/GM:WorkshopDownloadFile]
--- @param id number @ Workshop ID of addon.
--- @param imageID number @ ID of addon's preview image.For example, for **Extended Spawnmenu** addon, the image URL is```http://cloud-4.steamusercontent.com/ugc/702859018846106764/9E7E1946296240314751192DA0AD15B6567FF92D/```So, the value of this argument would be **702859018846106764**.
--- @param title string @ Name of addon.
--- @param size number @ File size of addon in bytes.
--- @return void
function GM:WorkshopDownloadFile(id, imageID, title, size) end

--- (menu) Called while an addon from the Steam workshop is downloading. Used by default to update details on the fancy workshop download panel. 
--- [https://wiki.facepunch.com/gmod/GM:WorkshopDownloadProgress]
--- @param id number @ Workshop ID of addon.
--- @param imageID number @ ID of addon's preview image.For example, for **Extended Spawnmenu** addon, the image URL is```http://cloud-4.steamusercontent.com/ugc/702859018846106764/9E7E1946296240314751192DA0AD15B6567FF92D/```So, the value of this argument would be **702859018846106764**.
--- @param title string @ Name of addon.
--- @param downloaded number @ Current bytes of addon downloaded.
--- @param expected number @ Expected file size of addon in bytes.
--- @return void
function GM:WorkshopDownloadProgress(id, imageID, title, downloaded, expected) end

--- (menu) Called after [GM:WorkshopStart](https://wiki.facepunch.com/gmod/GM:WorkshopStart). 
--- [https://wiki.facepunch.com/gmod/GM:WorkshopDownloadTotals]
--- @param remain number @ Remaining addons to download
--- @param total number @ Total addons needing to be downloaded
--- @return void
function GM:WorkshopDownloadTotals(remain, total) end

--- (menu) Called when downloading content from Steam workshop ends. Used by default to hide fancy workshop downloading panel. 
--- [https://wiki.facepunch.com/gmod/GM:WorkshopEnd]
--- @return void
function GM:WorkshopEnd() end

--- (menu) Called while an addon from the Steam workshop is extracting. Used by default to update details on the fancy workshop download panel. 
--- [https://wiki.facepunch.com/gmod/GM:WorkshopExtractProgress]
--- @param id number @ Workshop ID of addon.
--- @param ImageID number @ ID of addon's preview image.For example, for **Extended Spawnmenu** addon, the image URL is```http://cloud-4.steamusercontent.com/ugc/702859018846106764/9E7E1946296240314751192DA0AD15B6567FF92D/```So, the value of this argument would be **702859018846106764**.
--- @param title string @ Name of addon.
--- @param percent number @ Current bytes of addon extracted.
--- @return void
function GM:WorkshopExtractProgress(id, ImageID, title, percent) end

--- (menu) Called when downloading content from Steam workshop begins. Used by default to show fancy workshop downloading panel.The order of Workshop hooks is this:* WorkshopStart* WorkshopDownloadTotals* * These are called for each new item:* WorkshopDownloadFile* WorkshopDownloadProgress - This is called until the file is finished* WorkshopDownloadedFile* WorkshopEnd (this ones called once) 
--- [https://wiki.facepunch.com/gmod/GM:WorkshopStart]
--- @return void
function GM:WorkshopStart() end

--- (menu) Called by the engine when the game initially fetches subscriptions to be displayed on the bottom of the main menu screen. 
--- [https://wiki.facepunch.com/gmod/GM:WorkshopSubscriptionsProgress]
--- @param num number @ Amount of subscribed addons that have info retrieved.
--- @param max number @ Total amount of subscribed addons that need their info retrieved.
--- @return void
function GM:WorkshopSubscriptionsProgress(num, max) end

