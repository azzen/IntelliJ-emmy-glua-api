--- @class CLuaEmitter
CLuaEmitter = {}

--- (client) Creates a new [CLuaParticle](https://wiki.facepunch.com/gmod/CLuaParticle) with the given material and position. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:Add]
--- @param material string @ The particles material. Can also be an [IMaterial](https://wiki.facepunch.com/gmod/IMaterial).
--- @param position Vector @ The position to spawn the particle on.
--- @return CLuaParticle
function CLuaEmitter:Add(material, position) end

--- (client) Manually renders all particles the emitter has created. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:Draw]
--- @return void
function CLuaEmitter:Draw() end

--- (client) Removes the emitter, making it no longer usable from Lua. If particles remain, the emitter will be removed when all particles die. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:Finish]
--- @return void
function CLuaEmitter:Finish() end

--- (client) Returns the amount of active particles of this emitter. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:GetNumActiveParticles]
--- @return number
function CLuaEmitter:GetNumActiveParticles() end

--- (client) Returns the position of this emitter. This is set when creating the emitter with [ParticleEmitter](https://wiki.facepunch.com/gmod/Global.ParticleEmitter). 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:GetPos]
--- @return Vector
function CLuaEmitter:GetPos() end

--- (client) Returns whether this emitter is 3D or not. This is set when creating the emitter with [ParticleEmitter](https://wiki.facepunch.com/gmod/Global.ParticleEmitter). 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:Is3D]
--- @return boolean
function CLuaEmitter:Is3D() end

--- (client) Returns whether this [CLuaEmitter](https://wiki.facepunch.com/gmod/CLuaEmitter) is valid or not. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:IsValid]
--- @return boolean
function CLuaEmitter:IsValid() end

--- (client) Sets the bounding box for this emitter.
--- Usually the bounding box is automatically determined by the particles, but this function overrides it. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:SetBBox]
--- @param mins Vector @ The minimum position of the box
--- @param maxs Vector @ The maximum position of the box
--- @return void
function CLuaEmitter:SetBBox(mins, maxs) end

--- (client) This function sets the the distance between the render camera and the emitter at which the particles should start fading and at which distance fade ends ( alpha becomes 0 ). 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:SetNearClip]
--- @param distanceMin number @ Min distance where the alpha becomes 0.
--- @param distanceMax number @ Max distance where the alpha starts fading.
--- @return void
function CLuaEmitter:SetNearClip(distanceMin, distanceMax) end

--- (client) Prevents all particles of the emitter from automatically drawing. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:SetNoDraw]
--- @param noDraw boolean @ Whether we should draw the particles ( false ) or not ( true )
--- @return void
function CLuaEmitter:SetNoDraw(noDraw) end

--- (client) The function name has not much in common with its actual function, it applies a radius to every particles that affects the building of the bounding box, as it, usually is constructed by the particle that has the lowest x, y and z and the highest x, y and z, this function just adds/subtracts the radius and inflates the bounding box. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:SetParticleCullRadius]
--- @param radius number @ Particle radius.
--- @return void
function CLuaEmitter:SetParticleCullRadius(radius) end

--- (client) Sets the position of the particle emitter. 
--- [https://wiki.facepunch.com/gmod/CLuaEmitter:SetPos]
--- @param position Vector @ New position.
--- @return void
function CLuaEmitter:SetPos(position) end

