--- @class DMenuOptionCVar : DMenuOption
DMenuOptionCVar = {}

--- (client) Returns the [console variable](https://wiki.facepunch.com/gmod/ConVars) used by the [DMenuOptionCVar](https://wiki.facepunch.com/gmod/DMenuOptionCVar). 
--- [https://wiki.facepunch.com/gmod/DMenuOptionCVar:GetConVar]
--- @return string
function DMenuOptionCVar:GetConVar() end

--- (client) Returns the value of the [console variable](https://wiki.facepunch.com/gmod/ConVars) when the [DMenuOptionCVar](https://wiki.facepunch.com/gmod/DMenuOptionCVar) is not checked. 
--- [https://wiki.facepunch.com/gmod/DMenuOptionCVar:GetValueOff]
--- @return string
function DMenuOptionCVar:GetValueOff() end

--- (client) Return the value of the [console variable](https://wiki.facepunch.com/gmod/ConVars) when the [DMenuOptionCVar](https://wiki.facepunch.com/gmod/DMenuOptionCVar) is checked. 
--- [https://wiki.facepunch.com/gmod/DMenuOptionCVar:GetValueOn]
--- @return string
function DMenuOptionCVar:GetValueOn() end

--- (client) Sets the [console variable](https://wiki.facepunch.com/gmod/ConVars) to be used by [DMenuOptionCVar](https://wiki.facepunch.com/gmod/DMenuOptionCVar). 
--- [https://wiki.facepunch.com/gmod/DMenuOptionCVar:SetConVar]
--- @param cvar string @ The [console variable](https://wiki.facepunch.com/gmod/ConVars) name to set
--- @return void
function DMenuOptionCVar:SetConVar(cvar) end

--- (client) Sets the value of the [console variable](https://wiki.facepunch.com/gmod/ConVars) when the [DMenuOptionCVar](https://wiki.facepunch.com/gmod/DMenuOptionCVar) is not checked. 
--- [https://wiki.facepunch.com/gmod/DMenuOptionCVar:SetValueOff]
--- @param value string @ The value
--- @return void
function DMenuOptionCVar:SetValueOff(value) end

--- (client) Sets the value of the [console variable](https://wiki.facepunch.com/gmod/ConVars) when the [DMenuOptionCVar](https://wiki.facepunch.com/gmod/DMenuOptionCVar) is checked. 
--- [https://wiki.facepunch.com/gmod/DMenuOptionCVar:SetValueOn]
--- @param value string @ The value
--- @return void
function DMenuOptionCVar:SetValueOn(value) end

