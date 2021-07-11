--- @class ents
ents = {}

--- (server) Creates an entity. This function will fail and return `NULL` if the networked-edict limit is hit (around **8176**), or the provided entity class doesn't exist. 
--- [https://wiki.facepunch.com/gmod/ents.Create]
--- @param class string @ The classname of the entity to create.
--- @return Entity
function ents.Create(class) end

--- (client) Creates a clientside only prop. See also [ClientsideModel](https://wiki.facepunch.com/gmod/Global.ClientsideModel).
--- For physics to work you **must** use the _model_ argument, a simple `SetModel` call will not be enough. 
--- [https://wiki.facepunch.com/gmod/ents.CreateClientProp]
--- @param model string @ The model for the entity to be created.
--- @return Entity
function ents.CreateClientProp(model) end

--- (client) Creates a clientside only scripted entity. The scripted entity must be of "anim" type. 
--- [https://wiki.facepunch.com/gmod/ents.CreateClientside]
--- @param class string @ The class name of the entity to create.
--- @return Entity
function ents.CreateClientside(class) end

--- (client/server) Returns a table of all entities along the ray. The ray does not stop on collisions, meaning it will go through walls/entities. 
--- [https://wiki.facepunch.com/gmod/ents.FindAlongRay]
--- @param start Vector @ The start position of the ray
--- @param end Vector @ The end position of the ray
--- @param mins Vector @ The mins corner of the ray
--- @param maxs Vector @ The maxs corner of the ray
--- @return table
function ents.FindAlongRay(start, end, mins, maxs) end

--- (client/server) Gets all entities with the given class, supports wildcards. This works internally by iterating over [ents.GetAll](https://wiki.facepunch.com/gmod/ents.GetAll). Even if internally ents.GetAll is used, It is faster to use ents.FindByClass than ents.GetAll with a single class comparison. 
--- [https://wiki.facepunch.com/gmod/ents.FindByClass]
--- @param class string @ The class of the entities to find.
--- @return table
function ents.FindByClass(class) end

--- (client/server) Finds all entities that are of given class and are children of given entity. This works internally by iterating over [ents.GetAll](https://wiki.facepunch.com/gmod/ents.GetAll). 
--- [https://wiki.facepunch.com/gmod/ents.FindByClassAndParent]
--- @param class string @ The class of entities to search for
--- @param parent Entity @ Parent of entities that are being searched for
--- @return table
function ents.FindByClassAndParent(class, parent) end

--- (client/server) Gets all entities with the given model, supports wildcards. This works internally by iterating over [ents.GetAll](https://wiki.facepunch.com/gmod/ents.GetAll). 
--- [https://wiki.facepunch.com/gmod/ents.FindByModel]
--- @param model string @ The model of the entities to find.
--- @return table
function ents.FindByModel(model) end

--- (client/server) Gets all entities with the given hammer targetname. This works internally by iterating over [ents.GetAll](https://wiki.facepunch.com/gmod/ents.GetAll).
--- Doesn't do anything on client. 
--- [https://wiki.facepunch.com/gmod/ents.FindByName]
--- @param name string @ The targetname to look for
--- @return table
function ents.FindByName(name) end

--- (client/server) Returns all entities within the specified box. 
--- [https://wiki.facepunch.com/gmod/ents.FindInBox]
--- @param boxMins Vector @ The box minimum coordinates.
--- @param boxMaxs Vector @ The box maximum coordinates.
--- @return table
function ents.FindInBox(boxMins, boxMaxs) end

--- (client/server) Finds and returns all entities within the specified cone. Only entities whose [Entity:WorldSpaceCenter](https://wiki.facepunch.com/gmod/Entity:WorldSpaceCenter) is within the cone are considered to be in it.
--- The "cone" is actually a conical "slice" of an axis-aligned box (see: [ents.FindInBox](https://wiki.facepunch.com/gmod/ents.FindInBox)). The image to the right shows approximately how this function would look in 2D. Due to this, the entity may be farther than the specified range! 
--- [https://wiki.facepunch.com/gmod/ents.FindInCone]
--- @param origin Vector @ The tip of the cone.
--- @param normal Vector @ Direction of the cone.
--- @param range number @ The range of the cone/box around the origin.
--- @param angle_cos number @ The [cosine](https://wiki.facepunch.com/gmod/math.cos) of the angle between the center of the cone to its edges, which is half the overall angle of the cone. 1 makes a 0° cone, 0.707 makes approximately 90°, 0 makes 180°, and so on.
--- @return table
function ents.FindInCone(origin, normal, range, angle_cos) end

--- (server) Finds all entities that lie within a [PVS](https://developer.valvesoftware.com/wiki/PVS). 
--- [https://wiki.facepunch.com/gmod/ents.FindInPVS]
--- @param viewPoint any @ [Entity](https://wiki.facepunch.com/gmod/Entity) or [Vector](https://wiki.facepunch.com/gmod/Vector) to find entities within the PVS of. If a player is given, this function will use the player's view entity.
--- @return table
function ents.FindInPVS(viewPoint) end

--- (client/server) Gets all entities within the specified sphere. 
--- [https://wiki.facepunch.com/gmod/ents.FindInSphere]
--- @param origin Vector @ Center of the sphere.
--- @param radius number @ Radius of the sphere.
--- @return table
function ents.FindInSphere(origin, radius) end

--- (server) Fires a use event. 
--- [https://wiki.facepunch.com/gmod/ents.FireTargets]
--- @param target string @ Name of the target entity.
--- @param activator Entity @ Activator of the event.
--- @param caller Entity @ Caller of the event.
--- @param usetype number @ Use type. See the [USE](https://wiki.facepunch.com/gmod/Enums/USE).
--- @param value number @ This value is passed to [ENTITY:Use](https://wiki.facepunch.com/gmod/ENTITY:Use), but isn't used by any default entities in the engine.
--- @return void
function ents.FireTargets(target, activator, caller, usetype, value) end

--- (client/server) Returns a table of all existing entities. The table is sequential 
--- [https://wiki.facepunch.com/gmod/ents.GetAll]
--- @return table
function ents.GetAll() end

--- (client/server) Returns an entity by its index. Same as [Entity](https://wiki.facepunch.com/gmod/Global.Entity). 
--- [https://wiki.facepunch.com/gmod/ents.GetByIndex]
--- @param entIdx number @ The index of the entity.
--- @return Entity
function ents.GetByIndex(entIdx) end

--- (client/server) Gives you the amount of currently existing entities. 
--- [https://wiki.facepunch.com/gmod/ents.GetCount]
--- @param IncludeKillMe boolean @ Include entities with the FL_KILLME flag. This will skip an internal loop, and the function will be more efficient as a byproduct.
--- @return number
function ents.GetCount(IncludeKillMe) end

--- (server) Returns the amount of networked entities, which is limited to 8192. [ents.Create](https://wiki.facepunch.com/gmod/ents.Create) will fail somewhere between 8064 and 8176 - this can vary based on the amount of existing temp ents. 
--- [https://wiki.facepunch.com/gmod/ents.GetEdictCount]
--- @return number
function ents.GetEdictCount() end

--- (server) Returns entity that has given [Entity:MapCreationID](https://wiki.facepunch.com/gmod/Entity:MapCreationID). 
--- [https://wiki.facepunch.com/gmod/ents.GetMapCreatedEntity]
--- @param id number @ Entity's creation id
--- @return Entity
function ents.GetMapCreatedEntity(id) end

