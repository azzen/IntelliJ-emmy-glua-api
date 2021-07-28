--- @class Entity
Entity = {}

--- (client/server) Activates the entity. This needs to be used on some entities (like constraints) after being spawned. 
--- [https://wiki.facepunch.com/gmod/Entity:Activate]
--- @return void
function Entity:Activate() end

--- (client/server) Add a callback function to a specific event. This is used instead of hooks to avoid calling empty functions unnecessarily.
--- This also allows you to use certain hooks in engine entities (non-scripted entities). 
--- [https://wiki.facepunch.com/gmod/Entity:AddCallback]
--- @param hook string @ The hook name to hook onto. See [Entity Callbacks](https://wiki.facepunch.com/gmod/Entity%20Callbacks)
--- @param func function @ The function to call
--- @return number
function Entity:AddCallback(hook, func) end

--- (client/server) Applies an engine effect to an entity.
--- See also [Entity:IsEffectActive](https://wiki.facepunch.com/gmod/Entity:IsEffectActive) and  [Entity:RemoveEffects](https://wiki.facepunch.com/gmod/Entity:RemoveEffects). 
--- [https://wiki.facepunch.com/gmod/Entity:AddEffects]
--- @param effect number @ The effect to apply, see [EF](https://wiki.facepunch.com/gmod/Enums/EF).
--- @return void
function Entity:AddEffects(effect) end

--- (client/server) Adds engine flags. 
--- [https://wiki.facepunch.com/gmod/Entity:AddEFlags]
--- @param flag number @ Engine flag to add, see [EFL](https://wiki.facepunch.com/gmod/Enums/EFL)
--- @return void
function Entity:AddEFlags(flag) end

--- (client/server) Adds flags to the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:AddFlags]
--- @param flag number @ Flag to add, see [FL](https://wiki.facepunch.com/gmod/Enums/FL)
--- @return void
function Entity:AddFlags(flag) end

--- (server) Adds a gesture animation to the entity and plays it.
--- See [Entity:AddGestureSequence](https://wiki.facepunch.com/gmod/Entity:AddGestureSequence) and [Entity:AddLayeredSequence](https://wiki.facepunch.com/gmod/Entity:AddLayeredSequence) for functions that takes sequences instead of [ACT](https://wiki.facepunch.com/gmod/Enums/ACT). 
--- [https://wiki.facepunch.com/gmod/Entity:AddGesture]
--- @param activity number @ The activity to play as the gesture. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @param autokill boolean @ No description provided
--- @return number
function Entity:AddGesture(activity, autokill) end

--- (server) Adds a gesture animation to the entity and plays it.
--- See [Entity:AddGesture](https://wiki.facepunch.com/gmod/Entity:AddGesture) for a function that takes [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- See also [Entity:AddLayeredSequence](https://wiki.facepunch.com/gmod/Entity:AddLayeredSequence). 
--- [https://wiki.facepunch.com/gmod/Entity:AddGestureSequence]
--- @param sequence number @ The sequence ID to play as the gesture. See [Entity:LookupSequence](https://wiki.facepunch.com/gmod/Entity:LookupSequence).
--- @param autokill boolean @ No description provided
--- @return number
function Entity:AddGestureSequence(sequence, autokill) end

--- (server) Adds a gesture animation to the entity and plays it.
--- See [Entity:AddGestureSequence](https://wiki.facepunch.com/gmod/Entity:AddGestureSequence) for a function that doesn't take priority.
--- See [Entity:AddGesture](https://wiki.facepunch.com/gmod/Entity:AddGesture) for a function that takes [ACT](https://wiki.facepunch.com/gmod/Enums/ACT). 
--- [https://wiki.facepunch.com/gmod/Entity:AddLayeredSequence]
--- @param sequence number @ The sequence ID to play as the gesture. See [Entity:LookupSequence](https://wiki.facepunch.com/gmod/Entity:LookupSequence).
--- @param priority number @ No description provided
--- @return number
function Entity:AddLayeredSequence(sequence, priority) end

--- (client/server) Adds solid flag(s) to the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:AddSolidFlags]
--- @param flags number @ The flag(s) to apply, see [FSOLID](https://wiki.facepunch.com/gmod/Enums/FSOLID).
--- @return void
function Entity:AddSolidFlags(flags) end

--- (client/server) Adds a [PhysObj](https://wiki.facepunch.com/gmod/PhysObj)ect to the entity's motion controller so that [ENTITY:PhysicsSimulate](https://wiki.facepunch.com/gmod/ENTITY:PhysicsSimulate) will be called for given [PhysObj](https://wiki.facepunch.com/gmod/PhysObj)ect as well.
--- You must first create a motion controller with [Entity:StartMotionController](https://wiki.facepunch.com/gmod/Entity:StartMotionController).
--- You can remove added [PhysObj](https://wiki.facepunch.com/gmod/PhysObj)ects by using [Entity:RemoveFromMotionController](https://wiki.facepunch.com/gmod/Entity:RemoveFromMotionController). 
--- [https://wiki.facepunch.com/gmod/Entity:AddToMotionController]
--- @param physObj PhysObj @ The [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) to add to the motion controller.
--- @return void
function Entity:AddToMotionController(physObj) end

--- (client/server) Returns an angle based on the ones inputted that you can use to align an object. 
--- [https://wiki.facepunch.com/gmod/Entity:AlignAngles]
--- @param from Angle @ The angle you want to align from
--- @param to Angle @ The angle you want to align to
--- @return Angle
function Entity:AlignAngles(from, to) end

--- (client) Spawns a clientside ragdoll for the entity, positioning it in place of the original entity, and makes the entity invisible. It doesn't preserve flex values (face posing) as CSRagdolls don't support flex.
--- It does not work on players. Use [Player:CreateRagdoll](https://wiki.facepunch.com/gmod/Player:CreateRagdoll) instead.
--- The original entity is not removed, and neither are any ragdolls previously generated with this function.
--- To make the entity re-appear, run [Entity:SetNoDraw](https://wiki.facepunch.com/gmod/Entity:SetNoDraw)( false ) 
--- [https://wiki.facepunch.com/gmod/Entity:BecomeRagdollOnClient]
--- @return Entity
function Entity:BecomeRagdollOnClient() end

--- (client) Returns true if the entity is being looked at by the local player and is within 256 units of distance. 
--- [https://wiki.facepunch.com/gmod/Entity:BeingLookedAtByLocalPlayer]
--- @return boolean
function Entity:BeingLookedAtByLocalPlayer() end

--- (server) Dispatches blocked events to this entity's blocked handler. This function is only useful when interacting with entities like func_movelinear. 
--- [https://wiki.facepunch.com/gmod/Entity:Blocked]
--- @param entity Entity @ The entity that is blocking us
--- @return void
function Entity:Blocked(entity) end

--- (server) Returns a centered vector of this entity, NPCs use this internally to aim at their targets. 
--- [https://wiki.facepunch.com/gmod/Entity:BodyTarget]
--- @param origin Vector @ The vector of where the the attack comes from.
--- @param noisy boolean @ Decides if it should return the centered vector with a random offset to it.
--- @return Vector
function Entity:BodyTarget(origin, noisy) end

--- (client/server) Returns whether the entity's bone has the flag or not. 
--- [https://wiki.facepunch.com/gmod/Entity:BoneHasFlag]
--- @param boneID number @ Bone ID to test flag of.
--- @param flag number @ The flag to test, see [BONE](https://wiki.facepunch.com/gmod/Enums/BONE)
--- @return boolean
function Entity:BoneHasFlag(boneID, flag) end

--- (client/server) Returns the length between given bone's position and the position of given bone's parent. 
--- [https://wiki.facepunch.com/gmod/Entity:BoneLength]
--- @param boneID number @ The ID of the bone you want the length of. You may want to get the length of the next bone ( boneID + 1 ) for decent results
--- @return number
function Entity:BoneLength(boneID) end

--- (client/server) Returns the distance between the center of the bounding box and the furthest bounding box corner. 
--- [https://wiki.facepunch.com/gmod/Entity:BoundingRadius]
--- @return number
function Entity:BoundingRadius() end

--- (client/server) Causes a specified function to be run if the entity is removed by any means. This can later be undone by [Entity:RemoveCallOnRemove](https://wiki.facepunch.com/gmod/Entity:RemoveCallOnRemove) if you need it to not run. 
--- [https://wiki.facepunch.com/gmod/Entity:CallOnRemove]
--- @param identifier string @ Identifier of the function within CallOnRemove
--- @param removeFunc function @ Function to be called on remove
--- @param argn vararg @ Optional arguments to pass to removeFunc. Do note that the first argument passed to the function will always be the entity being removed, and the arguments passed on here start after that.
--- @return void
function Entity:CallOnRemove(identifier, removeFunc, argn) end

--- (client/server) Resets all pose parameters such as aim_yaw, aim_pitch and rotation. 
--- [https://wiki.facepunch.com/gmod/Entity:ClearPoseParameters]
--- @return void
function Entity:ClearPoseParameters() end

--- (client/server) Declares that the collision rules of the entity have changed, and subsequent calls for [GM:ShouldCollide](https://wiki.facepunch.com/gmod/GM:ShouldCollide) with this entity may return a different value than they did previously. 
--- [https://wiki.facepunch.com/gmod/Entity:CollisionRulesChanged]
--- @return void
function Entity:CollisionRulesChanged() end

--- (server) Creates bone followers based on the current entity model.
--- Bone followers are physics objects that follow the visual mesh. This is what is used by `prop_dynamic` for things like big combine doors for vehicles with multiple physics objects which follow the visual mesh of the door when it animates.
--- You must call [Entity:UpdateBoneFollowers](https://wiki.facepunch.com/gmod/Entity:UpdateBoneFollowers) every tick for bone followers to update their positions. 
--- [https://wiki.facepunch.com/gmod/Entity:CreateBoneFollowers]
--- @return void
function Entity:CreateBoneFollowers() end

--- (server) Returns whether the entity was created by map or not. 
--- [https://wiki.facepunch.com/gmod/Entity:CreatedByMap]
--- @return boolean
function Entity:CreatedByMap() end

--- (client) Creates a clientside particle system attached to the entity. See also [CreateParticleSystem](https://wiki.facepunch.com/gmod/Global.CreateParticleSystem) 
--- [https://wiki.facepunch.com/gmod/Entity:CreateParticleEffect]
--- @param particle string @ The particle name to create
--- @param attachment number @ Attachment ID to attach the particle to
--- @param options table @ A table of tables ( IDs 1 to 64 ) having the following structure:  [number](https://wiki.facepunch.com/gmod/number) attachtype - The particle attach type. See [PATTACH](https://wiki.facepunch.com/gmod/Enums/PATTACH). Default: PATTACH_ABSORIGIN  [Entity](https://wiki.facepunch.com/gmod/Entity) entity - The parent entity? Default: NULL  [Vector](https://wiki.facepunch.com/gmod/Vector) position - The offset position for given control point. Default:  nil This only affects the control points of the particle effects and will do nothing if the effect doesn't use control points.
--- @return CNewParticleEffect
function Entity:CreateParticleEffect(particle, attachment, options) end

--- (client) Draws the shadow of an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:CreateShadow]
--- @return void
function Entity:CreateShadow() end

--- (server) Whenever the entity is removed, entityToRemove will be removed also. 
--- [https://wiki.facepunch.com/gmod/Entity:DeleteOnRemove]
--- @param entityToRemove Entity @ The entity to be removed
--- @return void
function Entity:DeleteOnRemove(entityToRemove) end

--- (server) Destroys bone followers created by [Entity:CreateBoneFollowers](https://wiki.facepunch.com/gmod/Entity:CreateBoneFollowers). 
--- [https://wiki.facepunch.com/gmod/Entity:DestroyBoneFollowers]
--- @return void
function Entity:DestroyBoneFollowers() end

--- (client) Removes the shadow for the entity.
--- The shadow will be recreated as soon as the entity wakes. 
--- [https://wiki.facepunch.com/gmod/Entity:DestroyShadow]
--- @return void
function Entity:DestroyShadow() end

--- (client) Disables an active matrix. 
--- [https://wiki.facepunch.com/gmod/Entity:DisableMatrix]
--- @param matrixType string @ The name of the matrix type to disable. The only known matrix type is "RenderMultiply".
--- @return void
function Entity:DisableMatrix(matrixType) end

--- (client/server) Performs a trace attack. 
--- [https://wiki.facepunch.com/gmod/Entity:DispatchTraceAttack]
--- @param damageInfo CTakeDamageInfo @ The damage to apply.
--- @param traceRes table @ Trace result to use to deal damage. See [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult)
--- @param dir Vector @ Direction of the attack.
--- @return void
function Entity:DispatchTraceAttack(damageInfo, traceRes, dir) end

--- (server) This removes the argument entity from an ent's list of entities to 'delete on remove' 
--- [https://wiki.facepunch.com/gmod/Entity:DontDeleteOnRemove]
--- @param entityToUnremove Entity @ The entity to be removed from the list of entities to delete
--- @return void
function Entity:DontDeleteOnRemove(entityToUnremove) end

--- (client) Draws the entity or model.
--- If called inside [ENTITY:Draw](https://wiki.facepunch.com/gmod/ENTITY:Draw) or [ENTITY:DrawTranslucent](https://wiki.facepunch.com/gmod/ENTITY:DrawTranslucent), it only draws the entity's model itself.
--- If called outside of those hooks, it will call both of said hooks depending on [Entity:GetRenderGroup](https://wiki.facepunch.com/gmod/Entity:GetRenderGroup), drawing the entire entity again. 
--- [https://wiki.facepunch.com/gmod/Entity:DrawModel]
--- @param flags number @ The optional [STUDIO_](https://wiki.facepunch.com/gmod/Enums/STUDIO) flags, usually taken from [ENTITY:Draw](https://wiki.facepunch.com/gmod/ENTITY:Draw) and similar hooks.
--- @return void
function Entity:DrawModel(flags) end

--- (client/server) Sets whether an entity's shadow should be drawn. 
--- [https://wiki.facepunch.com/gmod/Entity:DrawShadow]
--- @param shouldDraw boolean @ True to enable, false to disable shadow drawing.
--- @return void
function Entity:DrawShadow(shouldDraw) end

--- (server) Move an entity down until it collides with something. 
--- [https://wiki.facepunch.com/gmod/Entity:DropToFloor]
--- @return void
function Entity:DropToFloor() end

--- (client/server) Sets up a self.dt.NAME alias for a Data Table variable. 
--- [https://wiki.facepunch.com/gmod/Entity:DTVar]
--- @param Type string @ The type of the DTVar being set up. It can be one of the following: 'Int', 'Float', 'Vector', 'Angle', 'Bool', 'Entity' or 'String'
--- @param ID number @ The ID of the DTVar. Can be between 0 and 3 for strings, 0 and 31 for everything else.
--- @param Name string @ Name by which you will refer to DTVar. It must be a valid variable name. (No spaces!)
--- @return void
function Entity:DTVar(Type, ID, Name) end

--- (client/server) Plays a sound on an entity. If run clientside, the sound will only be heard locally.
--- If used on a player or NPC character with the mouth rigged, the character will "lip-sync". This does not work with all sound files. 
--- [https://wiki.facepunch.com/gmod/Entity:EmitSound]
--- @param soundName string @ The name of the sound to be played.
--- @param soundLevel number @ A modifier for the distance this sound will reach, acceptable range is 0 to 511. 100 means no adjustment to the level. See [SNDLVL](https://wiki.facepunch.com/gmod/Enums/SNDLVL) Will not work if a [sound script](https://developer.valvesoftware.com/wiki/Soundscripts) is used.
--- @param pitchPercent number @ The pitch applied to the sound. The acceptable range is from 0 to 255. 100 means the pitch is not changed.
--- @param volume number @ The volume, from 0 to 1.
--- @param channel number @ The sound channel, see [CHAN](https://wiki.facepunch.com/gmod/Enums/CHAN). Will not work if a [sound script](https://developer.valvesoftware.com/wiki/Soundscripts) is used.
--- @param soundFlags number @ The flags of the sound, see [SND](https://wiki.facepunch.com/gmod/Enums/SND)
--- @param dsp number @ The DSP preset for this sound. [List of DSP presets](https://developer.valvesoftware.com/wiki/Dsp_presets)
--- @return void
function Entity:EmitSound(soundName, soundLevel, pitchPercent, volume, channel, soundFlags, dsp) end

--- (server) Toggles the constraints of this ragdoll entity on and off. 
--- [https://wiki.facepunch.com/gmod/Entity:EnableConstraints]
--- @param toggleConstraints boolean @ Set to true to enable the constraints and false to disable them. Disabling constraints will delete the constraint entities.
--- @return void
function Entity:EnableConstraints(toggleConstraints) end

--- (client/server) Flags an entity as using custom lua defined collisions. Fixes entities having spongy player collisions or not hitting traces, such as after [Entity:PhysicsFromMesh](https://wiki.facepunch.com/gmod/Entity:PhysicsFromMesh)
--- Internally identical to `Entity:AddSolidFlags( bit.bor( FSOLID_CUSTOMRAYTEST, FSOLID_CUSTOMBOXTEST ) )`
--- Do not confuse this function with [Entity:SetCustomCollisionCheck](https://wiki.facepunch.com/gmod/Entity:SetCustomCollisionCheck), they are not the same. 
--- [https://wiki.facepunch.com/gmod/Entity:EnableCustomCollisions]
--- @param useCustom boolean @ True to flag this entity
--- @return void
function Entity:EnableCustomCollisions(useCustom) end

--- (client) Can be used to apply a custom [VMatrix](https://wiki.facepunch.com/gmod/VMatrix) to the entity, mostly used for scaling the model by a [Vector](https://wiki.facepunch.com/gmod/Vector).
--- To disable it, use [Entity:DisableMatrix](https://wiki.facepunch.com/gmod/Entity:DisableMatrix).
--- If your old scales are wrong due to a recent update, use [Entity:SetLegacyTransform](https://wiki.facepunch.com/gmod/Entity:SetLegacyTransform) as a quick fix. 
--- [https://wiki.facepunch.com/gmod/Entity:EnableMatrix]
--- @param matrixType string @ The name of the matrix type.  The only implemented matrix type is "RenderMultiply".
--- @param matrix VMatrix @ The matrix to apply before drawing the entity.
--- @return void
function Entity:EnableMatrix(matrixType, matrix) end

--- (client/server) Gets the unique entity index of an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:EntIndex]
--- @return number
function Entity:EntIndex() end

--- (server) Extinguishes the entity if it is on fire.
--- Has no effect if called inside [GM:EntityTakeDamage](https://wiki.facepunch.com/gmod/GM:EntityTakeDamage) (and the attacker is the flame that's hurting the entity)
--- See also [Entity:Ignite](https://wiki.facepunch.com/gmod/Entity:Ignite). 
--- [https://wiki.facepunch.com/gmod/Entity:Extinguish]
--- @return void
function Entity:Extinguish() end

--- (client/server) Returns the direction a player/npc/ragdoll is looking as a world-oriented angle. 
--- [https://wiki.facepunch.com/gmod/Entity:EyeAngles]
--- @return Angle
function Entity:EyeAngles() end

--- (client/server) Returns the position of an Player/NPC's view. 
--- [https://wiki.facepunch.com/gmod/Entity:EyePos]
--- @return Vector
function Entity:EyePos() end

--- (client/server) Searches for bodygroup with given name. 
--- [https://wiki.facepunch.com/gmod/Entity:FindBodygroupByName]
--- @param name string @ The bodygroup name to search for.
--- @return number
function Entity:FindBodygroupByName(name) end

--- (client/server) Returns a transition from the given start and end sequence.
--- This function was only used by HL1 entities and NPCs, before the advent of sequence blending and gestures. 
--- [https://wiki.facepunch.com/gmod/Entity:FindTransitionSequence]
--- @param currentSequence number @ The currently playing sequence
--- @param goalSequence number @ The goal sequence.
--- @return number
function Entity:FindTransitionSequence(currentSequence, goalSequence) end

--- (server) Fires an entity's input, conforming to the map IO event queue system. You can find inputs for most entities on the [Valve Developer Wiki](https://developer.valvesoftware.com/wiki/Output)
--- See also [Entity:Input](https://wiki.facepunch.com/gmod/Entity:Input) for a function that bypasses the event queue and [GM:AcceptInput](https://wiki.facepunch.com/gmod/GM:AcceptInput). 
--- [https://wiki.facepunch.com/gmod/Entity:Fire]
--- @param input string @ The name of the input to fire
--- @param param string @ The value to give to the input, can also be a [number](https://wiki.facepunch.com/gmod/number) or a [boolean](https://wiki.facepunch.com/gmod/boolean).
--- @param delay number @ Delay in seconds before firing
--- @param activator Entity @ The entity that caused this input (i.e. the player who pushed a button)
--- @param caller Entity @ The entity that is triggering this input (i.e. the button that was pushed)
--- @return void
function Entity:Fire(input, param, delay, activator, caller) end

--- (client/server) Fires a bullet.
--- When used in a  hook such as [WEAPON:Think](https://wiki.facepunch.com/gmod/WEAPON:Think) or [WEAPON:PrimaryAttack](https://wiki.facepunch.com/gmod/WEAPON:PrimaryAttack), it will use [Player:LagCompensation](https://wiki.facepunch.com/gmod/Player:LagCompensation) internally. 
--- [https://wiki.facepunch.com/gmod/Entity:FireBullets]
--- @param bulletInfo table @ The bullet data to be used. See the [Bullet](https://wiki.facepunch.com/gmod/Structures/Bullet).
--- @param suppressHostEvents boolean @ Has the effect of encasing the FireBullets call in [SuppressHostEvents](https://wiki.facepunch.com/gmod/Global.SuppressHostEvents), only works in multiplayer.
--- @return void
function Entity:FireBullets(bulletInfo, suppressHostEvents) end

--- (client/server) Makes an entity follow another entity's bone.
--- Internally this function calls [Entity:SetParent](https://wiki.facepunch.com/gmod/Entity:SetParent)( parent, boneid ), [Entity:AddEffects](https://wiki.facepunch.com/gmod/Entity:AddEffects)( EF_FOLLOWBONE 
---  ) and sets an internal flag to always rebuild all bones. 
--- [https://wiki.facepunch.com/gmod/Entity:FollowBone]
--- @param parent Entity @ The entity to follow the bone of. If unset, removes the FollowBone effect.
--- @param boneid number @ The bone to follow
--- @return void
function Entity:FollowBone(parent, boneid) end

--- (client/server) Forces the Entity to be dropped, when it is being held by a player's gravitygun or physgun. 
--- [https://wiki.facepunch.com/gmod/Entity:ForcePlayerDrop]
--- @return void
function Entity:ForcePlayerDrop() end

--- (client/server) Advances the cycle of an animated entity.
--- Animations that loop will automatically reset the cycle so you don't have to - ones that do not will stop animating once you reach the end of their sequence. 
--- [https://wiki.facepunch.com/gmod/Entity:FrameAdvance]
--- @return void
function Entity:FrameAdvance() end

--- (client/server) Returns the entity's velocity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetAbsVelocity]
--- @return Vector
function Entity:GetAbsVelocity() end

--- (client/server) Gets the angles of given entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetAngles]
--- @return Angle
function Entity:GetAngles() end

--- (client/server) Returns a table containing the number of frames, flags, name, and FPS of an entity's animation ID. 
--- [https://wiki.facepunch.com/gmod/Entity:GetAnimInfo]
--- @param animIndex number @ The animation ID to look up
--- @return table
function Entity:GetAnimInfo(animIndex) end

--- (client) Returns the last time the entity had an animation update. Returns 0 if the entity doesn't animate. 
--- [https://wiki.facepunch.com/gmod/Entity:GetAnimTime]
--- @return number
function Entity:GetAnimTime() end

--- (client/server) Returns the amount of time since last animation.
--- Works only on `CBaseAnimating` entities. 
--- [https://wiki.facepunch.com/gmod/Entity:GetAnimTimeInterval]
--- @return number
function Entity:GetAnimTimeInterval() end

--- (client/server) Gets the orientation and position of the attachment by its ID, returns nothing if the attachment does not exist. 
--- [https://wiki.facepunch.com/gmod/Entity:GetAttachment]
--- @param attachmentId number @ The internal ID of the attachment.
--- @return table
function Entity:GetAttachment(attachmentId) end

--- (client/server) Returns a table containing all attachments of the given entity's model.
--- Returns an empty table or **nil** in case its model has no attachments. 
--- [https://wiki.facepunch.com/gmod/Entity:GetAttachments]
--- @return table
function Entity:GetAttachments() end

--- (client/server) Returns the entity's base velocity which is their velocity due to forces applied by other entities. This includes entity-on-entity collision or riding a treadmill. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBaseVelocity]
--- @return Vector
function Entity:GetBaseVelocity() end

--- (server) Returns the blood color of this entity. This can be set with [Entity:SetBloodColor](https://wiki.facepunch.com/gmod/Entity:SetBloodColor). 
--- [https://wiki.facepunch.com/gmod/Entity:GetBloodColor]
--- @return number
function Entity:GetBloodColor() end

--- (client/server) Gets the exact value for specific bodygroup of given entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBodygroup]
--- @param id number @ The id of bodygroup to get value of. Starts from 0.
--- @return number
function Entity:GetBodygroup(id) end

--- (client/server) Returns the count of possible values for this bodygroup.
--- This is **not** the maximum value, since the bodygroups start with 0, not 1. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBodygroupCount]
--- @param bodygroup number @ The ID of bodygroup to retrieve count of.
--- @return number
function Entity:GetBodygroupCount(bodygroup) end

--- (client/server) Gets the name of specific bodygroup for given entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBodygroupName]
--- @param id number @ The id of bodygroup to get the name of.
--- @return string
function Entity:GetBodygroupName(id) end

--- (client/server) Returns a list of all bodygroups of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBodyGroups]
--- @return table
function Entity:GetBodyGroups() end

--- (client/server) Returns the contents of the specified bone. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBoneContents]
--- @param bone number @ The bone id, starting at index 0. See [Entity:LookupBone](https://wiki.facepunch.com/gmod/Entity:LookupBone).
--- @return number
function Entity:GetBoneContents(bone) end

--- (client/server) Returns the value of the bone controller with the specified ID. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBoneController]
--- @param boneID number @ ID of the bone controller. Goes from 0 to 3.
--- @return number
function Entity:GetBoneController(boneID) end

--- (client/server) Returns the amount of bones in the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBoneCount]
--- @return number
function Entity:GetBoneCount() end

--- (client/server) Returns the transformation matrix of a given bone on the entity's model. The matrix contains the transformation used to position the bone in the world. It is not relative to the parent bone.
--- This is equivalent to constructing a [VMatrix](https://wiki.facepunch.com/gmod/VMatrix) using [Entity:GetBonePosition](https://wiki.facepunch.com/gmod/Entity:GetBonePosition). 
--- [https://wiki.facepunch.com/gmod/Entity:GetBoneMatrix]
--- @param boneID number @ The bone ID to retrieve matrix of, starting at index 0.  Bones clientside and serverside will differ
--- @return VMatrix
function Entity:GetBoneMatrix(boneID) end

--- (client/server) Returns name of given bone id. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBoneName]
--- @param index number @ ID of bone to lookup name of, starting at index 0.
--- @return string
function Entity:GetBoneName(index) end

--- (client/server) Returns parent bone of given bone. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBoneParent]
--- @param bone number @ The bode ID of the bone to get parent of, starting at index 0.
--- @return number
function Entity:GetBoneParent(bone) end

--- (client/server) Returns the position and angle of the given attachment, relative to the world. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBonePosition]
--- @param boneIndex number @ The bone index of the bone to get the position of, starting at index 0. See [Entity:LookupBone](https://wiki.facepunch.com/gmod/Entity:LookupBone).
--- @return Vector|Angle
function Entity:GetBonePosition(boneIndex) end

--- (client/server) Returns the surface property of the specified bone. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBoneSurfaceProp]
--- @param bone number @ The bone id, starting at index 0. See [Entity:LookupBone](https://wiki.facepunch.com/gmod/Entity:LookupBone).
--- @return string
function Entity:GetBoneSurfaceProp(bone) end

--- (client/server) Returns info about given plane of non-nodraw brush model surfaces of the entity's model. Works on worldspawn as well. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBrushPlane]
--- @param id number @ The index of the plane to get info of. Starts from 0.
--- @return Vector|Vector|number
function Entity:GetBrushPlane(id) end

--- (client/server) Returns the amount of planes of non-nodraw brush model surfaces of the entity's model. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBrushPlaneCount]
--- @return number
function Entity:GetBrushPlaneCount() end

--- (client/server) Returns a table of brushes surfaces for brush model entities. 
--- [https://wiki.facepunch.com/gmod/Entity:GetBrushSurfaces]
--- @return table
function Entity:GetBrushSurfaces() end

--- (client/server) Returns the specified hook callbacks for this entity added with [Entity:AddCallback](https://wiki.facepunch.com/gmod/Entity:AddCallback)
--- The callbacks can then be removed with [Entity:RemoveCallback](https://wiki.facepunch.com/gmod/Entity:RemoveCallback). 
--- [https://wiki.facepunch.com/gmod/Entity:GetCallbacks]
--- @param hook string @ The hook to retrieve the callbacks from, see [Entity Callbacks](https://wiki.facepunch.com/gmod/Entity%20Callbacks) for the possible hooks.
--- @return table
function Entity:GetCallbacks(hook) end

--- (client/server) Returns ids of child bones of given bone. 
--- [https://wiki.facepunch.com/gmod/Entity:GetChildBones]
--- @param boneid number @ Bone id to lookup children of
--- @return table
function Entity:GetChildBones(boneid) end

--- (client/server) Gets the children of the entity - that is, every entity whose move parent is this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetChildren]
--- @return table
function Entity:GetChildren() end

--- (client/server) Returns the classname of a entity. This is often the name of the Lua file or folder containing the files for the entity 
--- [https://wiki.facepunch.com/gmod/Entity:GetClass]
--- @return string
function Entity:GetClass() end

--- (client/server) Returns an entity's collision bounding box. In most cases, this will return the same bounding box as [Entity:GetModelBounds](https://wiki.facepunch.com/gmod/Entity:GetModelBounds) unless the entity does not have a physics mesh or it has a [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) different from the default. 
--- [https://wiki.facepunch.com/gmod/Entity:GetCollisionBounds]
--- @return Vector|Vector
function Entity:GetCollisionBounds() end

--- (client/server) Returns the entity's collision group 
--- [https://wiki.facepunch.com/gmod/Entity:GetCollisionGroup]
--- @return number
function Entity:GetCollisionGroup() end

--- (client/server) Returns the color the entity is set to. 
--- [https://wiki.facepunch.com/gmod/Entity:GetColor]
--- @return table
function Entity:GetColor() end

--- (server) Returns the two entities involved in a constraint ent, or nil if the entity is not a constraint. 
--- [https://wiki.facepunch.com/gmod/Entity:GetConstrainedEntities]
--- @return Entity|Entity
function Entity:GetConstrainedEntities() end

--- (server) Returns the two entities physobjects involved in a constraint ent, or no value if the entity is not a constraint. 
--- [https://wiki.facepunch.com/gmod/Entity:GetConstrainedPhysObjects]
--- @return PhysObj|PhysObj
function Entity:GetConstrainedPhysObjects() end

--- (server) Returns entity's creation ID. Unlike [Entity:EntIndex](https://wiki.facepunch.com/gmod/Entity:EntIndex) or  [Entity:MapCreationID](https://wiki.facepunch.com/gmod/Entity:MapCreationID), it will always increase and old values won't be reused. 
--- [https://wiki.facepunch.com/gmod/Entity:GetCreationID]
--- @return number
function Entity:GetCreationID() end

--- (client/server) Returns the time the entity was created on, relative to [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime). 
--- [https://wiki.facepunch.com/gmod/Entity:GetCreationTime]
--- @return number
function Entity:GetCreationTime() end

--- (server) Gets the creator of the SENT. 
--- [https://wiki.facepunch.com/gmod/Entity:GetCreator]
--- @return Player
function Entity:GetCreator() end

--- (client/server) Returns whether this entity uses custom collision check set by [Entity:SetCustomCollisionCheck](https://wiki.facepunch.com/gmod/Entity:SetCustomCollisionCheck). 
--- [https://wiki.facepunch.com/gmod/Entity:GetCustomCollisionCheck]
--- @return boolean
function Entity:GetCustomCollisionCheck() end

--- (client/server) Returns the frame of the currently played sequence. This will be a number between 0 and 1 as a representation of sequence progress. 
--- [https://wiki.facepunch.com/gmod/Entity:GetCycle]
--- @return number
function Entity:GetCycle() end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Get an angle stored in the datatable of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetDTAngle]
--- @param key number @ Goes from 0 to 31. Specifies what key to grab from datatable.
--- @return Angle
function Entity:GetDTAngle(key) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Get a boolean stored in the datatable of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetDTBool]
--- @param key number @ Goes from 0 to 31. Specifies what key to grab from datatable.
--- @return boolean
function Entity:GetDTBool(key) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Returns an entity stored in the datatable of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetDTEntity]
--- @param key number @ Goes from 0 to 31. Specifies what key to grab from datatable.
--- @return Entity
function Entity:GetDTEntity(key) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Get a float stored in the datatable of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetDTFloat]
--- @param key number @ Goes from 0 to 31. Specifies what key to grab from datatable.
--- @return number
function Entity:GetDTFloat(key) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Get an integer stored in the datatable of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetDTInt]
--- @param key number @ Goes from 0 to 31. Specifies what key to grab from datatable.
--- @return number
function Entity:GetDTInt(key) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Get a string stored in the datatable of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetDTString]
--- @param key number @ Goes from 0 to 3. Specifies what key to grab from datatable.
--- @return string
function Entity:GetDTString(key) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Get a vector stored in the datatable of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetDTVector]
--- @param key number @ Goes from 0 to 31. Specifies what key to grab from datatable.
--- @return Vector
function Entity:GetDTVector(key) end

--- (client/server) Returns internal data about editable [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar)s.
--- 		This is used internally by [DEntityProperties](https://wiki.facepunch.com/gmod/DEntityProperties) and [Editable Entities](https://wiki.facepunch.com/gmod/Editable%20Entities) system. 
--- [https://wiki.facepunch.com/gmod/Entity:GetEditingData]
--- @return table
function Entity:GetEditingData() end

--- (client/server) Returns a bit flag of all engine effect flags of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetEffects]
--- @return number
function Entity:GetEffects() end

--- (client/server) Returns a bit flag of all engine flags of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetEFlags]
--- @return number
function Entity:GetEFlags() end

--- (client/server) Returns the elasticity of this entity, used by some flying entities such as the Helicopter NPC to determine how much it should bounce around when colliding. 
--- [https://wiki.facepunch.com/gmod/Entity:GetElasticity]
--- @return number
function Entity:GetElasticity() end

--- (client/server) Returns all flags of given entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetFlags]
--- @return number
function Entity:GetFlags() end

--- (client/server) Returns acceptable value range for the flex. 
--- [https://wiki.facepunch.com/gmod/Entity:GetFlexBounds]
--- @param flex number @ The ID of the flex to look up bounds of
--- @return number|number
function Entity:GetFlexBounds(flex) end

--- (client/server) Returns the ID of the flex based on given name. 
--- [https://wiki.facepunch.com/gmod/Entity:GetFlexIDByName]
--- @param name string @ The name of the flex to get the ID of. Case sensitive.
--- @return number
function Entity:GetFlexIDByName(name) end

--- (client/server) Returns flex name. 
--- [https://wiki.facepunch.com/gmod/Entity:GetFlexName]
--- @param id number @ The flex id to look up name of
--- @return string
function Entity:GetFlexName(id) end

--- (client/server) Returns the number of flexes this entity has. 
--- [https://wiki.facepunch.com/gmod/Entity:GetFlexNum]
--- @return number
function Entity:GetFlexNum() end

--- (client/server) Returns the flex scale of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetFlexScale]
--- @return number
function Entity:GetFlexScale() end

--- (client/server) Returns current weight ( value ) of the flex. 
--- [https://wiki.facepunch.com/gmod/Entity:GetFlexWeight]
--- @param flex number @ The ID of the flex to get weight of
--- @return number
function Entity:GetFlexWeight(flex) end

--- (client/server) Returns the forward vector of the entity, as a normalized direction vector 
--- [https://wiki.facepunch.com/gmod/Entity:GetForward]
--- @return Vector
function Entity:GetForward() end

--- (server) Returns how much friction an entity has. Entities default to 1 (100%) and can be higher or even negative. 
--- [https://wiki.facepunch.com/gmod/Entity:GetFriction]
--- @return number
function Entity:GetFriction() end

--- (client/server) Gets the gravity multiplier of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetGravity]
--- @return number
function Entity:GetGravity() end

--- (client/server) Returns the object the entity is standing on. 
--- [https://wiki.facepunch.com/gmod/Entity:GetGroundEntity]
--- @return Entity
function Entity:GetGroundEntity() end

--- (server) Returns the entity's ground speed velocity, which is based on the entity's walk/run speed and/or the ground speed of their sequence ( [Entity:GetSequenceGroundSpeed](https://wiki.facepunch.com/gmod/Entity:GetSequenceGroundSpeed) ). Will return an empty [Vector](https://wiki.facepunch.com/gmod/Vector) if the entity isn't moving on the ground. 
--- [https://wiki.facepunch.com/gmod/Entity:GetGroundSpeedVelocity]
--- @return Vector
function Entity:GetGroundSpeedVelocity() end

--- (client/server) Gets the bone the hit box is attached to. 
--- [https://wiki.facepunch.com/gmod/Entity:GetHitBoxBone]
--- @param hitbox number @ The number of the hit box.
--- @param hboxset number @ The number of the hit box set. This should be 0 in most cases. Numbering for these sets start from 0. The total amount of sets can be found with [Entity:GetHitBoxSetCount](https://wiki.facepunch.com/gmod/Entity:GetHitBoxSetCount).
--- @return number
function Entity:GetHitBoxBone(hitbox, hboxset) end

--- (client/server) Gets the bounds (min and max corners) of a hit box. 
--- [https://wiki.facepunch.com/gmod/Entity:GetHitBoxBounds]
--- @param hitbox number @ The number of the hit box.
--- @param group number @ The group of the hit box. This should be 0 in most cases.
--- @return Vector|Vector
function Entity:GetHitBoxBounds(hitbox, group) end

--- (client/server) Gets how many hit boxes are in a given hit box group. 
--- [https://wiki.facepunch.com/gmod/Entity:GetHitBoxCount]
--- @param group number @ The number of the hit box group.
--- @return number
function Entity:GetHitBoxCount(group) end

--- (client/server) Returns the number of hit box sets that an entity has. Functionally identical to [Entity:GetHitboxSetCount](https://wiki.facepunch.com/gmod/Entity:GetHitboxSetCount) 
--- [https://wiki.facepunch.com/gmod/Entity:GetHitBoxGroupCount]
--- @return number
function Entity:GetHitBoxGroupCount() end

--- (client/server) Gets the hit group of a given hitbox in a given hitbox set. 
--- [https://wiki.facepunch.com/gmod/Entity:GetHitBoxHitGroup]
--- @param hitbox number @ The number of the hit box.
--- @param hitboxset number @ The number of the hit box set. This should be 0 in most cases. Numbering for these sets start from 0. The total group count can be found with [Entity:GetHitBoxSetCount](https://wiki.facepunch.com/gmod/Entity:GetHitBoxSetCount).
--- @return number
function Entity:GetHitBoxHitGroup(hitbox, hitboxset) end

--- (client/server) Returns entity's current hit box set 
--- [https://wiki.facepunch.com/gmod/Entity:GetHitboxSet]
--- @return number|string
function Entity:GetHitboxSet() end

--- (client/server) Returns the amount of hitbox sets in the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetHitboxSetCount]
--- @return number
function Entity:GetHitboxSetCount() end

--- (client/server) An interface for accessing internal key values on entities.
--- See [Entity:GetSaveTable](https://wiki.facepunch.com/gmod/Entity:GetSaveTable) for a more detailed explanation. See [Entity:SetSaveValue](https://wiki.facepunch.com/gmod/Entity:SetSaveValue) for the opposite of this function. 
--- [https://wiki.facepunch.com/gmod/Entity:GetInternalVariable]
--- @param variableName string @ Name of variable corresponding to an entity save value.
--- @return any
function Entity:GetInternalVariable(variableName) end

--- (server) Returns a table containing all key values the entity has.
--- Single key values can usually be retrieved with [Entity:GetInternalVariable](https://wiki.facepunch.com/gmod/Entity:GetInternalVariable).
--- 
--- Here's a list of keyvalues that will not appear in this list, as they are not stored/defined as actual keyvalues internally:
--- * rendercolor - [Entity:GetColor](https://wiki.facepunch.com/gmod/Entity:GetColor) (Only RGB)
--- * rendercolor32 - [Entity:GetColor](https://wiki.facepunch.com/gmod/Entity:GetColor) (RGBA)
--- * renderamt - [Entity:GetColor](https://wiki.facepunch.com/gmod/Entity:GetColor) (Alpha)
--- * disableshadows - EF_NOSHADOW
--- * mins - [Entity:GetCollisionBounds](https://wiki.facepunch.com/gmod/Entity:GetCollisionBounds)
--- * maxs - [Entity:GetCollisionBounds](https://wiki.facepunch.com/gmod/Entity:GetCollisionBounds)
--- * disablereceiveshadows - EF_NORECEIVESHADOW
--- * nodamageforces - EFL_NO_DAMAGE_FORCES
--- * angle - [Entity:GetAngles](https://wiki.facepunch.com/gmod/Entity:GetAngles)
--- * angles - [Entity:GetAngles](https://wiki.facepunch.com/gmod/Entity:GetAngles)
--- * origin - [Entity:GetPos](https://wiki.facepunch.com/gmod/Entity:GetPos)
--- * targetname - [Entity:GetName](https://wiki.facepunch.com/gmod/Entity:GetName) 
--- [https://wiki.facepunch.com/gmod/Entity:GetKeyValues]
--- @return table
function Entity:GetKeyValues() end

--- (client/server) Returns the animation cycle/frame for given layer. 
--- [https://wiki.facepunch.com/gmod/Entity:GetLayerCycle]
--- @param layerID number @ The Layer ID
--- @return number
function Entity:GetLayerCycle(layerID) end

--- (client/server) Returns the duration of given layer. 
--- [https://wiki.facepunch.com/gmod/Entity:GetLayerDuration]
--- @param layerID number @ The Layer ID
--- @return number
function Entity:GetLayerDuration(layerID) end

--- (client/server) Returns the layer playback rate. See also [Entity:GetLayerDuration](https://wiki.facepunch.com/gmod/Entity:GetLayerDuration). 
--- [https://wiki.facepunch.com/gmod/Entity:GetLayerPlaybackRate]
--- @param layerID number @ The Layer ID
--- @return number
function Entity:GetLayerPlaybackRate(layerID) end

--- (client/server) Returns the sequence id of given layer. 
--- [https://wiki.facepunch.com/gmod/Entity:GetLayerSequence]
--- @param layerID number @ The Layer ID.
--- @return number
function Entity:GetLayerSequence(layerID) end

--- (client/server) Returns the current weight of the layer. See [Entity:SetLayerWeight](https://wiki.facepunch.com/gmod/Entity:SetLayerWeight) for more information. 
--- [https://wiki.facepunch.com/gmod/Entity:GetLayerWeight]
--- @param layerID number @ The Layer ID
--- @return number
function Entity:GetLayerWeight(layerID) end

--- (server) Returns the entity that is being used as the light origin position for this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetLightingOriginEntity]
--- @return Entity
function Entity:GetLightingOriginEntity() end

--- (client/server) Returns the rotation of the entity relative to its parent entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetLocalAngles]
--- @return Angle
function Entity:GetLocalAngles() end

--- (client/server) Returns the non-VPhysics angular velocity of the entity relative to its parent entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetLocalAngularVelocity]
--- @return Angle
function Entity:GetLocalAngularVelocity() end

--- (client/server) Returns entity's position relative to it's parent. 
--- [https://wiki.facepunch.com/gmod/Entity:GetLocalPos]
--- @return Vector
function Entity:GetLocalPos() end

--- (client/server) Gets the entity's angle manipulation of the given bone. This is relative to the default angle, so the angle is zero when unmodified. 
--- [https://wiki.facepunch.com/gmod/Entity:GetManipulateBoneAngles]
--- @param boneID number @ The bone's ID
--- @return Angle
function Entity:GetManipulateBoneAngles(boneID) end

--- (client/server) Returns the jiggle amount of the entity's bone.
--- See [Entity:ManipulateBoneJiggle](https://wiki.facepunch.com/gmod/Entity:ManipulateBoneJiggle) for more info. 
--- [https://wiki.facepunch.com/gmod/Entity:GetManipulateBoneJiggle]
--- @param boneID number @ The bone ID
--- @return number
function Entity:GetManipulateBoneJiggle(boneID) end

--- (client/server) Gets the entity's position manipulation of the given bone. This is relative to the default position, so it is zero when unmodified. 
--- [https://wiki.facepunch.com/gmod/Entity:GetManipulateBonePosition]
--- @param boneId number @ The bone's ID
--- @return Vector
function Entity:GetManipulateBonePosition(boneId) end

--- (client/server) Gets the entity's scale manipulation of the given bone. Normal scale is Vector( 1, 1, 1 ) 
--- [https://wiki.facepunch.com/gmod/Entity:GetManipulateBoneScale]
--- @param boneID number @ The bone's ID
--- @return Vector
function Entity:GetManipulateBoneScale(boneID) end

--- (client/server) Returns the material override for this entity. 
--- Returns an empty string if no material override exists. Use [Entity:GetMaterials](https://wiki.facepunch.com/gmod/Entity:GetMaterials) to list it's default materials. 
--- [https://wiki.facepunch.com/gmod/Entity:GetMaterial]
--- @return string
function Entity:GetMaterial() end

--- (client/server) Returns all materials of the entity's model.
--- This function is unaffected by [Entity:SetSubMaterial](https://wiki.facepunch.com/gmod/Entity:SetSubMaterial) as it returns the original materials. 
--- [https://wiki.facepunch.com/gmod/Entity:GetMaterials]
--- @return table
function Entity:GetMaterials() end

--- (server) Returns the surface material of this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetMaterialType]
--- @return number
function Entity:GetMaterialType() end

--- (client/server) Returns the max health that the entity was given. It can be set via [Entity:SetMaxHealth](https://wiki.facepunch.com/gmod/Entity:SetMaxHealth). 
--- [https://wiki.facepunch.com/gmod/Entity:GetMaxHealth]
--- @return number
function Entity:GetMaxHealth() end

--- (client/server) Gets the model of given entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetModel]
--- @return string
function Entity:GetModel() end

--- (client/server) Returns the entity's model bounds. This is different than the collision bounds/hull. This is not scaled with [Entity:SetModelScale](https://wiki.facepunch.com/gmod/Entity:SetModelScale), and will return the model's original, unmodified mins and maxs. This can be used to get world bounds. 
--- [https://wiki.facepunch.com/gmod/Entity:GetModelBounds]
--- @return Vector|Vector
function Entity:GetModelBounds() end

--- (client/server) Returns the contents of the entity's current model. 
--- [https://wiki.facepunch.com/gmod/Entity:GetModelContents]
--- @return number
function Entity:GetModelContents() end

--- (client) Gets the physics bone count of the entity's model. This is only applicable to `anim` type [Scripted Entities](https://wiki.facepunch.com/gmod/Scripted%20Entities) with ragdoll models. 
--- [https://wiki.facepunch.com/gmod/Entity:GetModelPhysBoneCount]
--- @return number
function Entity:GetModelPhysBoneCount() end

--- (client/server) Gets the models radius. 
--- [https://wiki.facepunch.com/gmod/Entity:GetModelRadius]
--- @return number
function Entity:GetModelRadius() end

--- (client/server) Returns the entity's model render bounds. By default this will return the same bounds as [Entity:GetModelBounds](https://wiki.facepunch.com/gmod/Entity:GetModelBounds). 
--- [https://wiki.facepunch.com/gmod/Entity:GetModelRenderBounds]
--- @return Vector|Vector
function Entity:GetModelRenderBounds() end

--- (client/server) Gets the selected entity's model scale. 
--- [https://wiki.facepunch.com/gmod/Entity:GetModelScale]
--- @return number
function Entity:GetModelScale() end

--- (server) Returns the amount a momentary_rot_button entity is turned based on the given angle. 0 meaning completely turned closed, 1 meaning completely turned open. 
--- [https://wiki.facepunch.com/gmod/Entity:GetMomentaryRotButtonPos]
--- @param turnAngle Angle @ The angle of rotation to compare - usually should be [Entity:GetAngles](https://wiki.facepunch.com/gmod/Entity:GetAngles).
--- @return number
function Entity:GetMomentaryRotButtonPos(turnAngle) end

--- (client/server) Returns the move collide type of the entity. The move collide is the way a physics object reacts to hitting an object - will it bounce, slide? 
--- [https://wiki.facepunch.com/gmod/Entity:GetMoveCollide]
--- @return number
function Entity:GetMoveCollide() end

--- (client/server) Returns the movement parent of this entity.
--- See [Entity:SetMoveParent](https://wiki.facepunch.com/gmod/Entity:SetMoveParent) for more info. 
--- [https://wiki.facepunch.com/gmod/Entity:GetMoveParent]
--- @return Entity
function Entity:GetMoveParent() end

--- (client/server) Returns the entity's movetype 
--- [https://wiki.facepunch.com/gmod/Entity:GetMoveType]
--- @return number
function Entity:GetMoveType() end

--- (server) Returns the mapping name of this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetName]
--- @return string
function Entity:GetName() end

--- (client) Gets networked angles for entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkAngles]
--- @return Angle
function Entity:GetNetworkAngles() end

--- (client/server) Retrieves a networked angle value at specified index on the entity that is set by [Entity:SetNetworkedAngle](https://wiki.facepunch.com/gmod/Entity:SetNetworkedAngle). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedAngle]
--- @param key string @ The key that is associated with the value
--- @param fallback Angle @ The value to return if we failed to retrieve the value. ( If it isn't set )
--- @return Angle
function Entity:GetNetworkedAngle(key, fallback) end

--- (client/server) Retrieves a networked boolean value at specified index on the entity that is set by [Entity:SetNetworkedBool](https://wiki.facepunch.com/gmod/Entity:SetNetworkedBool). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedBool]
--- @param key string @ The key that is associated with the value
--- @param fallback boolean @ The value to return if we failed to retrieve the value. ( If it isn't set )
--- @return boolean
function Entity:GetNetworkedBool(key, fallback) end

--- (client/server) Retrieves a networked float value at specified index on the entity that is set by [Entity:SetNetworkedEntity](https://wiki.facepunch.com/gmod/Entity:SetNetworkedEntity). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedEntity]
--- @param key string @ The key that is associated with the value
--- @param fallback Entity @ The value to return if we failed to retrieve the value. ( If it isn't set )
--- @return Entity
function Entity:GetNetworkedEntity(key, fallback) end

--- (client/server) Retrieves a networked float value at specified index on the entity that is set by [Entity:SetNetworkedFloat](https://wiki.facepunch.com/gmod/Entity:SetNetworkedFloat).
--- Seems to be the same as [Entity:GetNetworkedInt](https://wiki.facepunch.com/gmod/Entity:GetNetworkedInt). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedFloat]
--- @param key string @ The key that is associated with the value
--- @param fallback number @ The value to return if we failed to retrieve the value. ( If it isn't set )
--- @return number
function Entity:GetNetworkedFloat(key, fallback) end

--- (client/server) Retrieves a networked integer value at specified index on the entity that is set by [Entity:SetNetworkedInt](https://wiki.facepunch.com/gmod/Entity:SetNetworkedInt). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedInt]
--- @param key string @ The key that is associated with the value
--- @param fallback number @ The value to return if we failed to retrieve the value. ( If it isn't set )
--- @return number
function Entity:GetNetworkedInt(key, fallback) end

--- (client/server) Retrieves a networked string value at specified index on the entity that is set by [Entity:SetNetworkedString](https://wiki.facepunch.com/gmod/Entity:SetNetworkedString). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedString]
--- @param key string @ The key that is associated with the value
--- @param fallback string @ The value to return if we failed to retrieve the value. ( If it isn't set )
--- @return string
function Entity:GetNetworkedString(key, fallback) end

--- (client/server) Returns callback function for given NWVar of this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedVarProxy]
--- @param name string @ The name of the NWVar to get callback of.
--- @return function
function Entity:GetNetworkedVarProxy(name) end

--- (client/server) Returns all the networked variables in an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedVarTable]
--- @return table
function Entity:GetNetworkedVarTable() end

--- (client/server) Retrieves a networked vector value at specified index on the entity that is set by [Entity:SetNetworkedVector](https://wiki.facepunch.com/gmod/Entity:SetNetworkedVector). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkedVector]
--- @param key string @ The key that is associated with the value
--- @param fallback Vector @ The value to return if we failed to retrieve the value. ( If it isn't set )
--- @return Vector
function Entity:GetNetworkedVector(key, fallback) end

--- (client/server) Gets networked origin for entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkOrigin]
--- @return Vector
function Entity:GetNetworkOrigin() end

--- (client/server) Returns all network vars created by [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) and [Entity:NetworkVarElement](https://wiki.facepunch.com/gmod/Entity:NetworkVarElement) and their current values.
--- 		This is used internally by the duplicator.
--- 		For NWVars see [Entity:GetNWVarTable](https://wiki.facepunch.com/gmod/Entity:GetNWVarTable). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNetworkVars]
--- @return table
function Entity:GetNetworkVars() end

--- (client/server) Returns if the entity's rendering and transmitting has been disabled. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNoDraw]
--- @return boolean
function Entity:GetNoDraw() end

--- (client/server) Returns the body group count of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNumBodyGroups]
--- @return number
function Entity:GetNumBodyGroups() end

--- (client/server) Returns the number of pose parameters this entity has. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNumPoseParameters]
--- @return number
function Entity:GetNumPoseParameters() end

--- (client/server) Retrieves a networked angle value at specified index on the entity that is set by [Entity:SetNWAngle](https://wiki.facepunch.com/gmod/Entity:SetNWAngle). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWAngle]
--- @param key string @ The key that is associated with the value
--- @param fallback any @ The value to return if we failed to retrieve the value. (If it isn't set)
--- @return any
function Entity:GetNWAngle(key, fallback) end

--- (client/server) Retrieves a networked boolean value at specified index on the entity that is set by [Entity:SetNWBool](https://wiki.facepunch.com/gmod/Entity:SetNWBool). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWBool]
--- @param key string @ The key that is associated with the value
--- @param fallback any @ The value to return if we failed to retrieve the value. (If it isn't set)
--- @return any
function Entity:GetNWBool(key, fallback) end

--- (client/server) Retrieves a networked entity value at specified index on the entity that is set by [Entity:SetNWEntity](https://wiki.facepunch.com/gmod/Entity:SetNWEntity). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWEntity]
--- @param key string @ The key that is associated with the value
--- @param fallback any @ The value to return if we failed to retrieve the value. (If it isn't set)
--- @return any
function Entity:GetNWEntity(key, fallback) end

--- (client/server) Retrieves a networked float value at specified index on the entity that is set by [Entity:SetNWFloat](https://wiki.facepunch.com/gmod/Entity:SetNWFloat). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWFloat]
--- @param key string @ The key that is associated with the value
--- @param fallback any @ The value to return if we failed to retrieve the value. (If it isn't set)
--- @return any
function Entity:GetNWFloat(key, fallback) end

--- (client/server) Retrieves a networked integer (whole number) value that was previously set by [Entity:SetNWInt](https://wiki.facepunch.com/gmod/Entity:SetNWInt). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWInt]
--- @param key string @ The key that is associated with the value
--- @param fallback any @ The value to return if we failed to retrieve the value (If it isn't set).
--- @return any
function Entity:GetNWInt(key, fallback) end

--- (client/server) Retrieves a networked string value at specified index on the entity that is set by [Entity:SetNWString](https://wiki.facepunch.com/gmod/Entity:SetNWString). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWString]
--- @param key string @ The key that is associated with the value
--- @param fallback any @ The value to return if we failed to retrieve the value. (If it isn't set)
--- @return any
function Entity:GetNWString(key, fallback) end

--- (client/server) Returns callback function for given NWVar of this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWVarProxy]
--- @param key any @ The key of the NWVar to get callback of.
--- @return function
function Entity:GetNWVarProxy(key) end

--- (client/server) Returns all the networked variables in an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWVarTable]
--- @return table
function Entity:GetNWVarTable() end

--- (client/server) Retrieves a networked vector value at specified index on the entity that is set by [Entity:SetNWVector](https://wiki.facepunch.com/gmod/Entity:SetNWVector). 
--- [https://wiki.facepunch.com/gmod/Entity:GetNWVector]
--- @param key string @ The key that is associated with the value
--- @param fallback any @ The value to return if we failed to retrieve the value. (If it isn't set)
--- @return any
function Entity:GetNWVector(key, fallback) end

--- (client/server) Returns the owner entity of this entity. See [Entity:SetOwner](https://wiki.facepunch.com/gmod/Entity:SetOwner) for more info. 
--- [https://wiki.facepunch.com/gmod/Entity:GetOwner]
--- @return Entity
function Entity:GetOwner() end

--- (client/server) Returns the parent entity of this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetParent]
--- @return Entity
function Entity:GetParent() end

--- (client/server) Returns the attachment index of the entity's parent. Returns 0 if the entity is not parented to a specific attachment or if it isn't parented at all.
--- This is set by second argument of [Entity:SetParent](https://wiki.facepunch.com/gmod/Entity:SetParent) or the **SetParentAttachment** input. 
--- [https://wiki.facepunch.com/gmod/Entity:GetParentAttachment]
--- @return number
function Entity:GetParentAttachment() end

--- (client/server) If the entity is parented to an entity that has a model with multiple physics objects (like a ragdoll), this is used to retrieve what physics object number the entity is parented to on it's parent. 
--- [https://wiki.facepunch.com/gmod/Entity:GetParentPhysNum]
--- @return number
function Entity:GetParentPhysNum() end

--- (client/server) Returns the position and angle of the entity's move parent as a 3x4 matrix ([VMatrix](https://wiki.facepunch.com/gmod/VMatrix) is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector. 
--- [https://wiki.facepunch.com/gmod/Entity:GetParentWorldTransformMatrix]
--- @return VMatrix
function Entity:GetParentWorldTransformMatrix() end

--- (client/server) Returns whether the entity is persistent or not.
--- See [Entity:SetPersistent](https://wiki.facepunch.com/gmod/Entity:SetPersistent) for more information on persistence. 
--- [https://wiki.facepunch.com/gmod/Entity:GetPersistent]
--- @return boolean
function Entity:GetPersistent() end

--- (server) Returns player who is claiming kills of physics damage the entity deals. 
--- [https://wiki.facepunch.com/gmod/Entity:GetPhysicsAttacker]
--- @param timeLimit number @ The time to check if the entity was still a proper physics attacker.
--- @return Player
function Entity:GetPhysicsAttacker(timeLimit) end

--- (client/server) Returns the entity's physics object, if the entity has physics. 
--- [https://wiki.facepunch.com/gmod/Entity:GetPhysicsObject]
--- @return PhysObj
function Entity:GetPhysicsObject() end

--- (client/server) Returns the number of physics objects an entity has (usually 1 for non-ragdolls) 
--- [https://wiki.facepunch.com/gmod/Entity:GetPhysicsObjectCount]
--- @return number
function Entity:GetPhysicsObjectCount() end

--- (client/server) Returns a specific physics object from an entity with multiple [PhysObj](https://wiki.facepunch.com/gmod/PhysObj)ects (like ragdolls)
--- See also [Entity:TranslateBoneToPhysBone](https://wiki.facepunch.com/gmod/Entity:TranslateBoneToPhysBone). 
--- [https://wiki.facepunch.com/gmod/Entity:GetPhysicsObjectNum]
--- @param physNum number @ The number corresponding to the [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) to grab. Starts at 0.
--- @return PhysObj
function Entity:GetPhysicsObjectNum(physNum) end

--- (client/server) Returns the playback rate of the main sequence on this entity, with 1.0 being the default speed. 
--- [https://wiki.facepunch.com/gmod/Entity:GetPlaybackRate]
--- @return number
function Entity:GetPlaybackRate() end

--- (client/server) Gets the position of entity in world. 
--- [https://wiki.facepunch.com/gmod/Entity:GetPos]
--- @return Vector
function Entity:GetPos() end

--- (client/server) Returns the pose parameter value 
--- [https://wiki.facepunch.com/gmod/Entity:GetPoseParameter]
--- @param name string @ Pose parameter name to look up
--- @return number
function Entity:GetPoseParameter(name) end

--- (client/server) Returns name of given pose parameter 
--- [https://wiki.facepunch.com/gmod/Entity:GetPoseParameterName]
--- @param id number @ Id of the pose paremeter
--- @return string
function Entity:GetPoseParameterName(id) end

--- (client/server) Returns pose parameter range 
--- [https://wiki.facepunch.com/gmod/Entity:GetPoseParameterRange]
--- @param id number @ Pose parameter ID to look up
--- @return number|number
function Entity:GetPoseParameterRange(id) end

--- (client) Returns whether this entity is predictable or not.
--- See [Entity:SetPredictable](https://wiki.facepunch.com/gmod/Entity:SetPredictable) for more information 
--- [https://wiki.facepunch.com/gmod/Entity:GetPredictable]
--- @return boolean
function Entity:GetPredictable() end

--- (server) Called to override the preferred carry angles of this object. 
--- [https://wiki.facepunch.com/gmod/ENTITY:GetPreferredCarryAngles]
--- @param ply Player @ The player who is holding the object.
--- @return Angle
function Entity:GetPreferredCarryAngles(ply) end

--- (client/server) Returns the entity which the ragdoll came from. The opposite of [Player:GetRagdollEntity](https://wiki.facepunch.com/gmod/Player:GetRagdollEntity). 
--- [https://wiki.facepunch.com/gmod/Entity:GetRagdollOwner]
--- @return Entity
function Entity:GetRagdollOwner() end

--- (client) Returns the entity's render angles, set by [Entity:SetRenderAngles](https://wiki.facepunch.com/gmod/Entity:SetRenderAngles) in a drawing hook. 
--- [https://wiki.facepunch.com/gmod/Entity:GetRenderAngles]
--- @return Angle
function Entity:GetRenderAngles() end

--- (client) Returns render bounds of the entity. Can be overridden by [Entity:SetRenderBounds](https://wiki.facepunch.com/gmod/Entity:SetRenderBounds).
--- If the render bounds are not inside players view, the entity will not be drawn! 
--- [https://wiki.facepunch.com/gmod/Entity:GetRenderBounds]
--- @return Vector|Vector
function Entity:GetRenderBounds() end

--- (client/server) Returns current render FX of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetRenderFX]
--- @return number
function Entity:GetRenderFX() end

--- (client) Returns the render group of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetRenderGroup]
--- @return number
function Entity:GetRenderGroup() end

--- (client/server) Returns the render mode of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetRenderMode]
--- @return number
function Entity:GetRenderMode() end

--- (client) Returns the entity's render origin, set by [Entity:SetRenderOrigin](https://wiki.facepunch.com/gmod/Entity:SetRenderOrigin) in a drawing hook. 
--- [https://wiki.facepunch.com/gmod/Entity:GetRenderOrigin]
--- @return Vector
function Entity:GetRenderOrigin() end

--- (client/server) Returns the rightward vector of the entity, as a normalized direction vector 
--- [https://wiki.facepunch.com/gmod/Entity:GetRight]
--- @return Vector
function Entity:GetRight() end

--- (client/server) Returns the min and max of the entity's axis-aligned bounding box. 
--- [https://wiki.facepunch.com/gmod/Entity:GetRotatedAABB]
--- @param min Vector @ Minimum extent of the bounding box.
--- @param max Vector @ Maximum extent of the bounding box.
--- @return Vector|Vector
function Entity:GetRotatedAABB(min, max) end

--- (client/server) Returns a table of save values for an entity.
--- These tables are not the same between the client and the server, and different entities may have different fields.
--- You can get the list different fields an entity has by looking at it's source code (the 2013 SDK can be found [online](https://github.com/ValveSoftware/source-sdk-2013)). Accessible fields are defined by each `DEFINE_FIELD` and `DEFINE_KEYFIELD` inside the `DATADESC` block.
--- Take the headcrab, for example:
--- ```
--- BEGIN_DATADESC( CBaseHeadcrab )
--- 	// m_nGibCount - don't save
--- 	DEFINE_FIELD( m_bHidden, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_flTimeDrown, FIELD_TIME ),
--- 	DEFINE_FIELD( m_bCommittedToJump, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_vecCommittedJumpPos, FIELD_POSITION_VECTOR ),
--- 	DEFINE_FIELD( m_flNextNPCThink, FIELD_TIME ),
--- 	DEFINE_FIELD( m_flIgnoreWorldCollisionTime, FIELD_TIME ),
--- 	
--- 	DEFINE_KEYFIELD( m_bStartBurrowed, FIELD_BOOLEAN, "startburrowed" ),
--- 	DEFINE_FIELD( m_bBurrowed, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_flBurrowTime, FIELD_TIME ),
--- 	DEFINE_FIELD( m_nContext, FIELD_INTEGER ),
--- 	DEFINE_FIELD( m_bCrawlFromCanister, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_bMidJump, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_nJumpFromCanisterDir, FIELD_INTEGER ),
--- 	DEFINE_FIELD( m_bHangingFromCeiling, FIELD_BOOLEAN ),
--- 	DEFINE_FIELD( m_flIlluminatedTime, FIELD_TIME ),
--- 		
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "Burrow", InputBurrow ),
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "BurrowImmediate", InputBurrowImmediate ),
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "Unburrow", InputUnburrow ),
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "StartHangingFromCeiling", InputStartHangingFromCeiling ),
--- 	DEFINE_INPUTFUNC( FIELD_VOID, "DropFromCeiling", InputDropFromCeiling ),
--- 	
--- 	// Function Pointers
--- 	DEFINE_THINKFUNC( EliminateRollAndPitch ),
--- 	DEFINE_THINKFUNC( ThrowThink ),
--- 	DEFINE_ENTITYFUNC( LeapTouch ),
--- END_DATADESC()
--- ```
--- * For each **DEFINE_FIELD**, the save table will have a key with name of **first** argument.
--- * For each **DEFINE_KEYFIELD**, the save table will have a key with name of the **third** argument.
--- See [Entity:GetInternalVariable](https://wiki.facepunch.com/gmod/Entity:GetInternalVariable) for only retrieving one key of the save table. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSaveTable]
--- @param showAll boolean @ If set, shows all variables, not just the ones for save.
--- @return table
function Entity:GetSaveTable(showAll) end

--- (client/server) Return the index of the model sequence that is currently active for the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequence]
--- @return number
function Entity:GetSequence() end

--- (client/server) Return activity id out of sequence id. Opposite of [Entity:SelectWeightedSequence](https://wiki.facepunch.com/gmod/Entity:SelectWeightedSequence). 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceActivity]
--- @param seq number @ The sequence ID
--- @return number
function Entity:GetSequenceActivity(seq) end

--- (client/server) Returns the activity name for the given sequence id. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceActivityName]
--- @param sequenceId number @ The sequence id.
--- @return string
function Entity:GetSequenceActivityName(sequenceId) end

--- (client/server) Returns the amount of sequences ( animations ) the entity's model has. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceCount]
--- @return number
function Entity:GetSequenceCount() end

--- (client/server) Returns the ground speed of the entity's sequence. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceGroundSpeed]
--- @param sequenceId number @ The sequence ID.
--- @return number
function Entity:GetSequenceGroundSpeed(sequenceId) end

--- (client/server) Returns a table of information about an entity's sequence. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceInfo]
--- @param sequenceId number @ The sequence id of the entity.
--- @return table
function Entity:GetSequenceInfo(sequenceId) end

--- (client/server) Returns a list of all sequences ( animations ) the model has. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceList]
--- @return table
function Entity:GetSequenceList() end

--- (server) Returns an entity's sequence move distance (the change in position over the course of the entire sequence). 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceMoveDist]
--- @param sequenceId number @ The sequence index.
--- @return number
function Entity:GetSequenceMoveDist(sequenceId) end

--- (client/server) Returns the delta movement and angles of a sequence of the entity's model. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceMovement]
--- @param sequenceId number @ The sequence index. See [Entity:GetSequenceName](https://wiki.facepunch.com/gmod/Entity:GetSequenceName).
--- @param startCycle number @ The sequence start cycle. 0 is the start of the animation, 1 is the end.
--- @param endCyclnde number @ The sequence end cycle. 0 is the start of the animation, 1 is the end. Values like 2, etc are allowed.
--- @return boolean|Vector|Angle
function Entity:GetSequenceMovement(sequenceId, startCycle, endCyclnde) end

--- (server) Returns the change in heading direction in between the start and the end of the sequence. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceMoveYaw]
--- @param seq number @ The sequence index. See [Entity:LookupSequence](https://wiki.facepunch.com/gmod/Entity:LookupSequence).
--- @return number
function Entity:GetSequenceMoveYaw(seq) end

--- (client/server) Return the name of the sequence for the index provided.
--- Refer to [Entity:GetSequence](https://wiki.facepunch.com/gmod/Entity:GetSequence) to find the current active sequence on this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSequenceName]
--- @param index number @ The index of the sequence to look up.
--- @return string
function Entity:GetSequenceName(index) end

--- (client/server) Checks if the entity plays a sound when picked up by a player. 
--- [https://wiki.facepunch.com/gmod/Entity:GetShouldPlayPickupSound]
--- @return boolean
function Entity:GetShouldPlayPickupSound() end

--- (client/server) Returns if entity should create a server ragdoll on death or a client one. 
--- [https://wiki.facepunch.com/gmod/Entity:GetShouldServerRagdoll]
--- @return boolean
function Entity:GetShouldServerRagdoll() end

--- (client/server) Returns the skin index of the current skin. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSkin]
--- @return number
function Entity:GetSkin() end

--- (client/server) Returns solid type of an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSolid]
--- @return number
function Entity:GetSolid() end

--- (client/server) Returns solid flag(s) of an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSolidFlags]
--- @return number
function Entity:GetSolidFlags() end

--- (client/server) Returns if we should show a spawn effect on spawn on this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSpawnEffect]
--- @return boolean
function Entity:GetSpawnEffect() end

--- (client/server) Returns the bitwise spawn flags used by the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSpawnFlags]
--- @return number
function Entity:GetSpawnFlags() end

--- (client/server) Returns the material override for the given index. 
--- Returns "" if no material override exists. Use [Entity:GetMaterials](https://wiki.facepunch.com/gmod/Entity:GetMaterials) to list it's default materials. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSubMaterial]
--- @param index number @ The index of the sub material. Acceptable values are from 0 to 31.
--- @return string
function Entity:GetSubMaterial(index) end

--- (client/server) Returns a list of models included into the entity's model in the .qc file. 
--- [https://wiki.facepunch.com/gmod/Entity:GetSubModels]
--- @return table
function Entity:GetSubModels() end

--- (client/server) Returns the table that contains all values saved within the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetTable]
--- @return table
function Entity:GetTable() end

--- (client/server) Returns the last trace used in the collision callbacks such as [ENTITY:StartTouch](https://wiki.facepunch.com/gmod/ENTITY:StartTouch), [ENTITY:Touch](https://wiki.facepunch.com/gmod/ENTITY:Touch) and [ENTITY:EndTouch](https://wiki.facepunch.com/gmod/ENTITY:EndTouch). 
--- [https://wiki.facepunch.com/gmod/Entity:GetTouchTrace]
--- @return table
function Entity:GetTouchTrace() end

--- (client/server) Returns true if the TransmitWithParent flag is set or not. 
--- [https://wiki.facepunch.com/gmod/Entity:GetTransmitWithParent]
--- @return boolean
function Entity:GetTransmitWithParent() end

--- (server) Returns if the entity is unfreezable, meaning it can't be frozen with the physgun. By default props are freezable, so this function will typically return false. 
--- [https://wiki.facepunch.com/gmod/Entity:GetUnFreezable]
--- @return boolean
function Entity:GetUnFreezable() end

--- (client/server) Returns the upward vector of the entity, as a normalized direction vector 
--- [https://wiki.facepunch.com/gmod/Entity:GetUp]
--- @return Vector
function Entity:GetUp() end

--- (client/server) Retrieves a value from entity's [Entity:GetTable](https://wiki.facepunch.com/gmod/Entity:GetTable). Set by [Entity:SetVar](https://wiki.facepunch.com/gmod/Entity:SetVar). 
--- [https://wiki.facepunch.com/gmod/Entity:GetVar]
--- @param key any @ Key of the value to retrieve
--- @param default any @ A default value to fallback to if we couldn't retrieve the value from entity
--- @return any
function Entity:GetVar(key, default) end

--- (client/server) Returns the entity's velocity. 
--- [https://wiki.facepunch.com/gmod/Entity:GetVelocity]
--- @return Vector
function Entity:GetVelocity() end

--- (server) Returns ID of workshop addon that the entity is from. 
--- [https://wiki.facepunch.com/gmod/Entity:GetWorkshopID]
--- @return number
function Entity:GetWorkshopID() end

--- (client/server) Returns the position and angle of the entity as a 3x4 matrix ([VMatrix](https://wiki.facepunch.com/gmod/VMatrix) is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector. 
--- [https://wiki.facepunch.com/gmod/Entity:GetWorldTransformMatrix]
--- @return VMatrix
function Entity:GetWorldTransformMatrix() end

--- (client/server) Causes the entity to break into its current models gibs, if it has any.
--- You must call [Entity:PrecacheGibs](https://wiki.facepunch.com/gmod/Entity:PrecacheGibs) on the entity before using this function, or it will not create any gibs.
--- If called on server, the gibs will be spawned on the currently connected clients and will not be synchronized. Otherwise the gibs will be spawned only for the client the function is called on.
--- Note, that this function will not remove or hide the entity it is called on.
--- For more expensive version of this function see [Entity:GibBreakServer](https://wiki.facepunch.com/gmod/Entity:GibBreakServer). 
--- [https://wiki.facepunch.com/gmod/Entity:GibBreakClient]
--- @param force Vector @ The force to apply to the created gibs.
--- @param clr table @ If set, this will be color of the broken gibs instead of the entity's color.
--- @return void
function Entity:GibBreakClient(force, clr) end

--- (client/server) Causes the entity to break into its current models gibs, if it has any.
--- You must call [Entity:PrecacheGibs](https://wiki.facepunch.com/gmod/Entity:PrecacheGibs) on the entity before using this function, or it will not create any gibs.
--- The gibs will be spawned on the server and be synchronized with all clients.
--- Note, that this function will not remove or hide the entity it is called on.
--- This function is affected by `props_break_max_pieces_perframe` and `props_break_max_pieces` console variables. 
--- [https://wiki.facepunch.com/gmod/Entity:GibBreakServer]
--- @param force Vector @ The force to apply to the created gibs
--- @return void
function Entity:GibBreakServer(force) end

--- (client/server) Returns whether or not the bone manipulation functions have ever been called on given  entity.
--- Related functions are [Entity:ManipulateBonePosition](https://wiki.facepunch.com/gmod/Entity:ManipulateBonePosition), [Entity:ManipulateBoneAngles](https://wiki.facepunch.com/gmod/Entity:ManipulateBoneAngles), [Entity:ManipulateBoneJiggle](https://wiki.facepunch.com/gmod/Entity:ManipulateBoneJiggle), and [Entity:ManipulateBoneScale](https://wiki.facepunch.com/gmod/Entity:ManipulateBoneScale). 
--- [https://wiki.facepunch.com/gmod/Entity:HasBoneManipulations]
--- @return boolean
function Entity:HasBoneManipulations() end

--- (client/server) Returns whether or not the the entity has had flex manipulations performed with [Entity:SetFlexWeight](https://wiki.facepunch.com/gmod/Entity:SetFlexWeight) or [Entity:SetFlexScale](https://wiki.facepunch.com/gmod/Entity:SetFlexScale). 
--- [https://wiki.facepunch.com/gmod/Entity:HasFlexManipulatior]
--- @return boolean
function Entity:HasFlexManipulatior() end

--- (client/server) Returns whether this entity has the specified spawnflags bits set. 
--- [https://wiki.facepunch.com/gmod/Entity:HasSpawnFlags]
--- @param spawnFlags number @ The spawnflag bits to check, see [SF](https://wiki.facepunch.com/gmod/Enums/SF).
--- @return boolean
function Entity:HasSpawnFlags(spawnFlags) end

--- (server) Returns the position of the head of this entity, NPCs use this internally to aim at their targets. 
--- [https://wiki.facepunch.com/gmod/Entity:HeadTarget]
--- @param origin Vector @ The vector of where the attack comes from.
--- @return Vector
function Entity:HeadTarget(origin) end

--- (client/server) Returns the health of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:Health]
--- @return number
function Entity:Health() end

--- (server) Sets the entity on fire.
--- See also [Entity:Extinguish](https://wiki.facepunch.com/gmod/Entity:Extinguish). 
--- [https://wiki.facepunch.com/gmod/Entity:Ignite]
--- @param length number @ How long to keep the entity ignited, in seconds.
--- @param radius number @ The radius of the ignition, will ignite everything around the entity that is in this radius.
--- @return void
function Entity:Ignite(length, radius) end

--- (client) Initializes this entity as being clientside only.
--- Only works on entities fully created clientside, and as such it has currently no use due this being automatically called by [ents.CreateClientProp](https://wiki.facepunch.com/gmod/ents.CreateClientProp), [ents.CreateClientside](https://wiki.facepunch.com/gmod/ents.CreateClientside), [ClientsideModel](https://wiki.facepunch.com/gmod/Global.ClientsideModel) and [ClientsideScene](https://wiki.facepunch.com/gmod/Global.ClientsideScene). 
--- [https://wiki.facepunch.com/gmod/Entity:InitializeAsClientEntity]
--- @return void
function Entity:InitializeAsClientEntity() end

--- (server) Fires input to the entity with the ability to make another entity responsible, bypassing the event queue system.
--- You should only use this function over [Entity:Fire](https://wiki.facepunch.com/gmod/Entity:Fire) if you know what you are doing.
--- See also [Entity:Fire](https://wiki.facepunch.com/gmod/Entity:Fire) for a function that conforms to the internal map IO event queue and [GM:AcceptInput](https://wiki.facepunch.com/gmod/GM:AcceptInput) for a hook that can intercept inputs. 
--- [https://wiki.facepunch.com/gmod/Entity:Input]
--- @param input string @ The name of the input to fire
--- @param activator Entity @ The entity that caused this input (i.e. the player who pushed a button)
--- @param caller Entity @ The entity that is triggering this input (i.e. the button that was pushed)
--- @param param any @ The value to give to the input. Can be either a [string](https://wiki.facepunch.com/gmod/string), a [number](https://wiki.facepunch.com/gmod/number) or a [boolean](https://wiki.facepunch.com/gmod/boolean).
--- @return void
function Entity:Input(input, activator, caller, param) end

--- (client/server) Sets up Data Tables from entity to use with [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar). 
--- [https://wiki.facepunch.com/gmod/Entity:InstallDataTable]
--- @return void
function Entity:InstallDataTable() end

--- (client) Resets the entity's bone cache values in order to prepare for a model change.
--- This should be called after calling [Entity:SetPoseParameter](https://wiki.facepunch.com/gmod/Entity:SetPoseParameter). 
--- [https://wiki.facepunch.com/gmod/Entity:InvalidateBoneCache]
--- @return void
function Entity:InvalidateBoneCache() end

--- (client/server) Returns true if the entity has constraints attached to it 
--- [https://wiki.facepunch.com/gmod/Entity:IsConstrained]
--- @return boolean
function Entity:IsConstrained() end

--- (server) Returns if entity is constraint or not 
--- [https://wiki.facepunch.com/gmod/Entity:IsConstraint]
--- @return boolean
function Entity:IsConstraint() end

--- (client/server) Returns whether the entity is dormant or not. Client/server entities become dormant when they leave the PVS on the server. Client side entities can decide for themselves whether to become dormant. This mainly applies to PVS. 
--- [https://wiki.facepunch.com/gmod/Entity:IsDormant]
--- @return boolean
function Entity:IsDormant() end

--- (client/server) Returns whether an entity has engine effect applied or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsEffectActive]
--- @param effect number @ The effect to check for, see [EF](https://wiki.facepunch.com/gmod/Enums/EF).
--- @return boolean
function Entity:IsEffectActive(effect) end

--- (client/server) Checks if given flag is set or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsEFlagSet]
--- @param flag number @ The engine flag to test, see [EFL](https://wiki.facepunch.com/gmod/Enums/EFL)
--- @return boolean
function Entity:IsEFlagSet(flag) end

--- (client/server) Checks if given flag(s) is set or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsFlagSet]
--- @param flag number @ The engine flag(s) to test, see [FL](https://wiki.facepunch.com/gmod/Enums/FL)
--- @return boolean
function Entity:IsFlagSet(flag) end

--- (server) Returns whether the entity is inside a wall or outside of the map. 
--- [https://wiki.facepunch.com/gmod/Entity:IsInWorld]
--- @return boolean
function Entity:IsInWorld() end

--- (server) Returns whether the entity is lag compensated or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsLagCompensated]
--- @return boolean
function Entity:IsLagCompensated() end

--- (client/server) Returns true if the target is in line of sight. 
--- [https://wiki.facepunch.com/gmod/Entity:IsLineOfSightClear]
--- @param target Vector @ The target to test. You can also supply an [Entity](https://wiki.facepunch.com/gmod/Entity) instead of a [Vector](https://wiki.facepunch.com/gmod/Vector)
--- @return boolean
function Entity:IsLineOfSightClear(target) end

--- (client/server) Returns if the entity is going to be deleted in the next frame. 
--- [https://wiki.facepunch.com/gmod/Entity:IsMarkedForDeletion]
--- @return boolean
function Entity:IsMarkedForDeletion() end

--- (client/server) Checks if the entity is a [NextBot](https://wiki.facepunch.com/gmod/NextBot) or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsNextBot]
--- @return boolean
function Entity:IsNextBot() end

--- (client/server) Checks if the entity is an NPC or not.
--- This will return false for [NextBot](https://wiki.facepunch.com/gmod/NextBot)s, see [Entity:IsNextBot](https://wiki.facepunch.com/gmod/Entity:IsNextBot) for that. 
--- [https://wiki.facepunch.com/gmod/Entity:IsNPC]
--- @return boolean
function Entity:IsNPC() end

--- (client/server) Returns whether the entity is on fire. 
--- [https://wiki.facepunch.com/gmod/Entity:IsOnFire]
--- @return boolean
function Entity:IsOnFire() end

--- (client/server) Returns whether the entity is on ground or not.
--- Internally, this checks if [FL_ONGROUND](https://wiki.facepunch.com/gmod/Enums/FL) is set on the entity.
--- This function is an alias of [Entity:OnGround](https://wiki.facepunch.com/gmod/Entity:OnGround). 
--- [https://wiki.facepunch.com/gmod/Entity:IsOnGround]
--- @return boolean
function Entity:IsOnGround() end

--- (client/server) Checks if the entity is a player or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsPlayer]
--- @return boolean
function Entity:IsPlayer() end

--- (server) Returns true if the entity is being held by a player. Either by physics gun, gravity gun or use-key (+use). 
--- [https://wiki.facepunch.com/gmod/Entity:IsPlayerHolding]
--- @return boolean
function Entity:IsPlayerHolding() end

--- (server) Returns whether there's a gesture is given activity being played. 
--- [https://wiki.facepunch.com/gmod/Entity:IsPlayingGesture]
--- @param activity number @ The activity to test. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return boolean
function Entity:IsPlayingGesture(activity) end

--- (client/server) Checks if the entity is a ragdoll. 
--- [https://wiki.facepunch.com/gmod/Entity:IsRagdoll]
--- @return boolean
function Entity:IsRagdoll() end

--- (client/server) Checks if the entity is a SENT or a built-in entity. 
--- [https://wiki.facepunch.com/gmod/Entity:IsScripted]
--- @return boolean
function Entity:IsScripted() end

--- (client/server) Returns whether the entity's current sequence is finished or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsSequenceFinished]
--- @return boolean
function Entity:IsSequenceFinished() end

--- (client/server) Returns if the entity is solid or not.
--- Very useful for determining if the entity is a trigger or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsSolid]
--- @return boolean
function Entity:IsSolid() end

--- (client/server) Returns whether the entity is a valid entity or not.
--- An entity is valid if:
--- * It is not a [NULL](https://wiki.facepunch.com/gmod/Global_Variables) entity
--- * It is not the worldspawn entity ([game.GetWorld](https://wiki.facepunch.com/gmod/game.GetWorld))
--- 
--- It will check whether the given variable contains an object (an Entity) or nothing at all for you. See examples.
--- 
--- This might be a cause for a lot of headache. Usually happening during networking etc., when completely valid entities suddenly become invalid on the client, but are never filtered with IsValid(). See [GM:InitPostEntity](https://wiki.facepunch.com/gmod/GM:InitPostEntity) for more details. 
--- [https://wiki.facepunch.com/gmod/Entity:IsValid]
--- @return boolean
function Entity:IsValid() end

--- (client/server) Returns whether the given layer ID is valid and exists on this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:IsValidLayer]
--- @param layerID number @ The Layer ID
--- @return boolean
function Entity:IsValidLayer(layerID) end

--- (client/server) Checks if the entity is a vehicle or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsVehicle]
--- @return boolean
function Entity:IsVehicle() end

--- (client/server) Checks if the entity is a weapon or not. 
--- [https://wiki.facepunch.com/gmod/Entity:IsWeapon]
--- @return boolean
function Entity:IsWeapon() end

--- (client/server) Returns whether the entity is a widget or not.
--- This is used by the "Edit Bones" context menu property. 
--- [https://wiki.facepunch.com/gmod/Entity:IsWidget]
--- @return boolean
function Entity:IsWidget() end

--- (client/server) Returns if the entity is the map's Entity[0] worldspawn 
--- [https://wiki.facepunch.com/gmod/Entity:IsWorld]
--- @return boolean
function Entity:IsWorld() end

--- (client/server) Converts a vector local to an entity into a worldspace vector 
--- [https://wiki.facepunch.com/gmod/Entity:LocalToWorld]
--- @param lpos Vector @ The local vector
--- @return Vector
function Entity:LocalToWorld(lpos) end

--- (client/server) Converts a local angle (local to the entity) to a world angle. 
--- [https://wiki.facepunch.com/gmod/Entity:LocalToWorldAngles]
--- @param ang Angle @ The local angle
--- @return Angle
function Entity:LocalToWorldAngles(ang) end

--- (client/server) Returns the attachment index of the given attachment name. 
--- [https://wiki.facepunch.com/gmod/Entity:LookupAttachment]
--- @param attachmentName string @ The name of the attachment.
--- @return number
function Entity:LookupAttachment(attachmentName) end

--- (client/server) Gets the bone index of the given bone name, returns nothing if the bone does not exist. 
--- [https://wiki.facepunch.com/gmod/Entity:LookupBone]
--- @param boneName string @ The name of the bone. Common generic bones ( for player models and some HL2 models ):   ValveBiped.Bip01_Head1  ValveBiped.Bip01_Spine  ValveBiped.Anim_Attachment_RH Common hand bones (left hand equivalents also available, replace _R_ with _L_)  ValveBiped.Bip01_R_Hand  ValveBiped.Bip01_R_Forearm  ValveBiped.Bip01_R_Foot  ValveBiped.Bip01_R_Thigh  ValveBiped.Bip01_R_Calf  ValveBiped.Bip01_R_Shoulder  ValveBiped.Bip01_R_Elbow
--- @return number
function Entity:LookupBone(boneName) end

--- (client/server) Returns pose parameter ID from its name. 
--- [https://wiki.facepunch.com/gmod/Entity:LookupPoseParameter]
--- @param name string @ Pose parameter name
--- @return number
function Entity:LookupPoseParameter(name) end

--- (client/server) Returns sequence ID from its name. 
--- [https://wiki.facepunch.com/gmod/Entity:LookupSequence]
--- @param name string @ Sequence name
--- @return number|number
function Entity:LookupSequence(name) end

--- (client/server) Turns the [Entity:GetPhysicsObject](https://wiki.facepunch.com/gmod/Entity:GetPhysicsObject) into a physics shadow.
--- It's used internally for the Player's and NPC's physics object, and certain HL2 entities such as the crane.
--- A physics shadow can be used to have static entities that never move by setting both arguments to false. 
--- [https://wiki.facepunch.com/gmod/Entity:MakePhysicsObjectAShadow]
--- @param allowPhysicsMovement boolean @ Whether to allow the physics shadow to move under stress.
--- @param allowPhysicsRotation boolean @ Whether to allow the physics shadow to rotate under stress.
--- @return void
function Entity:MakePhysicsObjectAShadow(allowPhysicsMovement, allowPhysicsRotation) end

--- (client/server) Sets custom bone angles. 
--- [https://wiki.facepunch.com/gmod/Entity:ManipulateBoneAngles]
--- @param boneID number @ Index of the bone you want to manipulate
--- @param ang Angle @ Angle to apply. The angle is relative to the original bone angle, not relative to the world or the entity.
--- @return void
function Entity:ManipulateBoneAngles(boneID, ang) end

--- (client/server) Manipulates the bone's jiggle status. This allows non jiggly bones to become jiggly. 
--- [https://wiki.facepunch.com/gmod/Entity:ManipulateBoneJiggle]
--- @param boneID number @ Index of the bone you want to manipulate.
--- @param enabled number @ 0 = No Jiggle 1 = Jiggle
--- @return void
function Entity:ManipulateBoneJiggle(boneID, enabled) end

--- (client/server) Sets custom bone offsets. 
--- [https://wiki.facepunch.com/gmod/Entity:ManipulateBonePosition]
--- @param boneID number @ Index of the bone you want to manipulate
--- @param pos Vector @ Position vector to apply Note that the position is relative to the original bone position, not relative to the world or the entity.
--- @return void
function Entity:ManipulateBonePosition(boneID, pos) end

--- (client/server) Sets custom bone scale. 
--- [https://wiki.facepunch.com/gmod/Entity:ManipulateBoneScale]
--- @param boneID number @ Index of the bone you want to manipulate
--- @param scale Vector @ Scale vector to apply. Note that the scale is relative to the original bone scale, not relative to the world or the entity.
--- @return void
function Entity:ManipulateBoneScale(boneID, scale) end

--- (server) Returns entity's map creation ID. Unlike [Entity:EntIndex](https://wiki.facepunch.com/gmod/Entity:EntIndex) or [Entity:GetCreationID](https://wiki.facepunch.com/gmod/Entity:GetCreationID), it will always be the same on same map, no matter how much you clean up or restart it.
--- To be used in conjunction with [ents.GetMapCreatedEntity](https://wiki.facepunch.com/gmod/ents.GetMapCreatedEntity). 
--- [https://wiki.facepunch.com/gmod/Entity:MapCreationID]
--- @return number
function Entity:MapCreationID() end

--- (client) Refreshes the shadow of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:MarkShadowAsDirty]
--- @return void
function Entity:MarkShadowAsDirty() end

--- (client/server) Fires the muzzle flash effect of the weapon the entity is carrying. This only creates a light effect and is often called alongside [Weapon:SendWeaponAnim](https://wiki.facepunch.com/gmod/Weapon:SendWeaponAnim) 
--- [https://wiki.facepunch.com/gmod/Entity:MuzzleFlash]
--- @return void
function Entity:MuzzleFlash() end

--- (client/server) Performs a Ray-Orientated Bounding Box intersection from the given position to the origin of the OBBox with the entity and returns the hit position on the OBBox.
--- This relies on the entity having a collision mesh (not a physics object) and will be affected by `SOLID_NONE` 
--- [https://wiki.facepunch.com/gmod/Entity:NearestPoint]
--- @param position Vector @ The vector to start the intersection from.
--- @return Vector
function Entity:NearestPoint(position) end

--- (client/server) Creates a network variable on the entity and adds Set/Get functions for it. This function should only be called in [ENTITY:SetupDataTables](https://wiki.facepunch.com/gmod/ENTITY:SetupDataTables).
--- See [Entity:NetworkVarNotify](https://wiki.facepunch.com/gmod/Entity:NetworkVarNotify) for a function to hook NetworkVar changes. 
--- [https://wiki.facepunch.com/gmod/Entity:NetworkVar]
--- @param type string @ Supported choices:  `String`  `Bool`  `Float`  `Int` (32-bit signed integer)  `Vector`  `Angle`  `Entity`
--- @param slot number @ Each network variable has to have a unique slot. The slot is per type - so you can have an int in slot `0`, a bool in slot `0` and a float in slot `0` etc. You can't have two ints in slot `0`, instead you would do a int in slot `0` and another int in slot `1`. The max slots right now are `32` - so you should pick a number between `0` and `31`. An exception to this is strings which has a max slots of `4`.
--- @param name string @ The name will affect how you access it. If you call it `Foo` you would add two new functions on your entity - `SetFoo()` and `GetFoo()`. So be careful that what you call it won't collide with any existing functions (don't call it `Pos` for example).
--- @param extended table @ A table of extended information. `KeyName`  Allows the NetworkVar to be set using [Entity:SetKeyValue](https://wiki.facepunch.com/gmod/Entity:SetKeyValue). This is useful if you're making an entity that you want to be loaded in a map. The sky entity uses this. `Edit`  The edit key lets you mark this variable as editable. See [Editable Entities](https://wiki.facepunch.com/gmod/Editable%20Entities) for more information.
--- @return void
function Entity:NetworkVar(type, slot, name, extended) end

--- (client/server) Similarly to [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar), creates a network variable on the entity and adds Set/Get functions for it. This method stores it's value as a member value of a vector or an angle. This allows to go beyond the normal variable limit of [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) for `Int` and `Float` types, at the expense of `Vector` and `Angle` limit.
--- This function should only be called in [ENTITY:SetupDataTables](https://wiki.facepunch.com/gmod/ENTITY:SetupDataTables). 
--- [https://wiki.facepunch.com/gmod/Entity:NetworkVarElement]
--- @param type string @ Supported choices:  `Vector`  `Angle`
--- @param slot number @ The slot for this `Vector` or `Angle`, from `0` to `31`. See [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) for more detailed explanation.
--- @param element string @ Which element of a `Vector` or an `Angle` to store the value on. This can be `p`, `y`, `r` for [Angle](https://wiki.facepunch.com/gmod/Angle)s, and `x`, `y`, `z` for [Vector](https://wiki.facepunch.com/gmod/Vector)s
--- @param name string @ The name will affect how you access it. If you call it `Foo` you would add two new functions on your entity - `SetFoo()` and `GetFoo()`. So be careful that what you call it won't collide with any existing functions (don't call it "Pos" for example).
--- @param extended table @ A table of extra information. See [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) for details.
--- @return void
function Entity:NetworkVarElement(type, slot, element, name, extended) end

--- (client/server) Creates a callback that will execute when the given network variable changes - that is, when the `Set 
--- [https://wiki.facepunch.com/gmod/Entity:NetworkVarNotify]
--- @param name string @ Name of variable to track changes of.
--- @param callback function @ The function to call when the variable changes. It is passed 4 arguments:  [Entity](https://wiki.facepunch.com/gmod/Entity) entity - Entity whos variable changed.  [string](https://wiki.facepunch.com/gmod/string) name - Name of changed variable.  [any](https://wiki.facepunch.com/gmod/any) old - Old/current variable value.  [any](https://wiki.facepunch.com/gmod/any) new - New variable value that it was set to.
--- @return void
function Entity:NetworkVarNotify(name, callback) end

--- (client/server) In the case of a scripted entity, this will cause the next [ENTITY:Think](https://wiki.facepunch.com/gmod/ENTITY:Think) event to be run at the given time.
--- Does not work clientside! Use [Entity:SetNextClientThink](https://wiki.facepunch.com/gmod/Entity:SetNextClientThink) instead. 
--- [https://wiki.facepunch.com/gmod/Entity:NextThink]
--- @param timestamp number @ The relative to [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime) timestamp, at which the next think should occur.
--- @return void
function Entity:NextThink(timestamp) end

--- (client/server) Returns the center of an entity's bounding box as a local vector. 
--- [https://wiki.facepunch.com/gmod/Entity:OBBCenter]
--- @return Vector
function Entity:OBBCenter() end

--- (client/server) Returns the highest corner of an entity's bounding box as a local vector. 
--- [https://wiki.facepunch.com/gmod/Entity:OBBMaxs]
--- @return Vector
function Entity:OBBMaxs() end

--- (client/server) Returns the lowest corner of an entity's bounding box as a local vector. 
--- [https://wiki.facepunch.com/gmod/Entity:OBBMins]
--- @return Vector
function Entity:OBBMins() end

--- (client/server) Returns the entity's capabilities as a bitfield.
--- In the engine this function is mostly used to check the use type, the save/restore system and level transitions flags.
--- Even though the function is defined shared, it is not guaranteed to return the same value across states. 
--- [https://wiki.facepunch.com/gmod/Entity:ObjectCaps]
--- @return number
function Entity:ObjectCaps() end

--- (client/server) Returns true if the entity is on the ground, and false if it isn't.
--- Internally, this checks if [FL_ONGROUND](https://wiki.facepunch.com/gmod/Enums/FL) is set on the entity. This is only updated for players and NPCs, and thus won't inherently work for other entities. 
--- [https://wiki.facepunch.com/gmod/Entity:OnGround]
--- @return boolean
function Entity:OnGround() end

--- (server) Tests whether the damage passes the entity filter.
--- This will call [ENTITY:PassesDamageFilter](https://wiki.facepunch.com/gmod/ENTITY:PassesDamageFilter) on scripted entities of the type "filter". 
--- [https://wiki.facepunch.com/gmod/Entity:PassesDamageFilter]
--- @param dmg CTakeDamageInfo @ The damage info to test
--- @return boolean
function Entity:PassesDamageFilter(dmg) end

--- (server) Tests whether the entity passes the entity filter.
--- This will call [ENTITY:PassesFilter](https://wiki.facepunch.com/gmod/ENTITY:PassesFilter) on scripted entities of the type "filter". 
--- [https://wiki.facepunch.com/gmod/Entity:PassesFilter]
--- @param caller Entity @ The initiator of the test. For example the trigger this filter entity is used in.
--- @param ent Entity @ The entity to test against the entity filter.
--- @return boolean
function Entity:PassesFilter(caller, ent) end

--- (client/server) Destroys the current physics object of an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsDestroy]
--- @return void
function Entity:PhysicsDestroy() end

--- (client/server) Initializes the physics mesh of the entity from a triangle soup defined by a table of vertices. The resulting mesh is hollow, may contain holes, and always has a volume of 0.
--- While this is very useful for static geometry such as terrain displacements, it is advised to use [Entity:PhysicsInitConvex](https://wiki.facepunch.com/gmod/Entity:PhysicsInitConvex) or [Entity:PhysicsInitMultiConvex](https://wiki.facepunch.com/gmod/Entity:PhysicsInitMultiConvex) for moving solid objects instead.
--- [Entity:EnableCustomCollisions](https://wiki.facepunch.com/gmod/Entity:EnableCustomCollisions) needs to be called if you want players to collide with the entity correctly. 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsFromMesh]
--- @param vertices table @ A table consisting of [MeshVertex](https://wiki.facepunch.com/gmod/Structures/MeshVertex) (only the `pos` element is taken into account). Every 3 vertices define a triangle in the physics mesh.
--- @return boolean
function Entity:PhysicsFromMesh(vertices) end

--- (client/server) Initializes the [physics object](https://wiki.facepunch.com/gmod/Entity:GetPhysicsObject) of the entity using its current [model](https://wiki.facepunch.com/gmod/Entity:GetModel). Deletes the previous physics object if it existed and the new object creation was successful.
--- If the entity's current model has no physics mesh associated to it, no physics object will be created and the previous object will still exist, if applicable. 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsInit]
--- @param solidType number @ The solid type of the physics object to create, see [SOLID](https://wiki.facepunch.com/gmod/Enums/SOLID). Should be `SOLID_VPHYSICS` in most cases.
--- @return boolean
function Entity:PhysicsInit(solidType) end

--- (client/server) Makes the physics object of the entity a AABB.
--- This function will automatically destroy any previous physics objects and do the following:
--- * [Entity:SetSolid](https://wiki.facepunch.com/gmod/Entity:SetSolid)( SOLID_BBOX )
--- * [Entity:SetMoveType](https://wiki.facepunch.com/gmod/Entity:SetMoveType)( MOVETYPE_VPHYSICS )
--- * [Entity:SetCollisionBounds](https://wiki.facepunch.com/gmod/Entity:SetCollisionBounds)( mins, maxs ) 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsInitBox]
--- @param mins Vector @ The minimum position of the box. This is automatically ordered with the maxs.
--- @param maxs Vector @ The maximum position of the box. This is automatically ordered with the mins.
--- @return boolean
function Entity:PhysicsInitBox(mins, maxs) end

--- (client/server) Initializes the physics mesh of the entity with a convex mesh defined by a table of points. The resulting mesh is the  of all the input points. If successful, the previous physics object will be removed.
--- This is the standard way of creating moving physics objects with a custom convex shape. For more complex, concave shapes, see [Entity:PhysicsInitMultiConvex](https://wiki.facepunch.com/gmod/Entity:PhysicsInitMultiConvex). 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsInitConvex]
--- @param points table @ A table of eight [Vector](https://wiki.facepunch.com/gmod/Vector)s, in local coordinates, to be used in the computation of the convex mesh. Order does not matter.
--- @return boolean
function Entity:PhysicsInitConvex(points) end

--- (client/server) An advanced version of [Entity:PhysicsInitConvex](https://wiki.facepunch.com/gmod/Entity:PhysicsInitConvex) which initializes a physics object from multiple convex meshes. This should be used for physics objects with a custom shape which cannot be represented by a single convex mesh.
--- If successful, the previous physics object will be removed. 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsInitMultiConvex]
--- @param vertices table @ A table consisting of tables of [Vector](https://wiki.facepunch.com/gmod/Vector)s. Each sub-table defines a set of points to be used in the computation of one convex mesh.
--- @return boolean
function Entity:PhysicsInitMultiConvex(vertices) end

--- (client/server) Initializes the entity's physics object as a physics shadow. Removes the previous physics object if successful. This is used internally for the Player's and NPC's physics object, and certain HL2 entities such as the crane.
--- A physics shadow can be used to have static entities that never move by setting both arguments to false. 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsInitShadow]
--- @param allowPhysicsMovement boolean @ Whether to allow the physics shadow to move under stress.
--- @param allowPhysicsRotation boolean @ Whether to allow the physics shadow to rotate under stress.
--- @return boolean
function Entity:PhysicsInitShadow(allowPhysicsMovement, allowPhysicsRotation) end

--- (client/server) Makes the physics object of the entity a sphere.
--- This function will automatically destroy any previous physics objects and do the following:
--- * [Entity:SetSolid](https://wiki.facepunch.com/gmod/Entity:SetSolid)( SOLID_BBOX )
--- * [Entity:SetMoveType](https://wiki.facepunch.com/gmod/Entity:SetMoveType)( MOVETYPE_VPHYSICS ) 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsInitSphere]
--- @param radius number @ The radius of the sphere.
--- @param physmat string @ Physical material from [surfaceproperties.txt](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/surfaceproperties.txt) or added with [physenv.AddSurfaceData](https://wiki.facepunch.com/gmod/physenv.AddSurfaceData).
--- @return boolean
function Entity:PhysicsInitSphere(radius, physmat) end

--- (client/server) Initializes a static physics object of the entity using its [current model](https://wiki.facepunch.com/gmod/Entity:GetModel). If successful, the previous physics object is removed.
--- This is what used by entities such as func_breakable, prop_dynamic, item_suitcharger, prop_thumper and npc_rollermine while it is in its "buried" state in the Half-Life 2 Campaign.
--- If the entity's current model has no physics mesh associated to it, no physics object will be created. 
--- [https://wiki.facepunch.com/gmod/Entity:PhysicsInitStatic]
--- @param solidType number @ The solid type of the physics object to create, see [SOLID](https://wiki.facepunch.com/gmod/Enums/SOLID). Should be SOLID_VPHYSICS in most cases.
--- @return boolean
function Entity:PhysicsInitStatic(solidType) end

--- (client/server) Wakes up the entity's physics object 
--- [https://wiki.facepunch.com/gmod/Entity:PhysWake]
--- @return void
function Entity:PhysWake() end

--- (server) Makes the entity play a .vcd scene. [All scenes from Half-Life 2](https://developer.valvesoftware.com/wiki/Half-Life_2_Scenes_List). 
--- [https://wiki.facepunch.com/gmod/Entity:PlayScene]
--- @param scene string @ Filepath to scene.
--- @param delay number @ Delay in seconds until the scene starts playing.
--- @return number|Entity
function Entity:PlayScene(scene, delay) end

--- (server) Changes an entities angles so that it faces the target entity. 
--- [https://wiki.facepunch.com/gmod/Entity:PointAtEntity]
--- @param target Entity @ The entity to face.
--- @return void
function Entity:PointAtEntity(target) end

--- (server) Precaches gibs for the entity's model.
--- Normally this function should be ran when the entity is spawned, for example the [ENTITY:Initialize](https://wiki.facepunch.com/gmod/ENTITY:Initialize), after [Entity:SetModel](https://wiki.facepunch.com/gmod/Entity:SetModel) is called.
--- This is required for [Entity:GibBreakServer](https://wiki.facepunch.com/gmod/Entity:GibBreakServer) and [Entity:GibBreakClient](https://wiki.facepunch.com/gmod/Entity:GibBreakClient) to work. 
--- [https://wiki.facepunch.com/gmod/Entity:PrecacheGibs]
--- @return number
function Entity:PrecacheGibs() end

--- (server) Normalizes the ragdoll. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](https://wiki.facepunch.com/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity. 
--- [https://wiki.facepunch.com/gmod/Entity:RagdollSolve]
--- @return void
function Entity:RagdollSolve() end

--- (server) Sets the function to build the ragdoll. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](https://wiki.facepunch.com/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity. 
--- [https://wiki.facepunch.com/gmod/Entity:RagdollStopControlling]
--- @return void
function Entity:RagdollStopControlling() end

--- (server) Makes the physics objects follow the set bone positions. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](https://wiki.facepunch.com/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity. 
--- [https://wiki.facepunch.com/gmod/Entity:RagdollUpdatePhysics]
--- @return void
function Entity:RagdollUpdatePhysics() end

--- (client/server) Removes the entity it is used on. The entity will be removed at the start of next tick. 
--- [https://wiki.facepunch.com/gmod/Entity:Remove]
--- @return void
function Entity:Remove() end

--- (client/server) Removes all decals from the entities surface. 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveAllDecals]
--- @return void
function Entity:RemoveAllDecals() end

--- (server) Removes and stops all gestures. 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveAllGestures]
--- @return void
function Entity:RemoveAllGestures() end

--- (client/server) Removes a callback previously added with [Entity:AddCallback](https://wiki.facepunch.com/gmod/Entity:AddCallback) 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveCallback]
--- @param hook string @ The hook name to remove. See [Entity Callbacks](https://wiki.facepunch.com/gmod/Entity%20Callbacks)
--- @param callbackid number @ The callback id previously retrieved with the return of [Entity:AddCallback](https://wiki.facepunch.com/gmod/Entity:AddCallback) or [Entity:GetCallbacks](https://wiki.facepunch.com/gmod/Entity:GetCallbacks)
--- @return void
function Entity:RemoveCallback(hook, callbackid) end

--- (client/server) Removes a function previously added via [Entity:CallOnRemove](https://wiki.facepunch.com/gmod/Entity:CallOnRemove). 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveCallOnRemove]
--- @param identifier string @ Identifier of the function within CallOnRemove
--- @return void
function Entity:RemoveCallOnRemove(identifier) end

--- (client/server) Removes an engine effect applied to an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveEffects]
--- @param effect number @ The effect to remove, see [EF](https://wiki.facepunch.com/gmod/Enums/EF).
--- @return void
function Entity:RemoveEffects(effect) end

--- (client/server) Removes specified engine flag 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveEFlags]
--- @param flag number @ The flag to remove, see [EFL](https://wiki.facepunch.com/gmod/Enums/EFL)
--- @return void
function Entity:RemoveEFlags(flag) end

--- (client/server) Removes specified flag(s) from the entity 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveFlags]
--- @param flag number @ The flag(s) to remove, see [FL](https://wiki.facepunch.com/gmod/Enums/FL)
--- @return void
function Entity:RemoveFlags(flag) end

--- (client/server) Removes a [PhysObj](https://wiki.facepunch.com/gmod/PhysObj)ect from the entity's motion controller so that [ENTITY:PhysicsSimulate](https://wiki.facepunch.com/gmod/ENTITY:PhysicsSimulate) will no longer be called for given [PhysObj](https://wiki.facepunch.com/gmod/PhysObj)ect.
--- You must first create a motion controller with [Entity:StartMotionController](https://wiki.facepunch.com/gmod/Entity:StartMotionController). 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveFromMotionController]
--- @param physObj PhysObj @ The [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) to remove from the motion controller.
--- @return void
function Entity:RemoveFromMotionController(physObj) end

--- (server) Removes and stops the gesture with given activity. 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveGesture]
--- @param activity number @ The activity remove. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return void
function Entity:RemoveGesture(activity) end

--- (client/server) Breaks internal Ragdoll constrains, so you can for example separate an arm from the body of a ragdoll and preserve all physics.
--- The visual mesh will still stretch as if it was properly connected unless the ragdoll model is specifically designed to avoid that. 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveInternalConstraint]
--- @param num number @ Which constraint to break, values below 0 mean break them all
--- @return void
function Entity:RemoveInternalConstraint(num) end

--- (client/server) Removes solid flag(s) from the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:RemoveSolidFlags]
--- @param flags number @ The flag(s) to remove, see [FSOLID](https://wiki.facepunch.com/gmod/Enums/FSOLID).
--- @return void
function Entity:RemoveSolidFlags(flags) end

--- (client/server) Plays an animation on the entity. This may not always work on engine entities. 
--- [https://wiki.facepunch.com/gmod/Entity:ResetSequence]
--- @param sequence number @ The sequence to play. Also accepts strings.
--- @return void
function Entity:ResetSequence(sequence) end

--- (client/server) Reset entity sequence info such as playback rate, ground speed, last event check, etc. 
--- [https://wiki.facepunch.com/gmod/Entity:ResetSequenceInfo]
--- @return void
function Entity:ResetSequenceInfo() end

--- (server) Makes the entity/weapon respawn.
--- Only usable on HL2 pickups and any weapons. Seems to be buggy with weapons.
--- Very unreliable. 
--- [https://wiki.facepunch.com/gmod/Entity:Respawn]
--- @return void
function Entity:Respawn() end

--- (server) Restarts the entity's animation gesture. If the given gesture is already playing, it will reset it and play it from the beginning. 
--- [https://wiki.facepunch.com/gmod/Entity:RestartGesture]
--- @param activity number @ The activity number to send to the entity. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT) and [Entity:GetSequenceActivity](https://wiki.facepunch.com/gmod/Entity:GetSequenceActivity)
--- @param addIfMissing boolean @ Add/start the gesture to if it has not been yet started.
--- @param autokill boolean @ No description provided
--- @return void
function Entity:RestartGesture(activity, addIfMissing, autokill) end

--- (client/server) Returns sequence ID corresponding to given activity ID.
--- Opposite of [Entity:GetSequenceActivity](https://wiki.facepunch.com/gmod/Entity:GetSequenceActivity).
--- Similar to [Entity:LookupSequence](https://wiki.facepunch.com/gmod/Entity:LookupSequence).
--- See also [Entity:SelectWeightedSequenceSeeded](https://wiki.facepunch.com/gmod/Entity:SelectWeightedSequenceSeeded). 
--- [https://wiki.facepunch.com/gmod/Entity:SelectWeightedSequence]
--- @param act number @ The activity ID, see [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return number
function Entity:SelectWeightedSequence(act) end

--- (client/server) Returns the sequence ID corresponding to given activity ID, and uses the provided seed for random selection. The seed should be the same server-side and client-side if used in a predicted environment.
--- See [Entity:SelectWeightedSequence](https://wiki.facepunch.com/gmod/Entity:SelectWeightedSequence) for a provided-seed version of this function. 
--- [https://wiki.facepunch.com/gmod/Entity:SelectWeightedSequenceSeeded]
--- @param act number @ The activity ID, see [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @param seed number @ The seed to use for randomly selecting a sequence in the case the activity ID has multiple sequences bound to it. [Entity:SelectWeightedSequence](https://wiki.facepunch.com/gmod/Entity:SelectWeightedSequence) uses the same seed as [util.SharedRandom](https://wiki.facepunch.com/gmod/util.SharedRandom) internally for this.
--- @return number
function Entity:SelectWeightedSequenceSeeded(act, seed) end

--- (client/server) Sends sequence animation to the view model. It is recommended to use this for view model animations, instead of [Entity:ResetSequence](https://wiki.facepunch.com/gmod/Entity:ResetSequence).
--- This function is only usable on view models. 
--- [https://wiki.facepunch.com/gmod/Entity:SendViewModelMatchingSequence]
--- @param seq number @ The sequence ID returned by [Entity:LookupSequence](https://wiki.facepunch.com/gmod/Entity:LookupSequence) or  [Entity:SelectWeightedSequence](https://wiki.facepunch.com/gmod/Entity:SelectWeightedSequence).
--- @return void
function Entity:SendViewModelMatchingSequence(seq) end

--- (client/server) Returns length of currently played sequence. 
--- [https://wiki.facepunch.com/gmod/Entity:SequenceDuration]
--- @param seqid number @ A sequence ID to return the length specific sequence of instead of the entity's main/currently playing sequence.
--- @return number
function Entity:SequenceDuration(seqid) end

--- (client/server) Sets the entity's velocity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetAbsVelocity]
--- @param velocity Vector @ The new velocity to set.
--- @return void
function Entity:SetAbsVelocity(velocity) end

--- (client/server) Sets the angles of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetAngles]
--- @param angles Angle @ The new angles.
--- @return void
function Entity:SetAngles(angles) end

--- (client/server) Sets a player's third-person animation. Mainly used by [Weapon](https://wiki.facepunch.com/gmod/Weapon)s to start the player's weapon attack and reload animations. 
--- [https://wiki.facepunch.com/gmod/Entity:SetAnimation]
--- @param playerAnim number @ Player animation, see [PLAYER](https://wiki.facepunch.com/gmod/Enums/PLAYER).
--- @return void
function Entity:SetAnimation(playerAnim) end

--- (client) Sets the start time (relative to [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime)) of the current animation, which is used to determine [Entity:GetCycle](https://wiki.facepunch.com/gmod/Entity:GetCycle). Should be less than CurTime to play an animation from the middle. 
--- [https://wiki.facepunch.com/gmod/Entity:SetAnimTime]
--- @param time number @ The time the animation was supposed to begin.
--- @return void
function Entity:SetAnimTime(time) end

--- (client/server) Parents the sprite to an attachment on another model.
--- Works only on env_sprite.
--- Despite existing on client, it doesn't actually do anything on client. 
--- [https://wiki.facepunch.com/gmod/Entity:SetAttachment]
--- @param ent Entity @ The entity to attach/parent to
--- @param attachment number @ The attachment ID to parent to
--- @return void
function Entity:SetAttachment(ent, attachment) end

--- (server) Sets the blood color this entity uses. 
--- [https://wiki.facepunch.com/gmod/Entity:SetBloodColor]
--- @param bloodColor number @ An integer corresponding to [BLOOD_COLOR](https://wiki.facepunch.com/gmod/Enums/BLOOD_COLOR).
--- @return void
function Entity:SetBloodColor(bloodColor) end

--- (client/server) Sets an entities' bodygroup. 
--- [https://wiki.facepunch.com/gmod/Entity:SetBodygroup]
--- @param bodygroup number @ The id of the bodygroup you're setting. Starts from 0.
--- @param value number @ The value you're setting the bodygroup to. Starts from 0.
--- @return void
function Entity:SetBodygroup(bodygroup, value) end

--- (client/server) Sets the bodygroups from a string. A convenience function for [Entity:SetBodygroup](https://wiki.facepunch.com/gmod/Entity:SetBodygroup). 
--- [https://wiki.facepunch.com/gmod/Entity:SetBodyGroups]
--- @param bodygroups string @ Body groups to set. Each single-digit number in the string represents a separate bodygroup. This makes it impossible to set any bodygroup to a value higher than 9! For that you need to use [Entity:SetBodygroup](https://wiki.facepunch.com/gmod/Entity:SetBodygroup).
--- @return void
function Entity:SetBodyGroups(bodygroups) end

--- (client/server) Sets the specified value on the bone controller with the given ID of this entity, it's used in HL1 to change the head rotation of NPCs, turret aiming and so on. 
--- [https://wiki.facepunch.com/gmod/Entity:SetBoneController]
--- @param boneControllerID number @ The ID of the bone controller to set the value to. Goes from 0 to 3.
--- @param value number @ The value to set on the specified bone controller.
--- @return void
function Entity:SetBoneController(boneControllerID, value) end

--- (client/server) Sets the bone matrix of given bone to given matrix. See also [Entity:GetBoneMatrix](https://wiki.facepunch.com/gmod/Entity:GetBoneMatrix). 
--- [https://wiki.facepunch.com/gmod/Entity:SetBoneMatrix]
--- @param boneid number @ The ID of the bone
--- @param matrix VMatrix @ The matrix to set.
--- @return void
function Entity:SetBoneMatrix(boneid, matrix) end

--- (client) Sets the bone position and angles. 
--- [https://wiki.facepunch.com/gmod/Entity:SetBonePosition]
--- @param bone number @ The bone ID to manipulate
--- @param pos Vector @ The position to set
--- @param ang Angle @ The angles to set
--- @return void
function Entity:SetBonePosition(bone, pos, ang) end

--- (client/server) Sets the collision bounds for the entity, which are used for triggers ( [Entity:SetTrigger](https://wiki.facepunch.com/gmod/Entity:SetTrigger), [ENTITY:Touch](https://wiki.facepunch.com/gmod/ENTITY:Touch) ), and collision ( If [Entity:SetSolid](https://wiki.facepunch.com/gmod/Entity:SetSolid) set as [SOLID_BBOX](https://wiki.facepunch.com/gmod/Enums/SOLID) ).
--- Input bounds are relative to [Entity:GetPos](https://wiki.facepunch.com/gmod/Entity:GetPos)! 
--- See also [Entity:SetCollisionBoundsWS](https://wiki.facepunch.com/gmod/Entity:SetCollisionBoundsWS). 
--- [https://wiki.facepunch.com/gmod/Entity:SetCollisionBounds]
--- @param mins Vector @ The minimum vector of the bounds. The vector must be smaller than second argument on all axises.
--- @param maxs Vector @ The maximum vector of the bounds. The vector must be bigger than first argument on all axises.
--- @return void
function Entity:SetCollisionBounds(mins, maxs) end

--- (client/server) Sets the collision bounds for the entity, which are used for triggers ( [Entity:SetTrigger](https://wiki.facepunch.com/gmod/Entity:SetTrigger), [ENTITY:Touch](https://wiki.facepunch.com/gmod/ENTITY:Touch) ), determining if rendering is necessary clientside, and collision ( If [Entity:SetSolid](https://wiki.facepunch.com/gmod/Entity:SetSolid) set as [SOLID_BBOX](https://wiki.facepunch.com/gmod/Enums/SOLID) ).
--- Input bounds are in world coordinates!
--- See also [Entity:SetCollisionBounds](https://wiki.facepunch.com/gmod/Entity:SetCollisionBounds). 
--- [https://wiki.facepunch.com/gmod/Entity:SetCollisionBoundsWS]
--- @param vec1 Vector @ The first vector of the bounds.
--- @param vec2 Vector @ The second vector of the bounds.
--- @return void
function Entity:SetCollisionBoundsWS(vec1, vec2) end

--- (client/server) Sets the entity's collision group. 
--- [https://wiki.facepunch.com/gmod/Entity:SetCollisionGroup]
--- @param group number @ Collision group of the entity, see [COLLISION_GROUP](https://wiki.facepunch.com/gmod/Enums/COLLISION_GROUP)
--- @return void
function Entity:SetCollisionGroup(group) end

--- (client/server) Sets the color of an entity.
--- Some entities may need a custom [render mode](Enums/RENDERMODE) set for transparency to work. See example 2.
--- Entities also must have a proper [render group](Enums/RENDERGROUP) set for transparency to work. 
--- [https://wiki.facepunch.com/gmod/Entity:SetColor]
--- @param color table @ The color to set. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function Entity:SetColor(color) end

--- (server) Sets the creator of the Entity. This is set automatically in Sandbox gamemode when spawning SENTs, but is never used/read by default. 
--- [https://wiki.facepunch.com/gmod/Entity:SetCreator]
--- @param ply Player @ The creator
--- @return void
function Entity:SetCreator(ply) end

--- (client/server) Marks the entity to call [GM:ShouldCollide](https://wiki.facepunch.com/gmod/GM:ShouldCollide). Not to be confused with [Entity:EnableCustomCollisions](https://wiki.facepunch.com/gmod/Entity:EnableCustomCollisions). 
--- [https://wiki.facepunch.com/gmod/Entity:SetCustomCollisionCheck]
--- @param enable boolean @ Enable or disable the custom collision check
--- @return void
function Entity:SetCustomCollisionCheck(enable) end

--- (client/server) Sets the progress of the current animation to a specific value between 0 and 1. 
--- [https://wiki.facepunch.com/gmod/Entity:SetCycle]
--- @param value number @ The desired cycle value
--- @return void
function Entity:SetCycle(value) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Sets the specified angle on the entity's datatable. 
--- [https://wiki.facepunch.com/gmod/Entity:SetDTAngle]
--- @param key number @ Goes from 0 to 31.
--- @param ang Angle @ The angle to write on the entity's datatable.
--- @return void
function Entity:SetDTAngle(key, ang) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Sets the specified bool on the entity's datatable. 
--- [https://wiki.facepunch.com/gmod/Entity:SetDTBool]
--- @param key number @ Goes from 0 to 31.
--- @param bool boolean @ The boolean to write on the entity's metatable.
--- @return void
function Entity:SetDTBool(key, bool) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Sets the specified entity on this entity's datatable. 
--- [https://wiki.facepunch.com/gmod/Entity:SetDTEntity]
--- @param key number @ Goes from 0 to 31.
--- @param ent Entity @ The entity to write on this entity's datatable.
--- @return void
function Entity:SetDTEntity(key, ent) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Sets the specified float on the entity's datatable. 
--- [https://wiki.facepunch.com/gmod/Entity:SetDTFloat]
--- @param key number @ Goes from 0 to 31.
--- @param float number @ The float to write on the entity's datatable.
--- @return void
function Entity:SetDTFloat(key, float) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Sets the specified integer on the entity's datatable. 
--- [https://wiki.facepunch.com/gmod/Entity:SetDTInt]
--- @param key number @ Goes from 0 to 31.
--- @param integer number @ The integer to write on the entity's datatable. This will be cast to a 32-bit signed integer internally.
--- @return void
function Entity:SetDTInt(key, integer) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Sets the specified string on the entity's datatable. 
--- [https://wiki.facepunch.com/gmod/Entity:SetDTString]
--- @param key number @ Goes from 0 to 3.
--- @param str string @ The string to write on the entity's datatable, can't be more than 512 characters per string.
--- @return void
function Entity:SetDTString(key, str) end

--- (client/server) This is called internally by the [Entity:NetworkVar](https://wiki.facepunch.com/gmod/Entity:NetworkVar) system, you can use this in cases where using NetworkVar is not possible.
--- Sets the specified vector on the entity's datatable. 
--- [https://wiki.facepunch.com/gmod/Entity:SetDTVector]
--- @param key number @ Goes from 0 to 31.
--- @param vec Vector @ The vector to write on the entity's datatable.
--- @return void
function Entity:SetDTVector(key, vec) end

--- (client/server) Sets the elasticity of this entity, used by some flying entities such as the Helicopter NPC to determine how much it should bounce around when colliding. 
--- [https://wiki.facepunch.com/gmod/Entity:SetElasticity]
--- @param elasticity number @ The elasticity to set.
--- @return void
function Entity:SetElasticity(elasticity) end

--- (client/server) Allows you to set the Start or End entity attachment for the rope. 
--- [https://wiki.facepunch.com/gmod/Entity:SetEntity]
--- @param name string @ The name of the variable to modify. Accepted names are StartEntity and EndEntity.
--- @param entity Entity @ The entity to apply to the specific attachment.
--- @return void
function Entity:SetEntity(name, entity) end

--- (client/server) Sets the position an entity's eyes look toward. 
--- [https://wiki.facepunch.com/gmod/Entity:SetEyeTarget]
--- @param pos Vector @ The world position the entity is looking toward.
--- @return void
function Entity:SetEyeTarget(pos) end

--- (client/server) Sets the flex scale of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetFlexScale]
--- @param scale number @ The new flex scale to set to
--- @return void
function Entity:SetFlexScale(scale) end

--- (client/server) Sets the flex weight. 
--- [https://wiki.facepunch.com/gmod/Entity:SetFlexWeight]
--- @param flex number @ The ID of the flex to modify weight of
--- @param weight number @ The new weight to set
--- @return void
function Entity:SetFlexWeight(flex, weight) end

--- (server) Sets how much friction an entity has when sliding against a surface. Entities default to 1 (100%) and can be higher or even negative. 
--- [https://wiki.facepunch.com/gmod/Entity:SetFriction]
--- @param friction number @ Friction multiplier
--- @return void
function Entity:SetFriction(friction) end

--- (client/server) Sets the gravity multiplier of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetGravity]
--- @param gravityMultiplier number @ Value which specifies the gravity multiplier.
--- @return void
function Entity:SetGravity(gravityMultiplier) end

--- (client/server) Sets the ground the entity is standing on. 
--- [https://wiki.facepunch.com/gmod/Entity:SetGroundEntity]
--- @param ground Entity @ The ground entity.
--- @return void
function Entity:SetGroundEntity(ground) end

--- (server) Sets the health of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetHealth]
--- @param newHealth number @ New health value.
--- @return void
function Entity:SetHealth(newHealth) end

--- (client/server) Sets the current Hitbox set for the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetHitboxSet]
--- @param id number @ The new hitbox set to set. Can be a name as a [string](https://wiki.facepunch.com/gmod/string), or the ID as a [number](https://wiki.facepunch.com/gmod/number). If the operation failed, the function will silently fail.
--- @return void
function Entity:SetHitboxSet(id) end

--- (client) Enables or disable the inverse kinematic usage of this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetIK]
--- @param useIK boolean @ The state of the IK.
--- @return void
function Entity:SetIK(useIK) end

--- (client/server) Sets Hammer key values on an entity.
--- You can look up which entities have what key values on the [Valve Developer Community](https://developer.valvesoftware.com/wiki/) on entity pages.
--- A  list of basic entities can be found [here](https://developer.valvesoftware.com/wiki/List_of_entities).
--- Alternatively you can look at the .fgd files shipped with Garry's Mod in the bin/ folder with a text editor to see the key values as they appear in Hammer. 
--- [https://wiki.facepunch.com/gmod/Entity:SetKeyValue]
--- @param key string @ The internal key name
--- @param value string @ The value to set
--- @return void
function Entity:SetKeyValue(key, value) end

--- (server) This allows the entity to be lag compensated during [Player:LagCompensation](https://wiki.facepunch.com/gmod/Player:LagCompensation).
--- 
--- As a side note for parented entities, if your entity can be shot at, keep in mind that its collision bounds need to be bigger than the bone's hitbox the entity is parented to, or hull/line traces ( such as the crowbar attack or bullets ) might not hit at all. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLagCompensated]
--- @param enable boolean @ Whether the entity should be lag compensated or not.
--- @return void
function Entity:SetLagCompensated(enable) end

--- (client/server) No description provided 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerBlendIn]
--- @param layerID number @ The Layer ID
--- @param blendIn number @ No description provided
--- @return void
function Entity:SetLayerBlendIn(layerID, blendIn) end

--- (client/server) No description provided 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerBlendOut]
--- @param layerID number @ The Layer ID
--- @param blendOut number @ No description provided
--- @return void
function Entity:SetLayerBlendOut(layerID, blendOut) end

--- (client/server) Sets the animation cycle/frame of given layer. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerCycle]
--- @param layerID number @ The Layer ID
--- @param cycle number @ The new animation cycle/frame for given layer.
--- @return void
function Entity:SetLayerCycle(layerID, cycle) end

--- (client/server) Sets the duration of given layer. This internally overrides the [Entity:SetLayerPlaybackRate](https://wiki.facepunch.com/gmod/Entity:SetLayerPlaybackRate). 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerDuration]
--- @param layerID number @ The Layer ID
--- @param duration number @ The new duration of the layer in seconds.
--- @return void
function Entity:SetLayerDuration(layerID, duration) end

--- (server) Sets whether the layer should loop or not. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerLooping]
--- @param layerID number @ The Layer ID
--- @param loop boolean @ Whether the layer should loop or not.
--- @return void
function Entity:SetLayerLooping(layerID, loop) end

--- (client/server) Sets the layer playback rate. See also [Entity:SetLayerDuration](https://wiki.facepunch.com/gmod/Entity:SetLayerDuration). 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerPlaybackRate]
--- @param layerID number @ The Layer ID
--- @param rate number @ The new playback rate.
--- @return void
function Entity:SetLayerPlaybackRate(layerID, rate) end

--- (server) Sets the priority of given layer. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerPriority]
--- @param layerID number @ The Layer ID
--- @param priority number @ The new priority of the layer.
--- @return void
function Entity:SetLayerPriority(layerID, priority) end

--- (client/server) Sets the sequence of given layer. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerSequence]
--- @param layerID number @ The Layer ID.
--- @param seq number @ The sequenceID to set. See [Entity:LookupSequence](https://wiki.facepunch.com/gmod/Entity:LookupSequence).
--- @return void
function Entity:SetLayerSequence(layerID, seq) end

--- (client/server) Sets the layer weight. This influences how strongly the animation should be overriding the normal animations of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLayerWeight]
--- @param layerID number @ The Layer ID
--- @param weight number @ The new layer weight.
--- @return void
function Entity:SetLayerWeight(layerID, weight) end

--- (client) This forces an entity to use the bone transformation behaviour from versions prior to **8 July 2014**.
--- This behaviour affects [Entity:EnableMatrix](https://wiki.facepunch.com/gmod/Entity:EnableMatrix) and [Entity:SetModelScale](https://wiki.facepunch.com/gmod/Entity:SetModelScale) and is incorrect, therefore this function be used exclusively as a quick fix for old scripts that rely on it. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLegacyTransform]
--- @param enabled boolean @ Whether the entity should use the old bone transformation behaviour or not.
--- @return void
function Entity:SetLegacyTransform(enabled) end

--- (server) Sets the entity to be used as the light origin position for this entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLightingOriginEntity]
--- @param lightOrigin Entity @ The lighting entity.
--- @return void
function Entity:SetLightingOriginEntity(lightOrigin) end

--- (client/server) Sets angles relative to angles of [Entity:GetParent](https://wiki.facepunch.com/gmod/Entity:GetParent) 
--- [https://wiki.facepunch.com/gmod/Entity:SetLocalAngles]
--- @param ang Angle @ The local angle
--- @return void
function Entity:SetLocalAngles(ang) end

--- (client/server) Sets the entity's angular velocity (rotation speed). 
--- [https://wiki.facepunch.com/gmod/Entity:SetLocalAngularVelocity]
--- @param angVel Angle @ The angular velocity to set.
--- @return void
function Entity:SetLocalAngularVelocity(angVel) end

--- (client/server) Sets local position relative to the parented position. This is for use with [Entity:SetParent](https://wiki.facepunch.com/gmod/Entity:SetParent) to offset position. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLocalPos]
--- @param pos Vector @ The local position
--- @return void
function Entity:SetLocalPos(pos) end

--- (client/server) Sets the entity's local velocity which is their velocity due to movement in the world from forces such as gravity. Does not include velocity from entity-on-entity collision or other world movement. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLocalVelocity]
--- @param velocity Vector @ The new velocity to set.
--- @return void
function Entity:SetLocalVelocity(velocity) end

--- (client) Sets the Level Of Detail model to use with this entity. This may not work for all models if the model doesn't include any LOD sub models.
--- This function works exactly like the clientside r_lod convar and takes priority over it. 
--- [https://wiki.facepunch.com/gmod/Entity:SetLOD]
--- @param lod number @ The Level Of Detail model ID to use. -1 leaves the engine to automatically set the Level of Detail. The Level Of Detail may range from 0 to 8, with 0 being the highest quality and 8 the lowest.
--- @return void
function Entity:SetLOD(lod) end

--- (client/server) Sets the rendering material override of the entity.
--- To set a Lua material created with [CreateMaterial](https://wiki.facepunch.com/gmod/Global.CreateMaterial), just prepend a "!" to the material name.
--- If you wish to override a single material on the model, use [Entity:SetSubMaterial](https://wiki.facepunch.com/gmod/Entity:SetSubMaterial) instead. 
--- [https://wiki.facepunch.com/gmod/Entity:SetMaterial]
--- @param materialName string @ New material name. Use an empty string ("") to reset to the default materials.
--- @return void
function Entity:SetMaterial(materialName) end

--- (server) Sets the maximum health for entity. Note, that you can still set entity's health above this amount with [Entity:SetHealth](https://wiki.facepunch.com/gmod/Entity:SetHealth). 
--- [https://wiki.facepunch.com/gmod/Entity:SetMaxHealth]
--- @param maxhealth number @ What the max health should be
--- @return void
function Entity:SetMaxHealth(maxhealth) end

--- (server) Sets the NPC max yaw speed. Internally sets the `m_fMaxYawSpeed` variable which is polled by the engine. 
--- [https://wiki.facepunch.com/gmod/ENTITY:SetMaxYawSpeed]
--- @param maxyaw number @ The new max yaw value to set
--- @return void
function Entity:SetMaxYawSpeed(maxyaw) end

--- (client/server) Sets the model of the entity.
--- This does not update the physics of the entity - see [Entity:PhysicsInit](https://wiki.facepunch.com/gmod/Entity:PhysicsInit). 
--- [https://wiki.facepunch.com/gmod/Entity:SetModel]
--- @param modelName string @ New model value.
--- @return void
function Entity:SetModel(modelName) end

--- (client/server) Alter the model name returned by [Entity:GetModel](https://wiki.facepunch.com/gmod/Entity:GetModel). Does not affect the entity's actual model. 
--- [https://wiki.facepunch.com/gmod/Entity:SetModelName]
--- @param modelname string @ The new model name.
--- @return void
function Entity:SetModelName(modelname) end

--- (client/server) Scales the model of the entity, if the entity is a [Player](https://wiki.facepunch.com/gmod/Player) or an [NPC](https://wiki.facepunch.com/gmod/NPC) the hitboxes will be scaled as well.
--- For some entities, calling [Entity:Activate](https://wiki.facepunch.com/gmod/Entity:Activate) after this will scale the collision bounds and [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) as well; be wary as there's no optimization being done internally and highly complex collision models might crash the server.
--- This is the same system used in TF2 for the Mann Vs Machine robots.
--- To resize the entity along any axis, use [Entity:EnableMatrix](https://wiki.facepunch.com/gmod/Entity:EnableMatrix) instead.
--- Client-side trace detection seems to mess up if deltaTime is set to anything but zero. A very small decimal can be used instead of zero to solve this issue.
--- If your old scales are wrong, use [Entity:SetLegacyTransform](https://wiki.facepunch.com/gmod/Entity:SetLegacyTransform) as a quick fix. 
--- [https://wiki.facepunch.com/gmod/Entity:SetModelScale]
--- @param scale number @ A float to scale the model by. 0 will not draw anything. A number less than 0 will draw the model inverted.
--- @param deltaTime number @ Transition time of the scale change, set to 0 to modify the scale right away. To avoid issues with client-side trace detection this must be set, and can be an extremely low number to mimic a value of 0 such as .000001.
--- @return void
function Entity:SetModelScale(scale, deltaTime) end

--- (client/server) Sets the move collide type of the entity. The move collide is the way a physics object reacts to hitting an object - will it bounce, slide? 
--- [https://wiki.facepunch.com/gmod/Entity:SetMoveCollide]
--- @param moveCollideType number @ The move collide type, see [MOVECOLLIDE](https://wiki.facepunch.com/gmod/Enums/MOVECOLLIDE)
--- @return void
function Entity:SetMoveCollide(moveCollideType) end

--- (client/server) Sets the Movement Parent of an entity to another entity.
--- Similar to [Entity:SetParent](https://wiki.facepunch.com/gmod/Entity:SetParent), except the object's coordinates are not translated automatically before parenting.
--- Does nothing on client. 
--- [https://wiki.facepunch.com/gmod/Entity:SetMoveParent]
--- @param Parent Entity @ The entity to change this entity's Movement Parent to.
--- @return void
function Entity:SetMoveParent(Parent) end

--- (client/server) Sets the entity's move type. This should be called before initializing the physics object on the entity, unless it will override SetMoveType such as [Entity:PhysicsInitBox](https://wiki.facepunch.com/gmod/Entity:PhysicsInitBox).
--- Despite existing on client, it doesn't actually do anything on client. 
--- [https://wiki.facepunch.com/gmod/Entity:SetMoveType]
--- @param movetype number @ The new movetype, see [MOVETYPE](https://wiki.facepunch.com/gmod/Enums/MOVETYPE)
--- @return void
function Entity:SetMoveType(movetype) end

--- (server) Sets the mapping name of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetName]
--- @param mappingName string @ The name to set for the entity.
--- @return void
function Entity:SetName(mappingName) end

--- (client) Alters the entity's perceived serverside angle on the client. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkAngles]
--- @param angle Angle @ Networked angle.
--- @return void
function Entity:SetNetworkAngles(angle) end

--- (client/server) Sets a networked angle value at specified index on the entity.
--- The value then can be accessed with [Entity:GetNetworkedAngle](https://wiki.facepunch.com/gmod/Entity:GetNetworkedAngle) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedAngle]
--- @param key string @ The key to associate the value with
--- @param value Angle @ The value to set
--- @return void
function Entity:SetNetworkedAngle(key, value) end

--- (client/server) Sets a networked boolean value at specified index on the entity.
--- The value then can be accessed with [Entity:GetNetworkedBool](https://wiki.facepunch.com/gmod/Entity:GetNetworkedBool) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedBool]
--- @param key string @ The key to associate the value with
--- @param value boolean @ The value to set
--- @return void
function Entity:SetNetworkedBool(key, value) end

--- (client/server) Sets a networked entity value at specified index on the entity.
--- The value then can be accessed with [Entity:GetNetworkedEntity](https://wiki.facepunch.com/gmod/Entity:GetNetworkedEntity) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedEntity]
--- @param key string @ The key to associate the value with
--- @param value Entity @ The value to set
--- @return void
function Entity:SetNetworkedEntity(key, value) end

--- (client/server) Sets a networked float value at specified index on the entity.
--- The value then can be accessed with [Entity:GetNetworkedFloat](https://wiki.facepunch.com/gmod/Entity:GetNetworkedFloat) both from client and server.
--- Seems to be the same as [Entity:GetNetworkedInt](https://wiki.facepunch.com/gmod/Entity:GetNetworkedInt). 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedFloat]
--- @param key string @ The key to associate the value with
--- @param value number @ The value to set
--- @return void
function Entity:SetNetworkedFloat(key, value) end

--- (client/server) Sets a networked integer value at specified index on the entity.
--- The value then can be accessed with [Entity:GetNetworkedInt](https://wiki.facepunch.com/gmod/Entity:GetNetworkedInt) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedInt]
--- @param key string @ The key to associate the value with
--- @param value number @ The value to set
--- @return void
function Entity:SetNetworkedInt(key, value) end

--- (client/server) Sets a networked number at the specified index on the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedNumber]
--- @param index any @ The index that the value is stored in.
--- @param number number @ The value to network.
--- @return void
function Entity:SetNetworkedNumber(index, number) end

--- (client/server) Sets a networked string value at specified index on the entity.
--- The value then can be accessed with [Entity:GetNetworkedString](https://wiki.facepunch.com/gmod/Entity:GetNetworkedString) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedString]
--- @param key string @ The key to associate the value with
--- @param value string @ The value to set
--- @return void
function Entity:SetNetworkedString(key, value) end

--- (client/server) Sets callback function to be called when given NWVar changes. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedVarProxy]
--- @param name string @ The name of the NWVar to add callback for.
--- @param callback function @ The function to be called when the NWVar changes.
--- @return void
function Entity:SetNetworkedVarProxy(name, callback) end

--- (client/server) Sets a networked vector value at specified index on the entity.
--- The value then can be accessed with [Entity:GetNetworkedVector](https://wiki.facepunch.com/gmod/Entity:GetNetworkedVector) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkedVector]
--- @param key string @ The key to associate the value with
--- @param value Vector @ The value to set
--- @return void
function Entity:SetNetworkedVector(key, value) end

--- (client/server) Virtually changes entity position for clients. Does the same thing as [Entity:SetPos](https://wiki.facepunch.com/gmod/Entity:SetPos) when used serverside. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNetworkOrigin]
--- @param origin Vector @ The position to make clients think this entity is at.
--- @return void
function Entity:SetNetworkOrigin(origin) end

--- (client) Sets the next time the clientside [ENTITY:Think](https://wiki.facepunch.com/gmod/ENTITY:Think) is called. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNextClientThink]
--- @param nextthink number @ The next time, relative to [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime), to execute the [ENTITY:Think](https://wiki.facepunch.com/gmod/ENTITY:Think) clientside.
--- @return void
function Entity:SetNextClientThink(nextthink) end

--- (client/server) Sets if the entity's model should render at all.
--- If set on the server, this entity will no longer network to clients, and for all intents and purposes cease to exist clientside. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNoDraw]
--- @param shouldNotDraw boolean @ true disables drawing
--- @return void
function Entity:SetNoDraw(shouldNotDraw) end

--- (client/server) Sets whether the entity is solid or not. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNotSolid]
--- @param IsNotSolid boolean @ True will make the entity not solid, false will make it solid.
--- @return void
function Entity:SetNotSolid(IsNotSolid) end

--- (server) Sets the NPC classification. Internally sets the `m_iClass` variable which is polled by the engine. 
--- [https://wiki.facepunch.com/gmod/ENTITY:SetNPCClass]
--- @param classification number @ The [CLASS Enum](https://wiki.facepunch.com/gmod/Enums/CLASS)
--- @return void
function Entity:SetNPCClass(classification) end

--- (client/server) Sets a networked angle value on the entity.
--- The value can then be accessed with [Entity:GetNWAngle](https://wiki.facepunch.com/gmod/Entity:GetNWAngle) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNWAngle]
--- @param key string @ The key to associate the value with
--- @param value Angle @ The value to set
--- @return void
function Entity:SetNWAngle(key, value) end

--- (client/server) Sets a networked boolean value on the entity.
--- The value can then be accessed with [Entity:GetNWBool](https://wiki.facepunch.com/gmod/Entity:GetNWBool) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNWBool]
--- @param key string @ The key to associate the value with
--- @param value boolean @ The value to set
--- @return void
function Entity:SetNWBool(key, value) end

--- (client/server) Sets a networked entity value on the entity.
--- The value can then be accessed with [Entity:GetNWEntity](https://wiki.facepunch.com/gmod/Entity:GetNWEntity) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNWEntity]
--- @param key string @ The key to associate the value with
--- @param value Entity @ The value to set
--- @return void
function Entity:SetNWEntity(key, value) end

--- (client/server) Sets a networked float (number) value on the entity.
--- The value can then be accessed with [Entity:GetNWFloat](https://wiki.facepunch.com/gmod/Entity:GetNWFloat) both from client and server.
--- Unlike [Entity:SetNWInt](https://wiki.facepunch.com/gmod/Entity:SetNWInt), floats don't have to be whole numbers. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNWFloat]
--- @param key string @ The key to associate the value with
--- @param value number @ The value to set
--- @return void
function Entity:SetNWFloat(key, value) end

--- (client/server) Sets a networked integer (whole number) value on the entity.
--- The value can then be accessed with [Entity:GetNWInt](https://wiki.facepunch.com/gmod/Entity:GetNWInt) both from client and server.
--- See [Entity:SetNWFloat](https://wiki.facepunch.com/gmod/Entity:SetNWFloat) for numbers that aren't integers. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNWInt]
--- @param key string @ The key to associate the value with
--- @param value number @ The value to set
--- @return void
function Entity:SetNWInt(key, value) end

--- (client/server) Sets a networked string value on the entity.
--- The value can then be accessed with [Entity:GetNWString](https://wiki.facepunch.com/gmod/Entity:GetNWString) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNWString]
--- @param key string @ The key to associate the value with
--- @param value string @ The value to set, up to 199 characters.
--- @return void
function Entity:SetNWString(key, value) end

--- (client/server) Sets a function to be called when the NWVar changes. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNWVarProxy]
--- @param key any @ The key of the NWVar to add callback for.
--- @param callback function @ The function to be called when the NWVar changes. It has 4 arguments:  [Entity](https://wiki.facepunch.com/gmod/Entity) ent - The entity  [string](https://wiki.facepunch.com/gmod/string) name - Name of the NWVar that has changed  [any](https://wiki.facepunch.com/gmod/any) oldval - The old value  [any](https://wiki.facepunch.com/gmod/any) newval - The new value
--- @return void
function Entity:SetNWVarProxy(key, callback) end

--- (client/server) Sets a networked vector value on the entity.
--- The value can then be accessed with [Entity:GetNWVector](https://wiki.facepunch.com/gmod/Entity:GetNWVector) both from client and server. 
--- [https://wiki.facepunch.com/gmod/Entity:SetNWVector]
--- @param key string @ The key to associate the value with
--- @param value Vector @ The value to set
--- @return void
function Entity:SetNWVector(key, value) end

--- (client/server) Sets the owner of this entity, disabling all physics interaction with it. 
--- [https://wiki.facepunch.com/gmod/Entity:SetOwner]
--- @param owner Entity @ The entity to be set as owner.
--- @return void
function Entity:SetOwner(owner) end

--- (client/server) Sets the parent of this entity, making it move with its parent. This will make the child entity non solid, nothing can interact with them, including traces. 
--- [https://wiki.facepunch.com/gmod/Entity:SetParent]
--- @param parent Entity @ The entity to parent to. Setting this to nil will clear the parent.
--- @param attachmentId number @ The attachment id to use when parenting, defaults to -1 or whatever the parent had set previously.
--- @return void
function Entity:SetParent(parent, attachmentId) end

--- (client/server) Sets the parent of an entity to another entity with the given physics bone number. Similar to [Entity:SetParent](https://wiki.facepunch.com/gmod/Entity:SetParent), except it is parented to a physbone. This function is useful mainly for ragdolls. 
--- [https://wiki.facepunch.com/gmod/Entity:SetParentPhysNum]
--- @param bone number @ Physics bone number to attach to. Use 0 for objects with only one physics bone. (See [Entity:GetPhysicsObjectNum](https://wiki.facepunch.com/gmod/Entity:GetPhysicsObjectNum))
--- @return void
function Entity:SetParentPhysNum(bone) end

--- (client/server) Sets whether or not the given entity is persistent. A persistent entity will be saved on server shutdown and loaded back when the server starts up. Additionally, by default persistent entities cannot be grabbed with the physgun and tools cannot be used on them.
--- In sandbox, this can be set on an entity by opening the context menu, right clicking the entity, and choosing "Make Persistent". 
--- [https://wiki.facepunch.com/gmod/Entity:SetPersistent]
--- @param persist boolean @ Whether or not the entity should be persistent.
--- @return void
function Entity:SetPersistent(persist) end

--- (server) When called on a constraint entity, sets the two physics objects to be constrained.
--- Usage is not recommended as the Constraint library provides easier ways to deal with constraints. 
--- [https://wiki.facepunch.com/gmod/Entity:SetPhysConstraintObjects]
--- @param Phys1 PhysObj @ The first physics object to be constrained.
--- @param Phys2 PhysObj @ The second physics object to be constrained.
--- @return void
function Entity:SetPhysConstraintObjects(Phys1, Phys2) end

--- (server) Sets the player who gets credit if this entity kills something with physics damage within the time limit. 
--- [https://wiki.facepunch.com/gmod/Entity:SetPhysicsAttacker]
--- @param ent Player @ Player who gets the kills. Setting this to a non-player entity will not work.
--- @param timeLimit number @ Time in seconds until the entity forgets its physics attacker and prevents it from getting the kill credit.
--- @return void
function Entity:SetPhysicsAttacker(ent, timeLimit) end

--- (client/server) Allows you to set how fast an entity's animation will play, with 1.0 being the default speed. 
--- [https://wiki.facepunch.com/gmod/Entity:SetPlaybackRate]
--- @param fSpeed number @ How fast the animation will play.
--- @return void
function Entity:SetPlaybackRate(fSpeed) end

--- (client/server) Moves the entity to the specified position. 
--- [https://wiki.facepunch.com/gmod/Entity:SetPos]
--- @param position Vector @ The position to move the entity to.
--- @return void
function Entity:SetPos(position) end

--- (client/server) Sets the specified pose parameter to the specified value.
--- You should call [Entity:InvalidateBoneCache](https://wiki.facepunch.com/gmod/Entity:InvalidateBoneCache) after calling this function. 
--- [https://wiki.facepunch.com/gmod/Entity:SetPoseParameter]
--- @param poseName string @ Name of the pose parameter. [Entity:GetPoseParameterName](https://wiki.facepunch.com/gmod/Entity:GetPoseParameterName) might come in handy here.
--- @param poseValue number @ The value to set the pose to.
--- @return void
function Entity:SetPoseParameter(poseName, poseValue) end

--- (client) Sets whether an entity should be predictable or not.
--- When an entity is set as predictable, its DT vars can be changed during predicted hooks. This is useful for entities which can be controlled by player input.
--- Any datatable value that mismatches from the server will be overridden and a prediction error will be spewed.
--- Weapons are predictable by default, and the drive system uses this function to make the controlled prop predictable as well.
--- Visit  for a list of all predicted hooks, and the [Prediction](https://wiki.facepunch.com/gmod/Prediction) page.
--- For further technical information on the subject, visit [valve's wiki](https://developer.valvesoftware.com/wiki/Prediction). 
--- [https://wiki.facepunch.com/gmod/Entity:SetPredictable]
--- @param setPredictable boolean @ whether to make this entity predictable or not.
--- @return void
function Entity:SetPredictable(setPredictable) end

--- (server) Prevents the server from sending any further information about the entity to a player. 
--- [https://wiki.facepunch.com/gmod/Entity:SetPreventTransmit]
--- @param player Player @ The player to stop networking the entity to.
--- @param stopTransmitting boolean @ true to stop the entity from networking, false to make it network again.
--- @return void
function Entity:SetPreventTransmit(player, stopTransmitting) end

--- (server) Sets the bone angles. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](https://wiki.facepunch.com/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRagdollAng]
--- @param boneid number @ Bone ID
--- @param pos Angle @ Angle to set
--- @return void
function Entity:SetRagdollAng(boneid, pos) end

--- (server) Sets the function to build the ragdoll. This is used alongside Kinect, for more info see ragdoll_motion entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRagdollBuildFunction]
--- @param func function @ The build function. This function has one argument:  [Entity](https://wiki.facepunch.com/gmod/Entity) ragdoll - The ragdoll to build
--- @return void
function Entity:SetRagdollBuildFunction(func) end

--- (server) Sets the bone position. This is used alongside Kinect in [Entity:SetRagdollBuildFunction](https://wiki.facepunch.com/gmod/Entity:SetRagdollBuildFunction), for more info see ragdoll_motion entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRagdollPos]
--- @param boneid number @ Bone ID
--- @param pos Vector @ Position to set
--- @return void
function Entity:SetRagdollPos(boneid, pos) end

--- (client) Sets the render angles of the Entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRenderAngles]
--- @param newAngles Angle @ The new render angles to be set to.
--- @return void
function Entity:SetRenderAngles(newAngles) end

--- (client) Sets the render bounds for the entity. For world space coordinates see [Entity:SetRenderBoundsWS](https://wiki.facepunch.com/gmod/Entity:SetRenderBoundsWS). 
--- [https://wiki.facepunch.com/gmod/Entity:SetRenderBounds]
--- @param mins Vector @ The minimum corner of the bounds, relative to origin of the entity.
--- @param maxs Vector @ The maximum corner of the bounds, relative to origin of the entity.
--- @param add Vector @ If defined, adds this vector to maxs and subtracts this vector from mins.
--- @return void
function Entity:SetRenderBounds(mins, maxs, add) end

--- (client) Sets the render bounds for the entity in world space coordinates. For relative coordinates see [Entity:SetRenderBounds](https://wiki.facepunch.com/gmod/Entity:SetRenderBounds). 
--- [https://wiki.facepunch.com/gmod/Entity:SetRenderBoundsWS]
--- @param mins Vector @ The minimum corner of the bounds, relative to origin of the world/map.
--- @param maxs Vector @ The maximum corner of the bounds, relative to origin of the world/map.
--- @param add Vector @ If defined, adds this vector to maxs and subtracts this vector from mins.
--- @return void
function Entity:SetRenderBoundsWS(mins, maxs, add) end

--- (client) Used to specify a plane, past which an object will be visually clipped. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRenderClipPlane]
--- @param planeNormal Vector @ The normal of the plane. Anything behind the normal will be clipped.
--- @param planePosition number @ The position of the plane.
--- @return void
function Entity:SetRenderClipPlane(planeNormal, planePosition) end

--- (client) Enables the use of clipping planes to "cut" objects. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRenderClipPlaneEnabled]
--- @param enabled boolean @ Enable or disable clipping planes
--- @return void
function Entity:SetRenderClipPlaneEnabled(enabled) end

--- (client/server) Sets entity's render FX. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRenderFX]
--- @param renderFX number @ The new render FX to set, see [kRenderFx](https://wiki.facepunch.com/gmod/Enums/kRenderFx)
--- @return void
function Entity:SetRenderFX(renderFX) end

--- (client/server) Sets the render mode of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRenderMode]
--- @param renderMode number @ New render mode to set, see [RENDERMODE](https://wiki.facepunch.com/gmod/Enums/RENDERMODE).
--- @return void
function Entity:SetRenderMode(renderMode) end

--- (client) Set the origin in which the Entity will be drawn from. 
--- [https://wiki.facepunch.com/gmod/Entity:SetRenderOrigin]
--- @param newOrigin Vector @ The new origin in world coordinates where the Entity's model will now be rendered from.
--- @return void
function Entity:SetRenderOrigin(newOrigin) end

--- (client/server) Sets a save value for an entity. You can see a full list of an entity's save values by creating it and printing [Entity:GetSaveTable](https://wiki.facepunch.com/gmod/Entity:GetSaveTable)().
--- See [Entity:GetInternalVariable](https://wiki.facepunch.com/gmod/Entity:GetInternalVariable) for the opposite of this function. 
--- [https://wiki.facepunch.com/gmod/Entity:SetSaveValue]
--- @param name string @ Name of the save value to set
--- @param value any @ Value to set
--- @return boolean
function Entity:SetSaveValue(name, value) end

--- (client/server) Sets the entity's model sequence.
--- If the specified sequence is already active, the animation will not be restarted. See [Entity:ResetSequence](https://wiki.facepunch.com/gmod/Entity:ResetSequence) for a function that restarts the animation even if it is already playing.
--- In some cases you want to run [Entity:ResetSequenceInfo](https://wiki.facepunch.com/gmod/Entity:ResetSequenceInfo) to make this function run. 
--- [https://wiki.facepunch.com/gmod/Entity:SetSequence]
--- @param sequenceId number @ The sequence to play. Also accepts strings.
--- @return void
function Entity:SetSequence(sequenceId) end

--- (client/server) Sets whether or not the entity should make a physics contact sound when it's been picked up by a player. 
--- [https://wiki.facepunch.com/gmod/Entity:SetShouldPlayPickupSound]
--- @param playsound boolean @ True to play the pickup sound, false otherwise.
--- @return void
function Entity:SetShouldPlayPickupSound(playsound) end

--- (client/server) Sets if entity should create a server ragdoll on death or a client one. 
--- [https://wiki.facepunch.com/gmod/Entity:SetShouldServerRagdoll]
--- @param serverragdoll boolean @ Set `true` if ragdoll should be created on server, `false` if on client.
--- @return void
function Entity:SetShouldServerRagdoll(serverragdoll) end

--- (client/server) Sets the skin of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetSkin]
--- @param skinIndex number @ 0-based index of the skin to use.
--- @return void
function Entity:SetSkin(skinIndex) end

--- (client/server) Sets the solidity of an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetSolid]
--- @param solid_type number @ The solid type. See the [SOLID](https://wiki.facepunch.com/gmod/Enums/SOLID).
--- @return void
function Entity:SetSolid(solid_type) end

--- (client/server) Sets solid flag(s) for the entity.
--- This overrides any other flags the entity might have had. See [Entity:AddSolidFlags](https://wiki.facepunch.com/gmod/Entity:AddSolidFlags) for adding flags. 
--- [https://wiki.facepunch.com/gmod/Entity:SetSolidFlags]
--- @param flags number @ The flag(s) to set, see [FSOLID](https://wiki.facepunch.com/gmod/Enums/FSOLID).
--- @return void
function Entity:SetSolidFlags(flags) end

--- (client/server) Sets whether the entity should use a spawn effect when it is created on the client.
--- See [Entity:GetSpawnEffect](https://wiki.facepunch.com/gmod/Entity:GetSpawnEffect) for more information on how the effect is applied. 
--- [https://wiki.facepunch.com/gmod/Entity:SetSpawnEffect]
--- @param spawnEffect boolean @ Sets if we should show a spawn effect.
--- @return void
function Entity:SetSpawnEffect(spawnEffect) end

--- (client/server) Overrides a single material on the model of this entity.
--- To set a Lua material created with [CreateMaterial](https://wiki.facepunch.com/gmod/Global.CreateMaterial), just prepend a "!" to the material name. 
--- [https://wiki.facepunch.com/gmod/Entity:SetSubMaterial]
--- @param index number @ Index of the material to override, acceptable values are from 0 to 31. Indexes are by [Entity:GetMaterials](https://wiki.facepunch.com/gmod/Entity:GetMaterials), but you have to subtract 1 from them. If called with no arguments, all sub materials will be reset.
--- @param material string @ The material to override the default one with. Set to nil to revert to default material.
--- @return void
function Entity:SetSubMaterial(index, material) end

--- (client/server) Changes the table that can be accessed by indexing an entity. Each entity starts with its own table by default. 
--- [https://wiki.facepunch.com/gmod/Entity:SetTable]
--- @param tab table @ Table for the entity to use
--- @return void
function Entity:SetTable(tab) end

--- (client/server) When this flag is set the entity will only transmit to the player when its parent is transmitted. This is useful for things like viewmodel attachments since without this flag they will transmit to everyone (and cause the viewmodels to transmit to everyone too). 
--- [https://wiki.facepunch.com/gmod/Entity:SetTransmitWithParent]
--- @param onoff boolean @ Will set the TransmitWithParent flag on or off
--- @return void
function Entity:SetTransmitWithParent(onoff) end

--- (server) Marks the entity as a trigger, so it will generate [ENTITY:StartTouch](https://wiki.facepunch.com/gmod/ENTITY:StartTouch), [ENTITY:Touch](https://wiki.facepunch.com/gmod/ENTITY:Touch) and [ENTITY:EndTouch](https://wiki.facepunch.com/gmod/ENTITY:EndTouch) callbacks.
--- Internally this is stored as [FSOLID_TRIGGER](https://wiki.facepunch.com/gmod/Enums/FSOLID) flag. 
--- [https://wiki.facepunch.com/gmod/Entity:SetTrigger]
--- @param maketrigger boolean @ Make the entity trigger or not
--- @return void
function Entity:SetTrigger(maketrigger) end

--- (server) Sets whether an entity can be unfrozen, meaning that it cannot be unfrozen using the physgun. 
--- [https://wiki.facepunch.com/gmod/Entity:SetUnFreezable]
--- @param freezable boolean @ True to make the entity unfreezable, false otherwise.
--- @return void
function Entity:SetUnFreezable(freezable) end

--- (client) Forces the entity to reconfigure its bones. You might need to call this after changing your model's scales or when manually drawing the entity multiple times at different positions. 
--- [https://wiki.facepunch.com/gmod/Entity:SetupBones]
--- @return void
function Entity:SetupBones() end

--- (client) Initializes the class names of an entity's phoneme mappings (mouth movement data). This is called by default with argument "phonemes" when a flex-based entity (such as an [NPC](https://wiki.facepunch.com/gmod/NPC)) is created. 
--- [https://wiki.facepunch.com/gmod/Entity:SetupPhonemeMappings]
--- @param fileRoot string @ The file prefix of the phoneme mappings (relative to "garrysmod/expressions/").
--- @return void
function Entity:SetupPhonemeMappings(fileRoot) end

--- (server) Sets the use type of an entity, affecting how often [ENTITY:Use](https://wiki.facepunch.com/gmod/ENTITY:Use) will be called for Lua entities. 
--- [https://wiki.facepunch.com/gmod/Entity:SetUseType]
--- @param useType number @ The use type to apply to the entity. Uses [_USE](https://wiki.facepunch.com/gmod/Enums/_USE).
--- @return void
function Entity:SetUseType(useType) end

--- (client/server) Allows to quickly set variable to entity's [Entity:GetTable](https://wiki.facepunch.com/gmod/Entity:GetTable). 
--- [https://wiki.facepunch.com/gmod/Entity:SetVar]
--- @param key any @ Key of the value to set
--- @param value any @ Value to set the variable to
--- @return void
function Entity:SetVar(key, value) end

--- (client/server) Sets the entity's velocity. For entities with physics, consider using [PhysObj:SetVelocity](https://wiki.facepunch.com/gmod/PhysObj:SetVelocity) on the [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) of the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:SetVelocity]
--- @param velocity Vector @ The new velocity to set.
--- @return void
function Entity:SetVelocity(velocity) end

--- (client/server) Sets the model and associated weapon to this viewmodel entity.
--- This is used internally when the player switches weapon. 
--- [https://wiki.facepunch.com/gmod/Entity:SetWeaponModel]
--- @param viewModel string @ The model string to give to this viewmodel. Example: "models/weapons/c_smg1.mdl"
--- @param weapon Weapon @ The weapon entity to associate this viewmodel to.
--- @return void
function Entity:SetWeaponModel(viewModel, weapon) end

--- (client/server) Returns the amount of skins the entity has. 
--- [https://wiki.facepunch.com/gmod/Entity:SkinCount]
--- @return number
function Entity:SkinCount() end

--- (client) Moves the model instance from the source entity to this entity. This can be used to transfer decals that have been applied on one entity to another.
--- Both entities must have the same model. 
--- [https://wiki.facepunch.com/gmod/Entity:SnatchModelInstance]
--- @param srcEntity Entity @ Entity to move the model instance from.
--- @return boolean
function Entity:SnatchModelInstance(srcEntity) end

--- (client/server) Initializes the entity and starts its networking. If called on a player, it will respawn them.
--- This calls [ENTITY:Initialize](https://wiki.facepunch.com/gmod/ENTITY:Initialize) on Lua-defined entities. 
--- [https://wiki.facepunch.com/gmod/Entity:Spawn]
--- @return void
function Entity:Spawn() end

--- (client/server) Starts a "looping" sound. As with any other sound playing methods, this function expects the sound file to be looping itself and will not automatically loop a non looping sound file as one might expect.
--- This function is almost identical to [CreateSound](https://wiki.facepunch.com/gmod/Global.CreateSound), with the exception of the sound being created in the STATIC channel and with normal attenuation.
--- See also [Entity:StopLoopingSound](https://wiki.facepunch.com/gmod/Entity:StopLoopingSound) 
--- [https://wiki.facepunch.com/gmod/Entity:StartLoopingSound]
--- @param sound string @ Sound to play. Can be either a sound script or a filepath.
--- @return number
function Entity:StartLoopingSound(sound) end

--- (client/server) Starts a motion controller in the physics engine tied to this entity's [PhysObj](https://wiki.facepunch.com/gmod/PhysObj), which enables the use of [ENTITY:PhysicsSimulate](https://wiki.facepunch.com/gmod/ENTITY:PhysicsSimulate).
--- The motion controller can later be destroyed via [Entity:StopMotionController](https://wiki.facepunch.com/gmod/Entity:StopMotionController).
--- Motion controllers are used internally to control other Entities' [PhysObj](https://wiki.facepunch.com/gmod/PhysObj)ects, such as the Gravity Gun, +use pickup and the Physics Gun.
--- This function should be called every time you recreate the Entity's [PhysObj](https://wiki.facepunch.com/gmod/PhysObj). Or alternatively you should call [Entity:AddToMotionController](https://wiki.facepunch.com/gmod/Entity:AddToMotionController) on the new [PhysObj](https://wiki.facepunch.com/gmod/PhysObj).
--- Also see [Entity:AddToMotionController](https://wiki.facepunch.com/gmod/Entity:AddToMotionController) and [Entity:RemoveFromMotionController](https://wiki.facepunch.com/gmod/Entity:RemoveFromMotionController). 
--- [https://wiki.facepunch.com/gmod/Entity:StartMotionController]
--- @return void
function Entity:StartMotionController() end

--- (client) Stops all particle effects parented to the entity and immediately destroys them. 
--- [https://wiki.facepunch.com/gmod/Entity:StopAndDestroyParticles]
--- @return void
function Entity:StopAndDestroyParticles() end

--- (client/server) Stops a sound created by [Entity:StartLoopingSound](https://wiki.facepunch.com/gmod/Entity:StartLoopingSound). 
--- [https://wiki.facepunch.com/gmod/Entity:StopLoopingSound]
--- @param id number @ The sound ID returned by [Entity:StartLoopingSound](https://wiki.facepunch.com/gmod/Entity:StartLoopingSound)
--- @return void
function Entity:StopLoopingSound(id) end

--- (client/server) Stops the motion controller created with [Entity:StartMotionController](https://wiki.facepunch.com/gmod/Entity:StartMotionController). 
--- [https://wiki.facepunch.com/gmod/Entity:StopMotionController]
--- @return void
function Entity:StopMotionController() end

--- (client) Stops all particle effects parented to the entity.
--- This is ran automatically on every client by [Entity:StopParticles](https://wiki.facepunch.com/gmod/Entity:StopParticles) if called on the server. 
--- [https://wiki.facepunch.com/gmod/Entity:StopParticleEmission]
--- @return void
function Entity:StopParticleEmission() end

--- (client/server) Stops any attached to the entity .pcf particles using [ParticleEffectAttach](https://wiki.facepunch.com/gmod/Global.ParticleEffectAttach).
--- On client, this is the same as [Entity:StopParticleEmission](https://wiki.facepunch.com/gmod/Entity:StopParticleEmission). ( and you should use StopParticleEmission instead )
--- On server, this is the same as running [Entity:StopParticleEmission](https://wiki.facepunch.com/gmod/Entity:StopParticleEmission) on every client. 
--- [https://wiki.facepunch.com/gmod/Entity:StopParticles]
--- @return void
function Entity:StopParticles() end

--- (client) Stops all particle effects parented to the entity with given name. 
--- [https://wiki.facepunch.com/gmod/Entity:StopParticlesNamed]
--- @param name string @ The name of the particle to stop.
--- @return void
function Entity:StopParticlesNamed(name) end

--- (client) Stops all particle effects parented to the entity with given name on given attachment. 
--- [https://wiki.facepunch.com/gmod/Entity:StopParticlesWithNameAndAttachment]
--- @param name string @ The name of the particle to stop.
--- @param attachment number @ The attachment of the entity to stop particles on.
--- @return void
function Entity:StopParticlesWithNameAndAttachment(name, attachment) end

--- (client/server) Stops emitting the given sound from the entity, especially useful for looping sounds. 
--- [https://wiki.facepunch.com/gmod/Entity:StopSound]
--- @param sound string @ The name of the sound script or the filepath to stop playback of.
--- @return void
function Entity:StopSound(sound) end

--- (server) Applies the specified amount of damage to the entity with [DMG_GENERIC](https://wiki.facepunch.com/gmod/Enums/DMG) flag. 
--- [https://wiki.facepunch.com/gmod/Entity:TakeDamage]
--- @param damageAmount number @ The amount of damage to be applied.
--- @param attacker Entity @ The entity that initiated the attack that caused the damage.
--- @param inflictor Entity @ The entity that applied the damage, eg. a weapon.
--- @return void
function Entity:TakeDamage(damageAmount, attacker, inflictor) end

--- (server) Applies the damage specified by the damage info to the entity. 
--- [https://wiki.facepunch.com/gmod/Entity:TakeDamageInfo]
--- @param damageInfo CTakeDamageInfo @ The damage to apply.
--- @return void
function Entity:TakeDamageInfo(damageInfo) end

--- (server) Applies forces to our physics object in response to damage. 
--- [https://wiki.facepunch.com/gmod/Entity:TakePhysicsDamage]
--- @param dmginfo CTakeDamageInfo @ The damageinfo to apply. Only [CTakeDamageInfo:GetDamageForce](https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamageForce) and [CTakeDamageInfo:GetDamagePosition](https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamagePosition) are used.
--- @return void
function Entity:TakePhysicsDamage(dmginfo) end

--- (server) Check if the given position or entity is within this entity's PVS.
--- See also [Entity:IsDormant](https://wiki.facepunch.com/gmod/Entity:IsDormant). 
--- [https://wiki.facepunch.com/gmod/Entity:TestPVS]
--- @param testPoint any @ [Entity](https://wiki.facepunch.com/gmod/Entity) or [Vector](https://wiki.facepunch.com/gmod/Vector) to test against. If an entity is given, this function will test using its bounding box.
--- @return boolean
function Entity:TestPVS(testPoint) end

--- (client/server) Returns the ID of a [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) attached to the given bone. To be used with [Entity:GetPhysicsObjectNum](https://wiki.facepunch.com/gmod/Entity:GetPhysicsObjectNum).
--- See [Entity:TranslatePhysBoneToBone](https://wiki.facepunch.com/gmod/Entity:TranslatePhysBoneToBone) for reverse function. 
--- [https://wiki.facepunch.com/gmod/Entity:TranslateBoneToPhysBone]
--- @param boneID number @ The ID of a bone to look up the "physics root" bone of.
--- @return number
function Entity:TranslateBoneToPhysBone(boneID) end

--- (client/server) Returns the boneID of the bone the given [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) is attached to.
--- See [Entity:TranslateBoneToPhysBone](https://wiki.facepunch.com/gmod/Entity:TranslateBoneToPhysBone) for reverse function. 
--- [https://wiki.facepunch.com/gmod/Entity:TranslatePhysBoneToBone]
--- @param physNum number @ The [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) number on the entity
--- @return number
function Entity:TranslatePhysBoneToBone(physNum) end

--- (server) Updates positions of bone followers created by [Entity:CreateBoneFollowers](https://wiki.facepunch.com/gmod/Entity:CreateBoneFollowers).
--- This should be called every tick. 
--- [https://wiki.facepunch.com/gmod/Entity:UpdateBoneFollowers]
--- @return void
function Entity:UpdateBoneFollowers() end

--- (server) Simulates a `+use` action on an entity. 
--- [https://wiki.facepunch.com/gmod/Entity:Use(function)]
--- @param activator Entity @ The entity that caused this input. This will usually be the player who pressed their use key
--- @param caller Entity @ The entity responsible for the input. This will typically be the same as `activator` unless some other entity is acting as a proxy
--- @param useType number @ Use type, see [USE](https://wiki.facepunch.com/gmod/Enums/USE).
--- @param value number @ Any value.
--- @return void
function Entity:Use(activator, caller, useType, value) end

--- (client/server) Animations will be handled purely clientside instead of a fixed animtime, enabling interpolation. This does not affect layers and gestures. 
--- [https://wiki.facepunch.com/gmod/Entity:UseClientSideAnimation]
--- @return void
function Entity:UseClientSideAnimation() end

--- (client/server) Enables or disables trigger bounds.
--- This will give the entity a "trigger box" that extends around its bounding box by boundSize units in X/Y and (boundSize / 2) in +Z (-Z remains the same).
--- The trigger box is world aligned and will work regardless of the object's solidity and collision group.
--- Valve use trigger boxes for all pickup items. Their bloat size is 24, a surprisingly large figure. 
--- [https://wiki.facepunch.com/gmod/Entity:UseTriggerBounds]
--- @param enable boolean @ Enable or disable the bounds.
--- @param boundSize number @ The distance/size of the trigger bounds.
--- @return void
function Entity:UseTriggerBounds(enable, boundSize) end

--- (client/server) Returns the index of this view model, it can be used to identify which one of the player's view models this entity is. 
--- [https://wiki.facepunch.com/gmod/Entity:ViewModelIndex]
--- @return number
function Entity:ViewModelIndex() end

--- (server) Returns whether the target/given entity is visible from the this entity.
--- This is meant to be used only with NPCs.
--- Differences from a simple trace include:
--- * If target has **FL_NOTARGET**, returns false
--- * If **ai_ignoreplayers** is turned on and target is a player, returns false
--- * Reacts to **ai_LOS_mode**:
--- * * If 1, does a simple trace with **COLLISION_GROUP_NONE** and **MASK_BLOCKLOS**
--- * * If not, does a trace with **MASK_BLOCKLOS_AND_NPCS** ( - **CONTENTS_BLOCKLOS** is target is player ) and a custom LOS filter ( **CTraceFilterLOS** )
--- * Returns true if hits a vehicle the target is driving 
--- [https://wiki.facepunch.com/gmod/Entity:Visible]
--- @param target Entity @ Entity to check for visibility to.
--- @return boolean
function Entity:Visible(target) end

--- (server) Returns true if supplied vector is visible from the entity's line of sight.
--- This is achieved similarly to a trace. 
--- [https://wiki.facepunch.com/gmod/Entity:VisibleVec]
--- @param pos Vector @ The position to check for visibility
--- @return boolean
function Entity:VisibleVec(pos) end

--- (client/server) Returns an integer that represents how deep in water the entity is.
--- * **0** - The entity isn't in water.
--- * **1** - Slightly submerged (at least to the feet).
--- * **2** - The majority of the entity is submerged (at least to the waist).
--- * **3** - Completely submerged. 
--- [https://wiki.facepunch.com/gmod/Entity:WaterLevel]
--- @return number
function Entity:WaterLevel() end

--- (client/server) Sets the activity of the entity's active weapon. 
--- [https://wiki.facepunch.com/gmod/Entity:Weapon_SetActivity]
--- @param act number @ Activity number. See [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @param duration number @ How long the animation should take in seconds.
--- @return void
function Entity:Weapon_SetActivity(act, duration) end

--- (client/server) Calls and returns [WEAPON:TranslateActivity](https://wiki.facepunch.com/gmod/WEAPON:TranslateActivity) on the weapon the entity ( player or NPC ) carries.
--- Despite existing on client, it doesn't actually do anything on client. 
--- [https://wiki.facepunch.com/gmod/Entity:Weapon_TranslateActivity]
--- @param act number @ The activity to translate
--- @return number
function Entity:Weapon_TranslateActivity(act) end

--- (client/server) Returns two vectors representing the minimum and maximum extent of the entity's bounding box. 
--- [https://wiki.facepunch.com/gmod/Entity:WorldSpaceAABB]
--- @return Vector|Vector
function Entity:WorldSpaceAABB() end

--- (client/server) Returns the center of the entity according to its collision model. 
--- [https://wiki.facepunch.com/gmod/Entity:WorldSpaceCenter]
--- @return Vector
function Entity:WorldSpaceCenter() end

--- (client/server) Converts a worldspace vector into a vector local to an entity 
--- [https://wiki.facepunch.com/gmod/Entity:WorldToLocal]
--- @param wpos Vector @ The world vector
--- @return Vector
function Entity:WorldToLocal(wpos) end

--- (client/server) Converts world angles to local angles ( local to the entity ) 
--- [https://wiki.facepunch.com/gmod/Entity:WorldToLocalAngles]
--- @param ang Angle @ The world angles
--- @return Angle
function Entity:WorldToLocalAngles(ang) end

