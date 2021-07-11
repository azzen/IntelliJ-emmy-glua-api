--- @class EFFECT
EFFECT = {}

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/EFFECT:EndTouch]
--- @return void
function EFFECT:EndTouch() end

--- (client) Used to get the "real" start position of a trace, for weapon tracer effects."real" meaning in 3rd person, the 3rd person position will be used, in first person the first person position will be used. 
--- [https://wiki.facepunch.com/gmod/EFFECT:GetTracerShootPos]
--- @param pos Vector @ Default position if we fail
--- @param ent Weapon @ The weapon to use.
--- @param attachment number @ Attachment ID of on the weapon "muzzle", to use as the start position.
--- @return Vector
function EFFECT:GetTracerShootPos(pos, ent, attachment) end

--- (client) Called when the effect is created. 
--- [https://wiki.facepunch.com/gmod/EFFECT:Init]
--- @param effectData CEffectData @ The effect data used to create the effect.
--- @return void
function EFFECT:Init(effectData) end

--- (client) Called when the effect collides with anything. 
--- [https://wiki.facepunch.com/gmod/EFFECT:PhysicsCollide]
--- @param colData table @ Information regarding the collision. See [CollisionData](https://wiki.facepunch.com/gmod/Structures/CollisionData)
--- @param collider PhysObj @ The physics object of the entity that collided with the effect.
--- @return void
function EFFECT:PhysicsCollide(colData, collider) end

--- (client) Called when the effect should be rendered. 
--- [https://wiki.facepunch.com/gmod/EFFECT:Render]
--- @return void
function EFFECT:Render() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/EFFECT:StartTouch]
--- @return void
function EFFECT:StartTouch() end

--- (client) Called when the effect should think, return false to kill the effect. 
--- [https://wiki.facepunch.com/gmod/EFFECT:Think]
--- @return boolean
function EFFECT:Think() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/EFFECT:Touch]
--- @return void
function EFFECT:Touch() end

