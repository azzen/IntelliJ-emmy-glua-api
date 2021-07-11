--- @class weapons
weapons = {}

--- (client/server) Get a `copy` of weapon table by name. This function also inherits fields from the weapon's base class, unlike [weapons.GetStored](https://wiki.facepunch.com/gmod/weapons.GetStored). 
--- [https://wiki.facepunch.com/gmod/weapons.Get]
--- @param classname string @ Class name of weapon to retrieve
--- @return table
function weapons.Get(classname) end

--- (client/server) Get a list of all the registered SWEPs. This does not include weapons added to spawnmenu manually. 
--- [https://wiki.facepunch.com/gmod/weapons.GetList]
--- @return table
function weapons.GetList() end

--- (client/server) Gets the REAL weapon table, not a copy. The produced table does `not` inherit fields from the weapon's base class, unlike [weapons.Get](https://wiki.facepunch.com/gmod/weapons.Get). 
--- [https://wiki.facepunch.com/gmod/weapons.GetStored]
--- @param weapon_class string @ Weapon class to retrieve weapon table of
--- @return table
function weapons.GetStored(weapon_class) end

--- (client/server) Checks if name is based on base 
--- [https://wiki.facepunch.com/gmod/weapons.IsBasedOn]
--- @param name string @ Entity's class name to be checked
--- @param base string @ Base class name to be checked
--- @return boolean
function weapons.IsBasedOn(name, base) end

--- (client/server) Called after all SWEPS have been loaded and runs [baseclass.Set](https://wiki.facepunch.com/gmod/baseclass.Set) on each one.You can retrieve all the currently registered SWEPS with [weapons.GetList](https://wiki.facepunch.com/gmod/weapons.GetList). 
--- [https://wiki.facepunch.com/gmod/weapons.OnLoaded]
--- @return void
function weapons.OnLoaded() end

--- (client/server) Registers a Scripted Weapon (SWEP) class manually. When the engine spawns an entity, weapons registered with this function will be created if the class names match.See also [scripted_ents.Register](https://wiki.facepunch.com/gmod/scripted_ents.Register) for Scripted Entities (SENTs) 
--- [https://wiki.facepunch.com/gmod/weapons.Register]
--- @param swep_table table @ The SWEP table
--- @param classname string @ Classname to assign to that swep
--- @return void
function weapons.Register(swep_table, classname) end

