--- @class PhysCollide
PhysCollide = {}

--- (client/server) Destroys the [PhysCollide](https://wiki.facepunch.com/gmod/PhysCollide) object. 
--- [https://wiki.facepunch.com/gmod/PhysCollide:Destroy]
--- @return void
function PhysCollide:Destroy() end

--- (client/server) Checks whether this [PhysCollide](https://wiki.facepunch.com/gmod/PhysCollide) object is valid or not.You should just use [IsValid](https://wiki.facepunch.com/gmod/Global.IsValid) instead. 
--- [https://wiki.facepunch.com/gmod/PhysCollide:IsValid]
--- @return boolean
function PhysCollide:IsValid() end

--- (client/server) Performs a trace against this PhysCollide with the given parameters. This can be used for both line traces and box traces. 
--- [https://wiki.facepunch.com/gmod/PhysCollide:TraceBox]
--- @param origin Vector @ The origin for the PhysCollide during the trace
--- @param angles Angle @ The angles for the PhysCollide during the trace
--- @param rayStart Vector @ The start position of the trace
--- @param rayEnd Vector @ The end position of the trace
--- @param rayMins Vector @ The mins of the trace's bounds
--- @param rayMaxs Vector @ The maxs of the trace's bounds
--- @return Vector|Vector|number
function PhysCollide:TraceBox(origin, angles, rayStart, rayEnd, rayMins, rayMaxs) end

