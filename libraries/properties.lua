--- @class properties
properties = {}

--- (client/server) Add properties to the properties module 
--- [https://wiki.facepunch.com/gmod/properties.Add]
--- @param name string @ A unique name used to identify the property
--- @param propertyData table @ A table that defines the property. Uses the [PropertyAdd](https://wiki.facepunch.com/gmod/Structures/PropertyAdd).
--- @return void
function properties.Add(name, propertyData) end

--- (client/server) Returns true if given entity can be targeted by the player via the properties system.
--- This should be used serverside in your properties to prevent abuse by clientside scripting. 
--- [https://wiki.facepunch.com/gmod/properties.CanBeTargeted]
--- @param ent Entity @ The entity to test
--- @param ply Player @ If given, will also perform a distance check based on the entity's Orientated Bounding Box.
--- @return boolean
function properties.CanBeTargeted(ent, ply) end

--- (client) Returns an entity player is hovering over with his cursor. 
--- [https://wiki.facepunch.com/gmod/properties.GetHovered]
--- @param pos Vector @ Eye position of local player, [Entity:EyePos](https://wiki.facepunch.com/gmod/Entity:EyePos)
--- @param aimVec Vector @ Aim vector of local player, [Player:GetAimVector](https://wiki.facepunch.com/gmod/Player:GetAimVector)
--- @return Entity
function properties.GetHovered(pos, aimVec) end

--- (client/server) Checks if player hovers over any entities and open a properties menu for it. 
--- [https://wiki.facepunch.com/gmod/properties.OnScreenClick]
--- @param eyepos Vector @ The eye pos of a player
--- @param eyevec Vector @ The aim vector of a player
--- @return void
function properties.OnScreenClick(eyepos, eyevec) end

--- (client/server) Opens properties menu for given entity. 
--- [https://wiki.facepunch.com/gmod/properties.OpenEntityMenu]
--- @param ent Entity @ The entity to open menu for
--- @param tr table @ The trace that is passed as second argument to Action callback of a property
--- @return void
function properties.OpenEntityMenu(ent, tr) end

