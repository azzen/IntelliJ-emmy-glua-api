--- @class debug
debug = {}

--- (client/menu/server) Enters an interactive mode with the user, running each string that the user enters. Using simple commands and other debug facilities, the user can inspect global and local variables, change their values, evaluate expressions, and so on. A line containing only the word cont finishes this function, so that the caller continues its execution.* Commands for debug.debug are not lexically nested within any function, and so have no direct access to local variables.* This only works on the source dedicated server.* To exit this interactive mode, you can press Ctrl + Z then Enter OR type the word 'cont' on a single line and press enter. 
--- [https://wiki.facepunch.com/gmod/debug.debug]
--- @return void
function debug.debug() end

--- (client/menu/server) Returns the environment of the passed object. This can be set with [debug.setfenv](https://wiki.facepunch.com/gmod/debug.setfenv) 
--- [https://wiki.facepunch.com/gmod/debug.getfenv]
--- @param object table @ Object to get environment of
--- @return table
function debug.getfenv(object) end

--- (client/menu/server) Returns the current hook settings of the passed thread. The thread argument can be omitted. This is unrelated to . More information on hooks can be found at http://www.lua.org/pil/23.2.html 
--- [https://wiki.facepunch.com/gmod/debug.gethook]
--- @param thread thread @ Which thread to retrieve its hook from
--- @return function|string|number
function debug.gethook(thread) end

--- (client/menu/server) Returns debug information about a function. 
--- [https://wiki.facepunch.com/gmod/debug.getinfo]
--- @param funcOrStackLevel function @ Takes either a function or a number representing the stack level as an argument. Stack level 0 always corresponds to the debug.getinfo call, 1 would be the function calling debug.getinfo, and so on.Returns useful information about that function in a table.
--- @param fields string @ A string whose characters specify the information to be retrieved.* f - Populates the func field.* l - Populates the currentline field.* L - Populates the activelines field.* n - Populates the name and namewhat fields - only works if stack level is passed rather than function pointer.* S - Populates the location fields (lastlinedefined, linedefined, short_src, source and what).* u - Populates the argument and upvalue fields (isvararg, nparams, nups)
--- @return table
function debug.getinfo(funcOrStackLevel, fields) end

--- (client/menu/server) Gets the name and value of a local variable indexed from the level. 
--- [https://wiki.facepunch.com/gmod/debug.getlocal]
--- @param thread thread @ The thread
--- @param level number @ The level above the thread. * 0 = the function that was called (most always this function)'s arguments* 1 = the thread that had called this function.* 2 = the thread that had called the function that started the thread that called this function.A function defined in Lua can also be passed as the level. The index will specify the parameter's name to be returned (a parameter will have a value of nil).
--- @param index number @ The variable's index you want to get.* 1 = the first local defined in the thread* 2 = the second local defined in the thread* etc...
--- @return string|any
function debug.getlocal(thread, level, index) end

--- (client/menu/server) Returns the metatable of an object. This function ignores the metatable's __metatable field. 
--- [https://wiki.facepunch.com/gmod/debug.getmetatable]
--- @param object any @ The object to retrieve the metatable from.
--- @return table
function debug.getmetatable(object) end

--- (client/menu/server) Returns the internal Lua registry table.The Lua registry is used by the engine and binary modules to create references to Lua values. Avoid creating entries into the registry with a number as the key, as they are reserved for the reference system. 
--- [https://wiki.facepunch.com/gmod/debug.getregistry]
--- @return table
function debug.getregistry() end

--- (client/menu/server) Used for getting variable values in an index from the passed function. This does nothing for C functions. 
--- [https://wiki.facepunch.com/gmod/debug.getupvalue]
--- @param func function @ Function to get the upvalue indexed from.
--- @param index number @ The index in the upvalue array. The max number of entries can be found in [debug.getinfo](https://wiki.facepunch.com/gmod/debug.getinfo)'s "[nups](https://wiki.facepunch.com/gmod/Structures/DebugInfo)" key.
--- @return string|any
function debug.getupvalue(func, index) end

--- (client/menu/server) Sets the environment of the passed object. 
--- [https://wiki.facepunch.com/gmod/debug.setfenv]
--- @param object table @ Object to set environment of
--- @param env table @ Environment to set
--- @return table
function debug.setfenv(object, env) end

--- (client/menu/server) Sets the given function as a Lua hook. This is completely different to gamemode hooks. The thread argument can be completely omitted and calling this function with no arguments will remove the current hook. This is used by default for infinite loop detection. More information on hooks can be found at http://www.lua.org/pil/23.2.htmlHooks are not always ran when code that has been compiled by LuaJIT's JIT compiler is being executed. This means that relying on them for infinite loop protection is unwise. 
--- [https://wiki.facepunch.com/gmod/debug.sethook]
--- @param thread thread @ Thread to set the hook on. This argument can be omited
--- @param hook function @ Function for the hook to call
--- @param mask string @ The hook's mask
--- @param count number @ How often to call the hook (in instructions). 0 for every instruction
--- @return void
function debug.sethook(thread, hook, mask, count) end

--- (client/menu/server) Sets a local variable's value. 
--- [https://wiki.facepunch.com/gmod/debug.setlocal]
--- @param thread thread @ The thread
--- @param level number @ The level above the thread. 0 is the function that was called (most always this function)'s arguments1 is the thread that had called this function.2 is the thread that had called the function that started the thread that called this function.
--- @param index number @ The variable's index you want to get.1 = the first local defined in the thread2 = the second local defined in the thread
--- @param value any @ The value to set the local to
--- @return string
function debug.setlocal(thread, level, index, value) end

--- (client/menu/server) Sets the object's metatable. Unlike [setmetatable](https://wiki.facepunch.com/gmod/Global.setmetatable), this function works regardless of whether the first object passed is a valid table or not; this function even works on primitive datatypes such as numbers, functions, and even nil. 
--- [https://wiki.facepunch.com/gmod/debug.setmetatable]
--- @param object any @ Object to set the metatable for.
--- @param metatable table @ The metatable to set for the object.If this argument is nil, then the object's metatable is removed.
--- @return boolean
function debug.setmetatable(object, metatable) end

--- (client/menu/server) Sets the variable indexed from func 
--- [https://wiki.facepunch.com/gmod/debug.setupvalue]
--- @param func function @ The function to index the upvalue from
--- @param index number @ The index from func
--- @param val any @ The value to set the upvalue to.
--- @return string
function debug.setupvalue(func, index, val) end

--- (client/menu/server) Prints out the lua function call stack to the console. 
--- [https://wiki.facepunch.com/gmod/debug.Trace]
--- @return void
function debug.Trace() end

--- (client/menu/server) Returns a full execution stack trace. 
--- [https://wiki.facepunch.com/gmod/debug.traceback]
--- @param thread thread @ Thread (ie. error object from xpcall error handler) to build traceback for. If this argument is not set to a proper [thread](https://wiki.facepunch.com/gmod/thread) it will act as the next argument.
--- @param message string @ Appended at the beginning of the traceback.
--- @param level number @ Which level to start the traceback.
--- @return string
function debug.traceback(thread, message, level) end

--- (client/menu/server) Returns an unique identifier for the upvalue indexed from func 
--- [https://wiki.facepunch.com/gmod/debug.upvalueid]
--- @param func function @ The function to index the upvalue from
--- @param index number @ The index from func
--- @return number
function debug.upvalueid(func, index) end

--- (client/menu/server) Make the n1-th upvalue of the Lua closure f1 refer to the n2-th upvalue of the Lua closure f2. 
--- [https://wiki.facepunch.com/gmod/debug.upvaluejoin]
--- @param f1 function @ No description provided
--- @param n1 number @ No description provided
--- @param f2 function @ No description provided
--- @param n2 number @ No description provided
--- @return void
function debug.upvaluejoin(f1, n1, f2, n2) end
