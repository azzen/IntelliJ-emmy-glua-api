--- @class CEffectData
CEffectData = {}

--- (client/server) Returns the angles of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetAngles]
--- @return Angle
function CEffectData:GetAngles() end

--- (client/server) Returns the attachment ID for the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetAttachment]
--- @return number
function CEffectData:GetAttachment() end

--- (client/server) Returns byte which represents the color of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetColor]
--- @return number
function CEffectData:GetColor() end

--- (client/server) Returns the damage type of the effect 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetDamageType]
--- @return number
function CEffectData:GetDamageType() end

--- (server) Returns the entity index of the entity set for the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetEntIndex]
--- @return number
function CEffectData:GetEntIndex() end

--- (client/server) Returns the entity assigned to the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetEntity]
--- @return Entity
function CEffectData:GetEntity() end

--- (client/server) Returns the flags of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetFlags]
--- @return number
function CEffectData:GetFlags() end

--- (client/server) Returns the hit box ID of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetHitBox]
--- @return number
function CEffectData:GetHitBox() end

--- (client/server) Returns the magnitude of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetMagnitude]
--- @return number
function CEffectData:GetMagnitude() end

--- (client/server) Returns the material ID of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetMaterialIndex]
--- @return number
function CEffectData:GetMaterialIndex() end

--- (client/server) Returns the normalized direction vector of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetNormal]
--- @return Vector
function CEffectData:GetNormal() end

--- (client/server) Returns the origin position of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetOrigin]
--- @return Vector
function CEffectData:GetOrigin() end

--- (client/server) Returns the radius of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetRadius]
--- @return number
function CEffectData:GetRadius() end

--- (client/server) Returns the scale of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetScale]
--- @return number
function CEffectData:GetScale() end

--- (client/server) Returns the start position of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetStart]
--- @return Vector
function CEffectData:GetStart() end

--- (client/server) Returns the surface property index of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:GetSurfaceProp]
--- @return number
function CEffectData:GetSurfaceProp() end

--- (client/server) Sets the angles of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetAngles]
--- @param ang Angle @ The new angles to be set.
--- @return void
function CEffectData:SetAngles(ang) end

--- (client/server) Sets the attachment id of the effect to be created with this effect data. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetAttachment]
--- @param attachment number @ New attachment ID of the effect.
--- @return void
function CEffectData:SetAttachment(attachment) end

--- (client/server) Sets the "color" of the effect.All this does is provide an addition 8 bits of data for the effect to use. What this will actually do will vary from effect to effect, depending on how a specific effect uses this given data, if at all. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetColor]
--- @param color number @ Color represented by a byte.
--- @return void
function CEffectData:SetColor(color) end

--- (client/server) Sets the damage type of the effect to be created with this effect data. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetDamageType]
--- @param damageType number @ Damage type, see [DMG](https://wiki.facepunch.com/gmod/Enums/DMG).
--- @return void
function CEffectData:SetDamageType(damageType) end

--- (server) Sets the entity of the effect via its index. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetEntIndex]
--- @param entIndex number @ The entity index to be set.
--- @return void
function CEffectData:SetEntIndex(entIndex) end

--- (client/server) Sets the entity of the effect to be created with this effect data. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetEntity]
--- @param entity Entity @ Entity of the effect, mostly used for parenting.
--- @return void
function CEffectData:SetEntity(entity) end

--- (client/server) Sets the flags of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetFlags]
--- @param flags number @ The flags of the effect. Each effect has their own flags.
--- @return void
function CEffectData:SetFlags(flags) end

--- (client/server) Sets the hit box index of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetHitBox]
--- @param hitBoxIndex number @ The hit box index of the effect.
--- @return void
function CEffectData:SetHitBox(hitBoxIndex) end

--- (client/server) Sets the magnitude of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetMagnitude]
--- @param magnitude number @ The magnitude of the effect.
--- @return void
function CEffectData:SetMagnitude(magnitude) end

--- (client/server) Sets the material index of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetMaterialIndex]
--- @param materialIndex number @ The material index of the effect.
--- @return void
function CEffectData:SetMaterialIndex(materialIndex) end

--- (client/server) Sets the normalized (length=1) direction vector of the effect to be created with this effect data. This **must** be a normalized vector for networking purposes. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetNormal]
--- @param normal Vector @ The normalized direction vector of the effect.
--- @return void
function CEffectData:SetNormal(normal) end

--- (client/server) Sets the origin of the effect to be created with this effect data. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetOrigin]
--- @param origin Vector @ Origin of the effect.
--- @return void
function CEffectData:SetOrigin(origin) end

--- (client/server) Sets the radius of the effect to be created with this effect data. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetRadius]
--- @param radius number @ Radius of the effect.
--- @return void
function CEffectData:SetRadius(radius) end

--- (client/server) Sets the scale of the effect to be created with this effect data. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetScale]
--- @param scale number @ Scale of the effect.
--- @return void
function CEffectData:SetScale(scale) end

--- (client/server) Sets the start of the effect to be created with this effect data. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetStart]
--- @param start Vector @ Start of the effect.
--- @return void
function CEffectData:SetStart(start) end

--- (client/server) Sets the surface property index of the effect. 
--- [https://wiki.facepunch.com/gmod/CEffectData:SetSurfaceProp]
--- @param surfaceProperties number @ The surface property index of the effect.
--- @return void
function CEffectData:SetSurfaceProp(surfaceProperties) end

