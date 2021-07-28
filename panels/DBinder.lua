--- @class DBinder : DButton
DBinder = {}

--- (client) Gets the code of the key currently bound by the DBinder. Same as [DBinder:GetValue](https://wiki.facepunch.com/gmod/DBinder:GetValue). 
--- [https://wiki.facepunch.com/gmod/DBinder:GetSelectedNumber]
--- @return number
function DBinder:GetSelectedNumber() end

--- (client) Gets the code of the key currently bound by the DBinder. Same as [DBinder:GetSelectedNumber](https://wiki.facepunch.com/gmod/DBinder:GetSelectedNumber). 
--- [https://wiki.facepunch.com/gmod/DBinder:GetValue]
--- @return number
function DBinder:GetValue() end

--- (client) Called when the player selects a new bind. 
--- [https://wiki.facepunch.com/gmod/DBinder:OnChange]
--- @param iNum number @ The new bound key. See [input.GetKeyName](https://wiki.facepunch.com/gmod/input.GetKeyName).
--- @return void
function DBinder:OnChange(iNum) end

--- (client) Sets the current key bound by the [DBinder](https://wiki.facepunch.com/gmod/DBinder), and updates the button's text as well as the [ConVar](https://wiki.facepunch.com/gmod/ConVar). 
--- [https://wiki.facepunch.com/gmod/DBinder:SetSelectedNumber]
--- @param keyCode number @ The key code of the key to bind. See [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return void
function DBinder:SetSelectedNumber(keyCode) end

--- (client) Alias of [DBinder:SetSelectedNumber](https://wiki.facepunch.com/gmod/DBinder:SetSelectedNumber). 
--- [https://wiki.facepunch.com/gmod/DBinder:SetValue]
--- @param keyCode number @ The key code of the key to bind. See [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return void
function DBinder:SetValue(keyCode) end

--- (client) Used to set the text of the DBinder to the current key binding, or `NONE`. 
--- [https://wiki.facepunch.com/gmod/DBinder:UpdateText]
--- @return void
function DBinder:UpdateText() end

