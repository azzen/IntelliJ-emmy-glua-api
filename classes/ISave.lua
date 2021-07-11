--- @class ISave
ISave = {}

--- (client/server) Ends current data block started with [ISave:StartBlock](https://wiki.facepunch.com/gmod/ISave:StartBlock) and returns to the parent block.To avoid all sorts of errors, you **must** end all blocks you start. 
--- [https://wiki.facepunch.com/gmod/ISave:EndBlock]
--- @return void
function ISave:EndBlock() end

--- (client/server) Starts a new block of data that you can write to inside current block. Blocks **must** be ended with [ISave:EndBlock](https://wiki.facepunch.com/gmod/ISave:EndBlock). 
--- [https://wiki.facepunch.com/gmod/ISave:StartBlock]
--- @param name string @ Name of the new block. Used for determining which block is which, returned by [IRestore:StartBlock](https://wiki.facepunch.com/gmod/IRestore:StartBlock) during game load.
--- @return void
function ISave:StartBlock(name) end

--- (client/server) Writes an [Angle](https://wiki.facepunch.com/gmod/Angle) to the save object. 
--- [https://wiki.facepunch.com/gmod/ISave:WriteAngle]
--- @param ang Angle @ The angle to write.
--- @return void
function ISave:WriteAngle(ang) end

--- (client/server) Writes a [boolean](https://wiki.facepunch.com/gmod/boolean) to the save object. 
--- [https://wiki.facepunch.com/gmod/ISave:WriteBool]
--- @param bool boolean @ The boolean to write.
--- @return void
function ISave:WriteBool(bool) end

--- (client/server) Writes an [Entity](https://wiki.facepunch.com/gmod/Entity) to the save object. 
--- [https://wiki.facepunch.com/gmod/ISave:WriteEntity]
--- @param ent Entity @ The entity to write.
--- @return void
function ISave:WriteEntity(ent) end

--- (client/server) Writes a floating point [number](https://wiki.facepunch.com/gmod/number) to the save object. 
--- [https://wiki.facepunch.com/gmod/ISave:WriteFloat]
--- @param float number @ The floating point number to write.
--- @return void
function ISave:WriteFloat(float) end

--- (client/server) Writes an integer [number](https://wiki.facepunch.com/gmod/number) to the save object. 
--- [https://wiki.facepunch.com/gmod/ISave:WriteInt]
--- @param int number @ The integer number to write.
--- @return void
function ISave:WriteInt(int) end

--- (client/server) Writes a [string](https://wiki.facepunch.com/gmod/string) to the save object. 
--- [https://wiki.facepunch.com/gmod/ISave:WriteString]
--- @param str string @ The string to write. Maximum length is 1024.
--- @return void
function ISave:WriteString(str) end

--- (client/server) Writes a [Vector](https://wiki.facepunch.com/gmod/Vector) to the save object. 
--- [https://wiki.facepunch.com/gmod/ISave:WriteVector]
--- @param vec Vector @ The vector to write.
--- @return void
function ISave:WriteVector(vec) end

