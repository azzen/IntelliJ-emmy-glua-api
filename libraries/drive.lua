--- @class drive
drive = {}

--- (client/server) Optionally alter the view. 
--- [https://wiki.facepunch.com/gmod/drive.CalcView]
--- @param ply Player @ The player
--- @param view table @ The view, see [ViewData](https://wiki.facepunch.com/gmod/Structures/ViewData)
--- @return boolean
function drive.CalcView(ply, view) end

--- (client/server) Clientside, the client creates the cmd (usercommand) from their input device (mouse, keyboard) and then it's sent to the server. Restrict view angles here. 
--- [https://wiki.facepunch.com/gmod/drive.CreateMove]
--- @param cmd CUserCmd @ The user command
--- @return boolean
function drive.CreateMove(cmd) end

--- (client/server) Destroys players current driving method. 
--- [https://wiki.facepunch.com/gmod/drive.DestroyMethod]
--- @param ply Player @ The player to affect
--- @return void
function drive.DestroyMethod(ply) end

--- (client/server) Player has stopped driving the entity. 
--- [https://wiki.facepunch.com/gmod/drive.End]
--- @param ply Player @ The player
--- @param ent Entity @ The entity
--- @return void
function drive.End(ply, ent) end

--- (client/server) The move is finished. Copy mv back into the target. 
--- [https://wiki.facepunch.com/gmod/drive.FinishMove]
--- @param ply Player @ The player
--- @param mv CMoveData @ The move data
--- @return boolean
function drive.FinishMove(ply, mv) end

--- (client/server) Returns ( or creates if inexistent ) a driving method. 
--- [https://wiki.facepunch.com/gmod/drive.GetMethod]
--- @param ply Player @ The player
--- @return table
function drive.GetMethod(ply) end

--- (client/server) The move is executed here. 
--- [https://wiki.facepunch.com/gmod/drive.Move]
--- @param ply Player @ The player
--- @param mv CMoveData @ The move data
--- @return boolean
function drive.Move(ply, mv) end

--- (client/server) Starts driving for the player. 
--- [https://wiki.facepunch.com/gmod/drive.PlayerStartDriving]
--- @param ply Player @ The player to affect
--- @param ent Entity @ The entity to drive
--- @param mode string @ The driving mode
--- @return void
function drive.PlayerStartDriving(ply, ent, mode) end

--- (client/server) Stops the player from driving anything. ( For example a prop in sandbox ) 
--- [https://wiki.facepunch.com/gmod/drive.PlayerStopDriving]
--- @param ply Player @ The player to affect
--- @return void
function drive.PlayerStopDriving(ply) end

--- (client/server) Registers a new entity drive. 
--- [https://wiki.facepunch.com/gmod/drive.Register]
--- @param name string @ The name of the drive.
--- @param data table @ The data required to create the drive. This includes the functions used by the drive.
--- @param base string @ The base of the drive.
--- @return void
function drive.Register(name, data, base) end

--- (client/server) Called when the player first starts driving this entity 
--- [https://wiki.facepunch.com/gmod/drive.Start]
--- @param ply Player @ The player
--- @param ent Entity @ The entity
--- @return void
function drive.Start(ply, ent) end

--- (client/server) The user command is received by the server and then converted into a move. This is also run clientside when in multiplayer, for prediction to work. 
--- [https://wiki.facepunch.com/gmod/drive.StartMove]
--- @param ply Player @ The player
--- @param mv CMoveData @ The move data
--- @param cmd CUserCmd @ The user command
--- @return boolean
function drive.StartMove(ply, mv, cmd) end

