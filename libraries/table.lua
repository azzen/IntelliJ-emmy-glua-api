--- @class table
table = {}

--- (client/menu/server) Adds the contents from one table into another. The target table will be modified.See also [table.insert](https://wiki.facepunch.com/gmod/table.insert), [table.Inherit](https://wiki.facepunch.com/gmod/table.Inherit) and [table.Merge](https://wiki.facepunch.com/gmod/table.Merge). 
--- [https://wiki.facepunch.com/gmod/table.Add]
--- @param target table @ The table to insert the new values into.
--- @param source table @ The table to retrieve the values from.
--- @return table
function table.Add(target, source) end

--- (client/menu/server) Changes all keys to sequential integers. This creates a new table object and does not affect the original. 
--- [https://wiki.facepunch.com/gmod/table.ClearKeys]
--- @param table table @ The original table to modify.
--- @param saveKeys boolean @ Save the keys within each member table. This will insert a new field `__key` into each value, and should not be used if the table contains non-table values.
--- @return table
function table.ClearKeys(table, saveKeys) end

--- (client/menu/server) Collapses a table with keyvalue structure 
--- [https://wiki.facepunch.com/gmod/table.CollapseKeyValue]
--- @param input table @ Input table
--- @return table
function table.CollapseKeyValue(input) end

--- (client/menu/server) Concatenates the contents of a table to a string. 
--- [https://wiki.facepunch.com/gmod/table.concat]
--- @param tbl table @ The table to concatenate.
--- @param concatenator string @ A separator to insert between strings
--- @param startPos number @ The key to start at
--- @param endPos number @ The key to end at
--- @return string
function table.concat(tbl, concatenator, startPos, endPos) end

--- (client/menu/server) Creates a deep copy and returns that copy. 
--- [https://wiki.facepunch.com/gmod/table.Copy]
--- @param originalTable table @ The table to be copied.
--- @return table
function table.Copy(originalTable) end

--- (client/menu/server) Empties the target table, and merges all values from the source table into it. 
--- [https://wiki.facepunch.com/gmod/table.CopyFromTo]
--- @param source table @ The table to copy from.
--- @param target table @ The table to write to.
--- @return void
function table.CopyFromTo(source, target) end

--- (client/menu/server) Counts the amount of keys in a table. This should only be used when a table is not numerically and sequentially indexed. For those tables, consider the length (**#**) operator.If you only want to test if the table is empty or not, use [table.IsEmpty](https://wiki.facepunch.com/gmod/table.IsEmpty) instead as it is a lot faster. 
--- [https://wiki.facepunch.com/gmod/table.Count]
--- @param tbl table @ The table to count the keys of.
--- @return number
function table.Count(tbl) end

--- (client/menu/server) Converts a table that has been sanitised with [table.Sanitise](https://wiki.facepunch.com/gmod/table.Sanitise) back to its original form 
--- [https://wiki.facepunch.com/gmod/table.DeSanitise]
--- @param tbl table @ Table to be de-sanitised
--- @return table
function table.DeSanitise(tbl) end

--- (client/menu/server) Removes all values from a table. 
--- [https://wiki.facepunch.com/gmod/table.Empty]
--- @param tbl table @ The table to empty.
--- @return void
function table.Empty(tbl) end

--- (client/menu/server) Returns the value positioned after the supplied value in a table. If it isn't found then the first element in the table is returned 
--- [https://wiki.facepunch.com/gmod/table.FindNext]
--- @param tbl table @ Table to search
--- @param value any @ Value to return element after
--- @return any
function table.FindNext(tbl, value) end

--- (client/menu/server) Returns the value positioned before the supplied value in a table. If it isn't found then the last element in the table is returned 
--- [https://wiki.facepunch.com/gmod/table.FindPrev]
--- @param tbl table @ Table to search
--- @param value any @ Value to return element before
--- @return any
function table.FindPrev(tbl, value) end

--- (client/menu/server) Inserts a value in to the given table even if the table is non-existent 
--- [https://wiki.facepunch.com/gmod/table.ForceInsert]
--- @param tab table @ Table to insert value in to
--- @param value any @ Value to insert
--- @return table
function table.ForceInsert(tab, value) end

--- (client/menu/server) Iterates for each key-value pair in the table, calling the function with the key and value of the pair. If the function returns anything, the loop is broken.This is inherited from the original Lua implementation and is deprecated in Lua as of 5.1; see [here](http://lua-users.org/wiki/TableLibraryTutorial). You should use [pairs](https://wiki.facepunch.com/gmod/Global.pairs) instead. The GLua interpretation of this is [table.ForEach](https://wiki.facepunch.com/gmod/table.ForEach). 
--- [https://wiki.facepunch.com/gmod/table.foreach]
--- @param tbl table @ The table to iterate over.
--- @param callback function @ The function to run for each key and value.
--- @return void
function table.foreach(tbl, callback) end

--- (client/menu/server) Iterates for each numeric index in the table in order.This is inherited from the original Lua implementation and is deprecated in Lua as of 5.1; see [here](http://lua-users.org/wiki/TableLibraryTutorial). You should use [ipairs](https://wiki.facepunch.com/gmod/Global.ipairs)() instead. 
--- [https://wiki.facepunch.com/gmod/table.foreachi]
--- @param table table @ The table to iterate over.
--- @param func function @ The function to run for each index.
--- @return void
function table.foreachi(table, func) end

--- (client/menu/server) Returns the first key found in the given table 
--- [https://wiki.facepunch.com/gmod/table.GetFirstKey]
--- @param tab table @ Table to retrieve key from
--- @return any
function table.GetFirstKey(tab) end

--- (client/menu/server) Returns the first value found in the given table 
--- [https://wiki.facepunch.com/gmod/table.GetFirstValue]
--- @param tab table @ Table to retrieve value from
--- @return any
function table.GetFirstValue(tab) end

--- (client/menu/server) Returns all keys of a table. 
--- [https://wiki.facepunch.com/gmod/table.GetKeys]
--- @param tabl table @ The table to get keys of
--- @return table
function table.GetKeys(tabl) end

--- (client/menu/server) Returns the last key found in the given table 
--- [https://wiki.facepunch.com/gmod/table.GetLastKey]
--- @param tab table @ Table to retrieve key from
--- @return any
function table.GetLastKey(tab) end

--- (client/menu/server) Returns the last value found in the given table 
--- [https://wiki.facepunch.com/gmod/table.GetLastValue]
--- @param tab table @ Table to retrieve value from
--- @return any
function table.GetLastValue(tab) end

--- (client/menu/server) Returns the length of the table. 
--- [https://wiki.facepunch.com/gmod/table.getn]
--- @param tbl table @ The table to check.
--- @return number
function table.getn(tbl) end

--- (client/menu/server) Returns a key of the supplied table with the highest number value. 
--- [https://wiki.facepunch.com/gmod/table.GetWinningKey]
--- @param inputTable table @ The table to search in.
--- @return any
function table.GetWinningKey(inputTable) end

--- (client/menu/server) Checks if a table has a value. 
--- [https://wiki.facepunch.com/gmod/table.HasValue]
--- @param tbl table @ Table to check
--- @param value any @ Value to search for
--- @return boolean
function table.HasValue(tbl, value) end

--- (client/menu/server) Copies any missing data from base to target, and sets the target's `BaseClass` member to the base table's pointer.See [table.Merge](https://wiki.facepunch.com/gmod/table.Merge), which overrides existing values and doesn't add a BaseClass member.See also [table.Add](https://wiki.facepunch.com/gmod/table.Add), which simply adds values of one table to another. 
--- [https://wiki.facepunch.com/gmod/table.Inherit]
--- @param target table @ Table to copy data to
--- @param base table @ Table to copy data from
--- @return table
function table.Inherit(target, base) end

--- (client/menu/server) Inserts a value into a table at the end of the table or at the given position. 
--- [https://wiki.facepunch.com/gmod/table.insert]
--- @param tbl table @ The table to insert the variable into.
--- @param position number @ The position in the table to insert the variable. If the third argument is nil this argument becomes the value to insert at the end of given table.
--- @param value any @ The variable to insert into the table.
--- @return number
function table.insert(tbl, position, value) end

--- (client/menu/server) Returns whether or not the given table is empty.This works on both sequential and non-sequential tables, and is a lot faster to use than `table.Count(tbl) == 0`. 
--- [https://wiki.facepunch.com/gmod/table.IsEmpty]
--- @param tab table @ Table to check.
--- @return boolean
function table.IsEmpty(tab) end

--- (client/menu/server) Returns whether or not the table's keys are sequential 
--- [https://wiki.facepunch.com/gmod/table.IsSequential]
--- @param tab table @ Table to check
--- @return boolean
function table.IsSequential(tab) end

--- (client/menu/server) Returns the first key found to be containing the supplied value 
--- [https://wiki.facepunch.com/gmod/table.KeyFromValue]
--- @param tab table @ Table to search
--- @param value any @ Value to search for
--- @return any
function table.KeyFromValue(tab, value) end

--- (client/menu/server) Returns a table of keys containing the supplied value 
--- [https://wiki.facepunch.com/gmod/table.KeysFromValue]
--- @param tab table @ Table to search
--- @param value any @ Value to search for
--- @return table
function table.KeysFromValue(tab, value) end

--- (client/menu/server) Returns a copy of the input table with all string keys converted to be lowercase recursively 
--- [https://wiki.facepunch.com/gmod/table.LowerKeyNames]
--- @param tbl table @ Table to convert
--- @return table
function table.LowerKeyNames(tbl) end

--- (client/menu/server) Returns the highest numerical key. 
--- [https://wiki.facepunch.com/gmod/table.maxn]
--- @param tbl table @ The table to search.
--- @return number
function table.maxn(tbl) end

--- (client/menu/server) Merges the contents of the second table with the content in the first one. The destination table will be modified.See [table.Inherit](https://wiki.facepunch.com/gmod/table.Inherit), which doesn't override existing values.See also [table.Add](https://wiki.facepunch.com/gmod/table.Add), which simply adds values of one table to another. 
--- [https://wiki.facepunch.com/gmod/table.Merge]
--- @param destination table @ The table you want the source table to merge with
--- @param source table @ The table you want to merge with the destination table
--- @return table
function table.Merge(destination, source) end

--- (client/menu/server) Returns a random value from the supplied table. 
--- [https://wiki.facepunch.com/gmod/table.Random]
--- @param haystack table @ The table to choose from.
--- @return any|any
function table.Random(haystack) end

--- (client/menu/server) Removes a value from a table and shifts any other values down to fill the gap. 
--- [https://wiki.facepunch.com/gmod/table.remove]
--- @param tbl table @ The table to remove the value from.
--- @param index number @ The index of the value to remove.
--- @return any
function table.remove(tbl, index) end

--- (client/menu/server) Removes the first instance of a given value from the specified table with [table.remove](https://wiki.facepunch.com/gmod/table.remove), then returns the key that the value was found at. 
--- [https://wiki.facepunch.com/gmod/table.RemoveByValue]
--- @param tbl table @ The table that will be searched.
--- @param val any @ The value to find within the table.
--- @return any
function table.RemoveByValue(tbl, val) end

--- (client/menu/server) Returns a reversed copy of a sequential table. Any non-sequential and non-numeric keyvalue pairs will not be copied. 
--- [https://wiki.facepunch.com/gmod/table.Reverse]
--- @param tbl table @ Table to reverse.
--- @return table
function table.Reverse(tbl) end

--- (client/menu/server) Converts [Vector](https://wiki.facepunch.com/gmod/Vector)s, [Angle](https://wiki.facepunch.com/gmod/Angle)s and [boolean](https://wiki.facepunch.com/gmod/boolean)s to be able to be converted to and from key-values. [table.DeSanitise](https://wiki.facepunch.com/gmod/table.DeSanitise) does the opposite 
--- [https://wiki.facepunch.com/gmod/table.Sanitise]
--- @param tab table @ Table to sanitise
--- @return table
function table.Sanitise(tab) end

--- (client/menu/server) Sorts a sequential table either ascending or by the given sort function. 
--- [https://wiki.facepunch.com/gmod/table.sort]
--- @param tbl table @ The table to sort.
--- @param sorter function @ If specified, the function will be called with 2 parameters each.Return true in this function if you want the first parameter to come first in the sorted array.
--- @return void
function table.sort(tbl, sorter) end

--- (client/menu/server) Returns a list of keys sorted based on values of those keys.For normal sorting see [table.sort](https://wiki.facepunch.com/gmod/table.sort). 
--- [https://wiki.facepunch.com/gmod/table.SortByKey]
--- @param tab table @ Table to sort. All values of this table must be of same type.
--- @param descending boolean @ Should the order be descending?
--- @return table
function table.SortByKey(tab, descending) end

--- (client/menu/server) Sorts a table by a named member. 
--- [https://wiki.facepunch.com/gmod/table.SortByMember]
--- @param tab table @ Table to sort.
--- @param memberKey any @ The key used to identify the member.
--- @param ascending boolean @ Whether or not the order should be ascending.
--- @return void
function table.SortByMember(tab, memberKey, ascending) end

--- (client/menu/server) Sorts a table in reverse order from [table.sort](https://wiki.facepunch.com/gmod/table.sort). 
--- [https://wiki.facepunch.com/gmod/table.SortDesc]
--- @param tbl table @ The table to sort in descending order.
--- @return void
function table.SortDesc(tbl) end

--- (client/menu/server) Converts a table into a string 
--- [https://wiki.facepunch.com/gmod/table.ToString]
--- @param tbl table @ The table to iterate over.
--- @param displayName string @ Optional. A name for the table.
--- @param niceFormatting boolean @ Adds new lines and tabs to the string.
--- @return string
function table.ToString(tbl, displayName, niceFormatting) end

