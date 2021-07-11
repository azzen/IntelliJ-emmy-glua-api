--- @class cookie
cookie = {}

--- (client/menu/server) Deletes a cookie on the client. 
--- [https://wiki.facepunch.com/gmod/cookie.Delete]
--- @param name string @ The name of the cookie that you want to delete.
--- @return void
function cookie.Delete(name) end

--- (client/menu/server) Gets the value of a cookie on the client as a number. 
--- [https://wiki.facepunch.com/gmod/cookie.GetNumber]
--- @param name string @ The name of the cookie that you want to get.
--- @param default any @ Value to return if the cookie does not exist.
--- @return number
function cookie.GetNumber(name, default) end

--- (client/menu/server) Gets the value of a cookie on the client as a string. 
--- [https://wiki.facepunch.com/gmod/cookie.GetString]
--- @param name string @ The name of the cookie that you want to get.
--- @param default any @ Value to return if the cookie does not exist.
--- @return string
function cookie.GetString(name, default) end

--- (client/menu/server) Sets the value of a cookie, which is saved automatically by the [sql](https://wiki.facepunch.com/gmod/sql).These are stored in the *.db files - cl.db for clients, mn.db for menu state and sv.db for servers. 
--- [https://wiki.facepunch.com/gmod/cookie.Set]
--- @param key string @ The name of the cookie that you want to set.
--- @param value string @ Value to store in the cookie.
--- @return void
function cookie.Set(key, value) end

