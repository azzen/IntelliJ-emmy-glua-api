--- @class ControlPresets : PANEL
ControlPresets = {}

--- (client) Adds a convar to be managed by this control. 
--- [https://wiki.facepunch.com/gmod/ControlPresets:AddConVar]
--- @param convar string @ The convar to add.
--- @return void
function ControlPresets:AddConVar(convar) end

--- (client) Get a list of all Console Variables being managed by this panel. 
--- [https://wiki.facepunch.com/gmod/ControlPresets:GetConVars]
--- @return table
function ControlPresets:GetConVars() end

--- (client) Set the name label text. 
--- [https://wiki.facepunch.com/gmod/ControlPresets:SetLabel]
--- @param name string @ The text to put in the label
--- @return void
function ControlPresets:SetLabel(name) end

