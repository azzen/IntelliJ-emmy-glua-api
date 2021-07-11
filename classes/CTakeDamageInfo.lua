--- @class CTakeDamageInfo
CTakeDamageInfo = {}

--- (client/server) Increases the damage by damageIncrease. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:AddDamage]
--- @param damageIncrease number @ The damage to add.
--- @return void
function CTakeDamageInfo:AddDamage(damageIncrease) end

--- (client/server) Returns the ammo type used by the weapon that inflicted the damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetAmmoType]
--- @return number
function CTakeDamageInfo:GetAmmoType() end

--- (client/server) Returns the attacker ( character who originated the attack ), for example a player or an NPC that shot the weapon. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetAttacker]
--- @return Entity
function CTakeDamageInfo:GetAttacker() end

--- (client/server) Returns the initial unmodified by skill level ( [game.GetSkillLevel](https://wiki.facepunch.com/gmod/game.GetSkillLevel) ) damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetBaseDamage]
--- @return number
function CTakeDamageInfo:GetBaseDamage() end

--- (client/server) Returns the total damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamage]
--- @return number
function CTakeDamageInfo:GetDamage() end

--- (client/server) Gets the current bonus damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamageBonus]
--- @return number
function CTakeDamageInfo:GetDamageBonus() end

--- (client/server) Gets the custom damage type. This is used by Day of Defeat: Source and Team Fortress 2 for extended damage info, but isn't used in Garry's Mod by default. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamageCustom]
--- @return number
function CTakeDamageInfo:GetDamageCustom() end

--- (client/server) Returns a vector representing the damage force.
--- Can be set with [CTakeDamageInfo:SetDamageForce](https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetDamageForce). 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamageForce]
--- @return Vector
function CTakeDamageInfo:GetDamageForce() end

--- (client/server) Returns the position where the damage was or is going to be applied to.
--- Can be set using [CTakeDamageInfo:SetDamagePosition](https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetDamagePosition). 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamagePosition]
--- @return Vector
function CTakeDamageInfo:GetDamagePosition() end

--- (client/server) Returns a bitflag which indicates the damage type(s) of the damage.
--- Consider using [CTakeDamageInfo:IsDamageType](https://wiki.facepunch.com/gmod/CTakeDamageInfo:IsDamageType) instead. Value returned by this function can contain multiple damage types. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamageType]
--- @return number
function CTakeDamageInfo:GetDamageType() end

--- (client/server) Returns the inflictor of the damage. This is not necessarily a weapon.
--- For hitscan weapons this is the weapon.
--- For projectile weapons this is the projectile.
--- For a more reliable method of getting the weapon that damaged an entity, use [GetAttacker](https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetAttacker) with [GetActiveWeapon](https://wiki.facepunch.com/gmod/Player:GetActiveWeapon). 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetInflictor]
--- @return Entity
function CTakeDamageInfo:GetInflictor() end

--- (client/server) Returns the maximum damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetMaxDamage]
--- @return number
function CTakeDamageInfo:GetMaxDamage() end

--- (client/server) Returns the initial, unmodified position where the damage occured. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetReportedPosition]
--- @return Vector
function CTakeDamageInfo:GetReportedPosition() end

--- (client/server) Returns true if the damage was caused by a bullet. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:IsBulletDamage]
--- @return boolean
function CTakeDamageInfo:IsBulletDamage() end

--- (client/server) Returns whenever the damageinfo contains the damage type specified. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:IsDamageType]
--- @param dmgType number @ Damage type to test. See [DMG](https://wiki.facepunch.com/gmod/Enums/DMG).
--- @return boolean
function CTakeDamageInfo:IsDamageType(dmgType) end

--- (client/server) Returns whenever the damageinfo contains explosion damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:IsExplosionDamage]
--- @return boolean
function CTakeDamageInfo:IsExplosionDamage() end

--- (client/server) Returns whenever the damageinfo contains fall damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:IsFallDamage]
--- @return boolean
function CTakeDamageInfo:IsFallDamage() end

--- (client/server) Scales the damage by the given value. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:ScaleDamage]
--- @param scale number @ Value to scale the damage with.
--- @return void
function CTakeDamageInfo:ScaleDamage(scale) end

--- (client/server) Changes the ammo type used by the weapon that inflicted the damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetAmmoType]
--- @param ammoType number @ Ammo type ID
--- @return void
function CTakeDamageInfo:SetAmmoType(ammoType) end

--- (client/server) Sets the attacker ( character who originated the attack ) of the damage, for example a player or an NPC. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetAttacker]
--- @param ent Entity @ The entity to be set as the attacker.
--- @return void
function CTakeDamageInfo:SetAttacker(ent) end

--- (client/server) Sets the initial unmodified by skill level ( [game.GetSkillLevel](https://wiki.facepunch.com/gmod/game.GetSkillLevel) ) damage. This function will not update or touch [CTakeDamageInfo:GetDamage](https://wiki.facepunch.com/gmod/CTakeDamageInfo:GetDamage). 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetBaseDamage]
--- @param number number @ baseDamage
--- @return void
function CTakeDamageInfo:SetBaseDamage(number) end

--- (client/server) Sets the amount of damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetDamage]
--- @param damage number @ The value to set the absolute damage to.
--- @return void
function CTakeDamageInfo:SetDamage(damage) end

--- (client/server) Sets the bonus damage. Bonus damage isn't automatically applied, so this will have no outer effect by default. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetDamageBonus]
--- @param damage number @ The extra damage to be added.
--- @return void
function CTakeDamageInfo:SetDamageBonus(damage) end

--- (client/server) Sets the custom damage type. This is used by Day of Defeat: Source and Team Fortress 2 for extended damage info, but isn't used in Garry's Mod by default. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetDamageCustom]
--- @param DamageType number @ Any integer - can be based on your own custom enums.
--- @return void
function CTakeDamageInfo:SetDamageCustom(DamageType) end

--- (client/server) Sets the directional force of the damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetDamageForce]
--- @param force Vector @ The vector to set the force to.
--- @return void
function CTakeDamageInfo:SetDamageForce(force) end

--- (client/server) Sets the position of where the damage gets applied to. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetDamagePosition]
--- @param pos Vector @ The position where the damage will be applied.
--- @return void
function CTakeDamageInfo:SetDamagePosition(pos) end

--- (client/server) Sets the damage type. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetDamageType]
--- @param type number @ The damage type, see [DMG](https://wiki.facepunch.com/gmod/Enums/DMG).
--- @return void
function CTakeDamageInfo:SetDamageType(type) end

--- (client/server) Sets the inflictor of the damage for example a weapon.
--- For hitscan/bullet weapons this should the weapon.
--- For projectile ( rockets, etc ) weapons this should be the projectile. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetInflictor]
--- @param inflictor Entity @ The new inflictor.
--- @return void
function CTakeDamageInfo:SetInflictor(inflictor) end

--- (client/server) Sets the maximum damage the object can cause. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetMaxDamage]
--- @param maxDamage number @ Maximum damage value.
--- @return void
function CTakeDamageInfo:SetMaxDamage(maxDamage) end

--- (client/server) Sets the origin of the damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SetReportedPosition]
--- @param pos Vector @ The location of where the damage is originating
--- @return void
function CTakeDamageInfo:SetReportedPosition(pos) end

--- (client/server) Subtracts the specified amount from the damage. 
--- [https://wiki.facepunch.com/gmod/CTakeDamageInfo:SubtractDamage]
--- @param damage number @ Value to subtract.
--- @return void
function CTakeDamageInfo:SubtractDamage(damage) end

