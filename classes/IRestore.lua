--- @class IRestore
IRestore = {}

--- (client/server) Ends current data block started with [IRestore:StartBlock](https://wiki.facepunch.com/gmod/IRestore:StartBlock) and returns to the parent block.To avoid all sorts of errors, you **must** end all blocks you start. 
--- [https://wiki.facepunch.com/gmod/IRestore:EndBlock]
--- @return void
function IRestore:EndBlock() end

--- (client/server) Reads next bytes from the restore object as an [Angle](https://wiki.facepunch.com/gmod/Angle). 
--- [https://wiki.facepunch.com/gmod/IRestore:ReadAngle]
--- @return Angle
function IRestore:ReadAngle() end

--- (client/server) Reads next bytes from the restore object as a [boolean](https://wiki.facepunch.com/gmod/boolean). 
--- [https://wiki.facepunch.com/gmod/IRestore:ReadBool]
--- @return boolean
function IRestore:ReadBool() end

--- (client/server) Reads next bytes from the restore object as an [Entity](https://wiki.facepunch.com/gmod/Entity). 
--- [https://wiki.facepunch.com/gmod/IRestore:ReadEntity]
--- @return Entity
function IRestore:ReadEntity() end

--- (client/server) Reads next bytes from the restore object as a floating point [number](https://wiki.facepunch.com/gmod/number). 
--- [https://wiki.facepunch.com/gmod/IRestore:ReadFloat]
--- @return number
function IRestore:ReadFloat() end

--- (client/server) Reads next bytes from the restore object as an integer [number](https://wiki.facepunch.com/gmod/number). 
--- [https://wiki.facepunch.com/gmod/IRestore:ReadInt]
--- @return number
function IRestore:ReadInt() end

--- (client/server) Reads next bytes from the restore object as a [string](https://wiki.facepunch.com/gmod/string). 
--- [https://wiki.facepunch.com/gmod/IRestore:ReadString]
--- @return string
function IRestore:ReadString() end

--- (client/server) Reads next bytes from the restore object as a [Vector](https://wiki.facepunch.com/gmod/Vector). 
--- [https://wiki.facepunch.com/gmod/IRestore:ReadVector]
--- @return Vector
function IRestore:ReadVector() end

--- (client/server) Loads next block of data to be read inside current block. Blocks **must** be ended with [IRestore:EndBlock](https://wiki.facepunch.com/gmod/IRestore:EndBlock). 
--- [https://wiki.facepunch.com/gmod/IRestore:StartBlock]
--- @return string
function IRestore:StartBlock() end

