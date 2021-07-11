--- @class PLAYER
PLAYER = {}

--- (client/server) Called when the player's class was changed from this class. 
--- [https://wiki.facepunch.com/gmod/PLAYER:ClassChanged]
--- @return void
function PLAYER:ClassChanged() end

--- (server) Called when the player dies 
--- [https://wiki.facepunch.com/gmod/PLAYER:Death]
--- @return void
function PLAYER:Death() end

--- (client) Called from [GM:FinishMove](https://wiki.facepunch.com/gmod/GM:FinishMove). 
--- [https://wiki.facepunch.com/gmod/PLAYER:FinishMove]
--- @param mv CMoveData @ No description provided
--- @return boolean
function PLAYER:FinishMove(mv) end

--- (client) Called on player spawn to determine which hand model to use 
--- [https://wiki.facepunch.com/gmod/PLAYER:GetHandsModel]
--- @return table
function PLAYER:GetHandsModel() end

--- (client/server) Called when the class object is created 
--- [https://wiki.facepunch.com/gmod/PLAYER:Init]
--- @return void
function PLAYER:Init() end

--- (server) Called on spawn to give the player their default loadout 
--- [https://wiki.facepunch.com/gmod/PLAYER:Loadout]
--- @return void
function PLAYER:Loadout() end

--- (client) Called from [GM:Move](https://wiki.facepunch.com/gmod/GM:Move). 
--- [https://wiki.facepunch.com/gmod/PLAYER:Move]
--- @param mv CMoveData @ Movement information
--- @return boolean
function PLAYER:Move(mv) end

--- (client) Called after the viewmodel has been drawn 
--- [https://wiki.facepunch.com/gmod/PLAYER:PostDrawViewModel]
--- @param viewmodel Entity @ The viewmodel
--- @param weapon Entity @ The weapon
--- @return void
function PLAYER:PostDrawViewModel(viewmodel, weapon) end

--- (client) Called before the viewmodel is drawn 
--- [https://wiki.facepunch.com/gmod/PLAYER:PreDrawViewModel]
--- @param viewmodel Entity @ The viewmodel
--- @param weapon Entity @ The weapon
--- @return void
function PLAYER:PreDrawViewModel(viewmodel, weapon) end

--- (server) Called when we need to set player model from the class. 
--- [https://wiki.facepunch.com/gmod/PLAYER:SetModel]
--- @return void
function PLAYER:SetModel() end

--- (client/server) Setup the network table accessors. 
--- [https://wiki.facepunch.com/gmod/PLAYER:SetupDataTables]
--- @return void
function PLAYER:SetupDataTables() end

--- (server) Called when the player spawns 
--- [https://wiki.facepunch.com/gmod/PLAYER:Spawn]
--- @return void
function PLAYER:Spawn() end

--- (client) Called from [GM:CreateMove](https://wiki.facepunch.com/gmod/GM:CreateMove). 
--- [https://wiki.facepunch.com/gmod/PLAYER:StartMove]
--- @param mv CMoveData @ No description provided
--- @param cmd CUserCmd @ No description provided
--- @return boolean
function PLAYER:StartMove(mv, cmd) end

--- (client) Called when the player changes their weapon to another one causing their viewmodel model to change 
--- [https://wiki.facepunch.com/gmod/PLAYER:ViewModelChanged]
--- @param viewmodel Entity @ The viewmodel that is changing
--- @param old string @ The old model
--- @param new string @ The new model
--- @return void
function PLAYER:ViewModelChanged(viewmodel, old, new) end

