--- @class coroutine
coroutine = {}

--- (client/menu/server) Creates a coroutine of the given function. 
--- [https://wiki.facepunch.com/gmod/coroutine.create]
--- @param func function @ The function for the coroutine to use.
--- @return thread
function coroutine.create(func) end

--- (client/menu/server) Resumes the given coroutine and passes the given vararg to either the function arguments or the [coroutine.yield](https://wiki.facepunch.com/gmod/coroutine.yield) that is inside that function and returns whatever yield is called with the next time or by the final return in the function. 
--- [https://wiki.facepunch.com/gmod/coroutine.resume]
--- @param coroutine thread @ Coroutine to resume.
--- @param args vararg @ Arguments to be returned by [coroutine.yield](https://wiki.facepunch.com/gmod/coroutine.yield).
--- @return boolean|vararg
function coroutine.resume(coroutine, args) end

--- (client/menu/server) Returns the active coroutine or nil if we are not within a coroutine. 
--- [https://wiki.facepunch.com/gmod/coroutine.running]
--- @return thread
function coroutine.running() end

--- (client/menu/server) Returns the status of the coroutine passed to it, the possible statuses are "suspended", "running", and "dead". 
--- [https://wiki.facepunch.com/gmod/coroutine.status]
--- @param coroutine thread @ Coroutine to check the status of.
--- @return string
function coroutine.status(coroutine) end

--- (client/server) Yields the coroutine for the given duration before continuing.
--- This only works inside a coroutine.
--- This function uses [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime) instead of [RealTime](https://wiki.facepunch.com/gmod/Global.RealTime). 
--- [https://wiki.facepunch.com/gmod/coroutine.wait]
--- @param duration number @ The number of seconds to wait
--- @return void
function coroutine.wait(duration) end

--- (client/menu/server) Returns a function which calling is equivalent with calling [coroutine.resume](https://wiki.facepunch.com/gmod/coroutine.resume) with the coroutine and all extra parameters.
--- The values returned by the returned function only contain the values passed to the inner [coroutine.yield](https://wiki.facepunch.com/gmod/coroutine.yield) call and do not include the *no error* status that [coroutine.resume](https://wiki.facepunch.com/gmod/coroutine.resume) provides. In case of failure, an error is thrown instead. 
--- [https://wiki.facepunch.com/gmod/coroutine.wrap]
--- @param coroutine function @ Coroutine to resume.
--- @return function
function coroutine.wrap(coroutine) end

--- (client/menu/server) Pauses the active coroutine and passes all additional variables to the call of [coroutine.resume](https://wiki.facepunch.com/gmod/coroutine.resume) that resumed the coroutine last time, and returns all additional variables that were passed to the previous call of resume. 
--- [https://wiki.facepunch.com/gmod/coroutine.yield]
--- @param returnValue vararg @ Arguments to be returned by the last call of [coroutine.resume](https://wiki.facepunch.com/gmod/coroutine.resume)
--- @return vararg
function coroutine.yield(returnValue) end

