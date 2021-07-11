--- @class CLuaParticle
CLuaParticle = {}

--- (client) Returns the air resistance of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetAirResistance]
--- @return number
function CLuaParticle:GetAirResistance() end

--- (client) Returns the current orientation of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetAngles]
--- @return Angle
function CLuaParticle:GetAngles() end

--- (client) Returns the angular velocity of the particle 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetAngleVelocity]
--- @return Angle
function CLuaParticle:GetAngleVelocity() end

--- (client) Returns the 'bounciness' of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetBounce]
--- @return number
function CLuaParticle:GetBounce() end

--- (client) Returns the color of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetColor]
--- @return number|number|number
function CLuaParticle:GetColor() end

--- (client) Returns the amount of time in seconds after which the particle will be destroyed. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetDieTime]
--- @return number
function CLuaParticle:GetDieTime() end

--- (client) Returns the alpha value that the particle will reach on its death. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetEndAlpha]
--- @return number
function CLuaParticle:GetEndAlpha() end

--- (client) Returns the length that the particle will reach on its death. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetEndLength]
--- @return number
function CLuaParticle:GetEndLength() end

--- (client) Returns the size that the particle will reach on its death. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetEndSize]
--- @return number
function CLuaParticle:GetEndSize() end

--- (client) Returns the gravity of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetGravity]
--- @return Vector
function CLuaParticle:GetGravity() end

--- (client) Returns the 'life time' of the particle, how long the particle existed since its creation.This value will always be between 0 and [CLuaParticle:GetDieTime](https://wiki.facepunch.com/gmod/CLuaParticle:GetDieTime).It changes automatically as time goes.It can be manipulated using [CLuaParticle:SetLifeTime](https://wiki.facepunch.com/gmod/CLuaParticle:SetLifeTime).If the life time of the particle will be more than [CLuaParticle:GetDieTime](https://wiki.facepunch.com/gmod/CLuaParticle:GetDieTime), it will be removed. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetLifeTime]
--- @return number
function CLuaParticle:GetLifeTime() end

--- (client) Returns the current material of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetMaterial]
--- @return IMaterial
function CLuaParticle:GetMaterial() end

--- (client) Returns the absolute position of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetPos]
--- @return Vector
function CLuaParticle:GetPos() end

--- (client) Returns the current rotation of the particle in radians, this should only be used for 2D particles. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetRoll]
--- @return number
function CLuaParticle:GetRoll() end

--- (client) Returns the current rotation speed of the particle in radians, this should only be used for 2D particles. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetRollDelta]
--- @return number
function CLuaParticle:GetRollDelta() end

--- (client) Returns the alpha value which the particle has when it's created. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetStartAlpha]
--- @return number
function CLuaParticle:GetStartAlpha() end

--- (client) Returns the length which the particle has when it's created. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetStartLength]
--- @return number
function CLuaParticle:GetStartLength() end

--- (client) Returns the size which the particle has when it's created. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetStartSize]
--- @return number
function CLuaParticle:GetStartSize() end

--- (client) Returns the current velocity of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:GetVelocity]
--- @return Vector
function CLuaParticle:GetVelocity() end

--- (client) Sets the air resistance of the the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetAirResistance]
--- @param airResistance number @ New air resistance.
--- @return void
function CLuaParticle:SetAirResistance(airResistance) end

--- (client) Sets the angles of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetAngles]
--- @param ang Angle @ New angle.
--- @return void
function CLuaParticle:SetAngles(ang) end

--- (client) Sets the angular velocity of the the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetAngleVelocity]
--- @param angVel Angle @ New angular velocity.
--- @return void
function CLuaParticle:SetAngleVelocity(angVel) end

--- (client) Sets the 'bounciness' of the the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetBounce]
--- @param bounce number @ New 'bounciness' of the particle2 means it will gain 100% of its previous velocity,1 means it will not lose velocity,0.5 means it will lose half of its velocity with each bounce.
--- @return void
function CLuaParticle:SetBounce(bounce) end

--- (client) Sets the whether the particle should collide with the world or not. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetCollide]
--- @param shouldCollide boolean @ Whether the particle should collide with the world or not
--- @return void
function CLuaParticle:SetCollide(shouldCollide) end

--- (client) Sets the function that gets called whenever the particle collides with the world. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetCollideCallback]
--- @param collideFunc function @ Collide callback, the arguments are:[CLuaParticle](https://wiki.facepunch.com/gmod/CLuaParticle) particle - The particle itself[Vector](https://wiki.facepunch.com/gmod/Vector) hitPos - Position of the collision[Vector](https://wiki.facepunch.com/gmod/Vector) hitNormal - Direction of the collision, perpendicular to the hit surface
--- @return void
function CLuaParticle:SetCollideCallback(collideFunc) end

--- (client) Sets the color of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetColor]
--- @param r number @ The red component.
--- @param g number @ The green component.
--- @param b number @ The blue component.
--- @return void
function CLuaParticle:SetColor(r, g, b) end

--- (client) Sets the time where the particle will be removed. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetDieTime]
--- @param dieTime number @ The new die time.
--- @return void
function CLuaParticle:SetDieTime(dieTime) end

--- (client) Sets the alpha value of the particle that it will reach when it dies. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetEndAlpha]
--- @param endAlpha number @ The new alpha value of the particle that it will reach when it dies.
--- @return void
function CLuaParticle:SetEndAlpha(endAlpha) end

--- (client) Sets the length of the particle that it will reach when it dies. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetEndLength]
--- @param endLength number @ The new length of the particle that it will reach when it dies.
--- @return void
function CLuaParticle:SetEndLength(endLength) end

--- (client) Sets the size of the particle that it will reach when it dies. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetEndSize]
--- @param endSize number @ The new size of the particle that it will reach when it dies.
--- @return void
function CLuaParticle:SetEndSize(endSize) end

--- (client) Sets the directional gravity aka. acceleration of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetGravity]
--- @param gravity Vector @ The directional gravity.
--- @return void
function CLuaParticle:SetGravity(gravity) end

--- (client) Sets the 'life time' of the particle, how long the particle existed since its creation.This value should always be between 0 and [CLuaParticle:GetDieTime](https://wiki.facepunch.com/gmod/CLuaParticle:GetDieTime).It changes automatically as time goes.If the life time of the particle will be more than [CLuaParticle:GetDieTime](https://wiki.facepunch.com/gmod/CLuaParticle:GetDieTime), it will be removed. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetLifeTime]
--- @param lifeTime number @ The new life time of the particle.
--- @return void
function CLuaParticle:SetLifeTime(lifeTime) end

--- (client) Sets whether the particle should be affected by lighting. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetLighting]
--- @param useLighting boolean @ Whether the particle should be affected by lighting.
--- @return void
function CLuaParticle:SetLighting(useLighting) end

--- (client) Sets the material of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetMaterial]
--- @param mat IMaterial @ The new material to set. Can also be a string.
--- @return void
function CLuaParticle:SetMaterial(mat) end

--- (client) Sets when the particles think function should be called next, this uses the synchronized server time returned by [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime). 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetNextThink]
--- @param nextThink number @ Next think time.
--- @return void
function CLuaParticle:SetNextThink(nextThink) end

--- (client) Sets the absolute position of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetPos]
--- @param pos Vector @ The new particle position.
--- @return void
function CLuaParticle:SetPos(pos) end

--- (client) Sets the roll of the particle in radians. This should only be used for 2D particles. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetRoll]
--- @param roll number @ The new rotation of the particle in radians.
--- @return void
function CLuaParticle:SetRoll(roll) end

--- (client) Sets the rotation speed of the particle in radians. This should only be used for 2D particles. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetRollDelta]
--- @param rollDelta number @ The new rotation speed of the particle in radians.
--- @return void
function CLuaParticle:SetRollDelta(rollDelta) end

--- (client) Sets the initial alpha value of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetStartAlpha]
--- @param startAlpha number @ Initial alpha.
--- @return void
function CLuaParticle:SetStartAlpha(startAlpha) end

--- (client) Sets the initial length value of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetStartLength]
--- @param startLength number @ Initial length.
--- @return void
function CLuaParticle:SetStartLength(startLength) end

--- (client) Sets the initial size value of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetStartSize]
--- @param startSize number @ Initial size.
--- @return void
function CLuaParticle:SetStartSize(startSize) end

--- (client) Sets the think function of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetThinkFunction]
--- @param thinkFunc function @ Think function. It has only one argument:[CLuaParticle](https://wiki.facepunch.com/gmod/CLuaParticle) particle - The particle the think hook is set on
--- @return void
function CLuaParticle:SetThinkFunction(thinkFunc) end

--- (client) Sets the velocity of the particle. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetVelocity]
--- @param vel Vector @ The new velocity of the particle.
--- @return void
function CLuaParticle:SetVelocity(vel) end

--- (client) Scales the velocity based on the particle speed. 
--- [https://wiki.facepunch.com/gmod/CLuaParticle:SetVelocityScale]
--- @param doScale boolean @ Use velocity scaling.
--- @return void
function CLuaParticle:SetVelocityScale(doScale) end

