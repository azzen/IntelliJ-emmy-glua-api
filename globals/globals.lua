--- (client/menu/server) Adds simple Get/Set accessor functions on the specified table.Can also force the value to be set to a number, bool or string. 
--- [https://wiki.facepunch.com/gmod/Global.AccessorFunc]
--- @param tab table @ The table to add the accessor functions too.
--- @param key any @ The key of the table to be get/set.
--- @param name string @ The name of the functions (will be prefixed with Get and Set).
--- @param force number @ The type the setter should force to (uses [FORCE](https://wiki.facepunch.com/gmod/Enums/FORCE)).
--- @return void
function AccessorFunc(tab, key, name, force) end

--- (client/menu/server) Defines a global entity class variable with an automatic value in order to prevent collisions with other [CLASS](https://wiki.facepunch.com/gmod/Enums/CLASS). You should prefix your variable with CLASS_ for consistency. 
--- [https://wiki.facepunch.com/gmod/Global.Add_NPC_Class]
--- @param name string @ The name of the new enum/global variable.
--- @return void
function Add_NPC_Class(name) end

--- (menu) Adds the specified image path to the main menu background pool. Image can be png or jpeg. 
--- [https://wiki.facepunch.com/gmod/Global.AddBackgroundImage]
--- @param path string @ Path to the image.
--- @return void
function AddBackgroundImage(path) end

--- (client/menu/server) Tells the engine to register a console command. If the command was ran, the engine calls [concommand.Run](https://wiki.facepunch.com/gmod/concommand.Run). 
--- [https://wiki.facepunch.com/gmod/Global.AddConsoleCommand]
--- @param name string @ The name of the console command to add.
--- @param helpText string @ The help text.
--- @param flags number @ Concommand flags using [FCVAR](https://wiki.facepunch.com/gmod/Enums/FCVAR)
--- @return void
function AddConsoleCommand(name, helpText, flags) end

--- (client/server) Marks a Lua file to be sent to clients when they join the server. Doesn't do anything on the client - this means you can use it in a shared file without problems. 
--- [https://wiki.facepunch.com/gmod/Global.AddCSLuaFile]
--- @param file string @ The name/path to the Lua file that should be sent, **relative to the garrysmod/lua folder**. If no parameter is specified, it sends the current file.The file path can be relative to the script it's ran from. For example, if your script is in `lua/myfolder/stuff.lua`, calling [AddCSLuaFile](https://wiki.facepunch.com/gmod/Global.AddCSLuaFile)("otherstuff.lua") and [AddCSLuaFile](https://wiki.facepunch.com/gmod/Global.AddCSLuaFile)("myfolder/otherstuff.lua") is the same thing.
--- @return void
function AddCSLuaFile(file) end

--- (client/menu) Loads the specified image from the `/cache` folder, used in combination [steamworks.Download](https://wiki.facepunch.com/gmod/steamworks.Download). Most addons will provide a 512x512 png image. 
--- [https://wiki.facepunch.com/gmod/Global.AddonMaterial]
--- @param name string @ The name of the file.
--- @return IMaterial
function AddonMaterial(name) end

--- (server) Adds the specified vector to the PVS which is currently building. This allows all objects in visleafs visible from that vector to be drawn. 
--- [https://wiki.facepunch.com/gmod/Global.AddOriginToPVS]
--- @param position Vector @ The origin to add.
--- @return void
function AddOriginToPVS(position) end

--- (client) This function creates a World Tip, similar to the one shown when aiming at a Thruster where it shows you its force.This function will make a World Tip that will only last 50 milliseconds (1/20th of a second), so you must call it continuously as long as you want the World Tip to be shown. It is common to call it inside a Think hook.Contrary to what the function's name implies, it is impossible to create more than one World Tip at the same time. A new World Tip will overwrite the old one, so only use this function when you know nothing else will also be using it.See [SANDBOX:PaintWorldTips](https://wiki.facepunch.com/gmod/SANDBOX:PaintWorldTips) for more information. 
--- [https://wiki.facepunch.com/gmod/Global.AddWorldTip]
--- @param entindex number @ **This argument is no longer used**; it has no effect on anything. You can use nil in this argument.
--- @param text string @ The text for the world tip to display.
--- @param dieTime number @ **This argument is no longer used**; when you add a World Tip it will always last only 0.05 seconds. You can use nil in this argument.
--- @param pos Vector @ Where in the world you want the World Tip to be drawn. If you add a valid Entity in the next argument, this argument will have no effect on the actual World Tip.
--- @param ent Entity @ Which entity you want to associate with the World Tip. This argument is optional. If set to a valid entity, this will override the position set in `pos` with the Entity's position.
--- @return void
function AddWorldTip(entindex, text, dieTime, pos, ent) end

--- (client/menu/server) Creates an [Angle](https://wiki.facepunch.com/gmod/Angle) object. 
--- [https://wiki.facepunch.com/gmod/Global.Angle]
--- @param pitch number @ The pitch value of the angle.If this is an [Angle](https://wiki.facepunch.com/gmod/Angle), this function will return a copy of the given angle.If this is a [string](https://wiki.facepunch.com/gmod/string), this function will try to parse the string as a angle. If it fails, it returns a 0 angle.(See examples)
--- @param yaw number @ The yaw value of the angle.
--- @param roll number @ The roll value of the angle.
--- @return Angle
function Angle(pitch, yaw, roll) end

--- (client/menu/server) Returns an angle with a randomized pitch, yaw, and roll between min(inclusive), max(exclusive). 
--- [https://wiki.facepunch.com/gmod/Global.AngleRand]
--- @param min number @ Min bound inclusive.
--- @param max number @ Max bound exclusive.
--- @return Angle
function AngleRand(min, max) end

--- (client/menu/server) If the result of the first argument is false or nil, an error is thrown with the second argument as the message. 
--- [https://wiki.facepunch.com/gmod/Global.assert]
--- @param expression any @ The expression to assert.
--- @param errorMessage string @ The error message to throw when assertion fails. This is only type-checked if the assertion fails.
--- @param returns vararg @ Any arguments past the error message will be returned by a successful assert.
--- @return any|any|vararg
function assert(expression, errorMessage, returns) end

--- (server) Sends the specified Lua code to all connected clients and executes it. 
--- [https://wiki.facepunch.com/gmod/Global.BroadcastLua]
--- @param code string @ The code to be executed. Capped at length of 254 characters.
--- @return void
function BroadcastLua(code) end

--- (client/server) Dumps the networked variables of all entities into one table and returns it. 
--- [https://wiki.facepunch.com/gmod/Global.BuildNetworkedVarsTable]
--- @return table
function BuildNetworkedVarsTable() end

--- (menu) Used internally to check if the current server the player is on can be added to favorites or not. Does not check if the server is ALREADY in the favorites. 
--- [https://wiki.facepunch.com/gmod/Global.CanAddServerToFavorites]
--- @return boolean
function CanAddServerToFavorites() end

--- (menu) Aborts joining of the server you are currently joining. 
--- [https://wiki.facepunch.com/gmod/Global.CancelLoading]
--- @return void
function CancelLoading() end

--- (menu) Sets the active main menu background image to a random entry from the background images pool. Images are added with [AddBackgroundImage](https://wiki.facepunch.com/gmod/Global.AddBackgroundImage). 
--- [https://wiki.facepunch.com/gmod/Global.ChangeBackground]
--- @param currentgm string @ Apparently does nothing.
--- @return void
function ChangeBackground(currentgm) end

--- (client/menu) Automatically called by the engine when a panel is hovered over with the mouse 
--- [https://wiki.facepunch.com/gmod/Global.ChangeTooltip]
--- @param panel Panel @ Panel that has been hovered over
--- @return void
function ChangeTooltip(panel) end

--- (menu) Empties the pool of main menu background images. 
--- [https://wiki.facepunch.com/gmod/Global.ClearBackgroundImages]
--- @return void
function ClearBackgroundImages() end

--- (client) Creates a non physical entity that only exists on the client. See also [ents.CreateClientProp](https://wiki.facepunch.com/gmod/ents.CreateClientProp). 
--- [https://wiki.facepunch.com/gmod/Global.ClientsideModel]
--- @param model string @ The file path to the model.
--- @param renderGroup number @ The render group of the entity for the clientside leaf system, see [RENDERGROUP](https://wiki.facepunch.com/gmod/Enums/RENDERGROUP).
--- @return CSEnt
function ClientsideModel(model, renderGroup) end

--- (client) Creates a fully clientside ragdoll. 
--- [https://wiki.facepunch.com/gmod/Global.ClientsideRagdoll]
--- @param model string @ The file path to the model.
--- @param renderGroup number @ The [RENDERGROUP](https://wiki.facepunch.com/gmod/Enums/RENDERGROUP) to assign.
--- @return CSEnt
function ClientsideRagdoll(model, renderGroup) end

--- (client) Creates a scene entity based on the scene name and the entity. 
--- [https://wiki.facepunch.com/gmod/Global.ClientsideScene]
--- @param name string @ The name of the scene.
--- @param targetEnt Entity @ The entity to play the scene on.
--- @return CSEnt
function ClientsideScene(name, targetEnt) end

--- (client/menu) Closes all Derma menus that have been passed to [RegisterDermaMenuForClose](https://wiki.facepunch.com/gmod/Global.RegisterDermaMenuForClose) and calls [GM:CloseDermaMenus](https://wiki.facepunch.com/gmod/GM:CloseDermaMenus) 
--- [https://wiki.facepunch.com/gmod/Global.CloseDermaMenus]
--- @return void
function CloseDermaMenus() end

--- (client/menu/server) Executes the specified action on the garbage collector. 
--- [https://wiki.facepunch.com/gmod/Global.collectgarbage]
--- @param action string @ The action to run.Valid actions are `collect`, `stop`, `restart`, `count`, `step`, `setpause` and `setstepmul`.
--- @param arg number @ The argument of the specified action, only applicable for `step`, `setpause` and `setstepmul`.
--- @return any
function collectgarbage(action, arg) end

--- (client/menu/server) Creates a [Color](https://wiki.facepunch.com/gmod/Color). 
--- [https://wiki.facepunch.com/gmod/Global.Color]
--- @param r number @ An integer from 0-255 describing the red value of the color.
--- @param g number @ An integer from 0-255 describing the green value of the color.
--- @param b number @ An integer from 0-255 describing the blue value of the color.
--- @param a number @ An integer from 0-255 describing the alpha (transparency) of the color.
--- @return table
function Color(r, g, b, a) end

--- (client/menu/server) Returns a new [Color](https://wiki.facepunch.com/gmod/Color) with the RGB components of the given [Color](https://wiki.facepunch.com/gmod/Color) and the alpha value specified. 
--- [https://wiki.facepunch.com/gmod/Global.ColorAlpha]
--- @param color table @ The [Color](https://wiki.facepunch.com/gmod/Color) from which to take RGB values. This color will not be modified.
--- @param alpha number @ The new alpha value, a number between 0 and 255. Values above 255 will be clamped.
--- @return table
function ColorAlpha(color, alpha) end

--- (client/menu/server) Creates a [Color](https://wiki.facepunch.com/gmod/Color) with randomized red, green, and blue components. If the alpha argument is true, alpha will also be randomized. 
--- [https://wiki.facepunch.com/gmod/Global.ColorRand]
--- @param a boolean @ Should alpha be randomized.
--- @return table
function ColorRand(a) end

--- (client/menu/server) Converts a [Color](https://wiki.facepunch.com/gmod/Color) into HSL color space. 
--- [https://wiki.facepunch.com/gmod/Global.ColorToHSL]
--- @param color table @ The [Color](https://wiki.facepunch.com/gmod/Color).
--- @return number|number|number
function ColorToHSL(color) end

--- (client/menu/server) Converts a [Color](https://wiki.facepunch.com/gmod/Color) into HSV color space. 
--- [https://wiki.facepunch.com/gmod/Global.ColorToHSV]
--- @param color table @ The [Color](https://wiki.facepunch.com/gmod/Color).
--- @return number|number|number
function ColorToHSV(color) end

--- (client/server) Attempts to compile the given file. If successful, returns a function that can be called to perform the actual execution of the script. 
--- [https://wiki.facepunch.com/gmod/Global.CompileFile]
--- @param path string @ Path to the file, relative to the garrysmod/lua/ directory.
--- @return function
function CompileFile(path) end

--- (client/menu/server) This function will compile the code argument as lua code and return a function that will execute that code. Please note that this function will not automatically execute the given code after compiling it. 
--- [https://wiki.facepunch.com/gmod/Global.CompileString]
--- @param code string @ The code to compile.
--- @param identifier string @ An identifier in case an error is thrown. (The same identifier can be used multiple times)
--- @param HandleError boolean @ If false this function will return an error string instead of throwing an error.
--- @return function
function CompileString(code, identifier, HandleError) end

--- (menu) Returns a table of console command names beginning with the given text. 
--- [https://wiki.facepunch.com/gmod/Global.ConsoleAutoComplete]
--- @param text string @ Text that the console commands must begin with.
--- @return table
function ConsoleAutoComplete(text) end

--- (client/menu/server) Returns whether a [ConVar](https://wiki.facepunch.com/gmod/ConVar) with the given name exists or not 
--- [https://wiki.facepunch.com/gmod/Global.ConVarExists]
--- @param name string @ Name of the [ConVar](https://wiki.facepunch.com/gmod/ConVar).
--- @return boolean
function ConVarExists(name) end

--- (client/menu/server) Makes a clientside-only console variableAlthough this function is shared, it should only be used clientside. 
--- [https://wiki.facepunch.com/gmod/Global.CreateClientConVar]
--- @param name string @ Name of the ConVar to be created and able to be accessed.This cannot be a name of existing console command or console variable. It will silently fail if it is.
--- @param default string @ Default value of the ConVar.
--- @param shouldsave boolean @ Should the ConVar be saved across sessions in the cfg/client.vdf file.
--- @param userinfo boolean @ Should the ConVar and its containing data be sent to the server when it has changed. This make the convar accessible from server using [Player:GetInfoNum](https://wiki.facepunch.com/gmod/Player:GetInfoNum) and similar functions.
--- @param helptext string @ Help text to display in the console.
--- @param min number @ If set, the convar cannot be changed to a number lower than this value.
--- @param max number @ If set, the convar cannot be changed to a number higher than this value.
--- @return ConVar
function CreateClientConVar(name, default, shouldsave, userinfo, helptext, min, max) end

--- (client/menu/server) Creates a console variable ([ConVar](https://wiki.facepunch.com/gmod/ConVar)), in general these are for things like gamemode/server settings. 
--- [https://wiki.facepunch.com/gmod/Global.CreateConVar]
--- @param name string @ Name of the [ConVar](https://wiki.facepunch.com/gmod/ConVar).This cannot be a name of an engine console command or console variable. It will silently fail if it is. If it is the same name as another lua ConVar, it will return that ConVar object.
--- @param value string @ Default value of the convar. Can also be a number.
--- @param flags number @ Flags of the convar, see [FCVAR](https://wiki.facepunch.com/gmod/Enums/FCVAR), either as bitflag or as table.
--- @param helptext string @ The help text to show in the console.
--- @param min number @ If set, the ConVar cannot be changed to a number lower than this value.
--- @param max number @ If set, the ConVar cannot be changed to a number higher than this value.
--- @return ConVar
function CreateConVar(name, value, flags, helptext, min, max) end

--- (client/menu) Creates a new material with the specified name and shader. 
--- [https://wiki.facepunch.com/gmod/Global.CreateMaterial]
--- @param name string @ The material name. Must be unique.
--- @param shaderName string @ The shader name. See [Shaders](https://wiki.facepunch.com/gmod/Shaders).
--- @param materialData table @ Key-value table that contains shader parameters and proxies.* See: [List of Shader Parameters on Valve Developers Wiki](https://developer.valvesoftware.com/wiki/Category:List_of_Shader_Parameters) and each shader's page from .
--- @return IMaterial
function CreateMaterial(name, shaderName, materialData) end

--- (client) Creates a new particle system. 
--- [https://wiki.facepunch.com/gmod/Global.CreateParticleSystem]
--- @param ent Entity @ The entity to attach the control point to.
--- @param effect string @ The name of the effect to create. It must be precached.
--- @param partAttachment number @ See [PATTACH](https://wiki.facepunch.com/gmod/Enums/PATTACH).
--- @param entAttachment number @ The attachment ID on the entity to attach the particle system to
--- @param offset Vector @ The offset from the [Entity:GetPos](https://wiki.facepunch.com/gmod/Entity:GetPos) of the entity we are attaching this CP to.
--- @return CNewParticleEffect
function CreateParticleSystem(ent, effect, partAttachment, entAttachment, offset) end

--- (client/server) Creates a new [PhysCollide](https://wiki.facepunch.com/gmod/PhysCollide) from the given bounds. 
--- [https://wiki.facepunch.com/gmod/Global.CreatePhysCollideBox]
--- @param mins Vector @ Min corner of the box. This is not automatically ordered with the maxs and must contain the smallest vector components. See [OrderVectors](https://wiki.facepunch.com/gmod/Global.OrderVectors).
--- @param maxs Vector @ Max corner of the box. This is not automatically ordered with the mins and must contain the largest vector components.
--- @return PhysCollide
function CreatePhysCollideBox(mins, maxs) end

--- (client/server) Creates [PhysCollide](https://wiki.facepunch.com/gmod/PhysCollide) objects for every physics object the model has. The model must be precached with [util.PrecacheModel](https://wiki.facepunch.com/gmod/util.PrecacheModel) before being used with this function. 
--- [https://wiki.facepunch.com/gmod/Global.CreatePhysCollidesFromModel]
--- @param modelName string @ Model path to get the collision objects of.
--- @return table
function CreatePhysCollidesFromModel(modelName) end

--- (client/server) Returns a sound parented to the specified entity. 
--- [https://wiki.facepunch.com/gmod/Global.CreateSound]
--- @param targetEnt Entity @ The target entity.
--- @param soundName string @ The sound to play.
--- @param filter CRecipientFilter @ A [CRecipientFilter](https://wiki.facepunch.com/gmod/CRecipientFilter) of the players that will have this sound networked to them.
--- @return CSoundPatch
function CreateSound(targetEnt, soundName, filter) end

--- (client) Creates and returns a new [DSprite](https://wiki.facepunch.com/gmod/DSprite) element with the supplied material. 
--- [https://wiki.facepunch.com/gmod/Global.CreateSprite]
--- @param material IMaterial @ Material the sprite should draw.
--- @return Panel
function CreateSprite(material) end

--- (client/menu/server) Returns the uptime of the server in seconds (to at least 4 decimal places)This is a synchronised value and affected by various factors such as host_timescale (or [game.GetTimeScale](https://wiki.facepunch.com/gmod/game.GetTimeScale)) and the server being paused - either by sv_pausable or all players disconnecting.You should use this function for timing in-game events but not for real-world events.See also: [RealTime](https://wiki.facepunch.com/gmod/Global.RealTime), [SysTime](https://wiki.facepunch.com/gmod/Global.SysTime) 
--- [https://wiki.facepunch.com/gmod/Global.CurTime]
--- @return number
function CurTime() end

--- (client/server) Returns an [CTakeDamageInfo](https://wiki.facepunch.com/gmod/CTakeDamageInfo) object. 
--- [https://wiki.facepunch.com/gmod/Global.DamageInfo]
--- @return CTakeDamageInfo
function DamageInfo() end

--- (client/menu/server) Writes text to the right hand side of the screen, like the old error system. Messages disappear after a couple of seconds. 
--- [https://wiki.facepunch.com/gmod/Global.DebugInfo]
--- @param slot number @ The location on the right hand screen to write the debug info to. Starts at 0, no upper limit
--- @param info string @ The debugging information to be written to the screen
--- @return void
function DebugInfo(slot, info) end

--- (client/menu/server) This is not a function. This is a preprocessor keyword that translates to:```local BaseClass = baseclass.Get( "my_weapon" )```If you type `DEFINE_BASECLASS( "my_weapon" )` in your script.See [baseclass.Get](https://wiki.facepunch.com/gmod/baseclass.Get) for more information. 
--- [https://wiki.facepunch.com/gmod/Global.DEFINE_BASECLASS]
--- @param value string @ Baseclass name
--- @return void
function DEFINE_BASECLASS(value) end

--- (client/server) Loads and registers the specified gamemode, setting the GM table's DerivedFrom field to the value provided, if the table exists. The DerivedFrom field is used post-gamemode-load as the "derived" parameter for [gamemode.Register](https://wiki.facepunch.com/gmod/gamemode.Register). 
--- [https://wiki.facepunch.com/gmod/Global.DeriveGamemode]
--- @param base string @ Gamemode name to derive from.
--- @return void
function DeriveGamemode(base) end

--- (client/menu) Creates a new derma animation. 
--- [https://wiki.facepunch.com/gmod/Global.Derma_Anim]
--- @param name string @ Name of the animation to create
--- @param panel Panel @ Panel to run the animation on
--- @param func function @ Function to call to process the animationArguments:* [Panel](https://wiki.facepunch.com/gmod/Panel) pnl - the panel passed to Derma_Anim* [table](https://wiki.facepunch.com/gmod/table) anim - the anim table* [number](https://wiki.facepunch.com/gmod/number) delta - the fraction of the progress through the animation* [any](https://wiki.facepunch.com/gmod/any) data - optional data passed to the run metatable method
--- @return table
function Derma_Anim(name, panel, func) end

--- (client/menu) Draws background blur around the given panel. 
--- [https://wiki.facepunch.com/gmod/Global.Derma_DrawBackgroundBlur]
--- @param panel Panel @ Panel to draw the background blur around
--- @param startTime number @ Time that the blur began being painted
--- @return void
function Derma_DrawBackgroundBlur(panel, startTime) end

--- (client/menu) Creates panel method that calls the supplied Derma skin hook via [derma.SkinHook](https://wiki.facepunch.com/gmod/derma.SkinHook) 
--- [https://wiki.facepunch.com/gmod/Global.Derma_Hook]
--- @param panel Panel @ Panel to add the hook to
--- @param functionName string @ Name of panel function to create
--- @param hookName string @ Name of Derma skin hook to call within the function
--- @param typeName string @ Type of element to call Derma skin hook for
--- @return void
function Derma_Hook(panel, functionName, hookName, typeName) end

--- (client/menu) Makes the panel (usually an input of sorts) respond to changes in console variables by adding next functions to the panel:* [Panel:SetConVar](https://wiki.facepunch.com/gmod/Panel:SetConVar)* [Panel:ConVarChanged](https://wiki.facepunch.com/gmod/Panel:ConVarChanged)* [Panel:ConVarStringThink](https://wiki.facepunch.com/gmod/Panel:ConVarStringThink)* [Panel:ConVarNumberThink](https://wiki.facepunch.com/gmod/Panel:ConVarNumberThink)The console variable value is saved in the `m_strConVar` property of the panel.The panel should call[Panel:ConVarStringThink](https://wiki.facepunch.com/gmod/Panel:ConVarStringThink) or [Panel:ConVarNumberThink](https://wiki.facepunch.com/gmod/Panel:ConVarNumberThink) in its [PANEL:Think](https://wiki.facepunch.com/gmod/PANEL:Think) hook and should call [Panel:ConVarChanged](https://wiki.facepunch.com/gmod/Panel:ConVarChanged) when the panel's value has changed. 
--- [https://wiki.facepunch.com/gmod/Global.Derma_Install_Convar_Functions]
--- @param target Panel @ The panel the functions should be added to.
--- @return void
function Derma_Install_Convar_Functions(target) end

--- (client/menu) Creates a derma window to display information 
--- [https://wiki.facepunch.com/gmod/Global.Derma_Message]
--- @param Text string @ The text within the created panel.
--- @param Title string @ The title of the created panel.
--- @param Button string @ The text of the button to close the panel.
--- @return Panel
function Derma_Message(Text, Title, Button) end

--- (client/menu) Shows a message box in the middle of the screen, with up to 4 buttons they can press. 
--- [https://wiki.facepunch.com/gmod/Global.Derma_Query]
--- @param text string @ The message to display.
--- @param title string @ The title to give the message box.
--- @param btn1text string @ The text to display on the first button.
--- @param btn1func function @ The function to run if the user clicks the first button.
--- @param btn2text string @ The text to display on the second button.
--- @param btn2func function @ The function to run if the user clicks the second button.
--- @param btn3text string @ The text to display on the third button
--- @param btn3func function @ The function to run if the user clicks the third button.
--- @param btn4text string @ The text to display on the fourth button
--- @param btn4func function @ The function to run if the user clicks the fourth button.
--- @return Panel
function Derma_Query(text, title, btn1text, btn1func, btn2text, btn2func, btn3text, btn3func, btn4text, btn4func) end

--- (client/menu) Creates a derma window asking players to input a string. 
--- [https://wiki.facepunch.com/gmod/Global.Derma_StringRequest]
--- @param title string @ The title of the created panel.
--- @param subtitle string @ The text above the input box
--- @param default string @ The default text for the input box.
--- @param confirm function @ The function to be called once the user has confirmed their input.
--- @param cancel function @ The function to be called once the user has cancelled their input
--- @param confirmText string @ Allows you to override text of the "OK" button
--- @param cancelText string @ Allows you to override text of the "Cancel" button
--- @return Panel
function Derma_StringRequest(title, subtitle, default, confirm, cancel, confirmText, cancelText) end

--- (client/menu) Creates a [DMenu](https://wiki.facepunch.com/gmod/DMenu) and closes any current menus. 
--- [https://wiki.facepunch.com/gmod/Global.DermaMenu]
--- @param keepOpen boolean @ If we should keep other [DMenu](https://wiki.facepunch.com/gmod/DMenu)s open (`true`) or not (`false`).
--- @param parent Panel @ The panel to parent the created menu to.
--- @return Panel
function DermaMenu(keepOpen, parent) end

--- (client/menu) Sets whether rendering should be limited to being inside a panel or not.See also [Panel:NoClipping](https://wiki.facepunch.com/gmod/Panel:NoClipping). 
--- [https://wiki.facepunch.com/gmod/Global.DisableClipping]
--- @param disable boolean @ Whether or not clipping should be disabled
--- @return boolean
function DisableClipping(disable) end

--- (client) Cancels current DOF post-process effect started with [DOF_Start](https://wiki.facepunch.com/gmod/Global.DOF_Start) 
--- [https://wiki.facepunch.com/gmod/Global.DOF_Kill]
--- @return void
function DOF_Kill() end

--- (client) Cancels any existing DOF post-process effects.Begins the DOF post-process effect. 
--- [https://wiki.facepunch.com/gmod/Global.DOF_Start]
--- @return void
function DOF_Start() end

--- (client) A hacky method used to fix some bugs regarding DoF. What this basically does it force all `C_BaseAnimating` entities to have the translucent [rendergroup](https://wiki.facepunch.com/gmod/Enums/RENDERGROUP), even if they use opaque or two-pass models. 
--- [https://wiki.facepunch.com/gmod/Global.DOFModeHack]
--- @param enable boolean @ Enables or disables depth-of-field mode
--- @return void
function DOFModeHack(enable) end

--- (menu) Draws the currently active main menu background image and handles transitioning between background images.This is called by default in the menu panel's Paint hook. 
--- [https://wiki.facepunch.com/gmod/Global.DrawBackground]
--- @return void
function DrawBackground() end

--- (client) Draws the bloom shader, which creates a glowing effect from bright objects. 
--- [https://wiki.facepunch.com/gmod/Global.DrawBloom]
--- @param Darken number @ Determines how much to darken the effect. A lower number will make the glow come from lower light levels. A value of `1` will make the bloom effect unnoticeable. Negative values will make even pitch black areas glow.
--- @param Multiply number @ Will affect how bright the glowing spots are. A value of `0` will make the bloom effect unnoticeable.
--- @param SizeX number @ The size of the bloom effect along the horizontal axis.
--- @param SizeY number @ The size of the bloom effect along the vertical axis.
--- @param Passes number @ Determines how much to exaggerate the effect.
--- @param ColorMultiply number @ Will multiply the colors of the glowing spots, making them more vivid.
--- @param Red number @ How much red to multiply with the glowing color. Should be between `0` and `1`.
--- @param Green number @ How much green to multiply with the glowing color. Should be between `0` and `1`.
--- @param Blue number @ How much blue to multiply with the glowing color. Should be between `0` and `1`.
--- @return void
function DrawBloom(Darken, Multiply, SizeX, SizeY, Passes, ColorMultiply, Red, Green, Blue) end

--- (client) Draws the Bokeh Depth Of Field effect . 
--- [https://wiki.facepunch.com/gmod/Global.DrawBokehDOF]
--- @param intensity number @ Intensity of the effect.
--- @param distance number @ **Not worldspace distance**. Value range is from `0` to `1`.
--- @param focus number @ Focus. Recommended values are from 0 to 12.
--- @return void
function DrawBokehDOF(intensity, distance, focus) end

--- (client) Draws the Color Modify shader, which can be used to adjust colors on screen. 
--- [https://wiki.facepunch.com/gmod/Global.DrawColorModify]
--- @param modifyParameters table @ Color modification parameters. See [Shaders/g_colourmodify](https://wiki.facepunch.com/gmod/Shaders/g_colourmodify) and the example below. Note that if you leave out a field, it will retain its last value which may have changed if another caller uses this function.
--- @return void
function DrawColorModify(modifyParameters) end

--- (client) Draws a material overlay on the screen. 
--- [https://wiki.facepunch.com/gmod/Global.DrawMaterialOverlay]
--- @param Material string @ This will be the material that is drawn onto the screen.
--- @param RefractAmount number @ This will adjust how much the material will refract your screen.
--- @return void
function DrawMaterialOverlay(Material, RefractAmount) end

--- (client) Creates a motion blur effect by drawing your screen multiple times. 
--- [https://wiki.facepunch.com/gmod/Global.DrawMotionBlur]
--- @param AddAlpha number @ How much alpha to change per frame.
--- @param DrawAlpha number @ How much alpha the frames will have. A value of 0 will not render the motion blur effect.
--- @param Delay number @ Determines the amount of time between frames to capture.
--- @return void
function DrawMotionBlur(AddAlpha, DrawAlpha, Delay) end

--- (client) Draws the sharpen shader, which creates more contrast. 
--- [https://wiki.facepunch.com/gmod/Global.DrawSharpen]
--- @param Contrast number @ How much contrast to create.
--- @param Distance number @ How large the contrast effect will be.
--- @return void
function DrawSharpen(Contrast, Distance) end

--- (client) Draws the sobel shader, which detects edges and draws a black border. 
--- [https://wiki.facepunch.com/gmod/Global.DrawSobel]
--- @param Threshold number @ Determines the threshold of edges. A value of `0` will make your screen completely black.
--- @return void
function DrawSobel(Threshold) end

--- (client) Renders the post-processing effect of beams of light originating from the map's sun. Utilises the `pp/sunbeams` material. 
--- [https://wiki.facepunch.com/gmod/Global.DrawSunbeams]
--- @param darken number @ `$darken` property for sunbeams material.
--- @param multiplier number @ `$multiply` property for sunbeams material.
--- @param sunSize number @ `$sunsize` property for sunbeams material.
--- @param sunX number @ `$sunx` property for sunbeams material.
--- @param sunY number @ `$suny` property for sunbeams material.
--- @return void
function DrawSunbeams(darken, multiplier, sunSize, sunX, sunY) end

--- (client) Draws the texturize shader, which replaces each pixel on your screen with a different part of the texture depending on its brightness. See [g_texturize](https://wiki.facepunch.com/gmod/Shaders/g_texturize) for information on making the texture. 
--- [https://wiki.facepunch.com/gmod/Global.DrawTexturize]
--- @param Scale number @ Scale of the texture. A smaller number creates a larger texture.
--- @param BaseTexture number @ This will be the texture to use in the effect. Make sure you use [Material](https://wiki.facepunch.com/gmod/Global.Material) to get the texture number.
--- @return void
function DrawTexturize(Scale, BaseTexture) end

--- (client) Draws the toy town shader, which blurs the top and bottom of your screen. This can make very large objects look like toys, hence the name. 
--- [https://wiki.facepunch.com/gmod/Global.DrawToyTown]
--- @param Passes number @ An integer determining how many times to draw the effect. A higher number creates more blur.
--- @param Height number @ The amount of screen which should be blurred on the top and bottom.
--- @return void
function DrawToyTown(Passes, Height) end

--- (client/server) Drops the specified entity if it is being held by any player with Gravity Gun or +use pickup. 
--- [https://wiki.facepunch.com/gmod/Global.DropEntityIfHeld]
--- @param ent Entity @ The entity to drop.
--- @return void
function DropEntityIfHeld(ent) end

--- (client) Creates or replaces a dynamic light with the given id. 
--- [https://wiki.facepunch.com/gmod/Global.DynamicLight]
--- @param index number @ An unsigned Integer. Usually an [entity index](https://wiki.facepunch.com/gmod/Entity:EntIndex) is used here.
--- @param elight boolean @ Allocates an elight instead of a dlight. Elights have a higher light limit and do not light the world (making the "noworld" parameter have no effect).
--- @return table
function DynamicLight(index, elight) end

--- (client/server) Returns a [CEffectData](https://wiki.facepunch.com/gmod/CEffectData) object to be used with [util.Effect](https://wiki.facepunch.com/gmod/util.Effect). 
--- [https://wiki.facepunch.com/gmod/Global.EffectData]
--- @return CEffectData
function EffectData() end

--- (client/menu/server) An [eagerly evaluated](https://en.wikipedia.org/wiki/Eager_evaluation) [ternary operator](https://en.wikipedia.org/wiki/%3F:), or, in layman's terms, a compact "if then else" statement.In most cases, you should just use Lua's ["pseudo" ternary operator](https://en.wikipedia.org/wiki/%3F:#Lua), like this:```local myCondition = truelocal consequent = "myCondition is true"local alternative = "myCondition is false"print(myCondition and consequent or alternative)```In the above example, due to [short-circuit evaluation](https://en.wikipedia.org/wiki/Short-circuit_evaluation), `consequent` would be "skipped" and ignored (not evaluated) by Lua due to `myCondition` being `true`, and only `alternative` would be evaluated. However, when using `Either`, both `consequent` and `alternative` would be evaluated. A practical example of this can be found at the bottom of the page.# Falsey valuesIf `consequent` is "falsey" (Lua considers both `false` and `nil` as false), this will not work. For example:```local X = truelocal Y = falselocal Z = "myCondition is false"print(X and Y or Z)```This will actually print the value of `Z`.In the above case, and other very rare cases, you may find `Either` useful. 
--- [https://wiki.facepunch.com/gmod/Global.Either]
--- @param condition any @ The condition to check if true or false.
--- @param truevar any @ If the condition isn't nil/false, returns this value.
--- @param falsevar any @ If the condition is nil/false, returns this value.
--- @return any
function Either(condition, truevar, falsevar) end

--- (client/server) Plays a sentence from `scripts/sentences.txt` 
--- [https://wiki.facepunch.com/gmod/Global.EmitSentence]
--- @param soundName string @ The sound to play
--- @param position Vector @ The position to play at
--- @param entity number @ The entity to emit the sound from. Must be [Entity:EntIndex](https://wiki.facepunch.com/gmod/Entity:EntIndex)
--- @param channel number @ The sound channel, see [CHAN](https://wiki.facepunch.com/gmod/Enums/CHAN).
--- @param volume number @ The volume of the sound, from 0 to 1
--- @param soundLevel number @ The sound level of the sound, see [SNDLVL](https://wiki.facepunch.com/gmod/Enums/SNDLVL)
--- @param soundFlags number @ The flags of the sound, see [SND](https://wiki.facepunch.com/gmod/Enums/SND)
--- @param pitch number @ The pitch of the sound, 0-255
--- @return void
function EmitSentence(soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch) end

--- (client/server) Emits the specified sound at the specified position. 
--- [https://wiki.facepunch.com/gmod/Global.EmitSound]
--- @param soundName string @ The sound to play
--- @param position Vector @ The position where the sound is meant to play, used only for a network  filter (`CPASAttenuationFilter`) to decide which players will hear the sound.
--- @param entity number @ The entity to emit the sound from. Can be an [Entity:EntIndex](https://wiki.facepunch.com/gmod/Entity:EntIndex) or one of the following:* `0` - Plays sound on the world (position set to `0,0,0`)* `-1` - Plays sound on the local player (on server acts as `0`)* `-2` - Plays UI sound (position set to `0,0,0`, no spatial sound, on server acts as `0`)
--- @param channel number @ The sound channel, see [CHAN](https://wiki.facepunch.com/gmod/Enums/CHAN).
--- @param volume number @ The volume of the sound, from 0 to 1
--- @param soundLevel number @ The sound level of the sound, see [SNDLVL](https://wiki.facepunch.com/gmod/Enums/SNDLVL)
--- @param soundFlags number @ The flags of the sound, see [SND](https://wiki.facepunch.com/gmod/Enums/SND)
--- @param pitch number @ The pitch of the sound, 0-255
--- @param dsp number @ The DSP preset for this sound. [List of DSP presets](https://developer.valvesoftware.com/wiki/Dsp_presets)
--- @return void
function EmitSound(soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch, dsp) end

--- (client/menu) Removes the currently active tool tip from the screen. 
--- [https://wiki.facepunch.com/gmod/Global.EndTooltip]
--- @param panel Panel @ This is the panel that has a tool tip.
--- @return void
function EndTooltip(panel) end

--- (client/server) Returns the entity with the matching [Entity:EntIndex](https://wiki.facepunch.com/gmod/Entity:EntIndex).Indices `1` through [game.MaxPlayers](https://wiki.facepunch.com/gmod/game.MaxPlayers)() are always reserved for players. 
--- [https://wiki.facepunch.com/gmod/Global.Entity]
--- @param entityIndex number @ The entity index.
--- @return Entity
function Entity(entityIndex) end

--- (client/menu/server) Throws a Lua error and breaks out of the current call stack. 
--- [https://wiki.facepunch.com/gmod/Global.error(lowercase)]
--- @param message string @ The error message to throw
--- @param errorLevel number @ The level to throw the error at.
--- @return void
function error(message, errorLevel) end

--- (client/menu/server) Throws a Lua error but does not break out of the current call stack.This function will not print a stack trace like a normal error would.Essentially similar if not equivalent to [Msg](https://wiki.facepunch.com/gmod/Global.Msg). 
--- [https://wiki.facepunch.com/gmod/Global.ErrorNoHalt]
--- @param arguments vararg @ Converts all arguments to strings and prints them with no spacing.
--- @return void
function ErrorNoHalt(arguments) end

--- (client/menu/server) Throws a Lua error but does not break out of the current call stack.This function will print a stack trace like a normal error would. 
--- [https://wiki.facepunch.com/gmod/Global.ErrorNoHaltWithStack]
--- @param arguments vararg @ Converts all arguments to strings and prints them with no spacing.
--- @return void
function ErrorNoHaltWithStack(arguments) end

--- (client) Returns the angles of the current render context as calculated by [GM:CalcView](https://wiki.facepunch.com/gmod/GM:CalcView). 
--- [https://wiki.facepunch.com/gmod/Global.EyeAngles]
--- @return Angle
function EyeAngles() end

--- (client) Returns the origin of the current render context as calculated by [GM:CalcView](https://wiki.facepunch.com/gmod/GM:CalcView). 
--- [https://wiki.facepunch.com/gmod/Global.EyePos]
--- @return Vector
function EyePos() end

--- (client) Returns the normal vector of the current render context as calculated by [GM:CalcView](https://wiki.facepunch.com/gmod/GM:CalcView), similar to [EyeAngles](https://wiki.facepunch.com/gmod/Global.EyeAngles). 
--- [https://wiki.facepunch.com/gmod/Global.EyeVector]
--- @return Vector
function EyeVector() end

--- (client/menu/server) Returns the meta table for the class with the matching name.Internally returns [debug.getregistry](https://wiki.facepunch.com/gmod/debug.getregistry)()[metaName]You can learn more about meta tables on the [Meta Tables](https://wiki.facepunch.com/gmod/Meta%20Tables) page.You can find a list of meta tables that can be retrieved with this function on [TYPE](https://wiki.facepunch.com/gmod/Enums/TYPE). The name in the description is the string to use with this function. 
--- [https://wiki.facepunch.com/gmod/Global.FindMetaTable]
--- @param metaName string @ The object type to retrieve the meta table of.
--- @return table
function FindMetaTable(metaName) end

--- (client/menu) Returns the tool-tip text and tool-tip-panel (if any) of the given panel as well as itself 
--- [https://wiki.facepunch.com/gmod/Global.FindTooltip]
--- @param panel Panel @ Panel to find tool-tip of
--- @return string|Panel|Panel
function FindTooltip(panel) end

--- (client/menu/server) Formats the specified values into the string given. Same as [string.format](https://wiki.facepunch.com/gmod/string.format). 
--- [https://wiki.facepunch.com/gmod/Global.Format]
--- @param format string @ The string to be formatted.Follows this format: http://www.cplusplus.com/reference/cstdio/printf/
--- @param formatParameters vararg @ Values to be formatted into the string.
--- @return string
function Format(format, formatParameters) end

--- (client) Returns the number of frames rendered since the game was launched. 
--- [https://wiki.facepunch.com/gmod/Global.FrameNumber]
--- @return void
function FrameNumber() end

--- (client/menu/server) Returns the [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime)-based time in seconds it took to render the last frame.This should be used for frame/tick based timing, such as movement prediction or animations.For real-time-based frame time that isn't affected by host_timescale, use [RealFrameTime](https://wiki.facepunch.com/gmod/Global.RealFrameTime). RealFrameTime is more suited for things like GUIs or HUDs. 
--- [https://wiki.facepunch.com/gmod/Global.FrameTime]
--- @return number
function FrameTime() end

--- (menu) Callback function for when the client has joined a server. This function shows the server's loading URL by default. 
--- [https://wiki.facepunch.com/gmod/Global.GameDetails]
--- @param servername string @ Server's name.
--- @param serverurl string @ Server's loading screen URL, or "" if the URL is not set.
--- @param mapname string @ Server's current map's name.
--- @param maxplayers number @ Max player count of server.
--- @param steamid string @ The local player's [Player:SteamID64](https://wiki.facepunch.com/gmod/Player:SteamID64).
--- @param gamemode string @ Server's current gamemode's folder name.
--- @return void
function GameDetails(servername, serverurl, mapname, maxplayers, steamid, gamemode) end

--- (client/menu/server) Returns the current floored dynamic memory usage of Lua in kilobytes. 
--- [https://wiki.facepunch.com/gmod/Global.gcinfo]
--- @return number
function gcinfo() end

--- (client/menu/server) Gets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) with the specified name. 
--- [https://wiki.facepunch.com/gmod/Global.GetConVar]
--- @param name string @ Name of the ConVar to get
--- @return ConVar
function GetConVar(name) end

--- (client/menu/server) Gets the ConVar with the specified name. This function doesn't cache the convar. 
--- [https://wiki.facepunch.com/gmod/Global.GetConVar_Internal]
--- @param name string @ Name of the ConVar to get
--- @return ConVar
function GetConVar_Internal(name) end

--- (client/menu/server) Gets the numeric value ConVar with the specified name. 
--- [https://wiki.facepunch.com/gmod/Global.GetConVarNumber]
--- @param name string @ Name of the ConVar to get.
--- @return number
function GetConVarNumber(name) end

--- (client/menu/server) Gets the string value ConVar with the specified name. 
--- [https://wiki.facepunch.com/gmod/Global.GetConVarString]
--- @param name string @ Name of the ConVar to get.
--- @return string
function GetConVarString(name) end

--- (menu) Returns the default loading screen URL (asset://garrysmod/html/loading.html) 
--- [https://wiki.facepunch.com/gmod/Global.GetDefaultLoadingHTML]
--- @return string
function GetDefaultLoadingHTML() end

--- (menu) Retrieves data about the demo with the specified filename. Similar to [GetSaveFileDetails](https://wiki.facepunch.com/gmod/Global.GetSaveFileDetails). 
--- [https://wiki.facepunch.com/gmod/Global.GetDemoFileDetails]
--- @param filename string @ The file name of the demo.
--- @return table
function GetDemoFileDetails(filename) end

--- (menu) Returns a table with the names of files needed from the server you are currently joining. 
--- [https://wiki.facepunch.com/gmod/Global.GetDownloadables]
--- @return table
function GetDownloadables() end

--- (client/menu/server) Returns the environment table of either the stack level or the function specified. 
--- [https://wiki.facepunch.com/gmod/Global.getfenv]
--- @param location function @ The object to get the enviroment from. Can also be a number that specifies the function at that stack level: Level 1 is the function calling getfenv.
--- @return table
function getfenv(location) end

--- (client/server) Returns an angle that is shared between the server and all clients. 
--- [https://wiki.facepunch.com/gmod/Global.GetGlobalAngle]
--- @param index string @ The unique index to identify the global value with.
--- @param default Angle @ The value to return if the global value is not set.
--- @return Angle
function GetGlobalAngle(index, default) end

--- (client/server) Returns a boolean that is shared between the server and all clients. 
--- [https://wiki.facepunch.com/gmod/Global.GetGlobalBool]
--- @param index string @ The unique index to identify the global value with.
--- @param default boolean @ The value to return if the global value is not set.
--- @return boolean
function GetGlobalBool(index, default) end

--- (client/server) Returns an entity that is shared between the server and all clients. 
--- [https://wiki.facepunch.com/gmod/Global.GetGlobalEntity]
--- @param index string @ The unique index to identify the global value with.
--- @param default Entity @ The value to return if the global value is not set.
--- @return Entity
function GetGlobalEntity(index, default) end

--- (client/server) Returns a float that is shared between the server and all clients. 
--- [https://wiki.facepunch.com/gmod/Global.GetGlobalFloat]
--- @param index string @ The unique index to identify the global value with.
--- @param default number @ The value to return if the global value is not set.
--- @return number
function GetGlobalFloat(index, default) end

--- (client/server) Returns an integer that is shared between the server and all clients. 
--- [https://wiki.facepunch.com/gmod/Global.GetGlobalInt]
--- @param index string @ The unique index to identify the global value with.
--- @param default number @ The value to return if the global value is not set.
--- @return number
function GetGlobalInt(index, default) end

--- (client/server) Returns a string that is shared between the server and all clients. 
--- [https://wiki.facepunch.com/gmod/Global.GetGlobalString]
--- @param index string @ The unique index to identify the global value with.
--- @param default string @ The value to return if the global value is not set.
--- @return string
function GetGlobalString(index, default) end

--- (client/server) Returns a vector that is shared between the server and all clients. 
--- [https://wiki.facepunch.com/gmod/Global.GetGlobalVector]
--- @param Index string @ The unique index to identify the global value with.
--- @param Default Vector @ The value to return if the global value is not set.
--- @return Vector
function GetGlobalVector(Index, Default) end

--- (client/server) Returns the name of the current server. 
--- [https://wiki.facepunch.com/gmod/Global.GetHostName]
--- @return string
function GetHostName() end

--- (client) Returns the panel that is used as a wrapper for the HUD. If you want your panel to be hidden when the main menu is opened, parent it to this. Child panels will also have their controls disabled.See also [vgui.GetWorldPanel](https://wiki.facepunch.com/gmod/vgui.GetWorldPanel) 
--- [https://wiki.facepunch.com/gmod/Global.GetHUDPanel]
--- @return Panel
function GetHUDPanel() end

--- (menu) Returns the loading screen panel and creates it if it doesn't exist. 
--- [https://wiki.facepunch.com/gmod/Global.GetLoadPanel]
--- @return Panel
function GetLoadPanel() end

--- (menu) Returns the current status of the server join progress. 
--- [https://wiki.facepunch.com/gmod/Global.GetLoadStatus]
--- @return string
function GetLoadStatus() end

--- (menu) Returns a table with the names of all maps and categories that you have on your client. 
--- [https://wiki.facepunch.com/gmod/Global.GetMapList]
--- @return table
function GetMapList() end

--- (client/menu/server) Returns the metatable of an object. This function obeys the metatable's __metatable field, and will return that field if the metatable has it set.Use [debug.getmetatable](https://wiki.facepunch.com/gmod/debug.getmetatable) if you want the true metatable of the object. 
--- [https://wiki.facepunch.com/gmod/Global.getmetatable]
--- @param object any @ The value to return the metatable of.
--- @return any
function getmetatable(object) end

--- (menu) Returns the menu overlay panel, a container for panels like the error panel created in [GM:OnLuaError](https://wiki.facepunch.com/gmod/GM:OnLuaError). 
--- [https://wiki.facepunch.com/gmod/Global.GetOverlayPanel]
--- @return Panel
function GetOverlayPanel() end

--- (client/server) Returns the player whose movement commands are currently being processed. The player this returns can safely have [Player:GetCurrentCommand](https://wiki.facepunch.com/gmod/Player:GetCurrentCommand)() called on them. See [Prediction](https://wiki.facepunch.com/gmod/Prediction). 
--- [https://wiki.facepunch.com/gmod/Global.GetPredictionPlayer]
--- @return Player
function GetPredictionPlayer() end

--- (client) Creates or gets the rendertarget with the given name.See [GetRenderTargetEx](https://wiki.facepunch.com/gmod/Global.GetRenderTargetEx) for an advanced version of this function with more options. 
--- [https://wiki.facepunch.com/gmod/Global.GetRenderTarget]
--- @param name string @ The internal name of the render target.
--- @param width number @ The width of the render target, must be power of 2. If not set to PO2, the size will be automatically converted to the nearest PO2 size.
--- @param height number @ The height of the render target, must be power of 2. If not set to PO2, the size will be automatically converted to the nearest PO2 size.
--- @return ITexture
function GetRenderTarget(name, width, height) end

--- (client) Gets (or creates if it does not exist) the rendertarget with the given name, this function allows to adjust the creation of a rendertarget more than [GetRenderTarget](https://wiki.facepunch.com/gmod/Global.GetRenderTarget).See also [render.PushRenderTarget](https://wiki.facepunch.com/gmod/render.PushRenderTarget) and [render.SetRenderTarget](https://wiki.facepunch.com/gmod/render.SetRenderTarget). 
--- [https://wiki.facepunch.com/gmod/Global.GetRenderTargetEx]
--- @param name string @ The internal name of the render target.
--- @param width number @ The width of the render target, must be power of 2.
--- @param height number @ The height of the render target, must be power of 2.
--- @param sizeMode number @ Bitflag that influences the sizing of the render target, see [RT_SIZE](https://wiki.facepunch.com/gmod/Enums/RT_SIZE).
--- @param depthMode number @ Bitflag that determines the depth buffer usage of the render target [MATERIAL_RT_DEPTH](https://wiki.facepunch.com/gmod/Enums/MATERIAL_RT_DEPTH).
--- @param textureFlags number @ Bitflag that configurates the texture, see [TEXTUREFLAGS](https://wiki.facepunch.com/gmod/Enums/TEXTUREFLAGS).List of flags can also be found on the Valve's Developer Wiki:https://developer.valvesoftware.com/wiki/Valve_Texture_Format
--- @param rtFlags number @ Flags that controll the HDR behaviour of the render target, see [CREATERENDERTARGETFLAGS](https://wiki.facepunch.com/gmod/Enums/CREATERENDERTARGETFLAGS).
--- @param imageFormat number @ Image format, see [IMAGE_FORMAT](https://wiki.facepunch.com/gmod/Enums/IMAGE_FORMAT).
--- @return ITexture
function GetRenderTargetEx(name, width, height, sizeMode, depthMode, textureFlags, rtFlags, imageFormat) end

--- (menu) Retrieves data about the save with the specified filename. Similar to [GetDemoFileDetails](https://wiki.facepunch.com/gmod/Global.GetDemoFileDetails). 
--- [https://wiki.facepunch.com/gmod/Global.GetSaveFileDetails]
--- @param filename string @ The file name of the save.
--- @return table
function GetSaveFileDetails(filename) end

--- (client) Returns if the client is timing out, and time since last ping from the server. Similar to the server side [Player:IsTimingOut](https://wiki.facepunch.com/gmod/Player:IsTimingOut). 
--- [https://wiki.facepunch.com/gmod/GetTimeoutInfo]
--- @return boolean|number
function GetTimeoutInfo() end

--- (client) Returns the entity the client is using to see from (such as the player itself, the camera, or another entity). 
--- [https://wiki.facepunch.com/gmod/Global.GetViewEntity]
--- @return Entity
function GetViewEntity() end

--- (client/menu/server) Converts a color from [HSL color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a [Color](https://wiki.facepunch.com/gmod/Color). 
--- [https://wiki.facepunch.com/gmod/Global.HSLToColor]
--- @param hue number @ The hue in degrees from 0-360.
--- @param saturation number @ The saturation from 0-1.
--- @param value number @ The lightness from 0-1.
--- @return table
function HSLToColor(hue, saturation, value) end

--- (client/menu/server) Converts a color from [HSV color space](https://en.wikipedia.org/wiki/HSL_and_HSV) into RGB color space and returns a [Color](https://wiki.facepunch.com/gmod/Color). 
--- [https://wiki.facepunch.com/gmod/Global.HSVToColor]
--- @param hue number @ The hue in degrees from 0-360.
--- @param saturation number @ The saturation from 0-1.
--- @param value number @ The value from 0-1.
--- @return table
function HSVToColor(hue, saturation, value) end

--- (client/menu/server) Launches an asynchronous http request with the given parameters. 
--- [https://wiki.facepunch.com/gmod/Global.HTTP]
--- @param parameters table @ The request parameters. See [HTTPRequest](https://wiki.facepunch.com/gmod/Structures/HTTPRequest).
--- @return boolean
function HTTP(parameters) end

--- (client/menu/server) Executes a Lua script. 
--- [https://wiki.facepunch.com/gmod/Global.include]
--- @param fileName string @ The name of the script to be executed. The path must be either relative to the current file, or be an absolute path (relative to and excluding the **lua/** folder).
--- @return vararg
function include(fileName) end

--- (client/menu/server) This function works exactly the same as [include](https://wiki.facepunch.com/gmod/Global.include) both clientside and serverside.The only difference is that on the serverside it also calls [AddCSLuaFile](https://wiki.facepunch.com/gmod/Global.AddCSLuaFile) on the filename, so that it gets sent to the client. 
--- [https://wiki.facepunch.com/gmod/Global.IncludeCS]
--- @param filename string @ The filename of the Lua file you want to include.
--- @return void
function IncludeCS(filename) end

--- (client/menu/server) Returns an iterator function for a for loop, to return ordered key-value pairs from a table.This will only iterate though **numerical** keys, and these must also be **sequential**; starting at 1 with no gaps.For unordered pairs, see [pairs](https://wiki.facepunch.com/gmod/Global.pairs).For pairs sorted by key in alphabetical order, see [SortedPairs](https://wiki.facepunch.com/gmod/Global.SortedPairs). 
--- [https://wiki.facepunch.com/gmod/Global.ipairs]
--- @param tab table @ The table to iterate over.
--- @return function|table|number
function ipairs(tab) end

--- (client/menu/server) Returns if the passed object is an [Angle](https://wiki.facepunch.com/gmod/Angle). 
--- [https://wiki.facepunch.com/gmod/Global.isangle]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function isangle(variable) end

--- (client/menu/server) Returns if the passed object is a [boolean](https://wiki.facepunch.com/gmod/boolean). 
--- [https://wiki.facepunch.com/gmod/Global.isbool]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function isbool(variable) end

--- (client/menu/server) Returns whether the given object does or doesn't have a `metatable` of a color. 
--- [https://wiki.facepunch.com/gmod/Global.IsColor]
--- @param Object any @ The object to be tested
--- @return boolean
function IsColor(Object) end

--- (client/menu/server) Returns true if given command will be blocked if ran. 
--- [https://wiki.facepunch.com/gmod/Global.IsConCommandBlocked]
--- @param name string @ The console command to test.
--- @return boolean
function IsConCommandBlocked(name) end

--- (client/menu/server) Returns if the given NPC class name is an enemy.Returns true if the entity name is one of the following:* "npc_antlion"* "npc_antlionguard"* "npc_antlionguardian"* "npc_barnacle"* "npc_breen"* "npc_clawscanner"* "npc_combine_s"* "npc_cscanner"* "npc_fastzombie"* "npc_fastzombie_torso"* "npc_headcrab"* "npc_headcrab_fast"* "npc_headcrab_poison"* "npc_hunter"* "npc_metropolice"* "npc_manhack"* "npc_poisonzombie"* "npc_strider"* "npc_stalker"* "npc_zombie"* "npc_zombie_torso"* "npc_zombine" 
--- [https://wiki.facepunch.com/gmod/Global.IsEnemyEntityName]
--- @param className string @ Class name of the entity to check
--- @return boolean
function IsEnemyEntityName(className) end

--- (client/server) Returns if the passed object is an [Entity](https://wiki.facepunch.com/gmod/Entity). Alias of [Global.isentity](https://wiki.facepunch.com/gmod/Global.isentity). 
--- [https://wiki.facepunch.com/gmod/Global.IsEntity]
--- @param variable any @ The variable to check.
--- @return boolean
function IsEntity(variable) end

--- (client/server) Returns if this is the first time this hook was predicted.This is useful for one-time logic in your SWEPs PrimaryAttack, SecondaryAttack and Reload and other  (to prevent those hooks from being called rapidly in succession). It's also useful in a Move hook for when the client predicts movement.Visit [Prediction](https://wiki.facepunch.com/gmod/Prediction) for more information about this behavior. 
--- [https://wiki.facepunch.com/gmod/Global.IsFirstTimePredicted]
--- @return boolean
function IsFirstTimePredicted() end

--- (client/menu/server) Returns if the given NPC class name is a friend.Returns true if the entity name is one of the following:* "npc_alyx"* "npc_barney"* "npc_citizen"* "npc_dog"* "npc_eli"* "npc_fisherman"* "npc_gman"* "npc_kleiner"* "npc_magnusson"* "npc_monk"* "npc_mossman"* "npc_odessa"* "npc_vortigaunt" 
--- [https://wiki.facepunch.com/gmod/Global.IsFriendEntityName]
--- @param className string @ Class name of the entity to check
--- @return boolean
function IsFriendEntityName(className) end

--- (client/menu/server) Returns if the passed object is a [function](https://wiki.facepunch.com/gmod/function). 
--- [https://wiki.facepunch.com/gmod/Global.isfunction]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function isfunction(variable) end

--- (menu) Returns true if the client is currently playing either a singleplayer or multiplayer game. 
--- [https://wiki.facepunch.com/gmod/Global.IsInGame]
--- @return boolean
function IsInGame() end

--- (client/menu/server) Returns whether the passed object is a [VMatrix](https://wiki.facepunch.com/gmod/VMatrix). 
--- [https://wiki.facepunch.com/gmod/Global.ismatrix]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function ismatrix(variable) end

--- (client/menu/server) Checks whether or not a game is currently mounted. Uses data given by [engine.GetGames](https://wiki.facepunch.com/gmod/engine.GetGames). 
--- [https://wiki.facepunch.com/gmod/Global.IsMounted]
--- @param game string @ The game string/app ID to check.
--- @return boolean
function IsMounted(game) end

--- (client/menu/server) Returns if the passed object is a [number](https://wiki.facepunch.com/gmod/number). 
--- [https://wiki.facepunch.com/gmod/Global.isnumber]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function isnumber(variable) end

--- (client/menu/server) Returns if the passed object is a [Panel](https://wiki.facepunch.com/gmod/Panel). 
--- [https://wiki.facepunch.com/gmod/Global.ispanel]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function ispanel(variable) end

--- (client/menu/server) Returns if the passed object is a [string](https://wiki.facepunch.com/gmod/string). 
--- [https://wiki.facepunch.com/gmod/Global.isstring]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function isstring(variable) end

--- (client/menu/server) Returns if the passed object is a [table](https://wiki.facepunch.com/gmod/table). 
--- [https://wiki.facepunch.com/gmod/Global.istable]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function istable(variable) end

--- (client/menu/server) Returns whether or not every element within a table is a valid entity 
--- [https://wiki.facepunch.com/gmod/Global.IsTableOfEntitiesValid]
--- @param table table @ Table containing entities to check
--- @return boolean
function IsTableOfEntitiesValid(table) end

--- (client/menu/server) Returns whether or not a model is useless by checking that the file path is that of a proper model.If the string ".mdl" is not found in the model name, the function will return true.The function will also return true if any of the following strings are found in the given model name:* "_gesture"* "_anim"* "_gst"* "_pst"* "_shd"* "_ss"* "_posture"* "_anm"* "ghostanim"* "_paths"* "_shared"* "anim_"* "gestures_"* "shared_ragdoll_" 
--- [https://wiki.facepunch.com/gmod/Global.IsUselessModel]
--- @param modelName string @ The model name to be checked
--- @return boolean
function IsUselessModel(modelName) end

--- (client/menu/server) Returns whether an object is valid or not. (Such as [Entity](https://wiki.facepunch.com/gmod/Entity)s, [Panel](https://wiki.facepunch.com/gmod/Panel)s, custom [table](https://wiki.facepunch.com/gmod/table) objects and more).Checks that an object is not nil, has an IsValid method and if this method returns true. 
--- [https://wiki.facepunch.com/gmod/Global.IsValid]
--- @param toBeValidated any @ The table or object to be validated.
--- @return boolean
function IsValid(toBeValidated) end

--- (client/menu/server) Returns if the passed object is a [Vector](https://wiki.facepunch.com/gmod/Vector). 
--- [https://wiki.facepunch.com/gmod/Global.isvector]
--- @param variable any @ The variable to perform the type check for.
--- @return boolean
function isvector(variable) end

--- (menu) Joins the server with the specified IP. 
--- [https://wiki.facepunch.com/gmod/Global.JoinServer]
--- @param IP string @ The IP of the server to join
--- @return void
function JoinServer(IP) end

--- (client/menu) Adds javascript function 'language.Update' to an HTML panel as a method to call Lua's [language.GetPhrase](https://wiki.facepunch.com/gmod/language.GetPhrase) function. 
--- [https://wiki.facepunch.com/gmod/Global.JS_Language]
--- @param htmlPanel Panel @ Panel to add javascript function 'language.Update' to.
--- @return void
function JS_Language(htmlPanel) end

--- (client/menu) Adds javascript function 'util.MotionSensorAvailable' to an HTML panel as a method to call Lua's [motionsensor.IsAvailable](https://wiki.facepunch.com/gmod/motionsensor.IsAvailable) function. 
--- [https://wiki.facepunch.com/gmod/Global.JS_Utility]
--- @param htmlPanel Panel @ Panel to add javascript function 'util.MotionSensorAvailable' to.
--- @return void
function JS_Utility(htmlPanel) end

--- (client/menu) Adds workshop related javascript functions to an HTML panel, used by the "Dupes" and "Saves" tabs in the spawnmenu. 
--- [https://wiki.facepunch.com/gmod/Global.JS_Workshop]
--- @param htmlPanel Panel @ Panel to add javascript functions to.
--- @return void
function JS_Workshop(htmlPanel) end

--- (client/menu) Convenience function that creates a [DLabel](https://wiki.facepunch.com/gmod/DLabel), sets the text, and returns it 
--- [https://wiki.facepunch.com/gmod/Global.Label]
--- @param text string @ The string to set the label's text to
--- @param parent Panel @ Optional. The panel to parent the DLabel to
--- @return Panel
function Label(text, parent) end

--- (menu) Callback function for when the client's language changes. Called by the engine. 
--- [https://wiki.facepunch.com/gmod/Global.LanguageChanged]
--- @param lang string @ The new language code.
--- @return void
function LanguageChanged(lang) end

--- (client/menu/server) Performs a linear interpolation from the start number to the end number.This function provides a very efficient and easy way to smooth out movements. 
--- [https://wiki.facepunch.com/gmod/Global.Lerp]
--- @param t number @ The fraction for finding the result. This number is clamped between 0 and 1. Shouldn't be a constant.
--- @param from number @ The starting number. The result will be equal to this if delta is 0.
--- @param to number @ The ending number. The result will be equal to this if delta is 1.
--- @return number
function Lerp(t, from, to) end

--- (client/menu/server) Returns point between first and second angle using given fraction and linear interpolation 
--- [https://wiki.facepunch.com/gmod/Global.LerpAngle]
--- @param ratio number @ Ratio of progress through values
--- @param angleStart Angle @ Angle to begin from
--- @param angleEnd Angle @ Angle to end at
--- @return Angle
function LerpAngle(ratio, angleStart, angleEnd) end

--- (client/menu/server) Linear interpolation between two vectors. It is commonly used to smooth movement between two vectors 
--- [https://wiki.facepunch.com/gmod/Global.LerpVector]
--- @param fraction number @ Fraction ranging from 0 to 1
--- @param from Vector @ The initial Vector
--- @param to Vector @ The desired Vector
--- @return Vector
function LerpVector(fraction, from, to) end

--- (menu) Returns the contents of `addonpresets.txt` located in the `garrysmod/settings` folder. By default, this file stores your addon presets as JSON.You can use [SaveAddonPresets](https://wiki.facepunch.com/gmod/Global.SaveAddonPresets) to modify this file. 
--- [https://wiki.facepunch.com/gmod/Global.LoadAddonPresets]
--- @return string
function LoadAddonPresets() end

--- (menu) This function is used to get the last map and category to which the map belongs from the cookie saved with [SaveLastMap](https://wiki.facepunch.com/gmod/Global.SaveLastMap). 
--- [https://wiki.facepunch.com/gmod/Global.LoadLastMap]
--- @return void
function LoadLastMap() end

--- (client) Loads all preset settings for the [presets](https://wiki.facepunch.com/gmod/presets) and returns them in a table 
--- [https://wiki.facepunch.com/gmod/Global.LoadPresets]
--- @return table
function LoadPresets() end

--- (client/menu) Returns a localisation for the given token, if none is found it will return the default (second) parameter. 
--- [https://wiki.facepunch.com/gmod/Global.Localize]
--- @param localisationToken string @ The token to find a translation for.
--- @param default string @ The default value to be returned if no translation was found.
--- @return void
function Localize(localisationToken, default) end

--- (client) Returns the player object of the current client. 
--- [https://wiki.facepunch.com/gmod/Global.LocalPlayer]
--- @return Player
function LocalPlayer() end

--- (client/server) Translates the specified position and angle from the specified local coordinate system into worldspace coordinates.If you're working with an entity's local vectors, use [Entity:LocalToWorld](https://wiki.facepunch.com/gmod/Entity:LocalToWorld) and/or [Entity:LocalToWorldAngles](https://wiki.facepunch.com/gmod/Entity:LocalToWorldAngles) instead.See also: [WorldToLocal](https://wiki.facepunch.com/gmod/Global.WorldToLocal), the reverse of this function. 
--- [https://wiki.facepunch.com/gmod/Global.LocalToWorld]
--- @param localPos Vector @ The position vector in the source coordinate system, that should be translated to world coordinates
--- @param localAng Angle @ The angle in the source coordinate system, that should be converted to a world angle. If you don't need to convert an angle, you can supply an arbitrary valid angle (e.g. [Angle](https://wiki.facepunch.com/gmod/Global.Angle)()).
--- @param originPos Vector @ The origin point of the source coordinate system, in world coordinates
--- @param originAngle Angle @ The angles of the source coordinate system, as a world angle
--- @return Vector|Angle
function LocalToWorld(localPos, localAng, originPos, originAngle) end

--- (client/menu/server) Either returns the material with the given name, or loads the material interpreting the first argument as the path. 
--- [https://wiki.facepunch.com/gmod/Global.Material]
--- @param materialName string @ The material name or path. The path is relative to the **materials/** folder. You do not need to add **materials/** to your path.To retrieve a Lua material created with [CreateMaterial](https://wiki.facepunch.com/gmod/Global.CreateMaterial), just prepend a "!" to the material name.
--- @param pngParameters string @ A string containing space separated keywords which will be used to add material parameters.See [Material Parameters](https://wiki.facepunch.com/gmod/Material%20Parameters) for more information.
--- @return IMaterial|number
function Material(materialName, pngParameters) end

--- (client/server) Returns a [VMatrix](https://wiki.facepunch.com/gmod/VMatrix) object. 
--- [https://wiki.facepunch.com/gmod/Global.Matrix]
--- @param data table @ Initial data to initialize the matrix with. Leave empty to initialize an identity matrix. See examples for usage.Can be a [VMatrix](https://wiki.facepunch.com/gmod/VMatrix) to copy its data.
--- @return VMatrix
function Matrix(data) end

--- (client) Returns a new mesh object. 
--- [https://wiki.facepunch.com/gmod/Global.Mesh]
--- @param mat IMaterial @ The material the mesh is intended to be rendered with. It's merely a hint that tells that mesh what vertex format it should use.
--- @return IMesh
function Mesh(mat) end

--- (client/menu/server) Runs [util.PrecacheModel](https://wiki.facepunch.com/gmod/util.PrecacheModel) and returns the string. 
--- [https://wiki.facepunch.com/gmod/Global.Model]
--- @param model string @ The model to precache.
--- @return string
function Model(model) end

--- (client/menu/server) Creates a table with the specified module name and sets the function environment for said table.Any passed loaders are called with the table as an argument. An example of this is [package.seeall](https://wiki.facepunch.com/gmod/package.seeall). 
--- [https://wiki.facepunch.com/gmod/Global.module]
--- @param name string @ The name of the module. This will be used to access the module table in the runtime environment.
--- @param loaders vararg @ Calls each function passed with the new table as an argument.
--- @return void
function module(name, loaders) end

--- (client/menu/server) Writes every given argument to the console.Automatically attempts to convert each argument to a string. (See [tostring](https://wiki.facepunch.com/gmod/Global.tostring))Unlike [print](https://wiki.facepunch.com/gmod/Global.print), arguments are not separated by anything. They are simply concatenated.Additionally, a newline isn't added automatically to the end, so subsequent Msg or print operations will continue the same line of text in the console. See [MsgN](https://wiki.facepunch.com/gmod/Global.MsgN) for a version that does add a newline.The text is blue on the server, orange on the client, and green on the menu: 
--- [https://wiki.facepunch.com/gmod/Global.Msg]
--- @param args vararg @ List of values to print.
--- @return void
function Msg(args) end

--- (client/server) Works exactly like [Msg](https://wiki.facepunch.com/gmod/Global.Msg) except that, if called on the server, will print to all players consoles plus the server console. 
--- [https://wiki.facepunch.com/gmod/Global.MsgAll]
--- @param args vararg @ List of values to print.
--- @return void
function MsgAll(args) end

--- (client/menu/server) Just like [Msg](https://wiki.facepunch.com/gmod/Global.Msg), except it can also print colored text, just like [chat.AddText](https://wiki.facepunch.com/gmod/chat.AddText). 
--- [https://wiki.facepunch.com/gmod/Global.MsgC]
--- @param args vararg @ Values to print. If you put in a color, all text after that color will be printed in that color.
--- @return void
function MsgC(args) end

--- (client/menu/server) Same as [print](https://wiki.facepunch.com/gmod/Global.print), except it concatinates the arguments without inserting any whitespace in between them.See also [Msg](https://wiki.facepunch.com/gmod/Global.Msg), which doesn't add a newline (`"\n"`) at the end. 
--- [https://wiki.facepunch.com/gmod/Global.MsgN]
--- @param args vararg @ List of values to print. They can be of any type and will be converted to strings with [tostring](https://wiki.facepunch.com/gmod/Global.tostring).
--- @return void
function MsgN(args) end

--- (client) Returns named color defined in resource/ClientScheme.res. 
--- [https://wiki.facepunch.com/gmod/Global.NamedColor]
--- @param name string @ Name of color
--- @return table
function NamedColor(name) end

--- (client/menu/server) Returns a new userdata object. 
--- [https://wiki.facepunch.com/gmod/Global.newproxy]
--- @param addMetatable boolean @ If true, the userdata will get its own metatable automatically. If another newproxy is passed, it will create new one and copy its metatable.
--- @return userdata
function newproxy(addMetatable) end

--- (client/menu/server) Returns the next key and value pair in a table. 
--- [https://wiki.facepunch.com/gmod/Global.next]
--- @param tab table @ The table
--- @param prevKey any @ The previous key in the table.
--- @return any|any
function next(tab, prevKey) end

--- (menu) Returns the number of files needed from the server you are currently joining. 
--- [https://wiki.facepunch.com/gmod/Global.NumDownloadables]
--- @return number
function NumDownloadables() end

--- (client) Returns the amount of skins the specified model has.See also [Entity:SkinCount](https://wiki.facepunch.com/gmod/Entity:SkinCount) if you have an entity. 
--- [https://wiki.facepunch.com/gmod/Global.NumModelSkins]
--- @param modelName string @ Model to return amount of skins of
--- @return number
function NumModelSkins(modelName) end

--- (client) Called by the engine when a model has been loaded. Caches model information with the [sql](https://wiki.facepunch.com/gmod/sql). 
--- [https://wiki.facepunch.com/gmod/Global.OnModelLoaded]
--- @param modelName string @ Name of the model.
--- @param numPostParams number @ Number of pose parameters the model has.
--- @param numSeq number @ Number of sequences the model has.
--- @param numAttachments number @ Number of attachments the model has.
--- @param numBoneControllers number @ Number of bone controllers the model has.
--- @param numSkins number @ Number of skins that the model has.
--- @param size number @ Size of the model.
--- @return void
function OnModelLoaded(modelName, numPostParams, numSeq, numAttachments, numBoneControllers, numSkins, size) end

--- (menu) Opens a folder with the given name in the garrysmod folder using the operating system's file browser. 
--- [https://wiki.facepunch.com/gmod/Global.OpenFolder]
--- @param folder string @ The subdirectory to open in the garrysmod folder.
--- @return void
function OpenFolder(folder) end

--- (client/menu/server) Modifies the given vectors so that all of vector2's axis are larger than vector1's by switching them around. Also known as ordering vectors. 
--- [https://wiki.facepunch.com/gmod/Global.OrderVectors]
--- @param vector1 Vector @ Bounding box min resultant
--- @param vector2 Vector @ Bounding box max resultant
--- @return void
function OrderVectors(vector1, vector2) end

--- (client/menu/server) Returns an iterator function([next](https://wiki.facepunch.com/gmod/Global.next)) for a for loop that will return the values of the specified table in an arbitrary order.* For alphabetical **key** order use [SortedPairs](https://wiki.facepunch.com/gmod/Global.SortedPairs).* For alphabetical **value** order use [SortedPairsByValue](https://wiki.facepunch.com/gmod/Global.SortedPairsByValue). 
--- [https://wiki.facepunch.com/gmod/Global.pairs]
--- @param tab table @ The table to iterate over.
--- @return function|table|any
function pairs(tab) end

--- (client/menu/server) Calls [game.AddParticles](https://wiki.facepunch.com/gmod/game.AddParticles) and returns given string. 
--- [https://wiki.facepunch.com/gmod/Global.Particle]
--- @param file string @ The particle file.
--- @return string
function Particle(file) end

--- (client/server) Creates a particle effect. 
--- [https://wiki.facepunch.com/gmod/Global.ParticleEffect]
--- @param particleName string @ The name of the particle effect.
--- @param position Vector @ The start position of the effect.
--- @param angles Angle @ The orientation of the effect.
--- @param parent Entity @ If set, the particle will be parented to the entity.
--- @return void
function ParticleEffect(particleName, position, angles, parent) end

--- (client/server) Creates a particle effect with specialized parameters. 
--- [https://wiki.facepunch.com/gmod/Global.ParticleEffectAttach]
--- @param particleName string @ The name of the particle effect.
--- @param attachType number @ Attachment type using [PATTACH](https://wiki.facepunch.com/gmod/Enums/PATTACH).
--- @param entity Entity @ The entity to be used in the way specified by the attachType.
--- @param attachmentID number @ The id of the attachment to be used in the way specified by the attachType.
--- @return void
function ParticleEffectAttach(particleName, attachType, entity, attachmentID) end

--- (client) Creates a new [CLuaEmitter](https://wiki.facepunch.com/gmod/CLuaEmitter). 
--- [https://wiki.facepunch.com/gmod/Global.ParticleEmitter]
--- @param position Vector @ The start position of the emitter.This is only used to determine particle drawing order for translucent particles.
--- @param use3D boolean @ Whenever to render the particles in 2D or 3D mode.
--- @return CLuaEmitter
function ParticleEmitter(position, use3D) end

--- (server) Creates a path for the bot to follow 
--- [https://wiki.facepunch.com/gmod/Global.Path]
--- @param type string @ The name of the path to create.This is going to be "Follow" or "Chase" right now.
--- @return PathFollower
function Path(type) end

--- (client/menu/server) Calls a function and catches an error that can be thrown while the execution of the call. 
--- [https://wiki.facepunch.com/gmod/Global.pcall]
--- @param func function @ Function to be executed and of which the errors should be caught of
--- @param arguments vararg @ Arguments to call the function with.
--- @return boolean|vararg
function pcall(func, arguments) end

--- (client/server) Returns the player with the matching [Player:UserID](https://wiki.facepunch.com/gmod/Player:UserID).For a function that returns a player based on their [Entity:EntIndex](https://wiki.facepunch.com/gmod/Entity:EntIndex), see [Entity](https://wiki.facepunch.com/gmod/Global.Entity).For a function that returns a player based on their connection ID, see [player.GetByID](https://wiki.facepunch.com/gmod/player.GetByID). 
--- [https://wiki.facepunch.com/gmod/Global.Player]
--- @param playerIndex number @ The player index.
--- @return Player
function Player(playerIndex) end

--- (client) Moves the given model to the given position and calculates appropriate camera parameters for rendering the model to an icon.The output table interacts nicely with [Panel:RebuildSpawnIconEx](https://wiki.facepunch.com/gmod/Panel:RebuildSpawnIconEx) with a few key renames. 
--- [https://wiki.facepunch.com/gmod/Global.PositionSpawnIcon]
--- @param model Entity @ Model that is being rendered to the spawn icon
--- @param position Vector @ Position that the model is being rendered at
--- @param noAngles boolean @ If true the function won't reset the angles to 0 for the model.
--- @return table
function PositionSpawnIcon(model, position, noAngles) end

--- (client/server) Precaches the particle with the specified name. 
--- [https://wiki.facepunch.com/gmod/Global.PrecacheParticleSystem]
--- @param particleSystemName string @ The name of the particle system.
--- @return void
function PrecacheParticleSystem(particleSystemName) end

--- (server) Precaches a scene file. 
--- [https://wiki.facepunch.com/gmod/Global.PrecacheScene]
--- @param scene string @ Path to the scene file to precache.
--- @return void
function PrecacheScene(scene) end

--- (client/server) Load and precache a custom sentence file. 
--- [https://wiki.facepunch.com/gmod/Global.PrecacheSentenceFile]
--- @param filename string @ The path to the custom sentences.txt.
--- @return void
function PrecacheSentenceFile(filename) end

--- (server) Precache a sentence group in a sentences.txt definition file. 
--- [https://wiki.facepunch.com/gmod/Global.PrecacheSentenceGroup]
--- @param group string @ The group to precache.
--- @return void
function PrecacheSentenceGroup(group) end

--- (client/menu/server) Writes every given argument to the console.Automatically attempts to convert each argument to a string. (See [tostring](https://wiki.facepunch.com/gmod/Global.tostring))Seperates lines with a line break (`"\n"`)Separates arguments with a tab character (`"\t"`). 
--- [https://wiki.facepunch.com/gmod/Global.print]
--- @param args vararg @ List of values to print.
--- @return void
function print(args) end

--- (server) Displays a message in the chat, console, or center of screen of every player.This uses the archaic user message system ([umsg](https://wiki.facepunch.com/gmod/umsg)) and hence is limited to ≈250 characters. 
--- [https://wiki.facepunch.com/gmod/Global.PrintMessage]
--- @param type number @ Which type of message should be sent to the players (see [HUD](https://wiki.facepunch.com/gmod/Enums/HUD))
--- @param message string @ Message to be sent to the players
--- @return void
function PrintMessage(type, message) end

--- (client/menu/server) Recursively prints the contents of a table to the console. 
--- [https://wiki.facepunch.com/gmod/Global.PrintTable]
--- @param tableToPrint table @ The table to be printed
--- @param indent number @ Number of tabs to start indenting at. Increases by 2 when entering another table.
--- @param done table @ Internal argument, you shouldn't normally change this. Used to check if a nested table has already been printed so it doesn't get caught in a loop.
--- @return void
function PrintTable(tableToPrint, indent, done) end

--- (client) Creates a new [ProjectedTexture](https://wiki.facepunch.com/gmod/ProjectedTexture). 
--- [https://wiki.facepunch.com/gmod/Global.ProjectedTexture]
--- @return ProjectedTexture
function ProjectedTexture() end

--- (client/server) Runs a function without stopping the whole script on error.This function is similar to [pcall](https://wiki.facepunch.com/gmod/Global.pcall) and [xpcall](https://wiki.facepunch.com/gmod/Global.xpcall) except the errors are still printed and sent to the error handler (i.e. sent to server console if clientside and [GM:OnLuaError](https://wiki.facepunch.com/gmod/GM:OnLuaError) called). 
--- [https://wiki.facepunch.com/gmod/Global.ProtectedCall]
--- @param func function @ Function to run
--- @return boolean
function ProtectedCall(func) end

--- (client/menu/server) Returns an iterator function that can be used to loop through a table in random order 
--- [https://wiki.facepunch.com/gmod/Global.RandomPairs]
--- @param table table @ Table to create iterator for
--- @param descending boolean @ Whether the iterator should iterate descending or not
--- @return function
function RandomPairs(table, descending) end

--- (client/menu/server) Compares the two values without calling their __eq operator. 
--- [https://wiki.facepunch.com/gmod/Global.rawequal]
--- @param value1 any @ The first value to compare.
--- @param value2 any @ The second value to compare.
--- @return boolean
function rawequal(value1, value2) end

--- (client/menu/server) Gets the value with the specified key from the table without calling the __index method. 
--- [https://wiki.facepunch.com/gmod/Global.rawget]
--- @param table table @ Table to get the value from.
--- @param index any @ The index to get the value from.
--- @return any
function rawget(table, index) end

--- (client/menu/server) Sets the value with the specified key from the table without calling the __newindex method. 
--- [https://wiki.facepunch.com/gmod/Global.rawset]
--- @param table table @ Table to get the value from.
--- @param index any @ The index to get the value from.
--- @param value any @ The value to set for the specified key.
--- @return void
function rawset(table, index, value) end

--- (client) Returns the real frame-time which is unaffected by host_timescale. To be used for GUI effects (for example) 
--- [https://wiki.facepunch.com/gmod/Global.RealFrameTime]
--- @return number
function RealFrameTime() end

--- (client/server) Returns the uptime of the game/server in seconds (to at least **4** decimal places). This value updates itself once every time the realm thinks. For servers, this is the server tickrate. For clients, its their current FPS.You should use this function (or [SysTime](https://wiki.facepunch.com/gmod/Global.SysTime)) for timing real-world events such as user interaction, but not for timing game events such as animations.See also: [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime), [SysTime](https://wiki.facepunch.com/gmod/Global.SysTime) 
--- [https://wiki.facepunch.com/gmod/Global.RealTime]
--- @return number
function RealTime() end

--- (server) Creates a new [CRecipientFilter](https://wiki.facepunch.com/gmod/CRecipientFilter). 
--- [https://wiki.facepunch.com/gmod/Global.RecipientFilter]
--- @param unreliable boolean @ If set to true, makes the filter unreliable. This means, when sending over the network in cases like [CreateSound](https://wiki.facepunch.com/gmod/Global.CreateSound) (and its subsequent updates), the message is not guaranteed to reach all clients.
--- @return CRecipientFilter
function RecipientFilter(unreliable) end

--- (menu) Adds a frame to the currently recording demo. 
--- [https://wiki.facepunch.com/gmod/Global.RecordDemoFrame]
--- @return void
function RecordDemoFrame() end

--- (client/menu) Registers a Derma element to be closed the next time [CloseDermaMenus](https://wiki.facepunch.com/gmod/Global.CloseDermaMenus) is called 
--- [https://wiki.facepunch.com/gmod/Global.RegisterDermaMenuForClose]
--- @param menu Panel @ Menu to be registered for closure
--- @return void
function RegisterDermaMenuForClose(menu) end

--- (client/menu) Saves position of your cursor on screen. You can restore it by using[RestoreCursorPosition](https://wiki.facepunch.com/gmod/Global.RestoreCursorPosition). 
--- [https://wiki.facepunch.com/gmod/Global.RememberCursorPosition]
--- @return void
function RememberCursorPosition() end

--- (client/menu) Does the removing of the tooltip panel. Called by [EndTooltip](https://wiki.facepunch.com/gmod/Global.EndTooltip). 
--- [https://wiki.facepunch.com/gmod/Global.RemoveTooltip]
--- @return void
function RemoveTooltip() end

--- (client) Returns the angle that the clients view is being rendered at 
--- [https://wiki.facepunch.com/gmod/Global.RenderAngles]
--- @return Angle
function RenderAngles() end

--- (client) Renders a Depth of Field effect 
--- [https://wiki.facepunch.com/gmod/Global.RenderDoF]
--- @param origin Vector @ Origin to render the effect at
--- @param angle Angle @ Angle to render the effect at
--- @param usableFocusPoint Vector @ Point to focus the effect at
--- @param angleSize number @ Angle size of the effect
--- @param radialSteps number @ Amount of radial steps to render the effect with
--- @param passes number @ Amount of render passes
--- @param spin boolean @ Whether to cycle the frame or not
--- @param inView table @ Table of view data
--- @param fov number @ FOV to render the effect with
--- @return void
function RenderDoF(origin, angle, usableFocusPoint, angleSize, radialSteps, passes, spin, inView, fov) end

--- (client) Renders the stereoscopic post-process effect 
--- [https://wiki.facepunch.com/gmod/Global.RenderStereoscopy]
--- @param viewOrigin Vector @ Origin to render the effect at
--- @param viewAngles Angle @ Angles to render the effect at
--- @return void
function RenderStereoscopy(viewOrigin, viewAngles) end

--- (client) Renders the Super Depth of Field post-process effect 
--- [https://wiki.facepunch.com/gmod/Global.RenderSuperDoF]
--- @param viewOrigin Vector @ Origin to render the effect at
--- @param viewAngles Angle @ Angles to render the effect at
--- @param viewFOV number @ Field of View to render the effect at
--- @return void
function RenderSuperDoF(viewOrigin, viewAngles, viewFOV) end

--- (client/menu/server) First tries to load a binary module with the given name, if unsuccessful, it tries to load a Lua module with the given name. 
--- [https://wiki.facepunch.com/gmod/Global.require]
--- @param name string @ The name of the module to be loaded.
--- @return void
function require(name) end

--- (client/menu) Restores position of your cursor on screen. You can save it by using [RememberCursorPosition](https://wiki.facepunch.com/gmod/Global.RememberCursorPosition). 
--- [https://wiki.facepunch.com/gmod/Global.RestoreCursorPosition]
--- @return void
function RestoreCursorPosition() end

--- (client/menu/server) Executes the given console command with the parameters. 
--- [https://wiki.facepunch.com/gmod/Global.RunConsoleCommand]
--- @param command string @ The command to be executed.
--- @param arguments vararg @ The arguments. Note, that unlike [Player:ConCommand](https://wiki.facepunch.com/gmod/Player:ConCommand), you must pass each argument as a new string, not separating them with a space.
--- @return void
function RunConsoleCommand(command, arguments) end

--- (menu) Runs a menu command. Equivalent to [RunConsoleCommand](https://wiki.facepunch.com/gmod/Global.RunConsoleCommand)( "gamemenucommand", command ) unless the command starts with the "engine" keyword in which case it is equivalent to [RunConsoleCommand](https://wiki.facepunch.com/gmod/Global.RunConsoleCommand)( command ). 
--- [https://wiki.facepunch.com/gmod/Global.RunGameUICommand]
--- @param command string @ The menu command to runShould be one of the following:* Disconnect - Disconnects from the current server.* OpenBenchmarkDialog - Opens the "Video Hardware Stress Test" dialog.* OpenChangeGameDialog - Does not work in GMod.* OpenCreateMultiplayerGameDialog - Opens the Source dialog for creating a listen server.* OpenCustomMapsDialog - Does nothing.* OpenFriendsDialog - Does nothing.* OpenGameMenu - Does not work in GMod.* OpenLoadCommentaryDialog - Opens the "Developer Commentary" selection dialog. Useless in GMod.* OpenLoadDemoDialog - Does nothing.* OpenLoadGameDialog - Opens the Source "Load Game" dialog.* OpenNewGameDialog - Opens the "New Game" dialog. Useless in GMod.* OpenOptionsDialog - Opens the options dialog.* OpenPlayerListDialog - Opens the "Mute Players" dialog that shows all players connected to the server and allows to mute them.* OpenSaveGameDialog - Opens the Source "Save Game" dialog.* OpenServerBrowser - Opens the legacy server browser.* Quit - Quits the game `without` confirmation (unlike other Source games).* QuitNoConfirm - Quits the game without confirmation (like other Source games).* ResumeGame - Closes the menu and returns to the game.* engine
--- @return void
function RunGameUICommand(command) end

--- (client/menu/server) Evaluates and executes the given code, will throw an error on failure. 
--- [https://wiki.facepunch.com/gmod/Global.RunString]
--- @param code string @ The code to execute.
--- @param identifier string @ The name that should appear in any error messages caused by this code.
--- @param handleError boolean @ If false, this function will return a string containing any error messages instead of throwing an error.
--- @return string
function RunString(code, identifier, handleError) end

--- (client/menu/server) Alias of [RunString](https://wiki.facepunch.com/gmod/Global.RunString). 
--- [https://wiki.facepunch.com/gmod/Global.RunStringEx]
--- @return void
function RunStringEx() end

--- (client/menu/server) Removes the given entity unless it is a player or the world entity 
--- [https://wiki.facepunch.com/gmod/Global.SafeRemoveEntity]
--- @param ent Entity @ Entity to safely remove.
--- @return void
function SafeRemoveEntity(ent) end

--- (client/menu/server) Removes entity after delay using [SafeRemoveEntity](https://wiki.facepunch.com/gmod/Global.SafeRemoveEntity) 
--- [https://wiki.facepunch.com/gmod/Global.SafeRemoveEntityDelayed]
--- @param entity Entity @ Entity to be removed
--- @param delay number @ Delay for entity removal in seconds
--- @return void
function SafeRemoveEntityDelayed(entity, delay) end

--- (menu) Sets the content of `addonpresets.txt` located in the `garrysmod/settings` folder. By default, this file stores your addon presets as JSON.You can use [LoadAddonPresets](https://wiki.facepunch.com/gmod/Global.LoadAddonPresets) to retrieve the data in this file. 
--- [https://wiki.facepunch.com/gmod/Global.SaveAddonPresets]
--- @param JSON string @ The new contents of the file.
--- @return void
function SaveAddonPresets(JSON) end

--- (menu) This function is used to save the last map and category to which the map belongs as a . 
--- [https://wiki.facepunch.com/gmod/Global.SaveLastMap]
--- @param map string @ The name of the map.
--- @param category string @ The name of the category to which this map belongs.
--- @return void
function SaveLastMap(map, category) end

--- (client) Overwrites all presets with the supplied table. Used by the [presets](https://wiki.facepunch.com/gmod/presets) for preset saving 
--- [https://wiki.facepunch.com/gmod/Global.SavePresets]
--- @param presets table @ Presets to be saved
--- @return void
function SavePresets(presets) end

--- (client) Returns a number based on the Size argument and your screen's width. The screen's width is always equal to size 640. This function is primarily used for scaling font sizes. 
--- [https://wiki.facepunch.com/gmod/Global.ScreenScale]
--- @param Size number @ The number you want to scale.
--- @return void
function ScreenScale(Size) end

--- (client/menu) Gets the height of the game's window (in pixels). 
--- [https://wiki.facepunch.com/gmod/Global.ScrH]
--- @return number
function ScrH() end

--- (client/menu) Gets the width of the game's window (in pixels). 
--- [https://wiki.facepunch.com/gmod/Global.ScrW]
--- @return number
function ScrW() end

--- (client/menu/server) Used to select single values from a vararg or get the count of values in it. 
--- [https://wiki.facepunch.com/gmod/Global.select]
--- @param parameter any @ Can be a [number](https://wiki.facepunch.com/gmod/number) or [string](https://wiki.facepunch.com/gmod/string).* If it's a string and starts with "#", the function will return the amount of values in the vararg (ignoring the rest of the string).* If it's a positive number, the function will return all values starting from the given index.* If the number is negative, it will return the amount specified from the end instead of the beginning. This mode will not be compiled by LuaJIT.
--- @param vararg vararg @ The vararg. These are the values from which you want to select.
--- @return any
function select(parameter, vararg) end

--- (client/server) Send a usermessage 
--- [https://wiki.facepunch.com/gmod/Global.SendUserMessage]
--- @param name string @ The name of the usermessage
--- @param recipients any @ Can be a [CRecipientFilter](https://wiki.facepunch.com/gmod/CRecipientFilter), [table](https://wiki.facepunch.com/gmod/table) or [Player](https://wiki.facepunch.com/gmod/Player) object.
--- @param args vararg @ Data to send in the usermessage
--- @return void
function SendUserMessage(name, recipients, args) end

--- (client/server) Returns approximate duration of a sentence by name. See [EmitSentence](https://wiki.facepunch.com/gmod/Global.EmitSentence). 
--- [https://wiki.facepunch.com/gmod/Global.SentenceDuration]
--- @param name string @ The sentence name.
--- @return number
function SentenceDuration(name) end

--- (server) Prints "ServerLog: PARAM" without a newline, to the server log and console. 
--- [https://wiki.facepunch.com/gmod/Global.ServerLog]
--- @param parameter string @ The value to be printed to console.
--- @return void
function ServerLog(parameter) end

--- (client/menu) Adds the given string to the computers clipboard, which can then be pasted in or outside of GMod with Ctrl + V. 
--- [https://wiki.facepunch.com/gmod/Global.SetClipboardText]
--- @param text string @ The text to add to the clipboard.
--- @return void
function SetClipboardText(text) end

--- (client/menu/server) Sets the enviroment for a function or a stack level, if a function is passed, the return value will be the function, otherwise nil. 
--- [https://wiki.facepunch.com/gmod/Global.setfenv]
--- @param location function @ The function to set the enviroment for or a number representing stack level.
--- @param enviroment table @ Table to be used as enviroment.
--- @return void
function setfenv(location, enviroment) end

--- (client/server) Defines an angle to be automatically networked to clients 
--- [https://wiki.facepunch.com/gmod/Global.SetGlobalAngle]
--- @param index any @ Index to identify the global angle with
--- @param angle Angle @ Angle to be networked
--- @return void
function SetGlobalAngle(index, angle) end

--- (client/server) Defined a boolean to be automatically networked to clients 
--- [https://wiki.facepunch.com/gmod/Global.SetGlobalBool]
--- @param index any @ Index to identify the global boolean with
--- @param bool boolean @ Boolean to be networked
--- @return void
function SetGlobalBool(index, bool) end

--- (client/server) Defines an entity to be automatically networked to clients 
--- [https://wiki.facepunch.com/gmod/Global.SetGlobalEntity]
--- @param index any @ Index to identify the global entity with
--- @param ent Entity @ Entity to be networked
--- @return void
function SetGlobalEntity(index, ent) end

--- (client/server) Defines a floating point number to be automatically networked to clients 
--- [https://wiki.facepunch.com/gmod/Global.SetGlobalFloat]
--- @param index any @ Index to identify the global float with
--- @param float number @ Float to be networked
--- @return void
function SetGlobalFloat(index, float) end

--- (client/server) Sets an integer that is shared between the server and all clients. 
--- [https://wiki.facepunch.com/gmod/Global.SetGlobalInt]
--- @param index string @ The unique index to identify the global value with.
--- @param value number @ The value to set the global value to
--- @return void
function SetGlobalInt(index, value) end

--- (client/server) Defines a string with a maximum of 199 characters to be automatically networked to clients 
--- [https://wiki.facepunch.com/gmod/Global.SetGlobalString]
--- @param index any @ Index to identify the global string with
--- @param string string @ String to be networked
--- @return void
function SetGlobalString(index, string) end

--- (client/server) Defines a vector to be automatically networked to clients 
--- [https://wiki.facepunch.com/gmod/Global.SetGlobalVector]
--- @param index any @ Index to identify the global vector with
--- @param vec Vector @ Vector to be networked
--- @return void
function SetGlobalVector(index, vec) end

--- (client/menu/server) Sets, changes or removes a table's metatable. Returns Tab (the first argument). 
--- [https://wiki.facepunch.com/gmod/Global.setmetatable]
--- @param Tab table @ The table who's metatable to change.
--- @param Metatable table @ The metatable to assign.  If it's nil, the metatable will be removed.
--- @return table
function setmetatable(Tab, Metatable) end

--- (client/server) Called by the engine to set which [constraint system](https://developer.valvesoftware.com/wiki/Phys_constraintsystem) the next created constraints should use. 
--- [https://wiki.facepunch.com/gmod/Global.SetPhysConstraintSystem]
--- @param constraintSystem Entity @ Constraint system to use
--- @return void
function SetPhysConstraintSystem(constraintSystem) end

--- (client/menu/server) This function can be used in a for loop instead of [pairs](https://wiki.facepunch.com/gmod/Global.pairs). It sorts all **keys** alphabetically.For sorting by specific **value member**, use [SortedPairsByMemberValue](https://wiki.facepunch.com/gmod/Global.SortedPairsByMemberValue).For sorting by **value**, use [SortedPairsByValue](https://wiki.facepunch.com/gmod/Global.SortedPairsByValue). 
--- [https://wiki.facepunch.com/gmod/Global.SortedPairs]
--- @param table table @ The table to sort
--- @param desc boolean @ Reverse the sorting order
--- @return function|table
function SortedPairs(table, desc) end

--- (client/menu/server) Returns an iterator function that can be used to loop through a table in order of member values, when the values of the table are also tables and contain that member.To sort by **value**, use [SortedPairsByValue](https://wiki.facepunch.com/gmod/Global.SortedPairsByValue).To sort by **keys**, use [SortedPairs](https://wiki.facepunch.com/gmod/Global.SortedPairs). 
--- [https://wiki.facepunch.com/gmod/Global.SortedPairsByMemberValue]
--- @param table table @ Table to create iterator for.
--- @param memberKey any @ Key of the value member to sort by.
--- @param descending boolean @ Whether the iterator should iterate in descending order or not.
--- @return function|table
function SortedPairsByMemberValue(table, memberKey, descending) end

--- (client/menu/server) Returns an iterator function that can be used to loop through a table in order of its **values**.To sort by specific **value member**, use [SortedPairsByMemberValue](https://wiki.facepunch.com/gmod/Global.SortedPairsByMemberValue).To sort by **keys**, use [SortedPairs](https://wiki.facepunch.com/gmod/Global.SortedPairs). 
--- [https://wiki.facepunch.com/gmod/Global.SortedPairsByValue]
--- @param table table @ Table to create iterator for
--- @param descending boolean @ Whether the iterator should iterate in descending order or not
--- @return function|table
function SortedPairsByValue(table, descending) end

--- (client/menu/server) Runs [util.PrecacheSound](https://wiki.facepunch.com/gmod/util.PrecacheSound) and returns the string. 
--- [https://wiki.facepunch.com/gmod/Global.Sound]
--- @param soundPath string @ The soundpath to precache.
--- @return string
function Sound(soundPath) end

--- (client/server) Returns the duration of the specified sound in seconds. 
--- [https://wiki.facepunch.com/gmod/Global.SoundDuration]
--- @param soundName string @ The sound file path.
--- @return number
function SoundDuration(soundName) end

--- (client/menu/server) Returns the input value in an escaped form so that it can safely be used inside of queries. The returned value is surrounded by quotes unless noQuotes is true. Alias of [sql.SQLStr](https://wiki.facepunch.com/gmod/sql.SQLStr) 
--- [https://wiki.facepunch.com/gmod/Global.SQLStr]
--- @param input string @ String to be escaped
--- @param noQuotes boolean @ Whether the returned value should be surrounded in quotes or not
--- @return string
function SQLStr(input, noQuotes) end

--- (client) Returns a number based on the Size argument and your screen's width. Alias of [ScreenScale](https://wiki.facepunch.com/gmod/Global.ScreenScale). 
--- [https://wiki.facepunch.com/gmod/Global.SScale]
--- @param Size number @ The number you want to scale.
--- @return void
function SScale(Size) end

--- (client/menu/server) Returns the ordinal suffix of a given number. 
--- [https://wiki.facepunch.com/gmod/Global.STNDRD]
--- @param number number @ The number to find the ordinal suffix of.
--- @return string
function STNDRD(number) end

--- (server) Suppress any networking from the server to the specified player. This is automatically called by the engine before/after a player fires their weapon, reloads, or causes any other similar shared-predicted event to occur. 
--- [https://wiki.facepunch.com/gmod/Global.SuppressHostEvents]
--- @param suppressPlayer Player @ The player to suppress any networking to.
--- @return void
function SuppressHostEvents(suppressPlayer) end

--- (client/menu/server) Returns a highly accurate time in seconds since the start up, ideal for benchmarking. Unlike [RealTime](https://wiki.facepunch.com/gmod/Global.RealTime), this value will be updated any time the function is called, allowing for sub-think precision. 
--- [https://wiki.facepunch.com/gmod/Global.SysTime]
--- @return number
function SysTime() end

--- (client/server) Returns a TauntCamera object 
--- [https://wiki.facepunch.com/gmod/Global.TauntCamera]
--- @return table
function TauntCamera() end

--- (client/menu) Clears focus from any text entries player may have focused. 
--- [https://wiki.facepunch.com/gmod/Global.TextEntryLoseFocus]
--- @return void
function TextEntryLoseFocus() end

--- (client/menu/server) Returns a cosine value that fluctuates based on the current time 
--- [https://wiki.facepunch.com/gmod/Global.TimedCos]
--- @param frequency number @ The frequency of fluctuation
--- @param min number @ Minimum value
--- @param max number @ Maxmimum value
--- @param offset number @ Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time
--- @return number
function TimedCos(frequency, min, max, offset) end

--- (client/menu/server) Returns a sine value that fluctuates based on [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime). The value returned will be between the start value plus/minus the range value. 
--- [https://wiki.facepunch.com/gmod/Global.TimedSin]
--- @param frequency number @ The frequency of fluctuation, in
--- @param origin number @ The center value of the sine wave.
--- @param max number @ This argument's distance from origin defines the size of the full range of the sine wave. For example, if origin is 3 and max is 5, then the full range of the sine wave is 5-3 = 2. 3 is the center point of the sine wave, so the sine wave will range between 2 and 4.
--- @param offset number @ Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time
--- @return number
function TimedSin(frequency, origin, max, offset) end

--- (client/menu/server) Attempts to return an appropriate boolean for the given value 
--- [https://wiki.facepunch.com/gmod/Global.tobool]
--- @param val any @ The object to be converted to a boolean
--- @return boolean
function tobool(val) end

--- (menu) Toggles whether or not the named map is favorited in the new game list. 
--- [https://wiki.facepunch.com/gmod/Global.ToggleFavourite]
--- @param map string @ Map to toggle favorite.
--- @return void
function ToggleFavourite(map) end

--- (client/menu/server) Attempts to convert the value to a number.Returns nil on failure. 
--- [https://wiki.facepunch.com/gmod/Global.tonumber]
--- @param value any @ The value to convert. Can be a number or string.
--- @param base number @ The  used in the string. Can be any integer between 2 and 36, inclusive.
--- @return number
function tonumber(value, base) end

--- (client/menu/server) Attempts to convert the value to a string. If the value is an object and its metatable has defined the __tostring metamethod, this will call that function.[print](https://wiki.facepunch.com/gmod/Global.print) also uses this functionality. 
--- [https://wiki.facepunch.com/gmod/Global.tostring]
--- @param value any @ The object to be converted to a string.
--- @return string
function tostring(value) end

--- (menu) Returns "Lua Cache File" if the given file name is in a certain string table, nothing otherwise. 
--- [https://wiki.facepunch.com/gmod/Global.TranslateDownloadableName]
--- @param filename string @ File name to test
--- @return string
function TranslateDownloadableName(filename) end

--- (client/menu/server) Returns a string representing the name of the type of the passed object. 
--- [https://wiki.facepunch.com/gmod/Global.type]
--- @param var any @ The object to get the type of.
--- @return string
function type(var) end

--- (client/server) Gets the associated type ID of the variable. Unlike [type](https://wiki.facepunch.com/gmod/Global.type), this does not work with [no value](https://wiki.facepunch.com/gmod/no%20value) - an argument must be provided. 
--- [https://wiki.facepunch.com/gmod/Global.TypeID]
--- @param variable any @ The variable to get the type ID of.
--- @return number
function TypeID(variable) end

--- (client/menu/server) This function takes a numeric indexed table and return all the members as a vararg. If specified, it will start at the given index and end at end index. 
--- [https://wiki.facepunch.com/gmod/Global.unpack]
--- @param tbl table @ The table to generate the vararg from.
--- @param startIndex number @ Which index to start from. Optional.
--- @param endIndex number @ Which index to end at. Optional, even if you set StartIndex.
--- @return vararg
function unpack(tbl, startIndex, endIndex) end

--- (client/menu/server) Returns the current asynchronous in-game time. 
--- [https://wiki.facepunch.com/gmod/Global.UnPredictedCurTime]
--- @return number
function UnPredictedCurTime() end

--- (menu) Runs JavaScript on the loading screen panel ([GetLoadPanel](https://wiki.facepunch.com/gmod/Global.GetLoadPanel)). 
--- [https://wiki.facepunch.com/gmod/Global.UpdateLoadPanel]
--- @param javascript string @ JavaScript to run on the loading panel.
--- @return void
function UpdateLoadPanel(javascript) end

--- (client/menu/server) Returns whether or not a model is useless by checking that the file path is that of a proper model.If the string ".mdl" is not found in the model name, the function will return true.The function will also return true if any of the following strings are found in the given model name:* "_gesture"* "_anim"* "_gst"* "_pst"* "_shd"* "_ss"* "_posture"* "_anm"* "ghostanim"* "_paths"* "_shared"* "anim_"* "gestures_"* "shared_ragdoll_" 
--- [https://wiki.facepunch.com/gmod/Global.UTIL_IsUselessModel]
--- @param modelName string @ The model name to be checked
--- @return boolean
function UTIL_IsUselessModel(modelName) end

--- (client/menu) Returns if a panel is safe to use. 
--- [https://wiki.facepunch.com/gmod/Global.ValidPanel]
--- @param panel Panel @ The panel to validate.
--- @return void
function ValidPanel(panel) end

--- (client/menu/server) Creates a [Vector](https://wiki.facepunch.com/gmod/Vector) object. 
--- [https://wiki.facepunch.com/gmod/Global.Vector]
--- @param x number @ The x component of the vector.If this is a [Vector](https://wiki.facepunch.com/gmod/Vector), this function will return a copy of the given vector.If this is a [string](https://wiki.facepunch.com/gmod/string), this function will try to parse the string as a vector. If it fails, it returns a 0 vector.(See examples)
--- @param y number @ The y component of the vector.
--- @param z number @ The z component of the vector.
--- @return Vector
function Vector(x, y, z) end

--- (client/menu/server) Returns a random vector whose components are each between min(inclusive), max(exclusive). 
--- [https://wiki.facepunch.com/gmod/Global.VectorRand]
--- @param min number @ Min bound inclusive.
--- @param max number @ Max bound exclusive.
--- @return Vector
function VectorRand(min, max) end

--- (client/menu) Returns the time in seconds it took to render the VGUI. 
--- [https://wiki.facepunch.com/gmod/Global.VGUIFrameTime]
--- @return void
function VGUIFrameTime() end

--- (client) Creates and returns a [DShape](https://wiki.facepunch.com/gmod/DShape) rectangle GUI element with the given dimensions. 
--- [https://wiki.facepunch.com/gmod/Global.VGUIRect]
--- @param x number @ X position of the created element
--- @param y number @ Y position of the created element
--- @param w number @ Width of the created element
--- @param h number @ Height of the created element
--- @return Panel
function VGUIRect(x, y, w, h) end

--- (client/menu) Briefly displays layout details of the given panel on-screen 
--- [https://wiki.facepunch.com/gmod/Global.VisualizeLayout]
--- @param panel Panel @ Panel to display layout details of
--- @return void
function VisualizeLayout(panel) end

--- (client/menu) Returns a new WorkshopFileBase element 
--- [https://wiki.facepunch.com/gmod/Global.WorkshopFileBase]
--- @param namespace string @ Namespace for the file base
--- @param requiredTags table @ Tags required for a Workshop submission to be interacted with by the filebase
--- @return table
function WorkshopFileBase(namespace, requiredTags) end

--- (client/server) Translates the specified position and angle into the specified coordinate system. 
--- [https://wiki.facepunch.com/gmod/Global.WorldToLocal]
--- @param position Vector @ The position that should be translated from the current to the new system.
--- @param angle Angle @ The angles that should be translated from the current to the new system.
--- @param newSystemOrigin Vector @ The origin of the system to translate to.
--- @param newSystemAngles Angle @ The angles of the system to translate to.
--- @return Vector|Angle
function WorldToLocal(position, angle, newSystemOrigin, newSystemAngles) end

--- (client/menu/server) Attempts to call the first function. If the execution succeeds, this returns `true` followed by the returns of the function. If execution fails, this returns `false` and the second function is called with the error message. Unlike in [pcall](https://wiki.facepunch.com/gmod/Global.pcall), the stack is not unwound and can therefore be used for stack analyses with the [debug](https://wiki.facepunch.com/gmod/debug). 
--- [https://wiki.facepunch.com/gmod/Global.xpcall]
--- @param func function @ The function to call initially.
--- @param errorCallback function @ The function to be called if execution of the first fails; the error message is passed as a string.You cannot throw an [Global.error](https://wiki.facepunch.com/gmod/Global.error)() from this callback: it will have no effect (not even stopping the callback).
--- @param arguments vararg @ Arguments to pass to the initial function.
--- @return boolean|vararg
function xpcall(func, errorCallback, arguments) end

