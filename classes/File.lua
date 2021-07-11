--- @class File
File = {}

--- (client/menu/server) Dumps the file changes to disk and closes the file handle which makes the handle useless. 
--- [https://wiki.facepunch.com/gmod/File:Close]
--- @return void
function File:Close() end

--- (client/menu/server) Returns whether the [File](https://wiki.facepunch.com/gmod/File) object has reached the end of file or not. 
--- [https://wiki.facepunch.com/gmod/File:EndOfFile]
--- @return boolean
function File:EndOfFile() end

--- (client/menu/server) Dumps the file changes to disk and saves the file. 
--- [https://wiki.facepunch.com/gmod/File:Flush]
--- @return void
function File:Flush() end

--- (client/menu/server) Reads the specified amount of chars and returns them as a binary string. 
--- [https://wiki.facepunch.com/gmod/File:Read]
--- @param length number @ Reads the specified amount of chars.
--- @return string
function File:Read(length) end

--- (client/menu/server) Reads one byte of the file and returns whether that byte was not 0. 
--- [https://wiki.facepunch.com/gmod/File:ReadBool]
--- @return boolean
function File:ReadBool() end

--- (client/menu/server) Reads one unsigned 8-bit integer from the file. 
--- [https://wiki.facepunch.com/gmod/File:ReadByte]
--- @return number
function File:ReadByte() end

--- (client/menu/server) Reads an 8-byte little-endian IEEE-754 floating point double from the file. 
--- [https://wiki.facepunch.com/gmod/File:ReadDouble]
--- @return number
function File:ReadDouble() end

--- (client/menu/server) Reads an IEEE 754 little-endian 4-byte float from the file. 
--- [https://wiki.facepunch.com/gmod/File:ReadFloat]
--- @return number
function File:ReadFloat() end

--- (client/menu/server) Returns the contents of the file from the current position up until the end of the current line. 
--- [https://wiki.facepunch.com/gmod/File:ReadLine]
--- @return string
function File:ReadLine() end

--- (client/menu/server) Reads a signed little-endian 32-bit integer from the file. 
--- [https://wiki.facepunch.com/gmod/File:ReadLong]
--- @return number
function File:ReadLong() end

--- (client/menu/server) Reads a signed little-endian 16-bit integer from the file. 
--- [https://wiki.facepunch.com/gmod/File:ReadShort]
--- @return number
function File:ReadShort() end

--- (client/menu/server) Reads an unsigned little-endian 32-bit integer from the file. 
--- [https://wiki.facepunch.com/gmod/File:ReadULong]
--- @return number
function File:ReadULong() end

--- (client/menu/server) Reads an unsigned little-endian 16-bit integer from the file. 
--- [https://wiki.facepunch.com/gmod/File:ReadUShort]
--- @return number
function File:ReadUShort() end

--- (client/menu/server) Sets the file pointer to the specified position. 
--- [https://wiki.facepunch.com/gmod/File:Seek]
--- @param pos number @ Pointer position, in bytes.
--- @return void
function File:Seek(pos) end

--- (client/menu/server) Returns the size of the file in bytes. 
--- [https://wiki.facepunch.com/gmod/File:Size]
--- @return number
function File:Size() end

--- (client/menu/server) Moves the file pointer by the specified amount of chars. 
--- [https://wiki.facepunch.com/gmod/File:Skip]
--- @param amount number @ The amount of chars to skip, can be negative to skip backwards.
--- @return number
function File:Skip(amount) end

--- (client/menu/server) Returns the current position of the file pointer. 
--- [https://wiki.facepunch.com/gmod/File:Tell]
--- @return number
function File:Tell() end

--- (client/menu/server) Writes the given string into the file. 
--- [https://wiki.facepunch.com/gmod/File:Write]
--- @param data string @ Binary data to write to the file.
--- @return void
function File:Write(data) end

--- (client/menu/server) Writes a boolean value to the file as one **byte**. 
--- [https://wiki.facepunch.com/gmod/File:WriteBool]
--- @param bool boolean @ The bool to be written to the file.
--- @return void
function File:WriteBool(bool) end

--- (client/menu/server) Write an 8-bit unsigned integer to the file. 
--- [https://wiki.facepunch.com/gmod/File:WriteByte]
--- @param uint8 number @ The 8-bit unsigned integer to be written to the file.
--- @return void
function File:WriteByte(uint8) end

--- (client/menu/server) Writes an 8-byte little-endian IEEE-754 floating point double to the file. 
--- [https://wiki.facepunch.com/gmod/File:WriteDouble]
--- @param double number @ The double to be written to the file.
--- @return void
function File:WriteDouble(double) end

--- (client/menu/server) Writes an IEEE 754 little-endian 4-byte float to the file. 
--- [https://wiki.facepunch.com/gmod/File:WriteFloat]
--- @param float number @ The float to be written to the file.
--- @return void
function File:WriteFloat(float) end

--- (client/menu/server) Writes a signed little-endian 32-bit integer to the file. 
--- [https://wiki.facepunch.com/gmod/File:WriteLong]
--- @param int32 number @ The 32-bit signed integer to be written to the file.
--- @return void
function File:WriteLong(int32) end

--- (client/menu/server) Writes a signed little-endian 16-bit integer to the file. 
--- [https://wiki.facepunch.com/gmod/File:WriteShort]
--- @param int16 number @ The 16-bit signed integer to be written to the file.
--- @return void
function File:WriteShort(int16) end

--- (client/menu/server) Writes an unsigned little-endian 32-bit integer to the file. 
--- [https://wiki.facepunch.com/gmod/File:WriteULong]
--- @param uint32 number @ The unsigned 32-bit integer to be written to the file.
--- @return void
function File:WriteULong(uint32) end

--- (client/menu/server) Writes an unsigned little-endian 16-bit integer to the file. 
--- [https://wiki.facepunch.com/gmod/File:WriteUShort]
--- @param uint16 number @ The unsigned 16-bit integer to the file.
--- @return void
function File:WriteUShort(uint16) end

