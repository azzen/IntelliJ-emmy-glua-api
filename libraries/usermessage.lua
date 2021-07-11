--- @class usermessage
usermessage = {}

--- (client/server) Returns a table of every usermessage hook 
--- [https://wiki.facepunch.com/gmod/usermessage.GetTable]
--- @return table
function usermessage.GetTable() end

--- (client/server) Sets a hook for the specified to be called when a usermessage with the specified name arrives. 
--- [https://wiki.facepunch.com/gmod/usermessage.Hook]
--- @param name string @ The message name to hook to.
--- @param callback function @ The function to be called if the specified message was received. Parameters (Optional):  [bf_read](https://wiki.facepunch.com/gmod/bf_read) msg  [vararg](https://wiki.facepunch.com/gmod/vararg) preArgs
--- @param preArgs vararg @ Arguments that are passed to the callback function when the hook is called. ring ring
--- @return void
function usermessage.Hook(name, callback, preArgs) end

--- (client/server) Called by the engine when a usermessage arrives, this method calls the hook function specified by [usermessage.Hook](https://wiki.facepunch.com/gmod/usermessage.Hook) if any. 
--- [https://wiki.facepunch.com/gmod/usermessage.IncomingMessage]
--- @param name string @ The message name.
--- @param msg bf_read @ The message.
--- @return void
function usermessage.IncomingMessage(name, msg) end

