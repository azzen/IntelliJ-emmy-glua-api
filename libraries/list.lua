--- @class list
list = {}

--- (client/menu/server) Adds an item to a named list 
--- [https://wiki.facepunch.com/gmod/list.Add]
--- @param identifier string @ The list identifier
--- @param item any @ The item to add to the list
--- @return number
function list.Add(identifier, item) end

--- (client/menu/server) Returns true if the list contains the value. (as a value - not a key)
--- For a function that looks for a key and not a value see [list.HasEntry](https://wiki.facepunch.com/gmod/list.HasEntry). 
--- [https://wiki.facepunch.com/gmod/list.Contains]
--- @param list string @ List to search through
--- @param value any @ The value to test
--- @return boolean
function list.Contains(list, value) end

--- (client/menu/server) Returns a copy of the list stored at identifier 
--- [https://wiki.facepunch.com/gmod/list.Get]
--- @param identifier string @ The list identifier
--- @return table
function list.Get(identifier) end

--- (client/menu/server) Returns the actual table of the list stored at identifier. Modifying this will affect the stored list 
--- [https://wiki.facepunch.com/gmod/list.GetForEdit]
--- @param identifier string @ The list identifier
--- @return table
function list.GetForEdit(identifier) end

--- (client/menu/server) Returns a a list of all lists currently in use. 
--- [https://wiki.facepunch.com/gmod/list.GetTable]
--- @return table
function list.GetTable() end

--- (client/menu/server) Returns true if the list contains the given key.
--- For a function that looks for values and not keys see [list.Contains](https://wiki.facepunch.com/gmod/list.Contains). 
--- [https://wiki.facepunch.com/gmod/list.HasEntry]
--- @param list string @ List to search through
--- @param key any @ The key to test
--- @return boolean
function list.HasEntry(list, key) end

--- (client/menu/server) Sets a specific position in the named list to a value. 
--- [https://wiki.facepunch.com/gmod/list.Set]
--- @param identifier string @ The list identifier
--- @param key any @ The key in the list to set
--- @param item any @ The item to set to the list as key
--- @return void
function list.Set(identifier, key, item) end

