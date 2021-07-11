--- @class bit
bit = {}

--- (client/menu/server) Returns the arithmetically shifted value. 
--- [https://wiki.facepunch.com/gmod/bit.arshift]
--- @param value number @ The value to be manipulated.
--- @param shiftCount number @ Amounts of bits to shift.
--- @return number
function bit.arshift(value, shiftCount) end

--- (client/menu/server) Performs the bitwise "and" for all values specified. 
--- [https://wiki.facepunch.com/gmod/bit.band]
--- @param value number @ The value to be manipulated.
--- @param otherValues number @ Values bit to perform bitwise "and" with. Optional.
--- @return number
function bit.band(value, otherValues) end

--- (client/menu/server) Returns the bitwise not of the value. 
--- [https://wiki.facepunch.com/gmod/bit.bnot]
--- @param value number @ The value to be inverted.
--- @return number
function bit.bnot(value) end

--- (client/menu/server) Returns the bitwise OR of all values specified. 
--- [https://wiki.facepunch.com/gmod/bit.bor]
--- @param value1 number @ The first value.
--- @param ... vararg @ Extra values to be evaluated. (must all be numbers)
--- @return number
function bit.bor(value1, ...) end

--- (client/menu/server) Swaps the byte order. 
--- [https://wiki.facepunch.com/gmod/bit.bswap]
--- @param value number @ The value to be byte swapped.
--- @return number
function bit.bswap(value) end

--- (client/menu/server) Returns the bitwise xor of all values specified. 
--- [https://wiki.facepunch.com/gmod/bit.bxor]
--- @param value number @ The value to be manipulated.
--- @param otherValues number @ Values bit xor with. Optional.
--- @return number
function bit.bxor(value, otherValues) end

--- (client/menu/server) Returns the left shifted value. 
--- [https://wiki.facepunch.com/gmod/bit.lshift]
--- @param value number @ The value to be manipulated.
--- @param shiftCount number @ Amounts of bits to shift left by.
--- @return number
function bit.lshift(value, shiftCount) end

--- (client/menu/server) Returns the left rotated value. 
--- [https://wiki.facepunch.com/gmod/bit.rol]
--- @param value number @ The value to be manipulated.
--- @param shiftCount number @ Amounts of bits to rotate left by.
--- @return number
function bit.rol(value, shiftCount) end

--- (client/menu/server) Returns the right rotated value. 
--- [https://wiki.facepunch.com/gmod/bit.ror]
--- @param value number @ The value to be manipulated.
--- @param shiftCount number @ Amounts of bits to rotate right by.
--- @return number
function bit.ror(value, shiftCount) end

--- (client/menu/server) Returns the right shifted value. 
--- [https://wiki.facepunch.com/gmod/bit.rshift]
--- @param value number @ The value to be manipulated.
--- @param shiftCount number @ Amounts of bits to shift right by.
--- @return number
function bit.rshift(value, shiftCount) end

--- (client/menu/server) Normalizes the specified value and clamps it in the range of a signed 32bit integer. 
--- [https://wiki.facepunch.com/gmod/bit.tobit]
--- @param value number @ The value to be normalized.
--- @return number
function bit.tobit(value) end

--- (client/menu/server) Returns the hexadecimal representation of the number with the specified digits. 
--- [https://wiki.facepunch.com/gmod/bit.tohex]
--- @param value number @ The value to be normalized.
--- @param digits number @ The number of digits. Optional
--- @return string
function bit.tohex(value, digits) end

