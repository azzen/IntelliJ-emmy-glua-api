--- @class saverestore
saverestore = {}

--- (client/server) Adds a restore/load hook for the Half-Life 2 save system. 
--- [https://wiki.facepunch.com/gmod/saverestore.AddRestoreHook]
--- @param identifier string @ The unique identifier for this hook.
--- @param callback function @ The function to be called when an engine save is being loaded. It has one argument:[IRestore](https://wiki.facepunch.com/gmod/IRestore) save - The restore object to be used to read data from save file that is being loadedYou can also use those functions to read data:[saverestore.ReadVar](https://wiki.facepunch.com/gmod/saverestore.ReadVar)[saverestore.ReadTable](https://wiki.facepunch.com/gmod/saverestore.ReadTable)[saverestore.LoadEntity](https://wiki.facepunch.com/gmod/saverestore.LoadEntity)
--- @return void
function saverestore.AddRestoreHook(identifier, callback) end

--- (client/server) Adds a save hook for the Half-Life 2 save system. You can this to carry data through level transitions in Half-Life 2. 
--- [https://wiki.facepunch.com/gmod/saverestore.AddSaveHook]
--- @param identifier string @ The unique identifier for this hook.
--- @param callback function @ The function to be called when an engine save is being saved. It has one argument:[ISave](https://wiki.facepunch.com/gmod/ISave) save - The save object to be used to write data to the save file that is being savedYou can also use those functions to save data:[saverestore.WriteVar](https://wiki.facepunch.com/gmod/saverestore.WriteVar)[saverestore.WriteTable](https://wiki.facepunch.com/gmod/saverestore.WriteTable)[saverestore.SaveEntity](https://wiki.facepunch.com/gmod/saverestore.SaveEntity)
--- @return void
function saverestore.AddSaveHook(identifier, callback) end

--- (client/server) Loads [Entity:GetTable](https://wiki.facepunch.com/gmod/Entity:GetTable) from the save game file that is being loaded and merges it with the given entitys [Entity:GetTable](https://wiki.facepunch.com/gmod/Entity:GetTable). 
--- [https://wiki.facepunch.com/gmod/saverestore.LoadEntity]
--- @param ent Entity @ The entity which will receive the loaded values from the save.
--- @param save IRestore @ The restore object to read the [Entity:GetTable](https://wiki.facepunch.com/gmod/Entity:GetTable) from.
--- @return void
function saverestore.LoadEntity(ent, save) end

--- (client/server) Called by engine when a save is being loaded.This handles loading gamemode and calls all of the hooks added with [saverestore.AddRestoreHook](https://wiki.facepunch.com/gmod/saverestore.AddRestoreHook). 
--- [https://wiki.facepunch.com/gmod/saverestore.LoadGlobal]
--- @param save IRestore @ The restore object to read data from the save file with.
--- @return void
function saverestore.LoadGlobal(save) end

--- (client/server) Called by the engine just before [saverestore.LoadGlobal](https://wiki.facepunch.com/gmod/saverestore.LoadGlobal) is. 
--- [https://wiki.facepunch.com/gmod/saverestore.PreRestore]
--- @return void
function saverestore.PreRestore() end

--- (client/server) Called by the engine just before [saverestore.SaveGlobal](https://wiki.facepunch.com/gmod/saverestore.SaveGlobal) is. 
--- [https://wiki.facepunch.com/gmod/saverestore.PreSave]
--- @return void
function saverestore.PreSave() end

--- (client/server) Reads a table from the save game file that is being loaded. 
--- [https://wiki.facepunch.com/gmod/saverestore.ReadTable]
--- @param save IRestore @ The restore object to read the table from.
--- @return table
function saverestore.ReadTable(save) end

--- (client/server) Loads a variable from the save game file that is being loaded.Variables will be read in the save order you have saved them. 
--- [https://wiki.facepunch.com/gmod/saverestore.ReadVar]
--- @param save IRestore @ The restore object to read variables from.
--- @return any
function saverestore.ReadVar(save) end

--- (client/server) Saves entitys [Entity:GetTable](https://wiki.facepunch.com/gmod/Entity:GetTable) to the save game file that is being saved. 
--- [https://wiki.facepunch.com/gmod/saverestore.SaveEntity]
--- @param ent Entity @ The entity to save [Entity:GetTable](https://wiki.facepunch.com/gmod/Entity:GetTable) of.
--- @param save ISave @ The save object to save [Entity:GetTable](https://wiki.facepunch.com/gmod/Entity:GetTable) to.
--- @return void
function saverestore.SaveEntity(ent, save) end

--- (client/server) Called by engine when a save is being saved.This handles saving gamemode and calls all of the hooks added with [saverestore.AddSaveHook](https://wiki.facepunch.com/gmod/saverestore.AddSaveHook). 
--- [https://wiki.facepunch.com/gmod/saverestore.SaveGlobal]
--- @param save ISave @ The save object to write data into the save file.
--- @return void
function saverestore.SaveGlobal(save) end

--- (client/server) Returns how many writable keys are in the given table. 
--- [https://wiki.facepunch.com/gmod/saverestore.WritableKeysInTable]
--- @param table table @ The table to test.
--- @return number
function saverestore.WritableKeysInTable(table) end

--- (client/server) Write a table to a save game file that is being saved. 
--- [https://wiki.facepunch.com/gmod/saverestore.WriteTable]
--- @param table table @ The table to write
--- @param save ISave @ The save object to write the table to.
--- @return void
function saverestore.WriteTable(table, save) end

--- (client/server) Writes a variable to the save game file that is being saved. 
--- [https://wiki.facepunch.com/gmod/saverestore.WriteVar]
--- @param value any @ The value to save.It can be one of the following types: [number](https://wiki.facepunch.com/gmod/number), [boolean](https://wiki.facepunch.com/gmod/boolean), [string](https://wiki.facepunch.com/gmod/string), [Entity](https://wiki.facepunch.com/gmod/Entity), [Angle](https://wiki.facepunch.com/gmod/Angle), [Vector](https://wiki.facepunch.com/gmod/Vector) or [table](https://wiki.facepunch.com/gmod/table).
--- @param save ISave @ The save object to write the variable to.
--- @return void
function saverestore.WriteVar(value, save) end

