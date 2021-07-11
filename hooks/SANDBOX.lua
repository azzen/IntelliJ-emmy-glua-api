--- @class SANDBOX
SANDBOX = {}

--- (client) This hook is used to add default categories to spawnmenu tool tabs.
--- Do not override or hook this function, use [SANDBOX:AddToolMenuCategories](https://wiki.facepunch.com/gmod/SANDBOX:AddToolMenuCategories)! 
--- [https://wiki.facepunch.com/gmod/SANDBOX:AddGamemodeToolMenuCategories]
--- @return void
function SANDBOX:AddGamemodeToolMenuCategories() end

--- (client) This hook is used to add default tool tabs to spawnmenu.
--- Do not override or hook this function, use [SANDBOX:AddToolMenuTabs](https://wiki.facepunch.com/gmod/SANDBOX:AddToolMenuTabs)! 
--- [https://wiki.facepunch.com/gmod/SANDBOX:AddGamemodeToolMenuTabs]
--- @return void
function SANDBOX:AddGamemodeToolMenuTabs() end

--- (client) This hook is used to add new categories to spawnmenu tool tabs. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:AddToolMenuCategories]
--- @return void
function SANDBOX:AddToolMenuCategories() end

--- (client) This hook is used to add new tool tabs to spawnmenu. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:AddToolMenuTabs]
--- @return void
function SANDBOX:AddToolMenuTabs() end

--- (client/server) Called when a player attempts to "arm" a duplication with the Duplicator tool. Return false to prevent the player from sending data to server, and to ignore data if it was somehow sent anyway. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:CanArmDupe]
--- @param ply Player @ The player who attempted to arm a dupe.
--- @return boolean
function SANDBOX:CanArmDupe(ply) end

--- (client/server) Called when a player attempts to drive a prop via Prop Drive 
--- [https://wiki.facepunch.com/gmod/SANDBOX:CanDrive]
--- @param ply Player @ The player who attempted to use Prop Drive.
--- @param ent Entity @ The entity the player is attempting to drive
--- @return boolean
function SANDBOX:CanDrive(ply, ent) end

--- (client/server) Controls if a property can be used or not. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:CanProperty]
--- @param ply Player @ Player, that tried to use the property
--- @param property string @ Class of the property that is tried to use, for example - bonemanipulate
--- @param ent Entity @ The entity, on which property is tried to be used on
--- @return boolean
function SANDBOX:CanProperty(ply, property, ent) end

--- (client/server) Called when a player attempts to fire their tool gun. Return true to specifically allow the attempt, false to block it. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:CanTool]
--- @param ply Player @ The player who attempted to use their toolgun.
--- @param tr table @ A trace from the players eye to where in the world their crosshair/cursor is pointing. See [TraceResult](https://wiki.facepunch.com/gmod/Structures/TraceResult)
--- @param toolname string @ The tool mode the player currently has selected.
--- @param tool table @ The tool mode table the player currently has selected.
--- @param button number @ The tool button pressed.
--- @return boolean
function SANDBOX:CanTool(ply, tr, toolname, tool, button) end

--- (client) Called when player selects an item on the spawnmenu sidebar at the left. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:ContentSidebarSelection]
--- @param parent Panel @ The panel that holds spawnicons and the sidebar of spawnmenu
--- @param node Panel @ The item player selected
--- @return void
function SANDBOX:ContentSidebarSelection(parent, node) end

--- (client) Called when the context menu is supposedly closed.
--- This is simply an alias of [GM:OnContextMenuClose](https://wiki.facepunch.com/gmod/GM:OnContextMenuClose).
--- This hook **will** be called even if the Sandbox's context menu doesn't actually exist, i.e. [SANDBOX:ContextMenuEnabled](https://wiki.facepunch.com/gmod/SANDBOX:ContextMenuEnabled) blocked its creation. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:ContextMenuClosed]
--- @return void
function SANDBOX:ContextMenuClosed() end

--- (client) Called when the context menu is created. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:ContextMenuCreated]
--- @param g_ContextMenu Panel @ The created context menu panel
--- @return void
function SANDBOX:ContextMenuCreated(g_ContextMenu) end

--- (client) Allows to prevent the creation of the context menu. If the context menu is already created, this will have no effect. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:ContextMenuEnabled]
--- @return boolean
function SANDBOX:ContextMenuEnabled() end

--- (client) Called when the context menu is trying to be opened. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:ContextMenuOpen]
--- @return boolean
function SANDBOX:ContextMenuOpen() end

--- (client) Called when the context menu is supposedly opened.
--- This is simply an alias of [GM:OnContextMenuOpen](https://wiki.facepunch.com/gmod/GM:OnContextMenuOpen) but will **not** be called if [SANDBOX:ContextMenuOpen](https://wiki.facepunch.com/gmod/SANDBOX:ContextMenuOpen) prevents the context menu from opening.
--- This hook **will** be called even if the context menu doesn't actually exist, i.e. [SANDBOX:ContextMenuEnabled](https://wiki.facepunch.com/gmod/SANDBOX:ContextMenuEnabled) blocked its creation. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:ContextMenuOpened]
--- @return void
function SANDBOX:ContextMenuOpened() end

--- (client) Called from [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint); does nothing by default. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PaintNotes]
--- @return void
function SANDBOX:PaintNotes() end

--- (client) Called from [GM:HUDPaint](https://wiki.facepunch.com/gmod/GM:HUDPaint) to draw world tips. By default, enabling cl_drawworldtooltips will stop world tips from being drawn here.
--- See [AddWorldTip](https://wiki.facepunch.com/gmod/Global.AddWorldTip) for more information. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PaintWorldTips]
--- @return void
function SANDBOX:PaintWorldTips() end

--- (server) Called when persistent props are loaded. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PersistenceLoad]
--- @param name string @ Save from which to load.
--- @return void
function SANDBOX:PersistenceLoad(name) end

--- (server) Called when persistent props are saved. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PersistenceSave]
--- @param name string @ Where to save. By default is convar "sbox_persist".
--- @return void
function SANDBOX:PersistenceSave(name) end

--- (server) Called when a player attempts to give themselves a weapon from the Q menu. ( Left mouse clicks on an icon ) 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerGiveSWEP]
--- @param ply Player @ The player who attempted to give themselves a weapon.
--- @param weapon string @ Class name of the weapon the player tried to give themselves.
--- @param swep table @ The swep table of this weapon, see [SWEP](https://wiki.facepunch.com/gmod/Structures/SWEP)
--- @return boolean
function SANDBOX:PlayerGiveSWEP(ply, weapon, swep) end

--- (server) Called after the player spawned an effect. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnedEffect]
--- @param ply Player @ The player that spawned the effect
--- @param model string @ The model of spawned effect
--- @param ent Entity @ The spawned effect itself
--- @return void
function SANDBOX:PlayerSpawnedEffect(ply, model, ent) end

--- (server) Called after the player spawned an NPC. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnedNPC]
--- @param ply Player @ The player that spawned the NPC
--- @param ent Entity @ The spawned NPC itself
--- @return void
function SANDBOX:PlayerSpawnedNPC(ply, ent) end

--- (server) Called when a player has successfully spawned a prop from the Q menu. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnedProp]
--- @param ply Player @ The player who spawned a prop.
--- @param model string @ Path to the model of the prop the player is attempting to spawn.
--- @param entity Entity @ The entity that was spawned.
--- @return void
function SANDBOX:PlayerSpawnedProp(ply, model, entity) end

--- (server) Called after the player spawned a ragdoll. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnedRagdoll]
--- @param ply Player @ The player that spawned the ragdoll
--- @param model string @ The ragdoll model that player wants to spawn
--- @param ent Entity @ The spawned ragdoll itself
--- @return void
function SANDBOX:PlayerSpawnedRagdoll(ply, model, ent) end

--- (server) Called after the player has spawned a scripted entity. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnedSENT]
--- @param ply Player @ The player that spawned the SENT
--- @param ent Entity @ The spawned SENT
--- @return void
function SANDBOX:PlayerSpawnedSENT(ply, ent) end

--- (server) Called after the player has spawned a scripted weapon from the spawnmenu with a middle mouse click.
--- For left mouse click spawns, see [SANDBOX:PlayerGiveSWEP](https://wiki.facepunch.com/gmod/SANDBOX:PlayerGiveSWEP). 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnedSWEP]
--- @param ply Player @ The player that spawned the SWEP
--- @param ent Entity @ The SWEP itself
--- @return void
function SANDBOX:PlayerSpawnedSWEP(ply, ent) end

--- (server) Called after the player spawned a vehicle. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnedVehicle]
--- @param ply Player @ The player that spawned the vehicle
--- @param ent Entity @ The vehicle itself
--- @return void
function SANDBOX:PlayerSpawnedVehicle(ply, ent) end

--- (server) Called to ask if player allowed to spawn a particular effect or not. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnEffect]
--- @param ply Player @ The player that wants to spawn an effect
--- @param model string @ The effect model that player wants to spawn
--- @return boolean
function SANDBOX:PlayerSpawnEffect(ply, model) end

--- (server) Called to ask if player allowed to spawn a particular NPC or not. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnNPC]
--- @param ply Player @ The player that wants to spawn that NPC
--- @param npc_type string @ The npc type that player is trying to spawn
--- @param weapon string @ The weapon of that NPC
--- @return boolean
function SANDBOX:PlayerSpawnNPC(ply, npc_type, weapon) end

--- (server) Called to ask whether player is allowed to spawn a given model. This includes props, effects, and ragdolls and is called before the respective PlayerSpawn* hook. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnObject]
--- @param ply Player @ The player in question
--- @param model string @ Model path
--- @param skin number @ Skin number
--- @return boolean
function SANDBOX:PlayerSpawnObject(ply, model, skin) end

--- (server) Called when a player attempts to spawn a prop from the Q menu. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnProp]
--- @param ply Player @ The player who attempted to spawn a prop.
--- @param model string @ Path to the model of the prop the player is attempting to spawn.
--- @return boolean
function SANDBOX:PlayerSpawnProp(ply, model) end

--- (server) Called when a player attempts to spawn a ragdoll from the Q menu. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnRagdoll]
--- @param ply Player @ The player who attempted to spawn a ragdoll.
--- @param model string @ Path to the model of the ragdoll the player is attempting to spawn.
--- @return boolean
function SANDBOX:PlayerSpawnRagdoll(ply, model) end

--- (server) Called when a player attempts to spawn an Entity from the Q menu. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnSENT]
--- @param ply Player @ The player who attempted to spawn the entity.
--- @param class string @ Class name of the entity the player tried to spawn.
--- @return boolean
function SANDBOX:PlayerSpawnSENT(ply, class) end

--- (server) Called when a player attempts to spawn a weapon from the Q menu. ( Mouse wheel clicks on an icon ) 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnSWEP]
--- @param ply Player @ The player who attempted to spawn a weapon.
--- @param weapon string @ Class name of the weapon the player tried to spawn.
--- @param swep table @ Information about the weapon the player is trying to spawn, see [SWEP](https://wiki.facepunch.com/gmod/Structures/SWEP)
--- @return boolean
function SANDBOX:PlayerSpawnSWEP(ply, weapon, swep) end

--- (server) Called to ask if player allowed to spawn a particular vehicle or not. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PlayerSpawnVehicle]
--- @param ply Player @ The player that wants to spawn that vehicle
--- @param model string @ The vehicle model that player wants to spawn
--- @param name string @ Vehicle name
--- @param table table @ Table of that vehicle, containing info about it
--- @return boolean
function SANDBOX:PlayerSpawnVehicle(ply, model, name, table) end

--- (client) This hook makes the engine load the spawnlist text files.
--- It calls [spawnmenu.PopulateFromEngineTextFiles](https://wiki.facepunch.com/gmod/spawnmenu.PopulateFromEngineTextFiles) by default. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PopulatePropMenu]
--- @return void
function SANDBOX:PopulatePropMenu() end

--- (client) Called to populate the Scripted Tool menu. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PopulateSTOOLMenu]
--- @return void
function SANDBOX:PopulateSTOOLMenu() end

--- (client) Add the STOOLS to the tool menu. You want to call [spawnmenu.AddToolMenuOption](https://wiki.facepunch.com/gmod/spawnmenu.AddToolMenuOption) in this hook. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PopulateToolMenu]
--- @return void
function SANDBOX:PopulateToolMenu() end

--- (client) Called right after the Lua Loaded tool menus are reloaded. This is a good place to set up any [ControlPanel](https://wiki.facepunch.com/gmod/ControlPanel)s. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PostReloadToolsMenu]
--- @return void
function SANDBOX:PostReloadToolsMenu() end

--- (client) Called right before the Lua Loaded tool menus are reloaded. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:PreReloadToolsMenu]
--- @return void
function SANDBOX:PreReloadToolsMenu() end

--- (client) Called when there's one or more items selected in the spawnmenu by the player, to open the multi selection right click menu ([DMenu](https://wiki.facepunch.com/gmod/DMenu)) 
--- [https://wiki.facepunch.com/gmod/SANDBOX:SpawnlistOpenGenericMenu]
--- @param canvas Panel @ The canvas that has the selection. ([SANDBOX:SpawnlistOpenGenericMenu](https://wiki.facepunch.com/gmod/SANDBOX:SpawnlistOpenGenericMenu))
--- @return void
function SANDBOX:SpawnlistOpenGenericMenu(canvas) end

--- (client) If false is returned then the spawn menu is never created. This saves load times if your mod doesn't actually use the spawn menu for any reason. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:SpawnMenuEnabled]
--- @return boolean
function SANDBOX:SpawnMenuEnabled() end

--- (client) Called when spawnmenu is trying to be opened. 
--- [https://wiki.facepunch.com/gmod/SANDBOX:SpawnMenuOpen]
--- @return boolean
function SANDBOX:SpawnMenuOpen() end

