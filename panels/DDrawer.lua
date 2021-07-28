--- @class DDrawer : PANEL
DDrawer = {}

--- (client) Closes the [DDrawer](https://wiki.facepunch.com/gmod/DDrawer). 
--- [https://wiki.facepunch.com/gmod/DDrawer:Close]
--- @return void
function DDrawer:Close() end

--- (client) Return the Open Size of DDrawer. 
--- [https://wiki.facepunch.com/gmod/DDrawer:GetOpenSize]
--- @return number
function DDrawer:GetOpenSize() end

--- (client) Return the Open Time of DDrawer. 
--- [https://wiki.facepunch.com/gmod/DDrawer:GetOpenTime]
--- @return number
function DDrawer:GetOpenTime() end

--- (client) Opens the [DDrawer](https://wiki.facepunch.com/gmod/DDrawer). 
--- [https://wiki.facepunch.com/gmod/DDrawer:Open]
--- @return void
function DDrawer:Open() end

--- (client) Set the height of DDrawer 
--- [https://wiki.facepunch.com/gmod/DDrawer:SetOpenSize]
--- @param Value number @ Height of DDrawer. Default is 100.
--- @return void
function DDrawer:SetOpenSize(Value) end

--- (client) Set the time (in seconds) for DDrawer to open. 
--- [https://wiki.facepunch.com/gmod/DDrawer:SetOpenTime]
--- @param value number @ Length in seconds. Default is 0.3
--- @return void
function DDrawer:SetOpenTime(value) end

--- (client) Toggles the [DDrawer](https://wiki.facepunch.com/gmod/DDrawer). 
--- [https://wiki.facepunch.com/gmod/DDrawer:Toggle]
--- @return void
function DDrawer:Toggle() end

