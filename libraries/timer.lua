--- @class timer
timer = {}

--- (client/menu/server) Adjusts the timer if the timer with the given identifier exists. 
--- [https://wiki.facepunch.com/gmod/timer.Adjust]
--- @param identifier any @ Identifier of the timer to adjust.
--- @param delay number @ The delay interval in seconds. **Must be specified.**
--- @param repetitions number @ Repetitions. Use `0` for infinite or `nil` to keep previous value.
--- @param func function @ The new function. Use `nil` to keep previous value.
--- @return boolean
function timer.Adjust(identifier, delay, repetitions, func) end

--- (client/menu/server) This function does nothing. 
--- [https://wiki.facepunch.com/gmod/timer.Check]
--- @return void
function timer.Check() end

--- (client/menu/server) Creates a new timer that will repeat its function given amount of times.This function also requires the timer to be named, which allows you to control it after it was created via the [timer](https://wiki.facepunch.com/gmod/timer).For a simple one-time timer with no identifiers, see [timer.Simple](https://wiki.facepunch.com/gmod/timer.Simple). 
--- [https://wiki.facepunch.com/gmod/timer.Create]
--- @param identifier string @ Identifier of the timer to create. Must be unique. If a timer already exists with the same identifier, that timer will be updated to the new settings and reset.
--- @param delay number @ The delay interval in seconds. If the delay is too small, the timer will fire on the next frame/tick.
--- @param repetitions number @ The number of times to repeat the timer. Enter 0 for infinite repetitions.
--- @param func function @ Function called when timer has finished the countdown.
--- @return void
function timer.Create(identifier, delay, repetitions, func) end

--- (client/menu/server) Stops and destroys the given timer. Alias of [timer.Remove](https://wiki.facepunch.com/gmod/timer.Remove). 
--- [https://wiki.facepunch.com/gmod/timer.Destroy]
--- @param identifier string @ Identifier of the timer to destroy.
--- @return void
function timer.Destroy(identifier) end

--- (client/menu/server) Returns whenever the given timer exists or not. 
--- [https://wiki.facepunch.com/gmod/timer.Exists]
--- @param identifier string @ Identifier of the timer.
--- @return boolean
function timer.Exists(identifier) end

--- (client/menu/server) Pauses the given timer. 
--- [https://wiki.facepunch.com/gmod/timer.Pause]
--- @param identifier any @ Identifier of the timer.
--- @return boolean
function timer.Pause(identifier) end

--- (client/menu/server) Stops and removes a timer created by [timer.Create](https://wiki.facepunch.com/gmod/timer.Create). 
--- [https://wiki.facepunch.com/gmod/timer.Remove]
--- @param identifier string @ Identifier of the timer to remove.
--- @return void
function timer.Remove(identifier) end

--- (client/menu/server) Returns amount of repetitions/executions left before the timer destroys itself. 
--- [https://wiki.facepunch.com/gmod/timer.RepsLeft]
--- @param identifier any @ Identifier of the timer.
--- @return number
function timer.RepsLeft(identifier) end

--- (client/menu/server) Creates a simple timer that runs the given function after a specified delay.For a more advanced version that you can control after creation, see [timer.Create](https://wiki.facepunch.com/gmod/timer.Create). 
--- [https://wiki.facepunch.com/gmod/timer.Simple]
--- @param delay number @ How long until the function should be ran (in seconds). Use 0 to have the function run in the next [GM:Think](https://wiki.facepunch.com/gmod/GM:Think).
--- @param func function @ The function to run after the specified delay.
--- @return void
function timer.Simple(delay, func) end

--- (client/menu/server) Restarts the given timer. 
--- [https://wiki.facepunch.com/gmod/timer.Start]
--- @param identifier any @ Identifier of the timer.
--- @return boolean
function timer.Start(identifier) end

--- (client/menu/server) Stops the given timer and rewinds it. 
--- [https://wiki.facepunch.com/gmod/timer.Stop]
--- @param identifier any @ Identifier of the timer.
--- @return boolean
function timer.Stop(identifier) end

--- (client/menu/server) Returns amount of time left (in seconds) before the timer executes its function. 
--- [https://wiki.facepunch.com/gmod/timer.TimeLeft]
--- @param identifier any @ Identifier of the timer.
--- @return number
function timer.TimeLeft(identifier) end

--- (client/menu/server) Runs either [timer.Pause](https://wiki.facepunch.com/gmod/timer.Pause) or [timer.UnPause](https://wiki.facepunch.com/gmod/timer.UnPause) based on the timer's current status. 
--- [https://wiki.facepunch.com/gmod/timer.Toggle]
--- @param identifier any @ Identifier of the timer.
--- @return boolean
function timer.Toggle(identifier) end

--- (client/menu/server) Unpauses the timer. 
--- [https://wiki.facepunch.com/gmod/timer.UnPause]
--- @param identifier any @ Identifier of the timer.
--- @return boolean
function timer.UnPause(identifier) end

