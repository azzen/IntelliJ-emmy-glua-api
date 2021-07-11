--- @class sql
sql = {}

--- (client/menu/server) Tells the engine a set of queries is coming. Will wait until [sql.Commit](https://wiki.facepunch.com/gmod/sql.Commit) is called to run them.
--- This is most useful when you run more than 100+ queries.
--- This is equivalent to :
--- ```
--- sql.Query( "BEGIN;" )
--- ``` 
--- [https://wiki.facepunch.com/gmod/sql.Begin]
--- @return void
function sql.Begin() end

--- (client/menu/server) Tells the engine to execute a series of queries queued for execution, must be preceded by [sql.Begin](https://wiki.facepunch.com/gmod/sql.Begin).
--- This is equivalent to `sql.Query( "COMMIT;" )`. 
--- [https://wiki.facepunch.com/gmod/sql.Commit]
--- @return void
function sql.Commit() end

--- (client/menu/server) Returns true if the index with the specified name exists. 
--- [https://wiki.facepunch.com/gmod/sql.IndexExists]
--- @param indexName string @ The name of the index to check.
--- @return boolean
function sql.IndexExists(indexName) end

--- (client/menu/server) Returns the last error from a SQLite query. 
--- [https://wiki.facepunch.com/gmod/sql.LastError]
--- @return string
function sql.LastError() end

--- (client/menu/server) Performs a query on the local SQLite database, returns a table as result set, nil if result is empty and false on error. 
--- [https://wiki.facepunch.com/gmod/sql.Query]
--- @param query string @ The query to execute.
--- @return table
function sql.Query(query) end

--- (client/menu/server) Performs the query like [sql.Query](https://wiki.facepunch.com/gmod/sql.Query), but returns the first row found.
--- Basically equivalent to :
--- ```
--- sql.Query( "*query* LIMIT 1;" )
--- ``` 
--- [https://wiki.facepunch.com/gmod/sql.QueryRow]
--- @param query string @ The input query.
--- @param row number @ The row number. Say we receive back 5 rows, putting 3 as this argument will give us row #3.
--- @return table
function sql.QueryRow(query, row) end

--- (client/menu/server) Performs the query like [sql.QueryRow](https://wiki.facepunch.com/gmod/sql.QueryRow), but returns the first value found. 
--- [https://wiki.facepunch.com/gmod/sql.QueryValue]
--- @param query string @ The input query.
--- @return string
function sql.QueryValue(query) end

--- (client/menu/server) Escapes dangerous characters and symbols from user input used in an SQLite SQL Query. 
--- [https://wiki.facepunch.com/gmod/sql.SQLStr]
--- @param string string @ The string to be escaped.
--- @param bNoQuotes boolean @ Set this as `true`, and the function will not wrap the input string in apostrophes.
--- @return string
function sql.SQLStr(string, bNoQuotes) end

--- (client/menu/server) Returns true if the table with the specified name exists. 
--- [https://wiki.facepunch.com/gmod/sql.TableExists]
--- @param tableName string @ The name of the table to check.
--- @return boolean
function sql.TableExists(tableName) end

