--- @class ConVar
ConVar = {}

--- (client/menu/server) Tries to convert the current string value of a [ConVar](https://wiki.facepunch.com/gmod/ConVar) to a boolean. 
--- [https://wiki.facepunch.com/gmod/ConVar:GetBool]
--- @return boolean
function ConVar:GetBool() end

--- (client/menu/server) Returns the default value of the [ConVar](https://wiki.facepunch.com/gmod/ConVar) 
--- [https://wiki.facepunch.com/gmod/ConVar:GetDefault]
--- @return string
function ConVar:GetDefault() end

--- (client/menu/server) Returns the [FCVAR](https://wiki.facepunch.com/gmod/Enums/FCVAR) flags of the ConVar 
--- [https://wiki.facepunch.com/gmod/ConVar:GetFlags]
--- @return number
function ConVar:GetFlags() end

--- (client/menu/server) Attempts to convert the [ConVar](https://wiki.facepunch.com/gmod/ConVar) value to a float 
--- [https://wiki.facepunch.com/gmod/ConVar:GetFloat]
--- @return number
function ConVar:GetFloat() end

--- (client/menu/server) Returns the help text assigned to that convar. 
--- [https://wiki.facepunch.com/gmod/ConVar:GetHelpText]
--- @return string
function ConVar:GetHelpText() end

--- (client/menu/server) Attempts to convert the [ConVar](https://wiki.facepunch.com/gmod/ConVar) value to a integer. 
--- [https://wiki.facepunch.com/gmod/ConVar:GetInt]
--- @return number
function ConVar:GetInt() end

--- (client/menu/server) Returns the maximum value of the [ConVar](https://wiki.facepunch.com/gmod/ConVar) 
--- [https://wiki.facepunch.com/gmod/ConVar:GetMax]
--- @return number
function ConVar:GetMax() end

--- (client/menu/server) Returns the minimum value of the [ConVar](https://wiki.facepunch.com/gmod/ConVar) 
--- [https://wiki.facepunch.com/gmod/ConVar:GetMin]
--- @return number
function ConVar:GetMin() end

--- (client/menu/server) Returns the name of the [ConVar](https://wiki.facepunch.com/gmod/ConVar). 
--- [https://wiki.facepunch.com/gmod/ConVar:GetName]
--- @return string
function ConVar:GetName() end

--- (client/menu/server) Returns the current [ConVar](https://wiki.facepunch.com/gmod/ConVar) value as a string. 
--- [https://wiki.facepunch.com/gmod/ConVar:GetString]
--- @return string
function ConVar:GetString() end

--- (client/menu/server) Returns whether the specified flag is set on the [ConVar](https://wiki.facepunch.com/gmod/ConVar) 
--- [https://wiki.facepunch.com/gmod/ConVar:IsFlagSet]
--- @param flag number @ The [FCVAR](https://wiki.facepunch.com/gmod/Enums/FCVAR) flag to test
--- @return boolean
function ConVar:IsFlagSet(flag) end

--- (client/menu/server) Reverts [ConVar](https://wiki.facepunch.com/gmod/ConVar) to its default value 
--- [https://wiki.facepunch.com/gmod/ConVar:Revert]
--- @return void
function ConVar:Revert() end

--- (client/menu/server) Sets a ConVar's value to 1 or 0 based on the input boolean. This can only be ran on ConVars created from within Lua. 
--- [https://wiki.facepunch.com/gmod/ConVar:SetBool]
--- @param value boolean @ Value to set the ConVar to.
--- @return void
function ConVar:SetBool(value) end

--- (client/menu/server) Sets a ConVar's value to the input number. 
--- [https://wiki.facepunch.com/gmod/ConVar:SetFloat]
--- @param value number @ Value to set the ConVar to.
--- @return void
function ConVar:SetFloat(value) end

--- (client/menu/server) Sets a ConVar's value to the input number after converting it to an integer. 
--- [https://wiki.facepunch.com/gmod/ConVar:SetInt]
--- @param value number @ Value to set the ConVar to.
--- @return void
function ConVar:SetInt(value) end

--- (client/menu/server) Sets a ConVar's value to the input string. This can only be ran on ConVars created from within Lua. 
--- [https://wiki.facepunch.com/gmod/ConVar:SetString]
--- @param value string @ Value to set the ConVar to.
--- @return void
function ConVar:SetString(value) end

