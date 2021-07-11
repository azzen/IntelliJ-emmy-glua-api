--- @class util
util = {}

--- () No description provided 
--- [https://wiki.facepunch.com/gmod/No link provided]
--- @return void
function util.worldpicker() end

--- (server) Adds the specified string to a string table, which will cache it and network it to all clients automatically.
--- Whenever you want to create a net message with [net.Start](https://wiki.facepunch.com/gmod/net.Start), you must add the name of that message as a networked string via this function.
--- If the passed string already exists, nothing will happen and the ID of the existing item will be returned. 
--- [https://wiki.facepunch.com/gmod/util.AddNetworkString]
--- @param str string @ Adds the specified string to the string table.
--- @return number
function util.AddNetworkString(str) end

--- (client/menu/server) Function used to calculate aim vector from 2D screen position. It is used in SuperDOF calculate Distance.
--- Essentially a generic version of [gui.ScreenToVector](https://wiki.facepunch.com/gmod/gui.ScreenToVector). 
--- [https://wiki.facepunch.com/gmod/util.AimVector]
--- @param ViewAngles Angle @ View angles
--- @param ViewFOV number @ View Field of View
--- @param x number @ Mouse X position
--- @param y number @ Mouse Y position
--- @param scrWidth number @ Screen width
--- @param scrHeight number @ Screen height
--- @return Vector
function util.AimVector(ViewAngles, ViewFOV, x, y, scrWidth, scrHeight) end

--- (client/menu/server) Decodes the specified string from base64. 
--- [https://wiki.facepunch.com/gmod/util.Base64Decode]
--- @param str string @ String to decode.
--- @return string
function util.Base64Decode(str) end

--- (client/menu/server) Encodes the specified string to base64. 
--- [https://wiki.facepunch.com/gmod/util.Base64Encode]
--- @param str string @ String to encode.
--- @return string
function util.Base64Encode(str) end

--- (server) Applies explosion damage to all entities in the specified radius. 
--- [https://wiki.facepunch.com/gmod/util.BlastDamage]
--- @param inflictor Entity @ The entity that caused the damage.
--- @param attacker Entity @ The entity that attacked.
--- @param damageOrigin Vector @ The center of the explosion
--- @param damageRadius number @ The radius in which entities will be damaged.
--- @param damage number @ The amount of damage to be applied.
--- @return void
function util.BlastDamage(inflictor, attacker, damageOrigin, damageRadius, damage) end

--- (server) Applies spherical damage based on damage info to all entities in the specified radius. 
--- [https://wiki.facepunch.com/gmod/util.BlastDamageInfo]
--- @param dmg CTakeDamageInfo @ The information about the damage
--- @param damageOrigin Vector @ Center of the spherical damage
--- @param damageRadius number @ The radius in which entities will be damaged.
--- @return void
function util.BlastDamageInfo(dmg, damageOrigin, damageRadius) end

--- (client/menu/server) Compresses the given string using the [LZMA](https://en.wikipedia.org/wiki/LZMA) algorithm.
--- Use with [net.WriteData](https://wiki.facepunch.com/gmod/net.WriteData) and [net.ReadData](https://wiki.facepunch.com/gmod/net.ReadData) for networking and  [util.Decompress](https://wiki.facepunch.com/gmod/util.Decompress) to decompress the data. 
--- [https://wiki.facepunch.com/gmod/util.Compress]
--- @param str string @ String to compress.
--- @return string
function util.Compress(str) end

--- (client/server) Generates the [CRC Checksum](https://en.wikipedia.org/wiki/Cyclic_redundancy_check) of the specified string. 
--- [https://wiki.facepunch.com/gmod/util.CRC]
--- @param stringToHash string @ The string to calculate the checksum of.
--- @return string
function util.CRC(stringToHash) end

--- (client/menu/server) Returns the current date formatted like '2012-10-31 18-00-00' 
--- [https://wiki.facepunch.com/gmod/util.DateStamp]
--- @return string
function util.DateStamp() end

--- (client/server) Performs a trace and paints a decal to the surface hit. 
--- [https://wiki.facepunch.com/gmod/util.Decal]
--- @param name string @ The name of the decal to paint.
--- @param start Vector @ The start of the trace.
--- @param end Vector @ The end of the trace.
--- @param filter Entity @ If set, the decal will not be able to be placed on given entity. Can also be a table of entities.
--- @return void
function util.Decal(name, start, end, filter) end

--- (client) Performs a trace and paints a decal to the surface hit. 
--- [https://wiki.facepunch.com/gmod/util.DecalEx]
--- @param material IMaterial @ The name of the decal to paint. Can be retrieved with [util.DecalMaterial](https://wiki.facepunch.com/gmod/util.DecalMaterial).
--- @param ent Entity @ The entity to apply the decal to
--- @param position Vector @ The position of the decal.
--- @param normal Vector @ The direction of the decal.
--- @param color table @ The color of the decal. Uses the [Color](https://wiki.facepunch.com/gmod/Color). This only works when used on a brush model and only if the decal material has set $vertexcolor to 1.
--- @param w number @ The width scale of the decal.
--- @param h number @ The height scale of the decal.
--- @return void
function util.DecalEx(material, ent, position, normal, color, w, h) end

--- (client/server) Gets the full material path by the decal name. Used with [util.DecalEx](https://wiki.facepunch.com/gmod/util.DecalEx). 
--- [https://wiki.facepunch.com/gmod/util.DecalMaterial]
--- @param decalName string @ Name of the decal.
--- @return string
function util.DecalMaterial(decalName) end

--- (client/menu/server) Decompresses the given string using [LZMA](https://en.wikipedia.org/wiki/LZMA) algorithm. Used to decompress strings previously compressed with [util.Compress](https://wiki.facepunch.com/gmod/util.Compress). 
--- [https://wiki.facepunch.com/gmod/util.Decompress]
--- @param compressedString string @ The compressed string to decompress.
--- @param maxSize number @ The maximal size in bytes it will decompress.
--- @return string
function util.Decompress(compressedString, maxSize) end

--- (client/server) Gets the distance between a line and a point in 3d space. 
--- [https://wiki.facepunch.com/gmod/util.DistanceToLine]
--- @param lineStart Vector @ Start of the line.
--- @param lineEnd Vector @ End of the line.
--- @param pointPos Vector @ The position of the point.
--- @return number|Vector|number
function util.DistanceToLine(lineStart, lineEnd, pointPos) end

--- (client/server) Creates an effect with the specified data.
--- For Orange Box `.pcf` particles, see [ParticleEffect](https://wiki.facepunch.com/gmod/Global.ParticleEffect), [ParticleEffectAttach](https://wiki.facepunch.com/gmod/Global.ParticleEffectAttach) and  [CreateParticleSystem](https://wiki.facepunch.com/gmod/Global.CreateParticleSystem). 
--- [https://wiki.facepunch.com/gmod/util.Effect]
--- @param effectName string @ The name of the effect to create. You can find a list of [built-in engine effects here](https://wiki.facepunch.com/gmod/Effects). You can create your own, [example effects can be found here](https://github.com/garrynewman/garrysmod/tree/master/garrysmod/gamemodes/sandbox/entities/effects) and [here](https://github.com/garrynewman/garrysmod/tree/master/garrysmod/gamemodes/base/entities/effects).
--- @param effectData CEffectData @ The effect data describing the effect.
--- @param allowOverride boolean @ Whether Lua-defined effects should override engine-defined effects with the same name for this/single function call.
--- @param ignorePredictionOrRecipientFilter any @ Can either be a boolean to ignore the prediction filter or a [CRecipientFilter](https://wiki.facepunch.com/gmod/CRecipientFilter). Set this to true if you wish to call this function in multiplayer from server.
--- @return void
function util.Effect(effectName, effectData, allowOverride, ignorePredictionOrRecipientFilter) end

--- (client/server) Returns a table containing the info about the model. 
--- [https://wiki.facepunch.com/gmod/util.GetModelInfo]
--- @param mdl string @ Model path
--- @return table
function util.GetModelInfo(mdl) end

--- (client) Returns a table of visual meshes of given model.
--- 
--- See also [ENTITY:GetRenderMesh](https://wiki.facepunch.com/gmod/ENTITY:GetRenderMesh). 
--- [https://wiki.facepunch.com/gmod/util.GetModelMeshes]
--- @param model string @ The full path to a model to get the visual meshes of.
--- @param lod number @ No description provided
--- @param bodygroupMask number @ No description provided
--- @return table
function util.GetModelMeshes(model, lod, bodygroupMask) end

--- (client/menu/server) Gets PData of an offline player using their SteamID 
--- [https://wiki.facepunch.com/gmod/util.GetPData]
--- @param steamID string @ SteamID of the player
--- @param name string @ Variable name to get the value of
--- @param default string @ The default value, in case there's nothing stored
--- @return string
function util.GetPData(steamID, name, default) end

--- (client) Creates a new PixVis handle. See [util.PixelVisible](https://wiki.facepunch.com/gmod/util.PixelVisible). 
--- [https://wiki.facepunch.com/gmod/util.GetPixelVisibleHandle]
--- @return pixelvis handle t
function util.GetPixelVisibleHandle() end

--- (client/menu/server) Utility function to quickly generate a trace table that starts at the players view position, and ends `32768` units along a specified direction. 
--- [https://wiki.facepunch.com/gmod/util.GetPlayerTrace]
--- @param ply Player @ The player the trace should be based on
--- @param dir Vector @ The direction of the trace
--- @return table
function util.GetPlayerTrace(ply, dir) end

--- (client) Gets information about the sun position and obstruction or nil if there is no sun. 
--- [https://wiki.facepunch.com/gmod/util.GetSunInfo]
--- @return table
function util.GetSunInfo() end

--- (client/server) Returns data of a surface property at given ID. 
--- [https://wiki.facepunch.com/gmod/util.GetSurfaceData]
--- @param id number @ Surface property ID. You can get it from [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult).
--- @return table
function util.GetSurfaceData(id) end

--- (client/server) Returns the matching surface property index for the given surface property name.
--- See also [util.GetSurfaceData](https://wiki.facepunch.com/gmod/util.GetSurfaceData) and [util.GetSurfacePropName](https://wiki.facepunch.com/gmod/util.GetSurfacePropName) for opposite function. 
--- [https://wiki.facepunch.com/gmod/util.GetSurfaceIndex]
--- @param surfaceName string @ The name of the surface.
--- @return number
function util.GetSurfaceIndex(surfaceName) end

--- (client/server) Returns the name of a surface property at given ID.
--- See also [util.GetSurfaceData](https://wiki.facepunch.com/gmod/util.GetSurfaceData) and [util.GetSurfaceIndex](https://wiki.facepunch.com/gmod/util.GetSurfaceIndex) for opposite function. 
--- [https://wiki.facepunch.com/gmod/util.GetSurfacePropName]
--- @param id number @ Surface property ID. You can get it from [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult).
--- @return string
function util.GetSurfacePropName(id) end

--- (server) Returns a table of all SteamIDs that have a usergroup. 
--- [https://wiki.facepunch.com/gmod/util.GetUserGroups]
--- @return table
function util.GetUserGroups() end

--- (client/server) Performs a "ray" box intersection and returns position, normal and the fraction. 
--- [https://wiki.facepunch.com/gmod/util.IntersectRayWithOBB]
--- @param rayStart Vector @ Origin/start position of the ray.
--- @param rayDelta Vector @ The ray vector itself. This can be thought of as: the ray end point relative to the start point. Note that in this implementation, the ray is not infinite - it's only a segment.
--- @param boxOrigin Vector @ The center of the box.
--- @param boxAngles Angle @ The angles of the box.
--- @param boxMins Vector @ The min position of the box.
--- @param boxMaxs Vector @ The max position of the box.
--- @return Vector|Vector|number
function util.IntersectRayWithOBB(rayStart, rayDelta, boxOrigin, boxAngles, boxMins, boxMaxs) end

--- (client/server) Performs a [ray-plane intersection](https://en.wikipedia.org/wiki/Line%E2%80%93plane_intersection) and returns the hit position or nil. 
--- [https://wiki.facepunch.com/gmod/util.IntersectRayWithPlane]
--- @param rayOrigin Vector @ Origin/start position of the ray.
--- @param rayDirection Vector @ The direction of the ray.
--- @param planePosition Vector @ Any position of the plane.
--- @param planeNormal Vector @ The normal vector of the plane.
--- @return Vector
function util.IntersectRayWithPlane(rayOrigin, rayDirection, planePosition, planeNormal) end

--- (server) Checks if a certain position is within the world bounds. 
--- [https://wiki.facepunch.com/gmod/util.IsInWorld]
--- @param position Vector @ Position to check.
--- @return boolean
function util.IsInWorld(position) end

--- (client/server) Checks if the model is loaded in the game. 
--- [https://wiki.facepunch.com/gmod/util.IsModelLoaded]
--- @param modelName string @ Name/Path of the model to check.
--- @return boolean
function util.IsModelLoaded(modelName) end

--- (client) Check whether the skybox is visible from the point specified. 
--- [https://wiki.facepunch.com/gmod/util.IsSkyboxVisibleFromPoint]
--- @param position Vector @ The position to check the skybox visibility from.
--- @return boolean
function util.IsSkyboxVisibleFromPoint(position) end

--- (client/server) Checks if the specified model is valid.
---  
--- A model is considered invalid in following cases:
--- * Starts with a space or **maps**
--- * Doesn't start with **models**
--- * Contains any of the following:
--- * * _gestures
--- * * _animations
--- * * _postures
--- * * _gst
--- * * _pst
--- * * _shd
--- * * _ss
--- * * _anm
--- * * .bsp
--- * * cs_fix
--- * On server: If the model isn't precached, if the model file doesn't exist on the disk
--- * If precache failed
--- * Model is the error model
--- Running this function will also precache the model. 
--- [https://wiki.facepunch.com/gmod/util.IsValidModel]
--- @param modelName string @ Name/Path of the model to check.
--- @return boolean
function util.IsValidModel(modelName) end

--- (client/menu/server) Checks if given numbered physics object of given entity is valid or not. Most useful for ragdolls. 
--- [https://wiki.facepunch.com/gmod/util.IsValidPhysicsObject]
--- @param ent Entity @ The entity
--- @param physobj number @ Number of the physics object to test
--- @return boolean
function util.IsValidPhysicsObject(ent, physobj) end

--- (client/server) Checks if the specified prop is valid. 
--- [https://wiki.facepunch.com/gmod/util.IsValidProp]
--- @param modelName string @ Name/Path of the model to check.
--- @return boolean
function util.IsValidProp(modelName) end

--- (client/server) Checks if the specified model name points to a valid ragdoll. 
--- [https://wiki.facepunch.com/gmod/util.IsValidRagdoll]
--- @param ragdollName string @ Name/Path of the ragdoll model to check.
--- @return boolean
function util.IsValidRagdoll(ragdollName) end

--- (client/menu/server) Converts a JSON string to a Lua table. 
--- [https://wiki.facepunch.com/gmod/util.JSONToTable]
--- @param json string @ The JSON string to convert.
--- @return table
function util.JSONToTable(json) end

--- (client/menu/server) Converts a KeyValue string to a Lua table. 
--- [https://wiki.facepunch.com/gmod/util.KeyValuesToTable]
--- @param keyValues string @ The KeyValue string to convert.
--- @param usesEscapeSequences boolean @ If set to true, will replace \t, \n, \" and \\ in the input text with their escaped variants
--- @param preserveKeyCase boolean @ Whether we should preserve key case (may fail) or not (always lowercase)
--- @return table
function util.KeyValuesToTable(keyValues, usesEscapeSequences, preserveKeyCase) end

--- (client/menu/server) Similar to [util.KeyValuesToTable](https://wiki.facepunch.com/gmod/util.KeyValuesToTable) but it also preserves order of keys. 
--- [https://wiki.facepunch.com/gmod/util.KeyValuesToTablePreserveOrder]
--- @param keyvals string @ The key value string
--- @param usesEscapeSequences boolean @ If set to true, will replace \t, \n, \" and \\ in the input text with their escaped variants
--- @param preserveKeyCase boolean @ Whether we should preserve key case (may fail) or not (always lowercase)
--- @return table
function util.KeyValuesToTablePreserveOrder(keyvals, usesEscapeSequences, preserveKeyCase) end

--- (client/menu/server) Returns a vector in world coordinates based on an entity and local coordinates 
--- [https://wiki.facepunch.com/gmod/util.LocalToWorld]
--- @param ent Entity @ The entity lpos is local to
--- @param lpos Vector @ Coordinates local to the ent
--- @param bonenum number @ The bonenumber of the ent lpos is local to
--- @return Vector
function util.LocalToWorld(ent, lpos, bonenum) end

--- (client/server) Generates the [MD5 Checksum](https://en.wikipedia.org/wiki/MD5) of the specified string. 
--- [https://wiki.facepunch.com/gmod/util.MD5]
--- @param stringToHash string @ The string to calculate the checksum of.
--- @return string
function util.MD5(stringToHash) end

--- (client/server) Returns the networked string associated with the given ID from the string table. 
--- [https://wiki.facepunch.com/gmod/util.NetworkIDToString]
--- @param stringTableID number @ ID to get the associated string from.
--- @return string
function util.NetworkIDToString(stringTableID) end

--- (client/server) Returns the networked ID associated with the given string from the string table. 
--- [https://wiki.facepunch.com/gmod/util.NetworkStringToID]
--- @param networkString string @ String to get the associated networked ID from.
--- @return number
function util.NetworkStringToID(networkString) end

--- (client/menu/server) Formats a float by stripping off extra `0's` and `.'s`. 
--- [https://wiki.facepunch.com/gmod/util.NiceFloat]
--- @param float number @ The float to format.
--- @return string
function util.NiceFloat(float) end

--- (client/server) Creates a tracer effect with the given parameters. 
--- [https://wiki.facepunch.com/gmod/util.ParticleTracer]
--- @param name string @ The name of the tracer effect.
--- @param startPos Vector @ The start position of the tracer.
--- @param endPos Vector @ The end position of the tracer.
--- @param doWhiz boolean @ Play the hit miss(whiz) sound.
--- @return void
function util.ParticleTracer(name, startPos, endPos, doWhiz) end

--- (client/server) Creates a tracer effect with the given parameters. 
--- [https://wiki.facepunch.com/gmod/util.ParticleTracerEx]
--- @param name string @ The name of the tracer effect.
--- @param startPos Vector @ The start position of the tracer.
--- @param endPos Vector @ The end position of the tracer.
--- @param doWhiz boolean @ Play the hit miss(whiz) sound.
--- @param entityIndex number @ Entity index of the emitting entity.
--- @param attachmentIndex number @ Attachment index to be used as origin.
--- @return void
function util.ParticleTracerEx(name, startPos, endPos, doWhiz, entityIndex, attachmentIndex) end

--- (client) Returns the visibility of a sphere in the world. 
--- [https://wiki.facepunch.com/gmod/util.PixelVisible]
--- @param position Vector @ The center of the visibility test.
--- @param radius number @ The radius of the sphere to check for visibility.
--- @param PixVis pixelvis handle t @ The PixVis handle created with [util.GetPixelVisibleHandle](https://wiki.facepunch.com/gmod/util.GetPixelVisibleHandle).
--- @return number
function util.PixelVisible(position, radius, PixVis) end

--- (client/server) Returns the contents of the position specified. 
--- [https://wiki.facepunch.com/gmod/util.PointContents]
--- @param position Vector @ Position to get the contents sample from.
--- @return number
function util.PointContents(position) end

--- (client/server) Precaches a model for later use. Model is cached after being loaded once. 
--- [https://wiki.facepunch.com/gmod/util.PrecacheModel]
--- @param modelName string @ The model to precache.
--- @return void
function util.PrecacheModel(modelName) end

--- (client/server) Precaches a sound for later use. Sound is cached after being loaded once. 
--- [https://wiki.facepunch.com/gmod/util.PrecacheSound]
--- @param soundName string @ The sound to precache.
--- @return void
function util.PrecacheSound(soundName) end

--- (client/menu/server) Performs a trace with the given origin, direction and filter. 
--- [https://wiki.facepunch.com/gmod/util.QuickTrace]
--- @param origin Vector @ The origin of the trace.
--- @param endpos Vector @ The end point of the trace, relative to the start. This is the direction of the trace times the distance of the trace.
--- @param filter Entity @ Entity which should be ignored by the trace. Can also be a table of entities or a function - see [Trace](https://wiki.facepunch.com/gmod/Structures/Trace).
--- @return table
function util.QuickTrace(origin, endpos, filter) end

--- (client/menu/server) Removes PData of offline player using his SteamID. 
--- [https://wiki.facepunch.com/gmod/util.RemovePData]
--- @param steamID string @ SteamID of the player
--- @param name string @ Variable name to remove
--- @return void
function util.RemovePData(steamID, name) end

--- (client/server) Makes the screen shake. 
--- [https://wiki.facepunch.com/gmod/util.ScreenShake]
--- @param pos Vector @ The origin of the effect.
--- @param amplitude number @ The strength of the effect.
--- @param frequency number @ The frequency of the effect in hertz.
--- @param duration number @ The duration of the effect in seconds.
--- @param radius number @ The range from the origin within which views will be affected, in Hammer units.
--- @return void
function util.ScreenShake(pos, amplitude, frequency, duration, radius) end

--- (client/menu/server) Sets PData for offline player using his SteamID 
--- [https://wiki.facepunch.com/gmod/util.SetPData]
--- @param steamID string @ SteamID of the player
--- @param name string @ Variable name to store the value in
--- @param value any @ The value to store
--- @return void
function util.SetPData(steamID, name, value) end

--- (client/server) Generates the [SHA-1 Checksum](https://en.wikipedia.org/wiki/SHA-1) of the specified string. 
--- [https://wiki.facepunch.com/gmod/util.SHA1]
--- @param stringToHash string @ The string to calculate the checksum of.
--- @return string
function util.SHA1(stringToHash) end

--- (client/server) Generates the [SHA-256 Checksum](https://en.wikipedia.org/wiki/SHA-2) of the specified string. 
--- [https://wiki.facepunch.com/gmod/util.SHA256]
--- @param stringToHash string @ The string to calculate the checksum of.
--- @return string
function util.SHA256(stringToHash) end

--- (client/server) Generates a random float value that should be the same on client and server. 
--- [https://wiki.facepunch.com/gmod/util.SharedRandom]
--- @param uniqueName string @ The seed for the random value
--- @param min number @ The minimum value of the random range
--- @param max number @ The maximum value of the random range
--- @param additionalSeed number @ The additional seed
--- @return number
function util.SharedRandom(uniqueName, min, max, additionalSeed) end

--- (server) Adds a trail to the specified entity. 
--- [https://wiki.facepunch.com/gmod/util.SpriteTrail]
--- @param ent Entity @ Entity to attach trail to
--- @param attachmentID number @ Attachment ID of the entities model to attach trail to. If you are not sure, set this to 0
--- @param color table @ Color of the trail, use [Color](https://wiki.facepunch.com/gmod/Global.Color)
--- @param additive boolean @ Should the trail be additive or not
--- @param startWidth number @ Start width of the trail
--- @param endWidth number @ End width of the trail
--- @param lifetime number @ How long it takes to transition from startWidth to endWidth
--- @param textureRes number @ The resolution of trails texture. A good value can be calculated using this formula: 1 / ( startWidth + endWidth )  0.5
--- @param texture string @ Path to the texture to use as a trail.
--- @return Entity
function util.SpriteTrail(ent, attachmentID, color, additive, startWidth, endWidth, lifetime, textureRes, texture) end

--- (client/menu/server) Returns a new [Stack](https://wiki.facepunch.com/gmod/Stack) object 
--- [https://wiki.facepunch.com/gmod/util.Stack]
--- @return Stack
function util.Stack() end

--- (client/server) Given a 64bit SteamID will return a STEAM_0: style Steam ID 
--- [https://wiki.facepunch.com/gmod/util.SteamIDFrom64]
--- @param id string @ The 64 bit Steam ID
--- @return string
function util.SteamIDFrom64(id) end

--- (client/server) Given a STEAM_0 style Steam ID will return a 64bit Steam ID 
--- [https://wiki.facepunch.com/gmod/util.SteamIDTo64]
--- @param id string @ The STEAM_0 style id
--- @return string
function util.SteamIDTo64(id) end

--- (client/menu/server) Converts a string to the specified type.
--- This can be useful when dealing with ConVars. 
--- [https://wiki.facepunch.com/gmod/util.StringToType]
--- @param str string @ The string to convert
--- @param typename string @ The type to attempt to convert the string to. This can be vector, angle, float, int, bool, or string (case insensitive).
--- @return any
function util.StringToType(str, typename) end

--- (client/menu/server) Converts a table to a JSON string. 
--- [https://wiki.facepunch.com/gmod/util.TableToJSON]
--- @param table table @ Table to convert.
--- @param prettyPrint boolean @ Format and indent the JSON.
--- @return string
function util.TableToJSON(table, prettyPrint) end

--- (client/menu/server) Converts the given table into a key value string. 
--- [https://wiki.facepunch.com/gmod/util.TableToKeyValues]
--- @param table table @ The table to convert.
--- @param parentKey string @ The parent key.
--- @return string
function util.TableToKeyValues(table, parentKey) end

--- (client/menu/server) Creates a timer object. 
--- [https://wiki.facepunch.com/gmod/util.Timer]
--- @param startdelay number @ How long you want the timer to be.
--- @return table
function util.Timer(startdelay) end

--- (client/menu/server) Returns the time since this function has been last called 
--- [https://wiki.facepunch.com/gmod/util.TimerCycle]
--- @return number
function util.TimerCycle() end

--- (client/menu/server) Converts string or a number to a bool, if possible. Alias of [tobool](https://wiki.facepunch.com/gmod/Global.tobool). 
--- [https://wiki.facepunch.com/gmod/util.tobool]
--- @param input any @ A string or a number to convert.
--- @return boolean
function util.tobool(input) end

--- (client/server) Runs a trace using the entity's collisionmodel between two points. This does not take the entity's angles into account and will trace its unrotated collisionmodel. 
--- [https://wiki.facepunch.com/gmod/util.TraceEntity]
--- @param tracedata table @ Trace data. See [Trace](https://wiki.facepunch.com/gmod/Structures/Trace)
--- @param ent Entity @ The entity to use
--- @return table
function util.TraceEntity(tracedata, ent) end

--- (client/server) Traces from one entity to another. 
--- [https://wiki.facepunch.com/gmod/util.TraceEntityHull]
--- @param ent1 Entity @ The first entity to trace from
--- @param ent2 Entity @ The second entity to trace to
--- @return table
function util.TraceEntityHull(ent1, ent2) end

--- (client/server) Performs an AABB hull (axis-aligned bounding box, aka not rotated) trace with the given trace data. 
--- [https://wiki.facepunch.com/gmod/util.TraceHull]
--- @param TraceData table @ The trace data to use. See [HullTrace](https://wiki.facepunch.com/gmod/Structures/HullTrace)
--- @return table
function util.TraceHull(TraceData) end

--- (client/server) Performs a trace with the given trace data. 
--- [https://wiki.facepunch.com/gmod/util.TraceLine]
--- @param TraceData table @ The trace data to use. See [Trace](https://wiki.facepunch.com/gmod/Structures/Trace)
--- @return table
function util.TraceLine(TraceData) end

--- (client/menu/server) Converts a type to a (nice, but still parsable) string 
--- [https://wiki.facepunch.com/gmod/util.TypeToString]
--- @param input any @ What to convert
--- @return string
function util.TypeToString(input) end

