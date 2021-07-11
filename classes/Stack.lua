--- @class Stack
Stack = {}

--- (client/server) Pop an item from the stack 
--- [https://wiki.facepunch.com/gmod/Stack:Pop]
--- @param amount number @ Amount of items you want to pop.
--- @return void
function Stack:Pop(amount) end

--- (client/server) Push an item onto the stack 
--- [https://wiki.facepunch.com/gmod/Stack:Push]
--- @param object any @ The item you want to push
--- @return void
function Stack:Push(object) end

--- (client/server) Returns the size of the stack 
--- [https://wiki.facepunch.com/gmod/Stack:Size]
--- @return number
function Stack:Size() end

--- (client/server) Get the item at the top of the stack 
--- [https://wiki.facepunch.com/gmod/Stack:Top]
--- @return any
function Stack:Top() end

