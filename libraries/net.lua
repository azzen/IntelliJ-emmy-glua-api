--- @class net
net = {}

--- (server) Sends the currently built net message to all connected players.
--- More information can be found in [Net Library Usage](https://wiki.facepunch.com/gmod/Net%20Library%20Usage). 
--- [https://wiki.facepunch.com/gmod/net.Broadcast]
--- @return void
function net.Broadcast() end

--- (client/server) Returns the amount of data left to read in the current message in bytes. Does nothing when sending data. 
--- [https://wiki.facepunch.com/gmod/net.BytesLeft]
--- @return number|number
function net.BytesLeft() end

--- (client/server) Returns the size of the current message in bytes. 
--- [https://wiki.facepunch.com/gmod/net.BytesWritten]
--- @return number|number
function net.BytesWritten() end

--- (client/server) Function called by the engine to tell the lua state a message arrived. 
--- [https://wiki.facepunch.com/gmod/net.Incoming]
--- @param length number @ The message length, in bits.
--- @param client Player @ The player that sent the message. This will be nil in the client state.
--- @return void
function net.Incoming(length, client) end

--- (client/server) Reads an angle from the received net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadAngle]
--- @return Angle
function net.ReadAngle() end

--- (client/server) Reads a bit from the received net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadBit]
--- @return number
function net.ReadBit() end

--- (client/server) Reads a boolean from the received net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadBool]
--- @return boolean
function net.ReadBool() end

--- (client/server) Reads a [Color](https://wiki.facepunch.com/gmod/Color) from the current net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadColor]
--- @return table
function net.ReadColor() end

--- (client/server) Reads pure binary data from the message. 
--- [https://wiki.facepunch.com/gmod/net.ReadData]
--- @param length number @ The length of the data to be read, in bytes.
--- @return string
function net.ReadData(length) end

--- (client/server) Reads a double-precision number from the received net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadDouble]
--- @return number
function net.ReadDouble() end

--- (client/server) Reads an entity from the received net message. You should always check if the specified entity exists as it may have been removed and therefor NULL if it is outside of the players PVS or was already removed. 
--- [https://wiki.facepunch.com/gmod/net.ReadEntity]
--- @return Entity
function net.ReadEntity() end

--- (client/server) Reads a floating point number from the received net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadFloat]
--- @return number
function net.ReadFloat() end

--- (client/server) Reads a word, basically unsigned short. This is used internally to read the "header" of the message which is an unsigned short which can be converted to the corresponding message name via [util.NetworkIDToString](https://wiki.facepunch.com/gmod/util.NetworkIDToString). 
--- [https://wiki.facepunch.com/gmod/net.ReadHeader]
--- @return number
function net.ReadHeader() end

--- (client/server) Reads an integer from the received net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadInt]
--- @param bitCount number @ The amount of bits to be read. This must be set to what you set to [net.WriteInt](https://wiki.facepunch.com/gmod/net.WriteInt). Read more information at [net.WriteInt](https://wiki.facepunch.com/gmod/net.WriteInt).
--- @return number
function net.ReadInt(bitCount) end

--- (client/server) Reads a [VMatrix](https://wiki.facepunch.com/gmod/VMatrix) from the received net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadMatrix]
--- @return VMatrix
function net.ReadMatrix() end

--- (client/server) Reads a normal vector from the net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadNormal]
--- @return Vector
function net.ReadNormal() end

--- (client/server) Reads a null terminated string from the net stream. The size of the string is 8 bits plus 8 bits for every ASCII character in the string. 
--- [https://wiki.facepunch.com/gmod/net.ReadString]
--- @return string
function net.ReadString() end

--- (client/server) Reads a table from the received net message.
--- 
--- 
--- See [net.WriteTable](https://wiki.facepunch.com/gmod/net.WriteTable) for extra info.
--- You may get `net.ReadType: Couldn't read type X` during the execution of the function, the problem is that you are sending objects that cannot be serialized/sent over the network. 
--- [https://wiki.facepunch.com/gmod/net.ReadTable]
--- @return table
function net.ReadTable() end

--- (client/server) Reads a value from the net message with the specified type, written by [net.WriteType](https://wiki.facepunch.com/gmod/net.WriteType). 
--- [https://wiki.facepunch.com/gmod/net.ReadType]
--- @param typeID number @ The type of value to be read, using [TYPE](https://wiki.facepunch.com/gmod/Enums/TYPE).
--- @return any
function net.ReadType(typeID) end

--- (client/server) Reads an unsigned integer with the specified number of bits from the received net message. 
--- [https://wiki.facepunch.com/gmod/net.ReadUInt]
--- @param numberOfBits number @ The size of the integer to be read, in bits.
--- @return number
function net.ReadUInt(numberOfBits) end

--- (client/server) Reads a vector from the received net message.  Vectors sent by this function are compressed, which may result in precision loss. See [net.WriteVector](https://wiki.facepunch.com/gmod/net.WriteVector) for more information. 
--- [https://wiki.facepunch.com/gmod/net.ReadVector]
--- @return Vector
function net.ReadVector() end

--- (client/server) Adds a net message handler. Only one receiver can be used to receive the net message. 
--- [https://wiki.facepunch.com/gmod/net.Receive]
--- @param messageName string @ The message name to hook to.
--- @param callback function @ The function to be called if the specified message was received. Arguments are: [number](https://wiki.facepunch.com/gmod/number) len - Length of the message, in bits [Player](https://wiki.facepunch.com/gmod/Player) ply - The player that sent the message, works only serverside
--- @return void
function net.Receive(messageName, callback) end

--- (server) Sends the current message to the specified player, or to all players listed in the table. 
--- [https://wiki.facepunch.com/gmod/net.Send]
--- @param ply Player @ The player(s) to send the message to. Can be a table of players or a [CRecipientFilter](https://wiki.facepunch.com/gmod/CRecipientFilter).
--- @return void
function net.Send(ply) end

--- (server) Sends the current message to all except the specified, or to all except all players in the table. 
--- [https://wiki.facepunch.com/gmod/net.SendOmit]
--- @param ply Player @ The player(s) to NOT send the message to. Can be a table of players
--- @return void
function net.SendOmit(ply) end

--- (server) Sends the message to all players that are in the same potentially audible set(PAS) as the position, or simply said, it adds all players that can potentially hear sounds from this position. 
--- [https://wiki.facepunch.com/gmod/net.SendPAS]
--- @param position Vector @ PAS position.
--- @return void
function net.SendPAS(position) end

--- (server) Sends the message to all players the position is in the PVS of or, more simply said, sends the message to players that can potentially see this position. 
--- [https://wiki.facepunch.com/gmod/net.SendPVS]
--- @param position Vector @ Position that must be in players' visibility set.
--- @return void
function net.SendPVS(position) end

--- (client) Sends the current message to the server. 
--- [https://wiki.facepunch.com/gmod/net.SendToServer]
--- @return void
function net.SendToServer() end

--- (client/server) Begins a new net message. If another net message is already started and hasn't been sent yet, it will be discarded. 
--- [https://wiki.facepunch.com/gmod/net.Start]
--- @param messageName string @ The name of the message to send
--- @param unreliable boolean @ If set to true, the message is not guaranteed to reach its destination
--- @return boolean
function net.Start(messageName, unreliable) end

--- (client/server) Writes an angle to the current net message. 
--- [https://wiki.facepunch.com/gmod/net.WriteAngle]
--- @param angle Angle @ The angle to be sent.
--- @return void
function net.WriteAngle(angle) end

--- (client/server) Appends a boolean (as 1 or 0) to the current net message.
--- Please note that the bit is written here from a [boolean](https://wiki.facepunch.com/gmod/boolean) (true/false) but [net.ReadBit](https://wiki.facepunch.com/gmod/net.ReadBit) returns a number. 
--- [https://wiki.facepunch.com/gmod/net.WriteBit]
--- @param boolean boolean @ Bit status (false = 0, true = 1)
--- @return void
function net.WriteBit(boolean) end

--- (client/server) Appends a boolean to the current net message. Alias of [net.WriteBit](https://wiki.facepunch.com/gmod/net.WriteBit) 
--- [https://wiki.facepunch.com/gmod/net.WriteBool]
--- @param boolean boolean @ Boolean value to write
--- @return void
function net.WriteBool(boolean) end

--- (client/server) Appends a [Color](https://wiki.facepunch.com/gmod/Color) to the current net message. 
--- [https://wiki.facepunch.com/gmod/net.WriteColor]
--- @param Color table @ The [Color](https://wiki.facepunch.com/gmod/Color) you want to append to the net message.
--- @return void
function net.WriteColor(Color) end

--- (client/server) Writes a chunk of binary data to the message. 
--- [https://wiki.facepunch.com/gmod/net.WriteData]
--- @param binaryData string @ The binary data to be sent.
--- @param length number @ The length of the binary data to be sent, in bytes.
--- @return void
function net.WriteData(binaryData, length) end

--- (client/server) Appends a double-precision number to the current net message. 
--- [https://wiki.facepunch.com/gmod/net.WriteDouble]
--- @param double number @ The double to be sent
--- @return void
function net.WriteDouble(double) end

--- (client/server) Appends an entity to the current net message. 
--- [https://wiki.facepunch.com/gmod/net.WriteEntity]
--- @param entity Entity @ The entity to be sent.
--- @return void
function net.WriteEntity(entity) end

--- (client/server) Appends a float (number with decimals) to the current net message. 
--- [https://wiki.facepunch.com/gmod/net.WriteFloat]
--- @param float number @ The float to be sent.
--- @return void
function net.WriteFloat(float) end

--- (client/server) Appends an integer - a whole number - to the current net message. Can be read back with [net.ReadInt](https://wiki.facepunch.com/gmod/net.ReadInt) on the receiving end.
--- Use [net.WriteUInt](https://wiki.facepunch.com/gmod/net.WriteUInt) to send an unsigned number (that you know will never be negative). Use [net.WriteFloat](https://wiki.facepunch.com/gmod/net.WriteFloat) for a non-whole number (e.g. 2.25). 
--- [https://wiki.facepunch.com/gmod/net.WriteInt]
--- @param integer number @ The integer to be sent.
--- @param bitCount number @ The amount of bits the number consists of. This must be 32 or less. If you are unsure what to set, just set it to 32.  Consult the table below to determine the bit count you need: | Bit Count |  Minimum value |  Maximum value | |-----------|:--------------:|:--------------:| | 3 | -4 | 3 | | 4 | -8 | 7 | | 5 | -16 | 15 | | 6 | -32 | 31 | | 7 | -64 | 63 | | 8 | -128 | 127 | | 9 | -256 | 255 | | 10 | -512 | 511 | | 11 | -1024 | 1023 | | 12 | -2048 | 2047 | | 13 | -4096 | 4095 | | 14 | -8192 | 8191 | | 15 | -16384 | 16383 | | 16 | -32768 | 32767 | | 17 | -65536 | 65535 | | 18 | -131072 | 131071 | | 19 | -262144 | 262143 | | 20 | -524288 | 524287 | | 21 | -1048576 | 1048575 | | 22 | -2097152 | 2097151 | | 23 | -4194304 | 4194303 | | 24 | -8388608 | 8388607 | | 25 | -16777216 | 16777215 | | 26 | -33554432 | 33554431 | | 27 | -67108864 | 67108863 | | 28 | -134217728 | 134217727 | | 29 | -268435456 | 268435455 | | 30 | -536870912 | 536870911 | | 31 | -1073741824 | 1073741823 | | 32 | -2147483648 | 2147483647 |
--- @return void
function net.WriteInt(integer, bitCount) end

--- (client/server) Writes a [VMatrix](https://wiki.facepunch.com/gmod/VMatrix) to the current net message. 
--- [https://wiki.facepunch.com/gmod/net.WriteMatrix]
--- @param matrix VMatrix @ The matrix to be sent.
--- @return void
function net.WriteMatrix(matrix) end

--- (client/server) Writes a normalized/direction vector ( Vector with length of 1 ) to the net message.
--- This function uses less bandwidth compared to [net.WriteVector](https://wiki.facepunch.com/gmod/net.WriteVector) and will not send vectors with length of > 1 properly. 
--- [https://wiki.facepunch.com/gmod/net.WriteNormal]
--- @param normal Vector @ The normalized/direction vector to be send.
--- @return void
function net.WriteNormal(normal) end

--- (client/server) Appends a string to the current net message. The size of the string is 8 bits plus 8 bits for every ASCII character in the string. The maximum allowed length of a single written string is 65533 characters. 
--- [https://wiki.facepunch.com/gmod/net.WriteString]
--- @param string string @ The string to be sent.
--- @return void
function net.WriteString(string) end

--- (client/server) Appends a table to the current net message. Adds 16 extra bits per key/value pair so you're better off writing each individual key/value as the exact type if possible. 
--- [https://wiki.facepunch.com/gmod/net.WriteTable]
--- @param table table @ The table to be sent.
--- @return void
function net.WriteTable(table) end

--- (client/server) Appends any type of value to the current net message. 
--- [https://wiki.facepunch.com/gmod/net.WriteType]
--- @param Data any @ The data to be sent
--- @return void
function net.WriteType(Data) end

--- (client/server) Appends an unsigned integer with the specified number of bits to the current net message.
--- Use [net.WriteInt](https://wiki.facepunch.com/gmod/net.WriteInt) if you want to send negative and positive numbers. Use [net.WriteFloat](https://wiki.facepunch.com/gmod/net.WriteFloat) for a non-whole number (e.g. 2.25). 
--- [https://wiki.facepunch.com/gmod/net.WriteUInt]
--- @param unsignedInteger number @ The unsigned integer to be sent.
--- @param numberOfBits number @ The size of the integer to be sent, in bits. Acceptable values range from any number 1 to 32 inclusive. For reference, 1 = bit, 4 = nibble, 8 = byte, 16 = short, 32 = long. Consult the table below to determine the bit count you need. The minimum value for all bit counts is 0. | Bit Count |  Maximum value | |-----------|:--------------:| | 1 | 1  | | 2 | 3  | | 3 | 7  | | 4 | 15 | | 5 | 31 | | 6 | 63 | | 7 | 127 | | 8 | 255 | | 9 | 511 | | 10 | 1023 | | 11 | 2047 | | 12 | 4095 | | 13 | 8191 | | 14 | 16383 | | 15 | 32767 | | 16 | 65535 | | 17 | 131071 | | 18 | 262143 | | 19 | 524287  | | 20 | 1048575  | | 21 | 2097151  | | 22 | 4194303  | | 23 | 8388607  | | 24 | 16777215  | | 25 | 33554431  | | 26 | 67108863  | | 27 | 134217727  | | 28 | 268435455  | | 29 | 536870911  | | 30 | 1073741823 | | 31 | 2147483647 | | 32 | 4294967295 |
--- @return void
function net.WriteUInt(unsignedInteger, numberOfBits) end

--- (client/server) Appends a vector to the current net message.
--- Vectors sent by this function are compressed, which may result in precision loss.  XYZ components greater than 16384 or less than -16384 are irrecoverably altered (most significant bits are trimmed) and precision after the decimal point is low. 
--- [https://wiki.facepunch.com/gmod/net.WriteVector]
--- @param vector Vector @ The vector to be sent.
--- @return void
function net.WriteVector(vector) end

