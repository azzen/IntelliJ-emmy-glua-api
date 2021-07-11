--- @class chat
chat = {}

--- (client) Adds text to the local player's chat box (which only they can read). 
--- [https://wiki.facepunch.com/gmod/chat.AddText]
--- @param arguments vararg @ The arguments. Arguments can be:* [table](https://wiki.facepunch.com/gmod/table) - [Color](https://wiki.facepunch.com/gmod/Color). Will set the color for all following strings until the next Color argument.* [string](https://wiki.facepunch.com/gmod/string) - Text to be added to the chat box.* [Player](https://wiki.facepunch.com/gmod/Player) - Adds the name of the player in the player's team color to the chat box.* [any](https://wiki.facepunch.com/gmod/any) - Any other type, such as [Entity](https://wiki.facepunch.com/gmod/Entity) will be converted to string and added as text.
--- @return void
function chat.AddText(arguments) end

--- (client) Closes the chat window. 
--- [https://wiki.facepunch.com/gmod/chat.Close]
--- @return void
function chat.Close() end

--- (client) Returns the chatbox position. 
--- [https://wiki.facepunch.com/gmod/chat.GetChatBoxPos]
--- @return number|number
function chat.GetChatBoxPos() end

--- (client) Returns the chatbox size. 
--- [https://wiki.facepunch.com/gmod/chat.GetChatBoxSize]
--- @return number|number
function chat.GetChatBoxSize() end

--- (client) Opens the chat window. 
--- [https://wiki.facepunch.com/gmod/chat.Open]
--- @param mode number @ If equals 1, opens public chat, otherwise opens team chat
--- @return void
function chat.Open(mode) end

--- (client) Plays the chat "tick" sound. 
--- [https://wiki.facepunch.com/gmod/chat.PlaySound]
--- @return void
function chat.PlaySound() end

