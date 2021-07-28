--- @class DKillIcon : PANEL
DKillIcon = {}

--- (client) Gets the killicon being shown. 
--- [https://wiki.facepunch.com/gmod/DKillIcon:GetName]
--- @return string
function DKillIcon:GetName() end

--- (client) Sets the killicon to be displayed. You should call [Panel:SizeToContents](https://wiki.facepunch.com/gmod/Panel:SizeToContents) following this.
--- Killicons can be added with [killicon.Add](https://wiki.facepunch.com/gmod/killicon.Add) and [killicon.AddFont](https://wiki.facepunch.com/gmod/killicon.AddFont). 
--- [https://wiki.facepunch.com/gmod/DKillIcon:SetName]
--- @param iconName string @ The name of the killicon to be displayed.
--- @return void
function DKillIcon:SetName(iconName) end

