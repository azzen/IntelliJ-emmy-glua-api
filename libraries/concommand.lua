--- @class concommand
concommand = {}

--- (client/menu/server) Creates a console command that runs a function in lua with optional autocompletion function and help text. 
--- [https://wiki.facepunch.com/gmod/concommand.Add]
--- @param name string @ The command name to be used in console. This cannot be a name of existing console command or console variable. It will silently fail if it is.
--- @param callback function @ The function to run when the concommand is executed. Arguments passed are:  [Player](https://wiki.facepunch.com/gmod/Player) ply - The player that ran the concommand. NULL entity if command was entered with the dedicated server console.  [string](https://wiki.facepunch.com/gmod/string) cmd - The concommand string (if one callback is used for several concommands).  [table](https://wiki.facepunch.com/gmod/table) args - A table of all string arguments.  [string](https://wiki.facepunch.com/gmod/string) argStr - The arguments as a string.
--- @param autoComplete function @ The function to call which should return a table of options for autocompletion. ([Autocompletion Tutorial](https://wiki.facepunch.com/gmod/Autocomplete_Tutorial)) This only properly works on the client since it is not networked. Arguments passed are:  [string](https://wiki.facepunch.com/gmod/string) cmd - The concommand this autocompletion is for.  [string](https://wiki.facepunch.com/gmod/string) args - The arguments typed so far.
--- @param helpText string @ The text to display should a user run 'help cmdName'.
--- @param flags number @ Concommand modifier flags. See [FCVAR](https://wiki.facepunch.com/gmod/Enums/FCVAR).
--- @return void
function concommand.Add(name, callback, autoComplete, helpText, flags) end

--- (client/menu/server) Used by the engine to call the autocomplete function for a console command, and retrieve returned options. 
--- [https://wiki.facepunch.com/gmod/concommand.AutoComplete]
--- @param command string @ Name of command
--- @param arguments string @ Arguments given to the command
--- @return table
function concommand.AutoComplete(command, arguments) end

--- (client/menu/server) Returns the tables of all console command callbacks, and autocomplete functions, that were added to the game with [concommand.Add](https://wiki.facepunch.com/gmod/concommand.Add). 
--- [https://wiki.facepunch.com/gmod/concommand.GetTable]
--- @return table|table
function concommand.GetTable() end

--- (client/menu/server) Removes a console command. 
--- [https://wiki.facepunch.com/gmod/concommand.Remove]
--- @param name string @ The name of the command to be removed.
--- @return void
function concommand.Remove(name) end

--- (client/menu/server) Used by the engine to run a console command's callback function. This will only be called for commands that were added with [AddConsoleCommand](https://wiki.facepunch.com/gmod/Global.AddConsoleCommand), which [concommand.Add](https://wiki.facepunch.com/gmod/concommand.Add) calls internally. An error is sent to the player's chat if no callback is found.
--- This will still be called for concommands removed with [concommand.Remove](https://wiki.facepunch.com/gmod/concommand.Remove) but will return false. 
--- [https://wiki.facepunch.com/gmod/concommand.Run]
--- @param ply Player @ Player to run concommand on
--- @param cmd string @ Command name
--- @param args any @ Command arguments. Can be table or string
--- @param argumentString string @ string of all arguments sent to the command
--- @return boolean
function concommand.Run(ply, cmd, args, argumentString) end

