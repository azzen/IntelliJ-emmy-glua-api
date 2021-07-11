--- @class matproxy
matproxy = {}

--- (client) Adds a material proxy. 
--- [https://wiki.facepunch.com/gmod/matproxy.Add]
--- @param MatProxyData table @ The information about the proxy. See [MatProxyData](https://wiki.facepunch.com/gmod/Structures/MatProxyData)
--- @return void
function matproxy.Add(MatProxyData) end

--- (client) Called by the engine from OnBind 
--- [https://wiki.facepunch.com/gmod/matproxy.Call]
--- @param uname string @ No description provided
--- @param mat IMaterial @ No description provided
--- @param ent Entity @ No description provided
--- @return void
function matproxy.Call(uname, mat, ent) end

--- (client) Called by the engine from OnBind 
--- [https://wiki.facepunch.com/gmod/matproxy.Init]
--- @param name string @ No description provided
--- @param uname string @ No description provided
--- @param mat IMaterial @ No description provided
--- @param values table @ No description provided
--- @return void
function matproxy.Init(name, uname, mat, values) end

--- (client) Called by engine, returns true if we're overriding a proxy 
--- [https://wiki.facepunch.com/gmod/matproxy.ShouldOverrideProxy]
--- @param name string @ The name of proxy in question
--- @return boolean
function matproxy.ShouldOverrideProxy(name) end

