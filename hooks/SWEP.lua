--- @class SWEP
SWEP = {}

--- (server) Called when another entity fires an event to this entity. 
--- [https://wiki.facepunch.com/gmod/WEAPON:AcceptInput]
--- @param inputName string @ The name of the input that was triggered.
--- @param activator Entity @ The initial cause for the input getting triggered.
--- @param called Entity @ The entity that directly trigger the input.
--- @param data string @ The data passed.
--- @return boolean
function SWEP:AcceptInput(inputName, activator, called, data) end

--- (client) Allows you to adjust the mouse sensitivity. This hook only works if you haven't overridden [GM:AdjustMouseSensitivity](https://wiki.facepunch.com/gmod/GM:AdjustMouseSensitivity). 
--- [https://wiki.facepunch.com/gmod/WEAPON:AdjustMouseSensitivity]
--- @return number
function SWEP:AdjustMouseSensitivity() end

--- (client/server) Returns how much of primary ammo the player has. 
--- [https://wiki.facepunch.com/gmod/WEAPON:Ammo1]
--- @return number
function SWEP:Ammo1() end

--- (client/server) Returns how much of secondary ammo the player has. 
--- [https://wiki.facepunch.com/gmod/WEAPON:Ammo2]
--- @return number
function SWEP:Ammo2() end

--- (client) Allows you to adjust player view while this weapon in use.
--- This hook is called from the default implementation of [GM:CalcView](https://wiki.facepunch.com/gmod/GM:CalcView) which is [here](https://github.com/garrynewman/garrysmod/blob/master/garrysmod/gamemodes/base/gamemode/cl_init.lua#L376-L383). Therefore, it will not be called if any other hook added to CalcView returns any value, or if the current gamemode overrides the default hook and does not call the SWEP function. 
--- [https://wiki.facepunch.com/gmod/WEAPON:CalcView]
--- @param ply Player @ The owner of weapon
--- @param pos Vector @ Current position of players view
--- @param ang Angle @ Current angles of players view
--- @param fov number @ Current FOV of players view
--- @return Vector|Angle|number
function SWEP:CalcView(ply, pos, ang, fov) end

--- (client) Allows overriding the position and angle of the viewmodel. This hook only works if you haven't overridden [GM:CalcViewModelView](https://wiki.facepunch.com/gmod/GM:CalcViewModelView). 
--- [https://wiki.facepunch.com/gmod/WEAPON:CalcViewModelView]
--- @param ViewModel Entity @ The viewmodel entity
--- @param OldEyePos Vector @ Original position (before viewmodel bobbing and swaying)
--- @param OldEyeAng Angle @ Original angle (before viewmodel bobbing and swaying)
--- @param EyePos Vector @ Current position
--- @param EyeAng Angle @ Current angle
--- @return Vector|Angle
function SWEP:CalcViewModelView(ViewModel, OldEyePos, OldEyeAng, EyePos, EyeAng) end

--- (server) Called when a Citizen NPC is looking around to a (better) weapon to pickup. 
--- [https://wiki.facepunch.com/gmod/WEAPON:CanBePickedUpByNPCs]
--- @return boolean
function SWEP:CanBePickedUpByNPCs() end

--- (client/server) Helper function for checking for no ammo. 
--- [https://wiki.facepunch.com/gmod/WEAPON:CanPrimaryAttack]
--- @return boolean
function SWEP:CanPrimaryAttack() end

--- (client/server) Helper function for checking for no ammo. 
--- [https://wiki.facepunch.com/gmod/WEAPON:CanSecondaryAttack]
--- @return boolean
function SWEP:CanSecondaryAttack() end

--- (client) Allows you to use any numbers you want for the ammo display on the HUD.
--- Can be useful for weapons that don't use standard ammo. 
--- [https://wiki.facepunch.com/gmod/WEAPON:CustomAmmoDisplay]
--- @return table
function SWEP:CustomAmmoDisplay() end

--- (client/server) Called when player has just switched to this weapon. 
--- [https://wiki.facepunch.com/gmod/WEAPON:Deploy]
--- @return boolean
function SWEP:Deploy() end

--- (client) Called when the crosshair is about to get drawn, and allows you to override it. 
--- [https://wiki.facepunch.com/gmod/WEAPON:DoDrawCrosshair]
--- @param x number @ X coordinate of the crosshair.
--- @param y number @ Y coordinate of the crosshair.
--- @return boolean
function SWEP:DoDrawCrosshair(x, y) end

--- (client/server) Called so the weapon can override the impact effects it makes. 
--- [https://wiki.facepunch.com/gmod/WEAPON:DoImpactEffect]
--- @param tr table @ A [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult) from player's eyes to the impact point
--- @param damageType number @ The damage type of bullet. See [DMG](https://wiki.facepunch.com/gmod/Enums/DMG)
--- @return boolean
function SWEP:DoImpactEffect(tr, damageType) end

--- (client) This hook allows you to draw on screen while this weapon is in use.
--- If you want to draw a custom crosshair, consider using [WEAPON:DoDrawCrosshair](https://wiki.facepunch.com/gmod/WEAPON:DoDrawCrosshair) instead. 
--- [https://wiki.facepunch.com/gmod/WEAPON:DrawHUD]
--- @return void
function SWEP:DrawHUD() end

--- (client) This hook allows you to draw on screen while this weapon is in use. This hook is called **before** [WEAPON:DrawHUD](https://wiki.facepunch.com/gmod/WEAPON:DrawHUD) and is equivalent of [GM:HUDPaintBackground](https://wiki.facepunch.com/gmod/GM:HUDPaintBackground). 
--- [https://wiki.facepunch.com/gmod/WEAPON:DrawHUDBackground]
--- @return void
function SWEP:DrawHUDBackground() end

--- (client) This hook draws the selection icon in the weapon selection menu. 
--- [https://wiki.facepunch.com/gmod/WEAPON:DrawWeaponSelection]
--- @param x number @ X coordinate of the selection panel
--- @param y number @ Y coordinate of the selection panel
--- @param width number @ Width of the selection panel
--- @param height number @ Height of the selection panel
--- @param alpha number @ Alpha value of the selection panel
--- @return void
function SWEP:DrawWeaponSelection(x, y, width, height, alpha) end

--- (client) Called when we are about to draw the world model. 
--- [https://wiki.facepunch.com/gmod/WEAPON:DrawWorldModel]
--- @param flags number @ The [STUDIO_](https://wiki.facepunch.com/gmod/Enums/STUDIO) flags for this render operation.
--- @return void
function SWEP:DrawWorldModel(flags) end

--- (client) Called when we are about to draw the translucent world model. 
--- [https://wiki.facepunch.com/gmod/WEAPON:DrawWorldModelTranslucent]
--- @param flags number @ The [STUDIO_](https://wiki.facepunch.com/gmod/Enums/STUDIO) flags for this render operation.
--- @return void
function SWEP:DrawWorldModelTranslucent(flags) end

--- (server) Called when a player or NPC has picked the weapon up. 
--- [https://wiki.facepunch.com/gmod/WEAPON:Equip]
--- @param NewOwner Entity @ The one who picked the weapon up. Can be [Player](https://wiki.facepunch.com/gmod/Player) or [NPC](https://wiki.facepunch.com/gmod/NPC).
--- @return void
function SWEP:Equip(NewOwner) end

--- (server) The player has picked up the weapon and has taken the ammo from it.
--- The weapon will be removed immidiately after this call. 
--- [https://wiki.facepunch.com/gmod/WEAPON:EquipAmmo]
--- @param ply Player @ The player who picked up the weapon
--- @return void
function SWEP:EquipAmmo(ply) end

--- (client/server) Called before firing animation events, such as muzzle flashes or shell ejections.
--- This will only be called serverside for 3000-range events, and clientside for 5000-range  and other events. 
--- [https://wiki.facepunch.com/gmod/WEAPON:FireAnimationEvent]
--- @param pos Vector @ Position of the effect.
--- @param ang Angle @ Angle of the effect.
--- @param event number @ The event ID of happened even. See [this page](http://developer.valvesoftware.com/wiki/Animation_Events).
--- @param options string @ Name or options of the event.
--- @param source Entity @ The source entity. This will be a viewmodel on the client and the weapon itself on the server
--- @return boolean
function SWEP:FireAnimationEvent(pos, ang, event, options, source) end

--- (client) This hook allows you to freeze players screen. 
--- [https://wiki.facepunch.com/gmod/WEAPON:FreezeMovement]
--- @return boolean
function SWEP:FreezeMovement() end

--- (server) This hook is for NPCs, you return what they should try to do with it. 
--- [https://wiki.facepunch.com/gmod/WEAPON:GetCapabilities]
--- @return number
function SWEP:GetCapabilities() end

--- (server) Called when the weapon is used by NPCs to determine how accurate the bullets fired should be.
--- The inaccuracy is simulated by changing the [NPC:GetAimVector](https://wiki.facepunch.com/gmod/NPC:GetAimVector) based on the value returned from this hook. 
--- [https://wiki.facepunch.com/gmod/WEAPON:GetNPCBulletSpread]
--- @param proficiency number @ How proficient the NPC is with this gun. See [WEAPON_PROFICIENCY](https://wiki.facepunch.com/gmod/Enums/WEAPON_PROFICIENCY)
--- @return number
function SWEP:GetNPCBulletSpread(proficiency) end

--- (server) Called when the weapon is used by NPCs to tell the NPC how to use this weapon. Controls how long the NPC can or should shoot continuously. 
--- [https://wiki.facepunch.com/gmod/WEAPON:GetNPCBurstSettings]
--- @return number|number|number
function SWEP:GetNPCBurstSettings() end

--- (server) Called when the weapon is used by NPCs to tell the NPC how to use this weapon. Controls amount of time the NPC can rest (not shoot) between bursts. 
--- [https://wiki.facepunch.com/gmod/WEAPON:GetNPCRestTimes]
--- @return number|number
function SWEP:GetNPCRestTimes() end

--- (client) Allows you to override where the tracer effect comes from. ( Visual bullets ) 
--- [https://wiki.facepunch.com/gmod/WEAPON:GetTracerOrigin]
--- @return Vector
function SWEP:GetTracerOrigin() end

--- (client) This hook allows you to adjust view model position and angles. 
--- [https://wiki.facepunch.com/gmod/WEAPON:GetViewModelPosition]
--- @param EyePos Vector @ Current position
--- @param EyeAng Angle @ Current angle
--- @return Vector|Angle
function SWEP:GetViewModelPosition(EyePos, EyeAng) end

--- (client/server) Called when weapon tries to holster. 
--- [https://wiki.facepunch.com/gmod/WEAPON:Holster]
--- @param weapon Entity @ The weapon we are trying switch to.
--- @return boolean
function SWEP:Holster(weapon) end

--- (client) This hook determines which parts of the HUD to draw. 
--- [https://wiki.facepunch.com/gmod/WEAPON:HUDShouldDraw]
--- @param element string @ The HUD element in question
--- @return boolean
function SWEP:HUDShouldDraw(element) end

--- (client/server) Called when the weapon entity is created. 
--- [https://wiki.facepunch.com/gmod/WEAPON:Initialize]
--- @return void
function SWEP:Initialize() end

--- (server) Called when the engine sets a value for this scripted weapon.
--- See [GM:EntityKeyValue](https://wiki.facepunch.com/gmod/GM:EntityKeyValue) for a hook that works for all entities.
--- See [ENTITY:KeyValue](https://wiki.facepunch.com/gmod/ENTITY:KeyValue) for an  hook that works for scripted entities. 
--- [https://wiki.facepunch.com/gmod/WEAPON:KeyValue]
--- @param key string @ The key that was affected.
--- @param value string @ The new value.
--- @return boolean
function SWEP:KeyValue(key, value) end

--- (server) Called when weapon is dropped by [Player:DropWeapon](https://wiki.facepunch.com/gmod/Player:DropWeapon).
--- See also [WEAPON:OwnerChanged](https://wiki.facepunch.com/gmod/WEAPON:OwnerChanged). 
--- [https://wiki.facepunch.com/gmod/WEAPON:OnDrop]
--- @return void
function SWEP:OnDrop() end

--- (client/server) Called whenever the weapons Lua script is reloaded. 
--- [https://wiki.facepunch.com/gmod/WEAPON:OnReloaded]
--- @return void
function SWEP:OnReloaded() end

--- (client/server) Called when the swep is about to be removed. 
--- [https://wiki.facepunch.com/gmod/WEAPON:OnRemove]
--- @return void
function SWEP:OnRemove() end

--- (client/server) Called when the weapon entity is reloaded from a Source Engine save (not the Sandbox saves or dupes) or on a changelevel (for example Half-Life 2 campaign level transitions).
--- For the [duplicator](https://wiki.facepunch.com/gmod/duplicator) callbacks, see [ENTITY:OnDuplicated](https://wiki.facepunch.com/gmod/ENTITY:OnDuplicated).
--- See also [saverestore](https://wiki.facepunch.com/gmod/saverestore) for relevant functions. 
--- [https://wiki.facepunch.com/gmod/WEAPON:OnRestore]
--- @return void
function SWEP:OnRestore() end

--- (client/server) Called when weapon is dropped or picked up by a new player.
--- See also [WEAPON:OnDrop](https://wiki.facepunch.com/gmod/WEAPON:OnDrop). 
--- [https://wiki.facepunch.com/gmod/WEAPON:OwnerChanged]
--- @return void
function SWEP:OwnerChanged() end

--- (client) Called after the view model has been drawn while the weapon in use. This hook is called from the default implementation of [GM:PostDrawViewModel](https://wiki.facepunch.com/gmod/GM:PostDrawViewModel), and as such, will not occur if it has been overridden.
--- [WEAPON:ViewModelDrawn](https://wiki.facepunch.com/gmod/WEAPON:ViewModelDrawn) is an alternative hook which is always called before [GM:PostDrawViewModel](https://wiki.facepunch.com/gmod/GM:PostDrawViewModel). 
--- [https://wiki.facepunch.com/gmod/WEAPON:PostDrawViewModel]
--- @param vm Entity @ This is the view model entity after it is drawn
--- @param weapon Weapon @ This is the weapon that is from the view model (same as self)
--- @param ply Player @ The owner of the view model
--- @return void
function SWEP:PostDrawViewModel(vm, weapon, ply) end

--- (client) Allows you to modify viewmodel while the weapon in use before it is drawn. This hook only works if you haven't overridden [GM:PreDrawViewModel](https://wiki.facepunch.com/gmod/GM:PreDrawViewModel). 
--- [https://wiki.facepunch.com/gmod/WEAPON:PreDrawViewModel]
--- @param vm Entity @ This is the view model entity before it is drawn.
--- @param weapon Weapon @ This is the weapon that is from the view model.
--- @param ply Player @ The the owner of the view model.
--- @return void
function SWEP:PreDrawViewModel(vm, weapon, ply) end

--- (client/server) Called when primary attack button ( +attack ) is pressed.
--- When in singleplayer, this function is only called in the server realm. When in multiplayer, the hook will be called on both the server and the client in order to allow for [Prediction](https://wiki.facepunch.com/gmod/Prediction).
--- You can force the hook to always be called on client like this:
--- ```
--- if ( game.SinglePlayer() ) then self:CallOnClient( "PrimaryAttack" ) end
--- ```
--- 
--- Note that due to prediction, in multiplayer SWEP:PrimaryAttack is called multiple times per one "shot" with the gun. To work around that, use [IsFirstTimePredicted](https://wiki.facepunch.com/gmod/Global.IsFirstTimePredicted). 
--- [https://wiki.facepunch.com/gmod/WEAPON:PrimaryAttack]
--- @return void
function SWEP:PrimaryAttack() end

--- (client) A convenience function that draws the weapon info box, used in [WEAPON:DrawWeaponSelection](https://wiki.facepunch.com/gmod/WEAPON:DrawWeaponSelection). 
--- [https://wiki.facepunch.com/gmod/WEAPON:PrintWeaponInfo]
--- @param x number @ The x co-ordinate of box position
--- @param y number @ The y co-ordinate of box position
--- @param alpha number @ Alpha value for the box
--- @return void
function SWEP:PrintWeaponInfo(x, y, alpha) end

--- (client/server) Called when the reload key ( +reload ) is pressed. 
--- [https://wiki.facepunch.com/gmod/WEAPON:Reload]
--- @return void
function SWEP:Reload() end

--- (client) Called every frame just before [GM:RenderScene](https://wiki.facepunch.com/gmod/GM:RenderScene).
--- Used by the Tool Gun to render view model screens ([TOOL:DrawToolScreen](https://wiki.facepunch.com/gmod/TOOL:DrawToolScreen)). 
--- [https://wiki.facepunch.com/gmod/WEAPON:RenderScreen]
--- @return void
function SWEP:RenderScreen() end

--- (client/server) Called when secondary attack button ( +attack2 ) is pressed.
--- For issues with this hook being called rapidly on the client side, see the global function [IsFirstTimePredicted](https://wiki.facepunch.com/gmod/Global.IsFirstTimePredicted). 
--- [https://wiki.facepunch.com/gmod/WEAPON:SecondaryAttack]
--- @return void
function SWEP:SecondaryAttack() end

--- (client/server) Sets the weapon deploy speed. This value needs to match on client and server. 
--- [https://wiki.facepunch.com/gmod/WEAPON:SetDeploySpeed]
--- @param speed number @ The value to set deploy speed to. Negative will slow down playback.
--- @return void
function SWEP:SetDeploySpeed(speed) end

--- (client/server) Called when the SWEP should set up its [Data Tables](https://wiki.facepunch.com/gmod/Networking_Entities). 
--- [https://wiki.facepunch.com/gmod/WEAPON:SetupDataTables]
--- @return void
function SWEP:SetupDataTables() end

--- (client/server) Sets the hold type of the weapon. This must be called on **both** the server and the client to work properly.
--- **NOTE:** You should avoid calling this function and call [Weapon:SetHoldType](https://wiki.facepunch.com/gmod/Weapon:SetHoldType) now. 
--- [https://wiki.facepunch.com/gmod/WEAPON:SetWeaponHoldType]
--- @param name string @ Name of the hold type. You can find all default hold types [here](https://wiki.facepunch.com/gmod/Hold_Types)
--- @return void
function SWEP:SetWeaponHoldType(name) end

--- (client/server) A convenient function to shoot bullets. 
--- [https://wiki.facepunch.com/gmod/WEAPON:ShootBullet]
--- @param damage number @ The damage of the bullet
--- @param num_bullets number @ Amount of bullets to shoot
--- @param aimcone number @ Spread of bullets
--- @param ammo_type string @ Ammo type of the bullets
--- @param force number @ Force of the bullets
--- @param tracer number @ Show a tracer on every x bullets
--- @return void
function SWEP:ShootBullet(damage, num_bullets, aimcone, ammo_type, force, tracer) end

--- (client/server) A convenience function to create shoot effects. 
--- [https://wiki.facepunch.com/gmod/WEAPON:ShootEffects]
--- @return void
function SWEP:ShootEffects() end

--- (client) Called to determine if the view model should be drawn or not. 
--- [https://wiki.facepunch.com/gmod/WEAPON:ShouldDrawViewModel]
--- @return boolean
function SWEP:ShouldDrawViewModel() end

--- (server) Should this weapon be dropped when its owner dies?
--- This only works if the player has [Player:ShouldDropWeapon](https://wiki.facepunch.com/gmod/Player:ShouldDropWeapon) set to true. 
--- [https://wiki.facepunch.com/gmod/WEAPON:ShouldDropOnDie]
--- @return boolean
function SWEP:ShouldDropOnDie() end

--- (client/server) A convenience function to remove primary ammo from clip. 
--- [https://wiki.facepunch.com/gmod/WEAPON:TakePrimaryAmmo]
--- @param amount number @ Amount of primary ammo to remove
--- @return void
function SWEP:TakePrimaryAmmo(amount) end

--- (client/server) A convenience function to remove secondary ammo from clip. 
--- [https://wiki.facepunch.com/gmod/WEAPON:TakeSecondaryAmmo]
--- @param amount number @ How much of secondary ammo to remove
--- @return void
function SWEP:TakeSecondaryAmmo(amount) end

--- (client/server) Called when the swep thinks.
--- This hook won't be called during the deploy animation and when using [Weapon:DefaultReload](https://wiki.facepunch.com/gmod/Weapon:DefaultReload). 
--- [https://wiki.facepunch.com/gmod/WEAPON:Think]
--- @return void
function SWEP:Think() end

--- (client/server) Translate a player's Activity into a weapon's activity, depending on how you want the player to be holding the weapon.
--- For example, ACT_MP_RUN becomes ACT_HL2MP_RUN_PISTOL. 
--- [https://wiki.facepunch.com/gmod/WEAPON:TranslateActivity]
--- @param act number @ The activity to translate
--- @return number
function SWEP:TranslateActivity(act) end

--- (client/server) Allows to change players field of view while player holds the weapon. 
--- [https://wiki.facepunch.com/gmod/WEAPON:TranslateFOV]
--- @param fov number @ The current/default FOV.
--- @return number
function SWEP:TranslateFOV(fov) end

--- (client) Called straight after the view model has been drawn. This is called before [GM:PostDrawViewModel](https://wiki.facepunch.com/gmod/GM:PostDrawViewModel) and [WEAPON:PostDrawViewModel](https://wiki.facepunch.com/gmod/WEAPON:PostDrawViewModel). 
--- [https://wiki.facepunch.com/gmod/WEAPON:ViewModelDrawn]
--- @param ViewModel Entity @ Players view model
--- @return void
function SWEP:ViewModelDrawn(ViewModel) end

