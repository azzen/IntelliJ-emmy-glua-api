--- @class scripted_ents
scripted_ents = {}

--- (client/server) Defines an alias string that can be used to refer to another classname 
--- [https://wiki.facepunch.com/gmod/scripted_ents.Alias]
--- @param alias string @ A new string which can be used to refer to another classname
--- @param classname string @ The classname the alias should refer to
--- @return void
function scripted_ents.Alias(alias, classname) end

--- (client/server) Returns a copy of the ENT table for a class, including functions defined by the base class 
--- [https://wiki.facepunch.com/gmod/scripted_ents.Get]
--- @param classname string @ The classname of the ENT table to return, can be an alias
--- @return table
function scripted_ents.Get(classname) end

--- (client/server) Returns a copy of the list of all ENT tables registered 
--- [https://wiki.facepunch.com/gmod/scripted_ents.GetList]
--- @return table
function scripted_ents.GetList() end

--- (client/server) Retrieves a member of entity's table. 
--- [https://wiki.facepunch.com/gmod/scripted_ents.GetMember]
--- @param class string @ Entity's class name
--- @param name string @ Name of member to retrieve
--- @return any
function scripted_ents.GetMember(class, name) end

--- (client/server) Returns a list of all ENT tables which contain ENT.Spawnable 
--- [https://wiki.facepunch.com/gmod/scripted_ents.GetSpawnable]
--- @return table
function scripted_ents.GetSpawnable() end

--- (client/server) Returns the actual ENT table for a class. Modifying functions/variables in this table will change newly spawned entities 
--- [https://wiki.facepunch.com/gmod/scripted_ents.GetStored]
--- @param classname string @ The classname of the ENT table to return
--- @return table
function scripted_ents.GetStored(classname) end

--- (client/server) Returns the 'type' of a class, this will one of the following: 'anim', 'ai', 'brush', 'point'. 
--- [https://wiki.facepunch.com/gmod/scripted_ents.GetType]
--- @param classname string @ The classname to check
--- @return string
function scripted_ents.GetType(classname) end

--- (client/server) Checks if name is based on base 
--- [https://wiki.facepunch.com/gmod/scripted_ents.IsBasedOn]
--- @param name string @ Entity's class name to be checked
--- @param base string @ Base class name to be checked
--- @return boolean
function scripted_ents.IsBasedOn(name, base) end

--- (client/server) Called after all ENTS have been loaded and runs [baseclass.Set](https://wiki.facepunch.com/gmod/baseclass.Set) on each one.
--- You can retrieve all the currently registered ENTS with [scripted_ents.GetList](https://wiki.facepunch.com/gmod/scripted_ents.GetList). 
--- [https://wiki.facepunch.com/gmod/scripted_ents.OnLoaded]
--- @return void
function scripted_ents.OnLoaded() end

--- (client/server) Registers an ENT table with a classname. Reregistering an existing classname will automatically update the functions of all existing entities of that class. 
--- [https://wiki.facepunch.com/gmod/scripted_ents.Register]
--- @param ENT table @ The ENT table to register.
--- @param classname string @ The classname to register.
--- @return void
function scripted_ents.Register(ENT, classname) end

