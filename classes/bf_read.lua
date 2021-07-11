--- @class bf_read
bf_read = {}

--- (client) Reads an returns an angle object from the bitstream. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadAngle]
--- @return Angle
function bf_read:ReadAngle() end

--- (client) Reads 1 bit an returns a bool representing the bit. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadBool]
--- @return boolean
function bf_read:ReadBool() end

--- (client) Reads a signed char and returns a number from -127 to 127 representing the ascii value of that char. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadChar]
--- @return number
function bf_read:ReadChar() end

--- (client) Reads a short representing an entity index and returns the matching entity handle. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadEntity]
--- @return Entity
function bf_read:ReadEntity() end

--- (client) Reads a 4 byte float from the bitstream and returns it. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadFloat]
--- @return number
function bf_read:ReadFloat() end

--- (client) Reads a 4 byte long from the bitstream and returns it. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadLong]
--- @return number
function bf_read:ReadLong() end

--- (client) Reads a 2 byte short from the bitstream and returns it. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadShort]
--- @return number
function bf_read:ReadShort() end

--- (client) Reads a null terminated string from the bitstream. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadString]
--- @return string
function bf_read:ReadString() end

--- (client) Reads a special encoded vector from the bitstream and returns it, this function is not suitable to send normals. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadVector]
--- @return Vector
function bf_read:ReadVector() end

--- (client) Reads a special encoded vector normal from the bitstream and returns it, this function is not suitable to send vectors that represent a position. 
--- [https://wiki.facepunch.com/gmod/bf_read:ReadVectorNormal]
--- @return Vector
function bf_read:ReadVectorNormal() end

--- (client) Rewinds the bitstream so it can be read again. 
--- [https://wiki.facepunch.com/gmod/bf_read:Reset]
--- @return void
function bf_read:Reset() end

