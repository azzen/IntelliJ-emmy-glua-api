--- @class duplicator
duplicator = {}

--- (client/server) Allow this entity to be duplicated 
--- [https://wiki.facepunch.com/gmod/duplicator.Allow]
--- @param classname string @ An entity's classname
--- @return void
function duplicator.Allow(classname) end

--- (server) Calls every function registered with [duplicator.RegisterBoneModifier](https://wiki.facepunch.com/gmod/duplicator.RegisterBoneModifier) on each bone the ent has. 
--- [https://wiki.facepunch.com/gmod/duplicator.ApplyBoneModifiers]
--- @param ply Player @ The player whose entity this is
--- @param ent Entity @ The entity in question
--- @return void
function duplicator.ApplyBoneModifiers(ply, ent) end

--- (server) Calls every function registered with [duplicator.RegisterEntityModifier](https://wiki.facepunch.com/gmod/duplicator.RegisterEntityModifier) on the entity. 
--- [https://wiki.facepunch.com/gmod/duplicator.ApplyEntityModifiers]
--- @param ply Player @ The player whose entity this is
--- @param ent Entity @ The entity in question
--- @return void
function duplicator.ApplyEntityModifiers(ply, ent) end

--- (server) Clears/removes the chosen entity modifier from the entity. 
--- [https://wiki.facepunch.com/gmod/duplicator.ClearEntityModifier]
--- @param ent Entity @ The entity the modification is stored on
--- @param key any @ The key of the stored entity modifier
--- @return void
function duplicator.ClearEntityModifier(ent, key) end

--- (server) Copies the entity, and all of its constraints and entities, then returns them in a table. 
--- [https://wiki.facepunch.com/gmod/duplicator.Copy]
--- @param ent Entity @ The entity to duplicate. The function will automatically copy all constrained entities.
--- @param tableToAdd table @ A preexisting table to add entities and constraints in from.Uses the same table format as the table returned from this function.
--- @return table
function duplicator.Copy(ent, tableToAdd) end

--- (server) Copies the passed table of entities to save for later. 
--- [https://wiki.facepunch.com/gmod/duplicator.CopyEnts]
--- @param ents table @ A table of entities to save/copy.
--- @return table
function duplicator.CopyEnts(ents) end

--- (server) Returns a table with some entity data that can be used to create a new entity with [duplicator.CreateEntityFromTable](https://wiki.facepunch.com/gmod/duplicator.CreateEntityFromTable) 
--- [https://wiki.facepunch.com/gmod/duplicator.CopyEntTable]
--- @param ent Entity @ The entity table to save
--- @return table
function duplicator.CopyEntTable(ent) end

--- (server) Creates a constraint from a saved/copied constraint table. 
--- [https://wiki.facepunch.com/gmod/duplicator.CreateConstraintFromTable]
--- @param constraint table @ Saved/copied constraint table
--- @param entityList table @ The list of entities that are to be constrained
--- @return Entity
function duplicator.CreateConstraintFromTable(constraint, entityList) end

--- (server) "Create an entity from a table." This creates an entity using the data in EntTable.If an entity factory has been registered for the entity's Class, it will be called. Otherwise, [duplicator.GenericDuplicatorFunction](https://wiki.facepunch.com/gmod/duplicator.GenericDuplicatorFunction) will be called instead. 
--- [https://wiki.facepunch.com/gmod/duplicator.CreateEntityFromTable]
--- @param ply Player @ The player who wants to create something
--- @param entTable table @ The duplication data to build the entity with. See [EntityCopyData](https://wiki.facepunch.com/gmod/Structures/EntityCopyData)
--- @return Entity
function duplicator.CreateEntityFromTable(ply, entTable) end

--- (server) "Restores the bone's data."Loops through Bones and calls [Entity:ManipulateBoneScale](https://wiki.facepunch.com/gmod/Entity:ManipulateBoneScale), [Entity:ManipulateBoneAngles](https://wiki.facepunch.com/gmod/Entity:ManipulateBoneAngles) and [Entity:ManipulateBonePosition](https://wiki.facepunch.com/gmod/Entity:ManipulateBonePosition) on ent with the table keys and the subtable values s, a and p respectively. 
--- [https://wiki.facepunch.com/gmod/duplicator.DoBoneManipulator]
--- @param ent Entity @ The entity to be bone manipulated
--- @param bones table @ Table with a [BoneManipulationData](https://wiki.facepunch.com/gmod/Structures/BoneManipulationData) for every bone (that has manipulations applied) using the bone ID as the table index.
--- @return void
function duplicator.DoBoneManipulator(ent, bones) end

--- (server) Restores the flex data using [Entity:SetFlexWeight](https://wiki.facepunch.com/gmod/Entity:SetFlexWeight) and [Entity:SetFlexScale](https://wiki.facepunch.com/gmod/Entity:SetFlexScale) 
--- [https://wiki.facepunch.com/gmod/duplicator.DoFlex]
--- @param ent Entity @ The entity to restore the flexes on
--- @param flex table @ The flexes to restore
--- @param scale number @ The flex scale to apply. (Flex scale is unchanged if omitted)
--- @return void
function duplicator.DoFlex(ent, flex, scale) end

--- (server) "Applies generic every-day entity stuff for ent from table data."Depending on the values of Model, Angle, Pos, Skin, Flex, Bonemanip, ModelScale, ColGroup, Name, and BodyG ([table](https://wiki.facepunch.com/gmod/table) of multiple values) in the data table, this calls [Entity:SetModel](https://wiki.facepunch.com/gmod/Entity:SetModel), [Entity:SetAngles](https://wiki.facepunch.com/gmod/Entity:SetAngles), [Entity:SetPos](https://wiki.facepunch.com/gmod/Entity:SetPos), [Entity:SetSkin](https://wiki.facepunch.com/gmod/Entity:SetSkin), [duplicator.DoFlex](https://wiki.facepunch.com/gmod/duplicator.DoFlex), [duplicator.DoBoneManipulator](https://wiki.facepunch.com/gmod/duplicator.DoBoneManipulator), [Entity:SetModelScale](https://wiki.facepunch.com/gmod/Entity:SetModelScale), [Entity:SetCollisionGroup](https://wiki.facepunch.com/gmod/Entity:SetCollisionGroup), [Entity:SetName](https://wiki.facepunch.com/gmod/Entity:SetName), [Entity:SetBodygroup](https://wiki.facepunch.com/gmod/Entity:SetBodygroup) on ent.If ent has a RestoreNetworkVars function, it is called with data.DT. 
--- [https://wiki.facepunch.com/gmod/duplicator.DoGeneric]
--- @param ent Entity @ The entity to be applied upon
--- @param data table @ The data to be applied onto the entity
--- @return void
function duplicator.DoGeneric(ent, data) end

--- (server) "Applies bone data, generically."If data contains a PhysicsObjects table, it moves, re-angles and if relevent freezes all specified bones, first converting from local coordinates to world coordinates. 
--- [https://wiki.facepunch.com/gmod/duplicator.DoGenericPhysics]
--- @param ent Entity @ The entity to be applied upon
--- @param ply Player @ The player who owns the entity. Unused in function as of early 2013
--- @param data table @ The data to be applied onto the entity
--- @return void
function duplicator.DoGenericPhysics(ent, ply, data) end

--- (client/server) Returns the entity class factory registered with [duplicator.RegisterEntityClass](https://wiki.facepunch.com/gmod/duplicator.RegisterEntityClass). 
--- [https://wiki.facepunch.com/gmod/duplicator.FindEntityClass]
--- @param name string @ The name of the entity class factory
--- @return table
function duplicator.FindEntityClass(name) end

--- (server) "Generic function for duplicating stuff" This is called when [duplicator.CreateEntityFromTable](https://wiki.facepunch.com/gmod/duplicator.CreateEntityFromTable) can't find an entity factory to build with. It calls [duplicator.DoGeneric](https://wiki.facepunch.com/gmod/duplicator.DoGeneric) and [duplicator.DoGenericPhysics](https://wiki.facepunch.com/gmod/duplicator.DoGenericPhysics) to apply standard duplicator stored things such as the model and position. 
--- [https://wiki.facepunch.com/gmod/duplicator.GenericDuplicatorFunction]
--- @param ply Player @ The player who wants to create something
--- @param data table @ The duplication data to build the entity with
--- @return Entity
function duplicator.GenericDuplicatorFunction(ply, data) end

--- (server) Fills entStorageTable with all of the entities in a group connected with constraints. Fills constraintStorageTable with all of the constrains constraining the group. 
--- [https://wiki.facepunch.com/gmod/duplicator.GetAllConstrainedEntitiesAndConstraints]
--- @param ent Entity @ The entity to start from
--- @param entStorageTable table @ The table the entities will be inserted into
--- @param constraintStorageTable table @ The table the constraints will be inserted into
--- @return table|table
function duplicator.GetAllConstrainedEntitiesAndConstraints(ent, entStorageTable, constraintStorageTable) end

--- (client/server) Returns whether the entity can be duplicated or not 
--- [https://wiki.facepunch.com/gmod/duplicator.IsAllowed]
--- @param classname string @ An entity's classname
--- @return boolean
function duplicator.IsAllowed(classname) end

--- (server) "Given entity list and constraint list, create all entities and return their tables"Calls [duplicator.CreateEntityFromTable](https://wiki.facepunch.com/gmod/duplicator.CreateEntityFromTable) on each sub-table of EntityList. If an entity is actually created, it calls [ENTITY:OnDuplicated](https://wiki.facepunch.com/gmod/ENTITY:OnDuplicated) with the entity's duplicator data, then [duplicator.ApplyEntityModifiers](https://wiki.facepunch.com/gmod/duplicator.ApplyEntityModifiers), [duplicator.ApplyBoneModifiers](https://wiki.facepunch.com/gmod/duplicator.ApplyBoneModifiers) and finally  [ENTITY:PostEntityPaste](https://wiki.facepunch.com/gmod/ENTITY:PostEntityPaste) is called.The constraints are then created with [duplicator.CreateConstraintFromTable](https://wiki.facepunch.com/gmod/duplicator.CreateConstraintFromTable). 
--- [https://wiki.facepunch.com/gmod/duplicator.Paste]
--- @param Player Player @ The player who wants to create something
--- @param EntityList table @ A table of duplicator data to create the entities from
--- @param ConstraintList table @ A table of duplicator data to create the constraints from
--- @return table|table
function duplicator.Paste(Player, EntityList, ConstraintList) end

--- (client/server) Registers a function to be called on each of an entity's bones when [duplicator.ApplyBoneModifiers](https://wiki.facepunch.com/gmod/duplicator.ApplyBoneModifiers) is called. 
--- [https://wiki.facepunch.com/gmod/duplicator.RegisterBoneModifier]
--- @param key any @ The type of the key doesn't appear to matter, but it is preferable to use a string.
--- @param boneModifier function @ Function called on each bone that an ent has. Called during [duplicator.ApplyBoneModifiers](https://wiki.facepunch.com/gmod/duplicator.ApplyBoneModifiers).Function parameters are:* [Player](https://wiki.facepunch.com/gmod/Player) ply* [Entity](https://wiki.facepunch.com/gmod/Entity) ent* [number](https://wiki.facepunch.com/gmod/number) boneID* [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) bone* [table](https://wiki.facepunch.com/gmod/table) dataThe data table that is passed to boneModifier is set with [duplicator.StoreBoneModifier](https://wiki.facepunch.com/gmod/duplicator.StoreBoneModifier)
--- @return void
function duplicator.RegisterBoneModifier(key, boneModifier) end

--- (client/server) Register a function used for creating a duplicated constraint. 
--- [https://wiki.facepunch.com/gmod/duplicator.RegisterConstraint]
--- @param name string @ The unique name of new constraint
--- @param callback function @ Function to be called when this constraint is created
--- @param ... any @ Arguments passed to the callback function
--- @return void
function duplicator.RegisterConstraint(name, callback, ...) end

--- (client/server) This allows you to specify a specific function to be run when your SENT is pasted with the duplicator, instead of relying on the generic automatic functions. 
--- [https://wiki.facepunch.com/gmod/duplicator.RegisterEntityClass]
--- @param name string @ The ClassName of the entity you wish to register a factory for
--- @param function function @ The factory function you want to have called. It should have the arguments (Player, ...) where ... is whatever arguments you request to be passed. It also should return the entity created, otherwise [duplicator.Paste](https://wiki.facepunch.com/gmod/duplicator.Paste) result will not include it!
--- @param args vararg @ Strings of the names of arguments you want passed to function the from the [EntityCopyData](https://wiki.facepunch.com/gmod/Structures/EntityCopyData). As a special case, "Data" will pass the whole structure.
--- @return void
function duplicator.RegisterEntityClass(name, function, args) end

--- (client/server) This allows you to register tweaks to entities. For instance, if you were making an "unbreakable" addon, you would use this to enable saving the "unbreakable" state of entities between duplications.This function registers a piece of generic code that is run on all entities with this modifier. In order to have it actually run, use [duplicator.StoreEntityModifier](https://wiki.facepunch.com/gmod/duplicator.StoreEntityModifier).This function does nothing when run clientside. 
--- [https://wiki.facepunch.com/gmod/duplicator.RegisterEntityModifier]
--- @param name string @ An identifier for your modification. This is not limited, so be verbose. `Person's 'Unbreakable' mod` is far less likely to cause conflicts than `unbreakable`
--- @param func function @ The function to be called for your modification. It should have the arguments (`Player`, `Entity`, `Data`), where data is what you pass to [duplicator.StoreEntityModifier](https://wiki.facepunch.com/gmod/duplicator.StoreEntityModifier).
--- @return void
function duplicator.RegisterEntityModifier(name, func) end

--- (server) Help to remove certain map created entities before creating the saved entitiesThis is obviously so we don't get duplicate props everywhere.It should be called before calling Paste. 
--- [https://wiki.facepunch.com/gmod/duplicator.RemoveMapCreatedEntities]
--- @return void
function duplicator.RemoveMapCreatedEntities() end

--- (client/server) "When a copy is copied it will be translated according to these.If you set them - make sure to set them back to 0 0 0!" 
--- [https://wiki.facepunch.com/gmod/duplicator.SetLocalAng]
--- @param v Angle @ The angle to offset all pastes from
--- @return void
function duplicator.SetLocalAng(v) end

--- (client/server) "When a copy is copied it will be translated according to these.If you set them - make sure to set them back to 0 0 0!" 
--- [https://wiki.facepunch.com/gmod/duplicator.SetLocalPos]
--- @param v Vector @ The position to offset all pastes from
--- @return void
function duplicator.SetLocalPos(v) end

--- (server) Stores bone mod data for a registered bone modification function 
--- [https://wiki.facepunch.com/gmod/duplicator.StoreBoneModifier]
--- @param ent Entity @ The entity to add bone mod data to
--- @param boneID number @ The bone ID.See [Entity:GetPhysicsObjectNum](https://wiki.facepunch.com/gmod/Entity:GetPhysicsObjectNum)
--- @param key any @ The key for the bone modification
--- @param data table @ The bone modification data that is passed to the bone modification function
--- @return void
function duplicator.StoreBoneModifier(ent, boneID, key, data) end

--- (server) Stores an entity modifier into an entity for saving 
--- [https://wiki.facepunch.com/gmod/duplicator.StoreEntityModifier]
--- @param entity Entity @ The entity to store modifier in
--- @param name string @ Unique modifier name as defined in [duplicator.RegisterEntityModifier](https://wiki.facepunch.com/gmod/duplicator.RegisterEntityModifier)
--- @param data table @ Modifier data
--- @return void
function duplicator.StoreEntityModifier(entity, name, data) end

--- (server) "Work out the AABB size" 
--- [https://wiki.facepunch.com/gmod/duplicator.WorkoutSize]
--- @param Ents table @ A table of entity duplication datums.
--- @return void
function duplicator.WorkoutSize(Ents) end

