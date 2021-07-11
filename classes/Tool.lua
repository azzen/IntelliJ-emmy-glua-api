--- @class Tool
Tool = {}

--- (client/server) Returns whether the tool is allowed to be used or not. This function ignores the [SANDBOX:CanTool](https://wiki.facepunch.com/gmod/SANDBOX:CanTool) hook.By default this will always return true clientside and uses `TOOL.AllowedCVar`which is a [ConVar](https://wiki.facepunch.com/gmod/ConVar) object pointing to  `toolmode_allow_*toolname*` convar on the server. 
--- [https://wiki.facepunch.com/gmod/Tool:Allowed]
--- @return boolean
function Tool:Allowed() end

--- (client/server) Builds a list of all ConVars set via the ClientConVar variable on the [TOOL](https://wiki.facepunch.com/gmod/Structures/TOOL) and their default values. This is used for the preset system. 
--- [https://wiki.facepunch.com/gmod/Tool:BuildConVarList]
--- @return table
function Tool:BuildConVarList() end

--- (client/server) Checks all added objects to see if they're still valid, if not, clears the list of objects. 
--- [https://wiki.facepunch.com/gmod/Tool:CheckObjects]
--- @return void
function Tool:CheckObjects() end

--- (client/server) Clears all objects previously set with [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject). 
--- [https://wiki.facepunch.com/gmod/Tool:ClearObjects]
--- @return void
function Tool:ClearObjects() end

--- (client/server) Initializes the tool object 
--- [https://wiki.facepunch.com/gmod/Tool:Create]
--- @return Tool
function Tool:Create() end

--- (client/server) Creates clientside ConVars based on the ClientConVar table specified in the tool structure. Also creates the 'toolmode_allow_X' ConVar. 
--- [https://wiki.facepunch.com/gmod/Tool:CreateConVars]
--- @return void
function Tool:CreateConVars() end

--- (client/server) Retrieves a physics bone number previously stored using [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject). 
--- [https://wiki.facepunch.com/gmod/Tool:GetBone]
--- @param id number @ The id of the object which was set in [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).
--- @return number
function Tool:GetBone(id) end

--- (client/server) Attempts to grab a clientside tool [ConVar](https://wiki.facepunch.com/gmod/ConVar). 
--- [https://wiki.facepunch.com/gmod/Tool:GetClientInfo]
--- @param name string @ Name of the convar to retrieve. The function will automatically add the "mytoolfilename_" part to it.
--- @return string
function Tool:GetClientInfo(name) end

--- (client/server) Attempts to grab a clientside tool [ConVar](https://wiki.facepunch.com/gmod/ConVar). 
--- [https://wiki.facepunch.com/gmod/Tool:GetClientNumber]
--- @param name string @ Name of the convar to retrieve. The function will automatically add the "mytoolfilename_" part to it.
--- @param default number @ The default value to return in case the lookup fails.
--- @return number
function Tool:GetClientNumber(name, default) end

--- (client/server) Retrieves an Entity previously stored using [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject). 
--- [https://wiki.facepunch.com/gmod/Tool:GetEnt]
--- @param id number @ The id of the object which was set in [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).
--- @return Entity
function Tool:GetEnt(id) end

--- (client/server) Returns a language key based on this tool's name and the current stage it is on. 
--- [https://wiki.facepunch.com/gmod/Tool:GetHelpText]
--- @return string
function Tool:GetHelpText() end

--- (client/server) Retrieves an local vector previously stored using [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).See also [Tool:GetPos](https://wiki.facepunch.com/gmod/Tool:GetPos). 
--- [https://wiki.facepunch.com/gmod/Tool:GetLocalPos]
--- @param id number @ The id of the object which was set in [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).
--- @return Vector
function Tool:GetLocalPos(id) end

--- (client/server) Returns the name of the current tool mode. 
--- [https://wiki.facepunch.com/gmod/Tool:GetMode]
--- @return string
function Tool:GetMode() end

--- (client/server) Retrieves an normal vector previously stored using [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject). 
--- [https://wiki.facepunch.com/gmod/Tool:GetNormal]
--- @param id number @ The id of the object which was set in [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).
--- @return Vector
function Tool:GetNormal(id) end

--- (client/server) Returns the current operation of the tool set by [Tool:SetOperation](https://wiki.facepunch.com/gmod/Tool:SetOperation). 
--- [https://wiki.facepunch.com/gmod/Tool:GetOperation]
--- @return number
function Tool:GetOperation() end

--- (client/server) Returns the owner of this tool. 
--- [https://wiki.facepunch.com/gmod/Tool:GetOwner]
--- @return Entity
function Tool:GetOwner() end

--- (client/server) Retrieves an [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) previously stored using [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).See also [Tool:GetEnt](https://wiki.facepunch.com/gmod/Tool:GetEnt). 
--- [https://wiki.facepunch.com/gmod/Tool:GetPhys]
--- @param id number @ The id of the object which was set in [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).
--- @return PhysObj
function Tool:GetPhys(id) end

--- (client/server) Retrieves an vector previously stored using [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject). See also [Tool:GetLocalPos](https://wiki.facepunch.com/gmod/Tool:GetLocalPos). 
--- [https://wiki.facepunch.com/gmod/Tool:GetPos]
--- @param id number @ The id of the object which was set in [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).
--- @return Vector
function Tool:GetPos(id) end

--- (client/server) Attempts to grab a serverside tool [ConVar](https://wiki.facepunch.com/gmod/ConVar).This will not do anything on client, despite the function being defined shared. 
--- [https://wiki.facepunch.com/gmod/Tool:GetServerInfo]
--- @param name string @ Name of the convar to retrieve. The function will automatically add the "mytoolfilename_" part to it.
--- @return string
function Tool:GetServerInfo(name) end

--- (client/server) Returns the current stage of the tool set by [Tool:SetStage](https://wiki.facepunch.com/gmod/Tool:SetStage). 
--- [https://wiki.facepunch.com/gmod/Tool:GetStage]
--- @return number
function Tool:GetStage() end

--- (client/server) Initializes the ghost entity with the given model. Removes any old ghost entity if called multiple times.The ghost is a regular prop_physics entity in singleplayer games, and a clientside prop in multiplayer games. 
--- [https://wiki.facepunch.com/gmod/Tool:MakeGhostEntity]
--- @param model string @ The model of the new ghost entity
--- @param pos Vector @ Position to initialize the ghost entity at, usually not needed since this is updated in [Tool:UpdateGhostEntity](https://wiki.facepunch.com/gmod/Tool:UpdateGhostEntity).
--- @param angle Angle @ Angle to initialize the ghost entity at, usually not needed since this is updated in [Tool:UpdateGhostEntity](https://wiki.facepunch.com/gmod/Tool:UpdateGhostEntity).
--- @return void
function Tool:MakeGhostEntity(model, pos, angle) end

--- (client/server) Returns the amount of stored objects ( [Entity](https://wiki.facepunch.com/gmod/Entity)s ) the tool has. 
--- [https://wiki.facepunch.com/gmod/Tool:NumObjects]
--- @return number
function Tool:NumObjects() end

--- (client/server) Removes any ghost entity created for this tool. 
--- [https://wiki.facepunch.com/gmod/Tool:ReleaseGhostEntity]
--- @return void
function Tool:ReleaseGhostEntity() end

--- (client/server) Stores an [Entity](https://wiki.facepunch.com/gmod/Entity) for later use in the tool.The stored values can be retrieved by [Tool:GetEnt](https://wiki.facepunch.com/gmod/Tool:GetEnt), [Tool:GetPos](https://wiki.facepunch.com/gmod/Tool:GetPos), [Tool:GetLocalPos](https://wiki.facepunch.com/gmod/Tool:GetLocalPos), [Tool:GetPhys](https://wiki.facepunch.com/gmod/Tool:GetPhys), [Tool:GetBone](https://wiki.facepunch.com/gmod/Tool:GetBone) and [Tool:GetNormal](https://wiki.facepunch.com/gmod/Tool:GetNormal) 
--- [https://wiki.facepunch.com/gmod/Tool:SetObject]
--- @param id number @ The id of the object to store.
--- @param ent Entity @ The entity to store.
--- @param pos Vector @ The position to store.
--- @param phys PhysObj @ The physics object to store.
--- @param bone number @ The hit bone to store.
--- @param normal Vector @ The hit normal to store.
--- @return void
function Tool:SetObject(id, ent, pos, phys, bone, normal) end

--- (client/server) Sets the current operation of the tool. Does nothing clientside. See also [Tool:SetStage](https://wiki.facepunch.com/gmod/Tool:SetStage).Operations and stages work as follows:* Operation 1* * Stage 1* * Stage 2* * Stage 3* Operation 2* * Stage 1* * Stage 2* * Stage ... 
--- [https://wiki.facepunch.com/gmod/Tool:SetOperation]
--- @param operation number @ The new operation ID to set.
--- @return void
function Tool:SetOperation(operation) end

--- (client/server) Sets the current stage of the tool. Does nothing clientside.See also [Tool:SetOperation](https://wiki.facepunch.com/gmod/Tool:SetOperation). 
--- [https://wiki.facepunch.com/gmod/Tool:SetStage]
--- @param stage number @ The new stage to set.
--- @return void
function Tool:SetStage(stage) end

--- (client/server) Initializes the ghost entity based on the supplied entity. 
--- [https://wiki.facepunch.com/gmod/Tool:StartGhostEntity]
--- @param ent Entity @ The entity to copy ghost parameters off
--- @return void
function Tool:StartGhostEntity(ent) end

--- (client/server) Sets the tool's stage to how many stored objects the tool has. 
--- [https://wiki.facepunch.com/gmod/Tool:UpdateData]
--- @return void
function Tool:UpdateData() end

--- (client/server) Updates the position and orientation of the ghost entity based on where the toolgun owner is looking along with data from object with id 1 set by [Tool:SetObject](https://wiki.facepunch.com/gmod/Tool:SetObject).This should be called in the tool's [TOOL:Think](https://wiki.facepunch.com/gmod/TOOL:Think) hook.This command is only used for tools that move props, such as easy weld, axis and motor. If you want to update a ghost like the thruster tool does it for example, check its [source code](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/gamemodes/sandbox/entities/weapons/gmod_tool/stools/thruster.lua#L179). 
--- [https://wiki.facepunch.com/gmod/Tool:UpdateGhostEntity]
--- @return void
function Tool:UpdateGhostEntity() end

