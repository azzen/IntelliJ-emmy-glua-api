--- @class umsg
umsg = {}

--- (server) Writes an angle to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Angle]
--- @param angle Angle @ The angle to be sent.
--- @return void
function umsg.Angle(angle) end

--- (server) Writes a bool to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Bool]
--- @param bool boolean @ The bool to be sent.
--- @return void
function umsg.Bool(bool) end

--- (server) Writes a signed char to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Char]
--- @param char number @ The char to be sent.
--- @return void
function umsg.Char(char) end

--- (server) Dispatches the usermessage to the client(s). 
--- [https://wiki.facepunch.com/gmod/umsg.End]
--- @return void
function umsg.End() end

--- (server) Writes an entity object to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Entity]
--- @param entity Entity @ The entity to be sent.
--- @return void
function umsg.Entity(entity) end

--- (server) Writes a float to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Float]
--- @param float number @ The float to be sent.
--- @return void
function umsg.Float(float) end

--- (server) Writes a signed int (32 bit) to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Long]
--- @param int number @ The int to be sent.
--- @return void
function umsg.Long(int) end

--- (server) The string specified will be networked to the client and receive a identifying number, which will be sent instead of the string to optimize networking. 
--- [https://wiki.facepunch.com/gmod/umsg.PoolString]
--- @param string string @ The string to be pooled.
--- @return void
function umsg.PoolString(string) end

--- (server) Writes a signed short (16 bit) to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Short]
--- @param short number @ The short to be sent.
--- @return void
function umsg.Short(short) end

--- (server) Starts a new usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Start]
--- @param name string @ The name of the message to be sent.
--- @param filter Player @ If passed a player object, it will only be sent to the player, if passed a [CRecipientFilter](https://wiki.facepunch.com/gmod/CRecipientFilter) of players, it will be sent to all specified players, if passed nil (or another invalid value), the message will be sent to all players.
--- @return void
function umsg.Start(name, filter) end

--- (server) Writes a null terminated string to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.String]
--- @param string string @ The string to be sent.
--- @return void
function umsg.String(string) end

--- (server) Writes a Vector to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.Vector]
--- @param vector Vector @ The vector to be sent.
--- @return void
function umsg.Vector(vector) end

--- (server) Writes a vector normal to the usermessage. 
--- [https://wiki.facepunch.com/gmod/umsg.VectorNormal]
--- @param normal Vector @ The vector normal to be sent.
--- @return void
function umsg.VectorNormal(normal) end

