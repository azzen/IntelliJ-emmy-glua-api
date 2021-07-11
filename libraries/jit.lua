--- @class jit
jit = {}

--- () No description provided 
--- [https://wiki.facepunch.com/gmod/No link provided]
--- @return void
function jit.opt() end

--- () No description provided 
--- [https://wiki.facepunch.com/gmod/No link provided]
--- @return void
function jit.util() end

--- (client/menu/server) You can attach callbacks to a number of compiler events with jit.attach. The callback can be called:
--- * when a function has been compiled to bytecode ("bc");
--- * when trace recording starts or stops ("trace");
--- * as a trace is being recorded ("record");
--- * or when a trace exits through a side exit ("texit").
--- Set a callback with jit.attach(callback, "event") and clear the same callback with jit.attach(callback) 
--- [https://wiki.facepunch.com/gmod/jit.attach]
--- @param callback function @ The callback function. The arguments passed to the callback depend on the event being reported:  "bc": [function](https://wiki.facepunch.com/gmod/function) func - The function that's just been recorded  "trace": [string](https://wiki.facepunch.com/gmod/string) what - description of the trace event: "flush", "start", "stop", "abort". Available for all events. [number](https://wiki.facepunch.com/gmod/number) tr - The trace number. Not available for flush. [function](https://wiki.facepunch.com/gmod/function) func - The function being traced. Available for start and abort. [number](https://wiki.facepunch.com/gmod/number) pc - The program counter - the bytecode number of the function being recorded (if this a Lua function). Available for start and abort. [number](https://wiki.facepunch.com/gmod/number) otr - start: the parent trace number if this is a side trace, abort: abort code [string](https://wiki.facepunch.com/gmod/string) oex - start: the exit number for the parent trace, abort: abort reason (string)  "record": [number](https://wiki.facepunch.com/gmod/number) tr - The trace number. Not available for flush. [function](https://wiki.facepunch.com/gmod/function) func - The function being traced. Available for start and abort. [number](https://wiki.facepunch.com/gmod/number) pc - The program counter - the bytecode number of the function being recorded (if this a Lua function). Available for start and abort. [number](https://wiki.facepunch.com/gmod/number) depth  - The depth of the inlining of the current bytecode.  "texit": [number](https://wiki.facepunch.com/gmod/number) tr - The trace number. Not available for flush. [number](https://wiki.facepunch.com/gmod/number) ex - The exit number [number](https://wiki.facepunch.com/gmod/number) ngpr - The number of general-purpose and floating point registers that are active at the exit. [number](https://wiki.facepunch.com/gmod/number) nfpr - The number of general-purpose and floating point registers that are active at the exit.
--- @param event string @ The event to hook into.
--- @return void
function jit.attach(callback, event) end

--- (client/menu/server) Flushes the whole cache of compiled code. 
--- [https://wiki.facepunch.com/gmod/jit.flush]
--- @return void
function jit.flush() end

--- (client/menu/server) Disables LuaJIT Lua compilation. 
--- [https://wiki.facepunch.com/gmod/jit.off]
--- @return void
function jit.off() end

--- (client/menu/server) Enables LuaJIT Lua compilation. 
--- [https://wiki.facepunch.com/gmod/jit.on]
--- @return void
function jit.on() end

--- (client/menu/server) Returns the status of the JIT compiler and the current optimizations enabled. 
--- [https://wiki.facepunch.com/gmod/jit.status]
--- @return boolean|any
function jit.status() end

--- () No description provided 
--- [https://wiki.facepunch.com/gmod/jit.arch]
--- @return void
function jit.arch() end

--- () No description provided 
--- [https://wiki.facepunch.com/gmod/jit.os]
--- @return void
function jit.os() end

--- () No description provided 
--- [https://wiki.facepunch.com/gmod/jit.version]
--- @return void
function jit.version() end

--- () # Not a function
--- This is NOT a function, it's a variable containing the version number of the LuaJIT core. Version `xx.yy.zz` is represented by the decimal number `xxyyzz`. In GMod this is `20004`. On x86-64 branch it's `20100`. 
--- [https://wiki.facepunch.com/gmod/jit.version_num]
--- @return void
function jit.version_num() end

