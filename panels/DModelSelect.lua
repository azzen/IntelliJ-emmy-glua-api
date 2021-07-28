--- @class DModelSelect : DPanelSelect
DModelSelect = {}

--- (client) Sets the height of the panel **in the amount of 64px spawnicons**.
--- Overrides [Panel:SetHeight](https://wiki.facepunch.com/gmod/Panel:SetHeight). 
--- [https://wiki.facepunch.com/gmod/DModelSelect:SetHeight]
--- @param num number @ Basically how many rows of 64x64 px spawnicons should fit in this DModelSelect
--- @return void
function DModelSelect:SetHeight(num) end

--- (client) Called to set the list of models within the panel element. 
--- [https://wiki.facepunch.com/gmod/DModelSelect:SetModelList]
--- @param models table @ Each key is a model path, the value is a kay-value table where they key is a convar name and value is the value to set to that convar.
--- @param convar string @ No description provided
--- @param dontSort boolean @ No description provided
--- @param DontCallListConVars boolean @ No description provided
--- @return void
function DModelSelect:SetModelList(models, convar, dontSort, DontCallListConVars) end

