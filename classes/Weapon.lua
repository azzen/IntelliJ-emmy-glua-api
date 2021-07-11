--- @class Weapon
Weapon = {}

--- (client/server) Returns whether the weapon allows to being switched from when a better ( [Weapon:GetWeight](https://wiki.facepunch.com/gmod/Weapon:GetWeight) ) weapon is being picked up. 
--- [https://wiki.facepunch.com/gmod/Weapon:AllowsAutoSwitchFrom]
--- @return boolean
function Weapon:AllowsAutoSwitchFrom() end

--- (client/server) Returns whether the weapon allows to being switched to when a better ( [Weapon:GetWeight](https://wiki.facepunch.com/gmod/Weapon:GetWeight) ) weapon is being picked up. 
--- [https://wiki.facepunch.com/gmod/Weapon:AllowsAutoSwitchTo]
--- @return boolean
function Weapon:AllowsAutoSwitchTo() end

--- (client/server) Calls a SWEP function on client. 
--- [https://wiki.facepunch.com/gmod/Weapon:CallOnClient]
--- @param functionName string @ Name of function to call. If you want to call SWEP:MyFunc() on client, you type in "MyFunc"
--- @param arguments string @ Arguments for the function, separated by spaces.
--- @return void
function Weapon:CallOnClient(functionName, arguments) end

--- (client/server) Returns how much primary ammo is in the magazine. 
--- [https://wiki.facepunch.com/gmod/Weapon:Clip1]
--- @return number
function Weapon:Clip1() end

--- (client/server) Returns how much secondary ammo is in the magazine. 
--- [https://wiki.facepunch.com/gmod/Weapon:Clip2]
--- @return number
function Weapon:Clip2() end

--- (client/server) Forces the weapon to reload while playing given animation. 
--- [https://wiki.facepunch.com/gmod/Weapon:DefaultReload]
--- @param act number @ Sequence to use as reload animation. Uses the [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return boolean
function Weapon:DefaultReload(act) end

--- (client/server) Returns the sequence enumeration number that the weapon is playing. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetActivity]
--- @return number
function Weapon:GetActivity() end

--- (client/server) Returns the hold type of the weapon. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetHoldType]
--- @return string
function Weapon:GetHoldType() end

--- (client/server) Returns maximum primary clip size 
--- [https://wiki.facepunch.com/gmod/Weapon:GetMaxClip1]
--- @return number
function Weapon:GetMaxClip1() end

--- (client/server) Returns maximum secondary clip size 
--- [https://wiki.facepunch.com/gmod/Weapon:GetMaxClip2]
--- @return number
function Weapon:GetMaxClip2() end

--- (client/server) Gets the next time the weapon can primary fire. ( Can call [WEAPON:PrimaryAttack](https://wiki.facepunch.com/gmod/WEAPON:PrimaryAttack) ) 
--- [https://wiki.facepunch.com/gmod/Weapon:GetNextPrimaryFire]
--- @return number
function Weapon:GetNextPrimaryFire() end

--- (client/server) Gets the next time the weapon can secondary fire. ( Can call [WEAPON:SecondaryAttack](https://wiki.facepunch.com/gmod/WEAPON:SecondaryAttack) ) 
--- [https://wiki.facepunch.com/gmod/Weapon:GetNextSecondaryFire]
--- @return number
function Weapon:GetNextSecondaryFire() end

--- (client/server) Gets the primary ammo type of the given weapon. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetPrimaryAmmoType]
--- @return number
function Weapon:GetPrimaryAmmoType() end

--- (client/server) Returns the non-internal name of the weapon, that should be for displaying. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetPrintName]
--- @return string
function Weapon:GetPrintName() end

--- (client/server) Gets the ammo type of the given weapons secondary fire. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetSecondaryAmmoType]
--- @return number
function Weapon:GetSecondaryAmmoType() end

--- (client/server) Returns the slot of the weapon. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetSlot]
--- @return number
function Weapon:GetSlot() end

--- (client/server) Returns slot position of the weapon 
--- [https://wiki.facepunch.com/gmod/Weapon:GetSlotPos]
--- @return number
function Weapon:GetSlotPos() end

--- (client/server) Returns the view model of the weapon. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetWeaponViewModel]
--- @return string
function Weapon:GetWeaponViewModel() end

--- (client/server) Returns the world model of the weapon. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetWeaponWorldModel]
--- @return string
function Weapon:GetWeaponWorldModel() end

--- (client/server) Returns the "weight" of the weapon, which is used when deciding which [Weapon](https://wiki.facepunch.com/gmod/Weapon) is better by the engine. 
--- [https://wiki.facepunch.com/gmod/Weapon:GetWeight]
--- @return number
function Weapon:GetWeight() end

--- (client/server) Returns whether the weapon has ammo left or not. It will return false when there's no ammo left in the magazine **and** when there's no reserve ammo left. 
--- [https://wiki.facepunch.com/gmod/Weapon:HasAmmo]
--- @return boolean
function Weapon:HasAmmo() end

--- (client) Returns whenever the weapon is carried by the local player. 
--- [https://wiki.facepunch.com/gmod/Weapon:IsCarriedByLocalPlayer]
--- @return boolean
function Weapon:IsCarriedByLocalPlayer() end

--- (client/server) Checks if the weapon is a SWEP or a built-in weapon. 
--- [https://wiki.facepunch.com/gmod/Weapon:IsScripted]
--- @return boolean
function Weapon:IsScripted() end

--- (client/server) Returns whether the weapon is visible. The term visibility is not exactly what gets checked here, first it checks if the owner is a player, then checks if the active view model has EF_NODRAW flag NOT set. 
--- [https://wiki.facepunch.com/gmod/Weapon:IsWeaponVisible]
--- @return boolean
function Weapon:IsWeaponVisible() end

--- (client/server) Returns the time since this weapon last fired a bullet with [Entity:FireBullets](https://wiki.facepunch.com/gmod/Entity:FireBullets) in seconds. It is not networked. 
--- [https://wiki.facepunch.com/gmod/Weapon:LastShootTime]
--- @return number
function Weapon:LastShootTime() end

--- (client/server) Forces weapon to play activity/animation. 
--- [https://wiki.facepunch.com/gmod/Weapon:SendWeaponAnim]
--- @param act number @ Activity to play. See the [ACT](https://wiki.facepunch.com/gmod/Enums/ACT) (specifically ACT_VM_).
--- @return void
function Weapon:SendWeaponAnim(act) end

--- (client/server) Sets the activity the weapon is playing.
--- See also [Weapon:GetActivity](https://wiki.facepunch.com/gmod/Weapon:GetActivity). 
--- [https://wiki.facepunch.com/gmod/Weapon:SetActivity]
--- @param act number @ The new activity to set, see [ACT](https://wiki.facepunch.com/gmod/Enums/ACT).
--- @return void
function Weapon:SetActivity(act) end

--- (client/server) Lets you change the number of bullets in the given weapons primary clip. 
--- [https://wiki.facepunch.com/gmod/Weapon:SetClip1]
--- @param ammo number @ The amount of bullets the clip should contain
--- @return void
function Weapon:SetClip1(ammo) end

--- (client/server) Lets you change the number of bullets in the given weapons secondary clip. 
--- [https://wiki.facepunch.com/gmod/Weapon:SetClip2]
--- @param ammo number @ The amount of bullets the clip should contain
--- @return void
function Weapon:SetClip2(ammo) end

--- (client/server) Sets the hold type of the weapon. This function also calls [WEAPON:SetWeaponHoldType](https://wiki.facepunch.com/gmod/WEAPON:SetWeaponHoldType) and properly networks it to all clients. 
--- [https://wiki.facepunch.com/gmod/Weapon:SetHoldType]
--- @param name string @ Name of the hold type. You can find all default hold types [here](https://wiki.facepunch.com/gmod/Hold_Types)
--- @return void
function Weapon:SetHoldType(name) end

--- (client/server) Sets the time since this weapon last fired in seconds. Used in conjunction with [Weapon:LastShootTime](https://wiki.facepunch.com/gmod/Weapon:LastShootTime) 
--- [https://wiki.facepunch.com/gmod/Weapon:SetLastShootTime]
--- @param time number @ The time in seconds when the last time the weapon was fired.
--- @return void
function Weapon:SetLastShootTime(time) end

--- (client/server) Sets when the weapon can fire again. Time should be based on [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime). 
--- [https://wiki.facepunch.com/gmod/Weapon:SetNextPrimaryFire]
--- @param time number @ Time when player should be able to use primary fire again
--- @return void
function Weapon:SetNextPrimaryFire(time) end

--- (client/server) Sets when the weapon can alt-fire again. Time should be based on [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime). 
--- [https://wiki.facepunch.com/gmod/Weapon:SetNextSecondaryFire]
--- @param time number @ Time when player should be able to use secondary fire again
--- @return void
function Weapon:SetNextSecondaryFire(time) end

