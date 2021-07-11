--- @class PhysObj
PhysObj = {}

--- (client/server) Adds the specified [angular velocity](https://en.wikipedia.org/wiki/Angular_velocity) velocity to the current [PhysObj](https://wiki.facepunch.com/gmod/PhysObj). 
--- [https://wiki.facepunch.com/gmod/PhysObj:AddAngleVelocity]
--- @param angularVelocity Vector @ Additional velocity.
--- @return void
function PhysObj:AddAngleVelocity(angularVelocity) end

--- (client/server) Adds one or more bit flags. 
--- [https://wiki.facepunch.com/gmod/PhysObj:AddGameFlag]
--- @param flags number @ Bitflag, see [FVPHYSICS](https://wiki.facepunch.com/gmod/Enums/FVPHYSICS).
--- @return void
function PhysObj:AddGameFlag(flags) end

--- (client/server) Adds the specified velocity to the current. 
--- [https://wiki.facepunch.com/gmod/PhysObj:AddVelocity]
--- @param velocity Vector @ Additional velocity.
--- @return void
function PhysObj:AddVelocity(velocity) end

--- (client/server) Rotates the object so that it's angles are aligned to the ones inputted. 
--- [https://wiki.facepunch.com/gmod/PhysObj:AlignAngles]
--- @param from Angle @ No description provided
--- @param to Angle @ No description provided
--- @return Angle
function PhysObj:AlignAngles(from, to) end

--- (client/server) Applies the specified force to the physics object (in [Newtons](https://en.wikipedia.org/wiki/Newton_(unit))). 
--- [https://wiki.facepunch.com/gmod/PhysObj:ApplyForceCenter]
--- @param force Vector @ The force to be applied.
--- @return void
function PhysObj:ApplyForceCenter(force) end

--- (client/server) Applies the specified force on the physics object at the specified position 
--- [https://wiki.facepunch.com/gmod/PhysObj:ApplyForceOffset]
--- @param force Vector @ The force to be applied.
--- @param position Vector @ The position in world coordinates where the force is applied to the physics object.
--- @return void
function PhysObj:ApplyForceOffset(force, position) end

--- (client/server) Applies specified angular impulse to the physics object. See [PhysObj:CalculateForceOffset](https://wiki.facepunch.com/gmod/PhysObj:CalculateForceOffset) 
--- [https://wiki.facepunch.com/gmod/PhysObj:ApplyTorqueCenter]
--- @param torque Vector @ The angular impulse to be applied in `kg  degrees / s` (verification needed).
--- @return void
function PhysObj:ApplyTorqueCenter(torque) end

--- (client/server) Calculates the force and torque on the center of mass for an offset force impulse. The outputs can be directly passed to [PhysObj:ApplyForceCenter](https://wiki.facepunch.com/gmod/PhysObj:ApplyForceCenter) and [PhysObj:ApplyTorqueCenter](https://wiki.facepunch.com/gmod/PhysObj:ApplyTorqueCenter), respectively. 
--- [https://wiki.facepunch.com/gmod/PhysObj:CalculateForceOffset]
--- @param force Vector @ The initial force
--- @param pos Vector @ The location of the force in world coordinates
--- @return Vector|Vector
function PhysObj:CalculateForceOffset(force, pos) end

--- (client/server) Calculates the linear and angular velocities on the center of mass for an offset force impulse. The outputs can be directly passed to [PhysObj:AddVelocity](https://wiki.facepunch.com/gmod/PhysObj:AddVelocity) and [PhysObj:AddAngleVelocity](https://wiki.facepunch.com/gmod/PhysObj:AddAngleVelocity), respectively. 
--- [https://wiki.facepunch.com/gmod/PhysObj:CalculateVelocityOffset]
--- @param force Vector @ The initial force
--- @param pos Vector @ The location of the force in world coordinates
--- @return Vector|Vector
function PhysObj:CalculateVelocityOffset(force, pos) end

--- (client/server) Removes one of more specified flags. 
--- [https://wiki.facepunch.com/gmod/PhysObj:ClearGameFlag]
--- @param flags number @ Bitflag, see [FVPHYSICS](https://wiki.facepunch.com/gmod/Enums/FVPHYSICS).
--- @return void
function PhysObj:ClearGameFlag(flags) end

--- (client/server) Allows you to move a PhysObj to a point and angle in 3D space. 
--- [https://wiki.facepunch.com/gmod/PhysObj:ComputeShadowControl]
--- @param shadowparams table @ The parameters for the shadow. See example code to see how its used.
--- @return void
function PhysObj:ComputeShadowControl(shadowparams) end

--- (client/server) Sets whether the physics object should collide with anything or not, including world. 
--- [https://wiki.facepunch.com/gmod/PhysObj:EnableCollisions]
--- @param enable boolean @ True to enable, false to disable.
--- @return void
function PhysObj:EnableCollisions(enable) end

--- (client/server) Sets whenever the physics object should be affected by drag. 
--- [https://wiki.facepunch.com/gmod/PhysObj:EnableDrag]
--- @param enable boolean @ True to enable, false to disable.
--- @return void
function PhysObj:EnableDrag(enable) end

--- (client/server) Sets whether the PhysObject should be affected by gravity 
--- [https://wiki.facepunch.com/gmod/PhysObj:EnableGravity]
--- @param enable boolean @ True to enable, false to disable.
--- @return void
function PhysObj:EnableGravity(enable) end

--- (client/server) Sets whether the physobject should be able to move or not.
--- This is the exact method the Physics Gun uses to freeze props. If a motion-disabled physics object is grabbed with the physics gun, the object will be able to move again. To disallow this, use [GM:PhysgunPickup](https://wiki.facepunch.com/gmod/GM:PhysgunPickup). 
--- [https://wiki.facepunch.com/gmod/PhysObj:EnableMotion]
--- @param enable boolean @ True to enable, false to disable.
--- @return void
function PhysObj:EnableMotion(enable) end

--- (client/server) Returns the mins and max of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetAABB]
--- @return Vector|Vector
function PhysObj:GetAABB() end

--- (client/server) Returns the angles of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetAngles]
--- @return Angle
function PhysObj:GetAngles() end

--- (client/server) Gets the angular velocity of the object in degrees per second as a local vector. You can use dot product to read the magnitude from a specific axis. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetAngleVelocity]
--- @return Vector
function PhysObj:GetAngleVelocity() end

--- (client/server) Returns the contents flag of the [PhysObj](https://wiki.facepunch.com/gmod/PhysObj). 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetContents]
--- @return number
function PhysObj:GetContents() end

--- (client/server) Returns the linear and angular damping of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetDamping]
--- @return number|number
function PhysObj:GetDamping() end

--- (client/server) Returns the sum of the linear and rotational kinetic energies of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetEnergy]
--- @return number
function PhysObj:GetEnergy() end

--- (client/server) Returns the parent entity of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetEntity]
--- @return Entity
function PhysObj:GetEntity() end

--- (server) Returns the friction snapshot of this physics object. This is useful for determining if an object touching ground for example. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetFrictionSnapshot]
--- @return table
function PhysObj:GetFrictionSnapshot() end

--- (client/server) Returns the directional inertia of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetInertia]
--- @return Vector
function PhysObj:GetInertia() end

--- (client/server) Returns 1 divided by the inertia. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetInvInertia]
--- @return number
function PhysObj:GetInvInertia() end

--- (client/server) Returns 1 divided by the physics object's mass. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetInvMass]
--- @return number
function PhysObj:GetInvMass() end

--- (client/server) Returns the mass of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetMass]
--- @return number
function PhysObj:GetMass() end

--- (client/server) Returns the center of mass of the physics object as a local vector. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetMassCenter]
--- @return Vector
function PhysObj:GetMassCenter() end

--- (client/server) Returns the physical material of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetMaterial]
--- @return string
function PhysObj:GetMaterial() end

--- (client/server) Returns the physics mesh of the object which is used for physobj-on-physobj collision. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetMesh]
--- @return table
function PhysObj:GetMesh() end

--- (client/server) Returns all convex physics meshes of the object. See [Entity:PhysicsInitMultiConvex](https://wiki.facepunch.com/gmod/Entity:PhysicsInitMultiConvex) for more information. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetMeshConvexes]
--- @return table
function PhysObj:GetMeshConvexes() end

--- (client/server) Returns the name of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetName]
--- @return string
function PhysObj:GetName() end

--- (client/server) Returns the position of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetPos]
--- @return Vector
function PhysObj:GetPos() end

--- (client/server) Returns the position and angle of the physics object as a 3x4 matrix ([VMatrix](https://wiki.facepunch.com/gmod/VMatrix) is 4x4 so the fourth row goes unused). The first three columns store the angle as a [rotation matrix](https://en.wikipedia.org/wiki/Rotation_matrix), and the fourth column stores the position vector. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetPositionMatrix]
--- @return VMatrix
function PhysObj:GetPositionMatrix() end

--- (client/server) Returns the rotation damping of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetRotDamping]
--- @return number
function PhysObj:GetRotDamping() end

--- (client/server) Returns the angles of the [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) shadow. See [PhysObj:UpdateShadow](https://wiki.facepunch.com/gmod/PhysObj:UpdateShadow). 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetShadowAngles]
--- @return Angle
function PhysObj:GetShadowAngles() end

--- (client/server) Returns the position of the [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) shadow. See [PhysObj:UpdateShadow](https://wiki.facepunch.com/gmod/PhysObj:UpdateShadow). 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetShadowPos]
--- @return Vector
function PhysObj:GetShadowPos() end

--- (client/server) Returns the speed damping of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetSpeedDamping]
--- @return number
function PhysObj:GetSpeedDamping() end

--- (server) Returns the stress of the entity. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetStress]
--- @return number
function PhysObj:GetStress() end

--- (client/server) Returns the surface area of the physics object in source-units². Or nil if the PhysObj is a generated sphere or box. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetSurfaceArea]
--- @return number
function PhysObj:GetSurfaceArea() end

--- (client/server) Returns the absolute directional velocity of the physobject. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetVelocity]
--- @return Vector
function PhysObj:GetVelocity() end

--- (client/server) Returns the world velocity of a point in world coordinates about the object. This is useful for objects rotating around their own axis/origin. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetVelocityAtPoint]
--- @param point Vector @ A point to test in world space coordinates
--- @return Vector
function PhysObj:GetVelocityAtPoint(point) end

--- (client/server) Returns the volume in source units³. Or nil if the PhysObj is a generated sphere or box. 
--- [https://wiki.facepunch.com/gmod/PhysObj:GetVolume]
--- @return number
function PhysObj:GetVolume() end

--- (client/server) Returns whenever the specified flag(s) is/are set. 
--- [https://wiki.facepunch.com/gmod/PhysObj:HasGameFlag]
--- @param flags number @ Bitflag, see [FVPHYSICS](https://wiki.facepunch.com/gmod/Enums/FVPHYSICS).
--- @return boolean
function PhysObj:HasGameFlag(flags) end

--- (client/server) Returns whether the physics object is "sleeping".
--- See [PhysObj:Sleep](https://wiki.facepunch.com/gmod/PhysObj:Sleep) for more information. 
--- [https://wiki.facepunch.com/gmod/PhysObj:IsAsleep]
--- @return boolean
function PhysObj:IsAsleep() end

--- (client/server) Returns whenever the entity is able to collide or not. 
--- [https://wiki.facepunch.com/gmod/PhysObj:IsCollisionEnabled]
--- @return boolean
function PhysObj:IsCollisionEnabled() end

--- (client/server) Returns whenever the entity is affected by drag. 
--- [https://wiki.facepunch.com/gmod/PhysObj:IsDragEnabled]
--- @return boolean
function PhysObj:IsDragEnabled() end

--- (client/server) Returns whenever the entity is affected by gravity. 
--- [https://wiki.facepunch.com/gmod/PhysObj:IsGravityEnabled]
--- @return boolean
function PhysObj:IsGravityEnabled() end

--- (client/server) Returns if the physics object can move itself (by velocity, acceleration) 
--- [https://wiki.facepunch.com/gmod/PhysObj:IsMotionEnabled]
--- @return boolean
function PhysObj:IsMotionEnabled() end

--- (client/server) Returns whenever the entity is able to move. 
--- [https://wiki.facepunch.com/gmod/PhysObj:IsMoveable]
--- @return boolean
function PhysObj:IsMoveable() end

--- (client/server) Returns whenever the physics object is penetrating another physics object.
--- This is internally implemented as `PhysObj:HasGameFlag( FVPHYSICS_PENETRATING )` and thus is only updated for non-static physics objects. 
--- [https://wiki.facepunch.com/gmod/PhysObj:IsPenetrating]
--- @return boolean
function PhysObj:IsPenetrating() end

--- (client/server) Returns if the physics object is valid/not NULL. 
--- [https://wiki.facepunch.com/gmod/PhysObj:IsValid]
--- @return boolean
function PhysObj:IsValid() end

--- (client/server) Mapping a vector in local frame of the physics object to world frame. 
--- [https://wiki.facepunch.com/gmod/PhysObj:LocalToWorld]
--- @param LocalVec Vector @ A vector in the physics object's local frame
--- @return Vector
function PhysObj:LocalToWorld(LocalVec) end

--- (client/server) Rotate a vector from the local frame of the physics object to world frame. 
--- [https://wiki.facepunch.com/gmod/PhysObj:LocalToWorldVector]
--- @param LocalVec Vector @ A vector in the physics object's local frame
--- @return Vector
function PhysObj:LocalToWorldVector(LocalVec) end

--- (client/server) Prints debug info about the state of the physics object to the console. 
--- [https://wiki.facepunch.com/gmod/PhysObj:OutputDebugInfo]
--- @return void
function PhysObj:OutputDebugInfo() end

--- (client/server) Call this when the collision filter conditions change due to this object's state (e.g. changing solid type or collision group) 
--- [https://wiki.facepunch.com/gmod/PhysObj:RecheckCollisionFilter]
--- @return void
function PhysObj:RecheckCollisionFilter() end

--- (client/server) A convinience function for [Angle:RotateAroundAxis](https://wiki.facepunch.com/gmod/Angle:RotateAroundAxis). 
--- [https://wiki.facepunch.com/gmod/PhysObj:RotateAroundAxis]
--- @param dir Vector @ Direction, around which we will rotate
--- @param ang number @ Amount of rotation, in degrees
--- @return Angle
function PhysObj:RotateAroundAxis(dir, ang) end

--- (client/server) Sets the amount of [drag](https://en.wikipedia.org/wiki/Drag_(physics)) to apply to a physics object when attempting to rotate. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetAngleDragCoefficient]
--- @param coefficient number @ [Drag coefficient](https://en.wikipedia.org/wiki/Drag_coefficient). The bigger this value is, the slower the angles will change.
--- @return void
function PhysObj:SetAngleDragCoefficient(coefficient) end

--- (client/server) Sets the angles of the physobject. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetAngles]
--- @param angles Angle @ The new angles of the physobject.
--- @return void
function PhysObj:SetAngles(angles) end

--- (client/server) Sets the specified [angular velocity](https://en.wikipedia.org/wiki/Angular_velocity) on the this [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetAngleVelocity]
--- @param angularVelocity Vector @ The new velocity to set velocity.
--- @return void
function PhysObj:SetAngleVelocity(angularVelocity) end

--- (client/server) Sets the specified instantaneous [angular velocity](https://en.wikipedia.org/wiki/Angular_velocity) on the this [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetAngleVelocityInstantaneous]
--- @param angularVelocity Vector @ The new velocity to set velocity.
--- @return void
function PhysObj:SetAngleVelocityInstantaneous(angularVelocity) end

--- (client/server) Sets the buoyancy ratio of the physics object. (How well it floats in water) 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetBuoyancyRatio]
--- @param buoyancy number @ Buoyancy ratio, where 0 is not buoyant at all (like a rock), and 1 is very buoyant (like wood). You can set values larger than 1 for greater effect.
--- @return void
function PhysObj:SetBuoyancyRatio(buoyancy) end

--- (client/server) Sets the contents flag of the [PhysObj](https://wiki.facepunch.com/gmod/PhysObj). 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetContents]
--- @param contents number @ The [CONTENTS](https://wiki.facepunch.com/gmod/Enums/CONTENTS).
--- @return void
function PhysObj:SetContents(contents) end

--- (client/server) Sets the linear and angular damping of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetDamping]
--- @param linearDamping number @ Linear damping.
--- @param angularDamping number @ Angular damping.
--- @return void
function PhysObj:SetDamping(linearDamping, angularDamping) end

--- (client/server) Modifies how much drag (air resistance) affects the object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetDragCoefficient]
--- @param drag number @ The drag coefficient It can be positive or negative.
--- @return void
function PhysObj:SetDragCoefficient(drag) end

--- (client/server) Sets the directional inertia. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetInertia]
--- @param directionalInertia Vector @ The directional inertia of the object. A value of Vector(0,0,0) makes the physobject go invalid.
--- @return void
function PhysObj:SetInertia(directionalInertia) end

--- (client/server) Sets the mass of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetMass]
--- @param mass number @ The mass in kilograms.
--- @return void
function PhysObj:SetMass(mass) end

--- (client/server) Sets the material of the physobject. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetMaterial]
--- @param materialName string @ The name of the phys material to use. From this list: [Valve Developer](https://developer.valvesoftware.com/wiki/Material_surface_properties)
--- @return void
function PhysObj:SetMaterial(materialName) end

--- (client/server) Sets the position of the physobject. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetPos]
--- @param position Vector @ The new position of the physobject.
--- @param teleport boolean @ No description provided
--- @return void
function PhysObj:SetPos(position, teleport) end

--- (client/server) Sets the velocity of the physics object for the next iteration. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetVelocity]
--- @param velocity Vector @ The new velocity of the physics object.
--- @return void
function PhysObj:SetVelocity(velocity) end

--- (client/server) Sets the velocity of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:SetVelocityInstantaneous]
--- @param velocity Vector @ The new velocity of the physics object.
--- @return void
function PhysObj:SetVelocityInstantaneous(velocity) end

--- (client/server) Makes the physics object "sleep".
--- The physics object will no longer be moving unless it is "woken up" by either a collision with another moving object, or by [PhysObj:Wake](https://wiki.facepunch.com/gmod/PhysObj:Wake). This is an optimization feature of the physics engine. 
--- [https://wiki.facepunch.com/gmod/PhysObj:Sleep]
--- @return void
function PhysObj:Sleep() end

--- (client/server) Unlike [PhysObj:SetPos](https://wiki.facepunch.com/gmod/PhysObj:SetPos) and [PhysObj:SetAngles](https://wiki.facepunch.com/gmod/PhysObj:SetAngles), this allows the movement of a physobj while leaving physics interactions intact.
--- This is used internally by the motion controller of the Gravity Gun , the +use pickup and the Physics Gun, and entities such as the crane. 
--- [https://wiki.facepunch.com/gmod/PhysObj:UpdateShadow]
--- @param targetPosition Vector @ The position we should move to.
--- @param targetAngles Angle @ The angle we should rotate towards.
--- @param frameTime number @ The frame time to use for this movement, can be generally filled with [FrameTime](https://wiki.facepunch.com/gmod/Global.FrameTime) or [ENTITY:PhysicsSimulate](https://wiki.facepunch.com/gmod/ENTITY:PhysicsSimulate) with the deltaTime.  Can be set to 0 when you need to update the physics object just once.
--- @return void
function PhysObj:UpdateShadow(targetPosition, targetAngles, frameTime) end

--- (client/server) Wakes the physics object.
--- See [PhysObj:Sleep](https://wiki.facepunch.com/gmod/PhysObj:Sleep) for more information. 
--- [https://wiki.facepunch.com/gmod/PhysObj:Wake]
--- @return void
function PhysObj:Wake() end

--- (client/server) Converts a vector to a relative to the physics object coordinate system. 
--- [https://wiki.facepunch.com/gmod/PhysObj:WorldToLocal]
--- @param vec Vector @ The vector in world space coordinates.
--- @return Vector
function PhysObj:WorldToLocal(vec) end

--- (client/server) Rotate a vector from the world frame to the local frame of the physics object. 
--- [https://wiki.facepunch.com/gmod/PhysObj:WorldToLocalVector]
--- @param WorldVec Vector @ A vector in the world frame
--- @return Vector
function PhysObj:WorldToLocalVector(WorldVec) end

