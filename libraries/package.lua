--- @class package
package = {}

--- (client/menu/server) Sets a metatable for module with its __index field referring to the global environment, so that this module inherits values from the global environment. To be used as an option to [module](https://wiki.facepunch.com/gmod/Global.module). 
--- [https://wiki.facepunch.com/gmod/package.seeall]
--- @param module table @ The module table to be given a metatable
--- @return void
function package.seeall(module) end

