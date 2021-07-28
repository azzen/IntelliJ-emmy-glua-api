--- @class DHTML : Awesomium
DHTML = {}

--- (client) Defines a Javascript function that when called will call a Lua callback. 
--- [https://wiki.facepunch.com/gmod/DHTML:AddFunction]
--- @param library string @ Library name of the JS function you are defining.
--- @param name string @ Name of the JS function you are defining.
--- @param callback function @ Function called when the JS function is called. Arguments passed to the JS function will be passed here.
--- @return void
function DHTML:AddFunction(library, name, callback) end

--- (client) Runs/Executes a string as JavaScript code in a panel. 
--- [https://wiki.facepunch.com/gmod/DHTML:Call]
--- @param js string @ Specify JavaScript code to be executed.
--- @return void
function DHTML:Call(js) end

--- (client) Called when the page inside the [DHTML](https://wiki.facepunch.com/gmod/DHTML) window runs `console.log`. This can also be called within the Lua environment to emulate `console.log`. If the contained message begins with `RUNLUA:` the following text will be executed as code within the Lua environment (this is how Lua is called from DHTML windows). 
--- [https://wiki.facepunch.com/gmod/DHTML:ConsoleMessage]
--- @param msg string @ The message to be logged (or Lua code to be executed; see above).
--- @return void
function DHTML:ConsoleMessage(msg) end

--- (client) Returns if the loaded page can run Lua code, set by [DHTML:SetAllowLua](https://wiki.facepunch.com/gmod/DHTML:SetAllowLua) 
--- [https://wiki.facepunch.com/gmod/DHTML:GetAllowLua]
--- @return boolean
function DHTML:GetAllowLua() end

--- (client) Runs/Executes a string as JavaScript code in a panel. 
--- [https://wiki.facepunch.com/gmod/DHTML:QueueJavascript]
--- @param js string @ Specify JavaScript code to be executed.
--- @return void
function DHTML:QueueJavascript(js) end

--- (client) Determines whether the loaded page can run Lua code or not. See [DHTML](https://wiki.facepunch.com/gmod/DHTML) for how to run Lua from a DHTML window. 
--- [https://wiki.facepunch.com/gmod/DHTML:SetAllowLua]
--- @param allow boolean @ Whether or not to allow Lua.
--- @return void
function DHTML:SetAllowLua(allow) end

--- (client) Sets if the loaded window should display scrollbars when the webpage is larger than the viewing window. This is similar to the CSS `overflow` rule. 
--- [https://wiki.facepunch.com/gmod/DHTML:SetScrollbars]
--- @param show boolean @ True if scrollbars should be visible.
--- @return void
function DHTML:SetScrollbars(show) end

--- (client) Stops the loading of the HTML panel's current page. 
--- [https://wiki.facepunch.com/gmod/DHTML:StopLoading]
--- @return void
function DHTML:StopLoading() end

