--- @class CNewParticleEffect
CNewParticleEffect = {}

--- (client) Adds a control point to the particle system. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:AddControlPoint]
--- @param cpID number @ The control point ID, 0 to 63.
--- @param ent Entity @ The entity to attach the control point to.
--- @param partAttachment number @ See [PATTACH](https://wiki.facepunch.com/gmod/Enums/PATTACH).
--- @param entAttachment number @ The attachment ID on the entity to attach the particle system to
--- @param offset Vector @ The offset from the [Entity:GetPos](https://wiki.facepunch.com/gmod/Entity:GetPos) of the entity we are attaching this CP to.
--- @return void
function CNewParticleEffect:AddControlPoint(cpID, ent, partAttachment, entAttachment, offset) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:GetAutoUpdateBBox]
--- @return boolean
function CNewParticleEffect:GetAutoUpdateBBox() end

--- (client) Returns the name of the particle effect this system is set to emit. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:GetEffectName]
--- @return string
function CNewParticleEffect:GetEffectName() end

--- (client) Returns the highest control point number for given particle system. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:GetHighestControlPoint]
--- @return boolean
function CNewParticleEffect:GetHighestControlPoint() end

--- (client) Returns the owner of the particle system, the entity the particle system is attached to. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:GetOwner]
--- @return Entity
function CNewParticleEffect:GetOwner() end

--- (client) Returns whether the particle system has finished emitting particles or not. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:IsFinished]
--- @return boolean
function CNewParticleEffect:IsFinished() end

--- (client) Returns whether the particle system is valid or not. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:IsValid]
--- @return boolean
function CNewParticleEffect:IsValid() end

--- (client) Returns whether the particle system is intended to be used on a view model? 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:IsViewModelEffect]
--- @return boolean
function CNewParticleEffect:IsViewModelEffect() end

--- (client) Forces the particle system to render using current rendering context.Can be used to render the particle system in vgui panels, etc.Used in conjunction with [CNewParticleEffect:SetShouldDraw](https://wiki.facepunch.com/gmod/CNewParticleEffect:SetShouldDraw). 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:Render]
--- @return void
function CNewParticleEffect:Render() end

--- (client) Forces the particle system to restart emitting particles. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:Restart]
--- @return void
function CNewParticleEffect:Restart() end

--- (client) Sets a value for given control point. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetControlPoint]
--- @param cpID number @ The control point ID, 0 to 63.
--- @param value Vector @ The value to set for given control point.
--- @return void
function CNewParticleEffect:SetControlPoint(cpID, value) end

--- (client) Essentially makes child control point follow the parent entity. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetControlPointEntity]
--- @param child number @ The child control point ID, 0 to 63.
--- @param parent Entity @ The parent entity to follow.
--- @return void
function CNewParticleEffect:SetControlPointEntity(child, parent) end

--- (client) Sets the forward direction for given control point. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetControlPointForwardVector]
--- @param cpID number @ The control point ID, 0 to 63.
--- @param forward Vector @ The forward direction for given control point
--- @return void
function CNewParticleEffect:SetControlPointForwardVector(cpID, forward) end

--- (client) Sets the orientation for given control point. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetControlPointOrientation]
--- @param cpID number @ The control point ID, 0 to 63.
--- @param forward Vector @ The forward direction for given control point
--- @param right Vector @ The right direction for given control point
--- @param up Vector @ The up direction for given control point
--- @return void
function CNewParticleEffect:SetControlPointOrientation(cpID, forward, right, up) end

--- (client) Essentially makes child control point follow the parent control point. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetControlPointParent]
--- @param child number @ The child control point ID, 0 to 63.
--- @param parent number @ The parent control point ID, 0 to 63.
--- @return void
function CNewParticleEffect:SetControlPointParent(child, parent) end

--- (client) Sets the right direction for given control point. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetControlPointRightVector]
--- @param cpID number @ The control point ID, 0 to 63.
--- @param right Vector @ The right direction for given control point.
--- @return void
function CNewParticleEffect:SetControlPointRightVector(cpID, right) end

--- (client) Sets the upward direction for given control point. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetControlPointUpVector]
--- @param cpID number @ The control point ID, 0 to 63.
--- @param upward Vector @ The upward direction for given control point
--- @return void
function CNewParticleEffect:SetControlPointUpVector(cpID, upward) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetIsViewModelEffect]
--- @param isViewModel boolean @ No description provided
--- @return void
function CNewParticleEffect:SetIsViewModelEffect(isViewModel) end

--- (client) Forces the particle system to stop automatically rendering.Used in conjunction with [CNewParticleEffect:Render](https://wiki.facepunch.com/gmod/CNewParticleEffect:Render). 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetShouldDraw]
--- @param should boolean @ Whether to automatically draw the particle effect or not.
--- @return void
function CNewParticleEffect:SetShouldDraw(should) end

--- (client) Sets the sort origin for given particle system. This is used as a helper to determine which particles are in front of which. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:SetSortOrigin]
--- @param origin Vector @ The new sort origin.
--- @return void
function CNewParticleEffect:SetSortOrigin(origin) end

--- (client) Starts the particle emission. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:StartEmission]
--- @param infiniteOnly boolean @ No description provided
--- @return void
function CNewParticleEffect:StartEmission(infiniteOnly) end

--- (client) Stops the particle emission. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:StopEmission]
--- @param infiniteOnly boolean @ No description provided
--- @param removeAllParticles boolean @ No description provided
--- @param wakeOnStop boolean @ No description provided
--- @return void
function CNewParticleEffect:StopEmission(infiniteOnly, removeAllParticles, wakeOnStop) end

--- (client) Stops particle emission and destroys all particles instantly. Also detaches the particle effect from the entity it was attached to.Consider using [CNewParticleEffect:StopEmission](https://wiki.facepunch.com/gmod/CNewParticleEffect:StopEmission)( false, true ) instead, which has same effect, but doesn't require owner entity, and does't detach the particle system from its entity. 
--- [https://wiki.facepunch.com/gmod/CNewParticleEffect:StopEmissionAndDestroyImmediately]
--- @return void
function CNewParticleEffect:StopEmissionAndDestroyImmediately() end

