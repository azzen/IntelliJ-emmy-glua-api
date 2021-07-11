--- @class ENT
ENT = {}

--- (server) Called when another entity fires an event to this entity. 
--- [https://wiki.facepunch.com/gmod/ENTITY:AcceptInput]
--- @param inputName string @ The name of the input that was triggered.
--- @param activator Entity @ The initial cause for the input getting triggered. (EG the player who pushed a button)
--- @param caller Entity @ The entity that directly triggered the input. (EG the button that was pushed)
--- @param data string @ The data passed.
--- @return boolean
function ENT:AcceptInput(inputName, activator, caller, data) end

--- (client/server) Called whenever the entity's position changes. A callback for when an entity's angle changes is available via [Entity:AddCallback](https://wiki.facepunch.com/gmod/Entity:AddCallback).Like [ENTITY:RenderOverride](https://wiki.facepunch.com/gmod/ENTITY:RenderOverride), this hook works on any entity (scripted or not) it is applied on. 
--- [https://wiki.facepunch.com/gmod/ENTITY:CalcAbsolutePosition]
--- @param pos Vector @ The entity's actual position. May differ from [Entity:GetPos](https://wiki.facepunch.com/gmod/Entity:GetPos)
--- @param ang Angle @ The entity's actual angles. May differ from [Entity:GetAngles](https://wiki.facepunch.com/gmod/Entity:GetAngles)
--- @return Vector|Angle
function ENT:CalcAbsolutePosition(pos, ang) end

--- (client/server) Controls if a property can be used on this entity or not.This hook will only work in Sandbox derived gamemodes that do not have [SANDBOX:CanProperty](https://wiki.facepunch.com/gmod/SANDBOX:CanProperty) overridden. 
--- [https://wiki.facepunch.com/gmod/ENTITY:CanProperty]
--- @param ply Player @ Player, that tried to use the property
--- @param property string @ Class of the property that is tried to use, for example - bonemanipulate
--- @return boolean
function ENT:CanProperty(ply, property) end

--- (client/server) Controls if a tool can be used on this entity or not.This hook will only work in Sandbox derived gamemodes that do not have [SANDBOX:CanTool](https://wiki.facepunch.com/gmod/SANDBOX:CanTool) overridden. 
--- [https://wiki.facepunch.com/gmod/ENTITY:CanTool]
--- @param ply Player @ Player, that tried to use the tool
--- @param tr table @ The trace of the tool. See [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult).
--- @param toolname string @ Class of the tool that is tried to use, for example - `weld`
--- @param tool table @ The tool mode table the player currently has selected.
--- @param button number @ The tool button pressed.
--- @return boolean
function ENT:CanTool(ply, tr, toolname, tool, button) end

--- (server) Called just before [ENTITY:Initialize](https://wiki.facepunch.com/gmod/ENTITY:Initialize) for "ai" type entities only. 
--- [https://wiki.facepunch.com/gmod/ENTITY:CreateSchedulesInternal]
--- @return void
function ENT:CreateSchedulesInternal() end

--- (client/server) Called so the entity can override the bullet impact effects it makes. This is called when the entity itself fires bullets via [Entity:FireBullets](https://wiki.facepunch.com/gmod/Entity:FireBullets), not when it gets hit. 
--- [https://wiki.facepunch.com/gmod/ENTITY:DoImpactEffect]
--- @param tr table @ A [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult) from the bullet's start point to the impact point
--- @param damageType number @ The damage type of bullet. See [DMG](https://wiki.facepunch.com/gmod/Enums/DMG)
--- @return boolean
function ENT:DoImpactEffect(tr, damageType) end

--- (server) Called whenever an engine schedule is being ran. 
--- [https://wiki.facepunch.com/gmod/ENTITY:DoingEngineSchedule]
--- @return void
function ENT:DoingEngineSchedule() end

--- (server) Runs a Lua schedule. Runs tasks inside the schedule. 
--- [https://wiki.facepunch.com/gmod/ENTITY:DoSchedule]
--- @param sched table @ The schedule to run.
--- @return void
function ENT:DoSchedule(sched) end

--- (client) Called if and when the entity should be drawn opaquely, based on the [Entity:GetRenderGroup](https://wiki.facepunch.com/gmod/Entity:GetRenderGroup) of the entity.See [ENT](https://wiki.facepunch.com/gmod/Structures/ENT) and [RENDERGROUP](https://wiki.facepunch.com/gmod/Enums/RENDERGROUP) for more information.See also [ENTITY:DrawTranslucent](https://wiki.facepunch.com/gmod/ENTITY:DrawTranslucent). 
--- [https://wiki.facepunch.com/gmod/ENTITY:Draw]
--- @param flags number @ The bit flags from [STUDIO](https://wiki.facepunch.com/gmod/Enums/STUDIO)
--- @return void
function ENT:Draw(flags) end

--- (client) Called when the entity should be drawn translucently. If your scripted entity has a translucent model, it will be invisible unless it is drawn here. 
--- [https://wiki.facepunch.com/gmod/ENTITY:DrawTranslucent]
--- @param flags number @ The bit flags from [STUDIO](https://wiki.facepunch.com/gmod/Enums/STUDIO)
--- @return void
function ENT:DrawTranslucent(flags) end

--- (server) Called when the entity stops touching another entity. 
--- [https://wiki.facepunch.com/gmod/ENTITY:EndTouch]
--- @param entity Entity @ The entity which was touched.
--- @return void
function ENT:EndTouch(entity) end

--- (server) Called whenever an engine schedule is finished. 
--- [https://wiki.facepunch.com/gmod/ENTITY:EngineScheduleFinish]
--- @return void
function ENT:EngineScheduleFinish() end

--- (server) Called when an NPC's expression has finished. 
--- [https://wiki.facepunch.com/gmod/ENTITY:ExpressionFinished]
--- @param strExp string @ The path of the expression.
--- @return void
function ENT:ExpressionFinished(strExp) end

--- (client) Called before firing clientside animation events, such as muzzle flashes or shell ejections.See [ENTITY:HandleAnimEvent](https://wiki.facepunch.com/gmod/ENTITY:HandleAnimEvent) for the serverside version. 
--- [https://wiki.facepunch.com/gmod/ENTITY:FireAnimationEvent]
--- @param pos Vector @ Position of the effect
--- @param ang Angle @ Angle of the effect
--- @param event number @ The event ID of happened even. See [this page](http://developer.valvesoftware.com/wiki/Animation_Events).
--- @param name string @ Name of the event
--- @return boolean
function ENT:FireAnimationEvent(pos, ang, event, name) end

--- (server) Called to determine how good an NPC is at using a particular weapon. 
--- [https://wiki.facepunch.com/gmod/ENTITY:GetAttackSpread]
--- @param wep Entity @ The weapon being used by the NPC.
--- @param target Entity @ The target the NPC is attacking
--- @return number
function ENT:GetAttackSpread(wep, target) end

--- (server) Called when scripted NPC needs to check how he "feels" against another entity, such as when [NPC:Disposition](https://wiki.facepunch.com/gmod/NPC:Disposition) is called. 
--- [https://wiki.facepunch.com/gmod/ENTITY:GetRelationship]
--- @param ent Entity @ The entity in question
--- @return number
function ENT:GetRelationship(ent) end

--- (client) Specify a mesh that should be rendered instead of this SENT's model. 
--- [https://wiki.facepunch.com/gmod/ENTITY:GetRenderMesh]
--- @return table
function ENT:GetRenderMesh() end

--- (client) Called when the shadow needs to be recomputed. Allows shadow angles to be customized. This only works for `anim` type entities. 
--- [https://wiki.facepunch.com/gmod/ENTITY:GetShadowCastDirection]
--- @param type number @ Type of the shadow this entity uses. Possible values:* 0 - No shadow* 1 - Simple 'blob' shadow* 2 - Render To Texture shadow (updates only when necessary)* 3 - Dynamic RTT - updates always* 4 - Render to Depth Texture
--- @return Vector
function ENT:GetShadowCastDirection(type) end

--- (server) Called every second to poll the sound hint interests of this SNPC. This is used in conjunction with other sound hint functions, such as [sound.EmitHint](https://wiki.facepunch.com/gmod/sound.EmitHint) and [NPC:GetBestSoundHint](https://wiki.facepunch.com/gmod/NPC:GetBestSoundHint). 
--- [https://wiki.facepunch.com/gmod/ENTITY:GetSoundInterests]
--- @return number
function ENT:GetSoundInterests() end

--- (server) Called by [GM:GravGunPickupAllowed](https://wiki.facepunch.com/gmod/GM:GravGunPickupAllowed) on ALL entites in Sandbox-derived  gamemodes and acts as an override. 
--- [https://wiki.facepunch.com/gmod/ENTITY:GravGunPickupAllowed]
--- @param ply Player @ The player aiming at us
--- @return boolean
function ENT:GravGunPickupAllowed(ply) end

--- (client/server) Called when this entity is about to be punted with the gravity gun (primary fire).Only works in Sandbox derived gamemodes and only if [GM:GravGunPunt](https://wiki.facepunch.com/gmod/GM:GravGunPunt) is not overridden. 
--- [https://wiki.facepunch.com/gmod/ENTITY:GravGunPunt]
--- @param ply Player @ The player pressing left-click with the gravity gun at an entity
--- @return boolean
function ENT:GravGunPunt(ply) end

--- (server) Called before firing serverside animation events, such as weapon reload, drawing and holstering for NPCs, scripted sequences, etc.See [ENTITY:FireAnimationEvent](https://wiki.facepunch.com/gmod/ENTITY:FireAnimationEvent) for the clientside version. 
--- [https://wiki.facepunch.com/gmod/ENTITY:HandleAnimEvent]
--- @param event number @ The event ID of happened even. See [this page](http://developer.valvesoftware.com/wiki/Animation_Events).
--- @param eventTime number @ The absolute time this event occurred using [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime).
--- @param cycle number @ The frame this event occurred as a number between 0 and 1.
--- @param type number @ Event type. See [the Source SDK](https://github.com/ValveSoftware/source-sdk-2013/blob/master/mp/src/game/shared/eventlist.h#L14-L23).
--- @param options string @ Name or options of this event.
--- @return void
function ENT:HandleAnimEvent(event, eventTime, cycle, type, options) end

--- (client) Called when a bullet trace hits this entity and allows you to override the default behavior by returning true. 
--- [https://wiki.facepunch.com/gmod/ENTITY:ImpactTrace]
--- @param traceResult table @ The trace that hit this entity as a [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult).
--- @param damageType number @ The damage bits associated with the trace, see [DMG](https://wiki.facepunch.com/gmod/Enums/DMG)
--- @param customImpactName string @ The effect name to override the impact effect with.Possible arguments are ImpactJeep, AirboatGunImpact, HelicopterImpact, ImpactGunship.
--- @return boolean
function ENT:ImpactTrace(traceResult, damageType, customImpactName) end

--- (client/server) Called when the entity is created. This is called when you [Entity:Spawn](https://wiki.facepunch.com/gmod/Entity:Spawn) the custom entity.This is called **after** [ENTITY:SetupDataTables](https://wiki.facepunch.com/gmod/ENTITY:SetupDataTables) and [GM:OnEntityCreated](https://wiki.facepunch.com/gmod/GM:OnEntityCreated). 
--- [https://wiki.facepunch.com/gmod/ENTITY:Initialize]
--- @return void
function ENT:Initialize() end

--- (server) Called when deciding if the Scripted NPC should be able to perform a certain jump or not. 
--- [https://wiki.facepunch.com/gmod/ENTITY:IsJumpLegal]
--- @param startPos Vector @ Start of the jump
--- @param apex Vector @ Apex point of the jump
--- @param endPos Vector @ The landing position
--- @return boolean
function ENT:IsJumpLegal(startPos, apex, endPos) end

--- (server) Called when the engine sets a value for this scripted entity.This hook is called **before** [ENTITY:Initialize](https://wiki.facepunch.com/gmod/ENTITY:Initialize) when the key-values are set by the map.Otherwise this hook will be called whenever [Entity:SetKeyValue](https://wiki.facepunch.com/gmod/Entity:SetKeyValue) is called on the entity.See [GM:EntityKeyValue](https://wiki.facepunch.com/gmod/GM:EntityKeyValue) for a hook that works for all entities.See [WEAPON:KeyValue](https://wiki.facepunch.com/gmod/WEAPON:KeyValue) for a hook that works for scripted weapons. 
--- [https://wiki.facepunch.com/gmod/ENTITY:KeyValue]
--- @param key string @ The key that was affected.
--- @param value string @ The new value.
--- @return boolean
function ENT:KeyValue(key, value) end

--- (server) Start the next task in specific schedule. 
--- [https://wiki.facepunch.com/gmod/ENTITY:NextTask]
--- @param sched table @ The schedule to start next task in.
--- @return void
function ENT:NextTask(sched) end

--- (server) Called when the currently active weapon of the SNPC changes. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnChangeActiveWeapon]
--- @param old Weapon @ The previous active weapon.
--- @param new Weapon @ The new active weapon.
--- @return void
function ENT:OnChangeActiveWeapon(old, new) end

--- (server) Called when the NPC has changed its activity. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnChangeActivity]
--- @param act number @ The new activity. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return void
function ENT:OnChangeActivity(act) end

--- (server) Called each time the NPC updates its condition. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnCondition]
--- @param conditionID number @ The ID of condition. See [NPC:ConditionName](https://wiki.facepunch.com/gmod/NPC:ConditionName).
--- @return void
function ENT:OnCondition(conditionID) end

--- (server) Called on any entity after it has been created by the [duplicator](https://wiki.facepunch.com/gmod/duplicator) and before any bone/entity modifiers have been applied.This hook is called after [ENTITY:Initialize](https://wiki.facepunch.com/gmod/ENTITY:Initialize) and before [ENTITY:PostEntityPaste](https://wiki.facepunch.com/gmod/ENTITY:PostEntityPaste). 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnDuplicated]
--- @param entTable table @ [EntityCopyData](https://wiki.facepunch.com/gmod/Structures/EntityCopyData) of the source entity.
--- @return void
function ENT:OnDuplicated(entTable) end

--- (server) Called after duplicator finishes saving the entity, allowing you to modify the save data.This is called after [ENTITY:PostEntityCopy](https://wiki.facepunch.com/gmod/ENTITY:PostEntityCopy). 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnEntityCopyTableFinish]
--- @param data table @ The save [EntityCopyData](https://wiki.facepunch.com/gmod/Structures/EntityCopyData) that you can modify.
--- @return void
function ENT:OnEntityCopyTableFinish(data) end

--- (server) Called when the SNPC completes its movement to its destination. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnMovementComplete]
--- @return void
function ENT:OnMovementComplete() end

--- (server) Called when the SNPC failed to move to its destination. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnMovementFailed]
--- @return void
function ENT:OnMovementFailed() end

--- (client/server) Called when the entity is reloaded by the lua auto-refresh system, i.e. when the developer edits the lua file for the entity while the game is running. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnReloaded]
--- @return void
function ENT:OnReloaded() end

--- (client/server) Called when the entity is about to be removed.See also [Entity:CallOnRemove](https://wiki.facepunch.com/gmod/Entity:CallOnRemove), which can even be used on engine (non-Lua) entities. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnRemove]
--- @return void
function ENT:OnRemove() end

--- (client/server) Called when the entity is reloaded from a Source Engine save (not the Sandbox saves or dupes) or on a changelevel (for example Half-Life 2 campaign level transitions).For the [duplicator](https://wiki.facepunch.com/gmod/duplicator) callbacks, see [ENTITY:OnDuplicated](https://wiki.facepunch.com/gmod/ENTITY:OnDuplicated). 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnRestore]
--- @return void
function ENT:OnRestore() end

--- (server) Called when the entity is taking damage. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnTakeDamage]
--- @param damage CTakeDamageInfo @ The damage to be applied to the entity.
--- @return number
function ENT:OnTakeDamage(damage) end

--- (server) Called from the engine when TaskComplete is called.This allows us to move onto the next task - even when TaskComplete was called from an engine side task. 
--- [https://wiki.facepunch.com/gmod/ENTITY:OnTaskComplete]
--- @return void
function ENT:OnTaskComplete() end

--- (server) Polls whenever the entity should trigger the brush. 
--- [https://wiki.facepunch.com/gmod/ENTITY:PassesTriggerFilters]
--- @param ent Entity @ The entity that is about to trigger.
--- @return boolean
function ENT:PassesTriggerFilters(ent) end

--- (server) Called when the entity collides with anything. The move type and solid type must be VPHYSICS for the hook to be called. 
--- [https://wiki.facepunch.com/gmod/ENTITY:PhysicsCollide]
--- @param colData table @ Information regarding the collision. See [CollisionData](https://wiki.facepunch.com/gmod/Structures/CollisionData).
--- @param collider PhysObj @ The physics object that collided.
--- @return void
function ENT:PhysicsCollide(colData, collider) end

--- (client/server) Called from the Entity's motion controller to simulate physics.This will only be called after using [Entity:StartMotionController](https://wiki.facepunch.com/gmod/Entity:StartMotionController) on a [scripted entity](https://wiki.facepunch.com/gmod/Scripted_Entities) of `anim` type. 
--- [https://wiki.facepunch.com/gmod/ENTITY:PhysicsSimulate]
--- @param phys PhysObj @ The physics object of the entity.
--- @param deltaTime number @ Time since the last call.
--- @return Vector|Vector|number
function ENT:PhysicsSimulate(phys, deltaTime) end

--- (client/server) Called whenever the physics of the entity are updated. 
--- [https://wiki.facepunch.com/gmod/ENTITY:PhysicsUpdate]
--- @param phys PhysObj @ The physics object of the entity.
--- @return void
function ENT:PhysicsUpdate(phys) end

--- (server) Called after the duplicator finished copying the entity.See also [ENTITY:PreEntityCopy](https://wiki.facepunch.com/gmod/ENTITY:PreEntityCopy) and [ENTITY:PostEntityPaste](https://wiki.facepunch.com/gmod/ENTITY:PostEntityPaste). 
--- [https://wiki.facepunch.com/gmod/ENTITY:PostEntityCopy]
--- @return void
function ENT:PostEntityCopy() end

--- (server) Called after the [duplicator](https://wiki.facepunch.com/gmod/duplicator) pastes the entity, after the bone/entity modifiers have been applied to the entity.This hook is called after [ENTITY:OnDuplicated](https://wiki.facepunch.com/gmod/ENTITY:OnDuplicated). 
--- [https://wiki.facepunch.com/gmod/ENTITY:PostEntityPaste]
--- @param ply Player @ The player who pasted the entity.
--- @param ent Entity @ The entity itself. Same as 'self'.
--- @param createdEntities table @ All entities that are within the placed dupe.
--- @return void
function ENT:PostEntityPaste(ply, ent, createdEntities) end

--- (server) Called before the duplicator copies the entity.If you are looking for a way to make the duplicator spawn another entity when duplicated. ( For example, you duplicate a "prop_physics", but you want the duplicator to spawn "prop_physics_my" ), you should add prop_physics.ClassOverride = "prop_physics_my". The duplication table should be also stored on that prop_physics, not on prop_physics_my. 
--- [https://wiki.facepunch.com/gmod/ENTITY:PreEntityCopy]
--- @return void
function ENT:PreEntityCopy() end

--- (client) Called instead of the engine drawing function of the entity. This hook works on any entity (scripted or not) it is applied on.This does not work on "physgun_beam", use [GM:DrawPhysgunBeam](https://wiki.facepunch.com/gmod/GM:DrawPhysgunBeam) instead. 
--- [https://wiki.facepunch.com/gmod/ENTITY:RenderOverride]
--- @param flags number @ The [STUDIO_](https://wiki.facepunch.com/gmod/Enums/STUDIO) flags for this render operation.
--- @return void
function ENT:RenderOverride(flags) end

--- (server) Called from the engine every 0.1 seconds. 
--- [https://wiki.facepunch.com/gmod/ENTITY:RunAI]
--- @return void
function ENT:RunAI() end

--- (server) Called when an engine task is ran on the entity. 
--- [https://wiki.facepunch.com/gmod/ENTITY:RunEngineTask]
--- @param taskID number @ The task ID, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/ai_task.h#L89-L502)
--- @param taskData number @ The task data.
--- @return boolean
function ENT:RunEngineTask(taskID, taskData) end

--- (server) Called every think on running task.The actual task function should tell us when the task is finished. 
--- [https://wiki.facepunch.com/gmod/ENTITY:RunTask]
--- @param task table @ The task to run
--- @return void
function ENT:RunTask(task) end

--- (server) Called whenever a schedule is finished. 
--- [https://wiki.facepunch.com/gmod/ENTITY:ScheduleFinished]
--- @return void
function ENT:ScheduleFinished() end

--- (server) Set the schedule we should be playing right now. 
--- [https://wiki.facepunch.com/gmod/ENTITY:SelectSchedule]
--- @param iNPCState number @ No description provided
--- @return void
function ENT:SelectSchedule(iNPCState) end

--- (client/server) Toggles automatic frame advancing for animated sequences on an entity.This has the same effect as setting the ``ENT.AutomaticFrameAdvance`` property. (See [ENT](https://wiki.facepunch.com/gmod/Structures/ENT)) 
--- [https://wiki.facepunch.com/gmod/ENTITY:SetAutomaticFrameAdvance]
--- @param enable boolean @ Whether or not to set automatic frame advancing.
--- @return void
function ENT:SetAutomaticFrameAdvance(enable) end

--- (server) Sets the current task. 
--- [https://wiki.facepunch.com/gmod/ENTITY:SetTask]
--- @param task table @ The task to set.
--- @return void
function ENT:SetTask(task) end

--- (client/server) Called when the entity should set up its [Data Tables](https://wiki.facepunch.com/gmod/Networking_Entities).This is a much better option than using Set/Get Networked Values.This hook is called after [GM:OnEntityCreated](https://wiki.facepunch.com/gmod/GM:OnEntityCreated) and [GM:NetworkEntityCreated](https://wiki.facepunch.com/gmod/GM:NetworkEntityCreated). 
--- [https://wiki.facepunch.com/gmod/ENTITY:SetupDataTables]
--- @return void
function ENT:SetupDataTables() end

--- (server) This is the spawn function. It's called when a player spawns the entity from the spawnmenu.If you want to make your SENT spawnable you need this function to properly create the entity. 
--- [https://wiki.facepunch.com/gmod/ENTITY:SpawnFunction]
--- @param ply Player @ The player that is spawning this SENT
--- @param tr table @ A [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult) from player eyes to their aim position
--- @param ClassName string @ The classname of your entity
--- @return void
function ENT:SpawnFunction(ply, tr, ClassName) end

--- (server) Starts an engine schedule. 
--- [https://wiki.facepunch.com/gmod/ENTITY:StartEngineSchedule]
--- @param scheduleID number @ Schedule ID to start. See [SCHED](https://wiki.facepunch.com/gmod/Enums/SCHED)
--- @return void
function ENT:StartEngineSchedule(scheduleID) end

--- (server) Called when an engine task has been started on the entity. 
--- [https://wiki.facepunch.com/gmod/ENTITY:StartEngineTask]
--- @param taskID number @ Task ID to start, see [ai_task.h](https://github.com/ValveSoftware/source-sdk-2013/blob/55ed12f8d1eb6887d348be03aee5573d44177ffb/mp/src/game/server/ai_task.h#L89-L502)
--- @param TaskData number @ Task data
--- @return boolean
function ENT:StartEngineTask(taskID, TaskData) end

--- (server) Starts a schedule previously created by [ai_schedule.New](https://wiki.facepunch.com/gmod/ai_schedule.New).Not to be confused with [ENTITY:StartEngineSchedule](https://wiki.facepunch.com/gmod/ENTITY:StartEngineSchedule) or [NPC:SetSchedule](https://wiki.facepunch.com/gmod/NPC:SetSchedule) which start an Engine-based schedule. 
--- [https://wiki.facepunch.com/gmod/ENTITY:StartSchedule]
--- @param sched Schedule @ Schedule to start.
--- @return void
function ENT:StartSchedule(sched) end

--- (server) Called once on starting task. 
--- [https://wiki.facepunch.com/gmod/ENTITY:StartTask]
--- @param task Task @ The task to start, created by [ai_task.New](https://wiki.facepunch.com/gmod/ai_task.New).
--- @return void
function ENT:StartTask(task) end

--- (server) Called when the entity starts touching another entity. 
--- [https://wiki.facepunch.com/gmod/ENTITY:StartTouch]
--- @param entity Entity @ The entity which is being touched.
--- @return void
function ENT:StartTouch(entity) end

--- (server) Used to store an output so it can be triggered with [ENTITY:TriggerOutput](https://wiki.facepunch.com/gmod/ENTITY:TriggerOutput).Outputs compiled into a map are passed to entities as key/value pairs through [ENTITY:KeyValue](https://wiki.facepunch.com/gmod/ENTITY:KeyValue).TriggerOutput will do nothing if this function has not been called first. 
--- [https://wiki.facepunch.com/gmod/ENTITY:StoreOutput]
--- @param name string @ Name of output to store
--- @param info string @ Output info
--- @return void
function ENT:StoreOutput(name, info) end

--- (server) Returns true if the current running Task is finished. 
--- [https://wiki.facepunch.com/gmod/ENTITY:TaskFinished]
--- @return boolean
function ENT:TaskFinished() end

--- (server) Returns how many seconds we've been doing this current task 
--- [https://wiki.facepunch.com/gmod/ENTITY:TaskTime]
--- @return number
function ENT:TaskTime() end

--- (client/server) Allows you to override trace result when a trace hits the entitys Bounding Box. 
--- [https://wiki.facepunch.com/gmod/ENTITY:TestCollision]
--- @param startpos Vector @ Start position of the trace.
--- @param delta Vector @ Offset from startpos to the endpos of the trace.
--- @param isbox boolean @ Is the trace a hull trace?
--- @param extents Vector @ Size of the hull trace?
--- @param mask number @ The [CONTENTS](https://wiki.facepunch.com/gmod/Enums/CONTENTS) mask.
--- @return table
function ENT:TestCollision(startpos, delta, isbox, extents, mask) end

--- (client/server) Called every frame on the client.Called every tick on the server. 
--- [https://wiki.facepunch.com/gmod/ENTITY:Think]
--- @return boolean
function ENT:Think() end

--- (server) Called every tick for every entity being "touched".See also [ENTITY:StartTouch](https://wiki.facepunch.com/gmod/ENTITY:StartTouch) and [ENTITY:EndTouch](https://wiki.facepunch.com/gmod/ENTITY:EndTouch). 
--- [https://wiki.facepunch.com/gmod/ENTITY:Touch]
--- @param entity Entity @ The entity that touched it.
--- @return void
function ENT:Touch(entity) end

--- (server) Triggers all outputs stored using [ENTITY:StoreOutput](https://wiki.facepunch.com/gmod/ENTITY:StoreOutput). 
--- [https://wiki.facepunch.com/gmod/ENTITY:TriggerOutput]
--- @param output string @ Name of output to fire
--- @param activator Entity @ Activator entity
--- @param data string @ The data to give to the output.
--- @return void
function ENT:TriggerOutput(output, activator, data) end

--- (server) Called whenever the transmit state should be updated. 
--- [https://wiki.facepunch.com/gmod/ENTITY:UpdateTransmitState]
--- @return number
function ENT:UpdateTransmitState() end

--- (server) Called when an entity "uses" this entity, for example a player pressing their `+use` key (default ) on this entity.To change how often the hook is called, see [Entity:SetUseType](https://wiki.facepunch.com/gmod/Entity:SetUseType). 
--- [https://wiki.facepunch.com/gmod/ENTITY:Use]
--- @param activator Entity @ The entity that caused this input. This will usually be the player who pressed their use key
--- @param caller Entity @ The entity responsible for the input. This will typically be the same as `activator` unless some other entity is acting as a proxy
--- @param useType number @ Use type, see [USE](https://wiki.facepunch.com/gmod/Enums/USE).
--- @param value number @ Any passed value.
--- @return void
function ENT:Use(activator, caller, useType, value) end

