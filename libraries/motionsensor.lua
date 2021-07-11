--- @class motionsensor
motionsensor = {}

--- (client/server) No description provided 
--- [https://wiki.facepunch.com/gmod/motionsensor.BuildSkeleton]
--- @param translator table @ No description provided
--- @param player Player @ No description provided
--- @param rotation Angle @ No description provided
--- @return Vector|Angle|table
function motionsensor.BuildSkeleton(translator, player, rotation) end

--- (client/server) No description provided 
--- [https://wiki.facepunch.com/gmod/motionsensor.ChooseBuilderFromEntity]
--- @param ent Entity @ Entity to choose builder for
--- @return string
function motionsensor.ChooseBuilderFromEntity(ent) end

--- (client/menu) Returns the depth map material. 
--- [https://wiki.facepunch.com/gmod/motionsensor.GetColourMaterial]
--- @return IMaterial
function motionsensor.GetColourMaterial() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/motionsensor.GetSkeleton]
--- @return void
function motionsensor.GetSkeleton() end

--- (client) Return whether a kinect is connected - and active (ie - Start has been called). 
--- [https://wiki.facepunch.com/gmod/motionsensor.IsActive]
--- @return boolean
function motionsensor.IsActive() end

--- (client/menu) Returns true if we have detected that there's a kinect connected to the PC 
--- [https://wiki.facepunch.com/gmod/motionsensor.IsAvailable]
--- @return boolean
function motionsensor.IsAvailable() end

--- (client/server) No description provided 
--- [https://wiki.facepunch.com/gmod/motionsensor.ProcessAngle]
--- @param translator table @ No description provided
--- @param sensor table @ No description provided
--- @param pos Vector @ No description provided
--- @param ang Angle @ No description provided
--- @param special_vectors table @ No description provided
--- @param boneid number @ No description provided
--- @param v table @ No description provided
--- @return boolean
function motionsensor.ProcessAngle(translator, sensor, pos, ang, special_vectors, boneid, v) end

--- (client/server) No description provided 
--- [https://wiki.facepunch.com/gmod/motionsensor.ProcessAnglesTable]
--- @param translator table @ No description provided
--- @param sensor table @ No description provided
--- @param pos Vector @ No description provided
--- @param rotation Angle @ No description provided
--- @return Angle
function motionsensor.ProcessAnglesTable(translator, sensor, pos, rotation) end

--- (client/server) No description provided 
--- [https://wiki.facepunch.com/gmod/motionsensor.ProcessPositionTable]
--- @param translator table @ No description provided
--- @param sensor table @ No description provided
--- @return Vector
function motionsensor.ProcessPositionTable(translator, sensor) end

--- (client/menu) This starts access to the kinect sensor. Note that this usually freezes the game for a couple of seconds. 
--- [https://wiki.facepunch.com/gmod/motionsensor.Start]
--- @return void
function motionsensor.Start() end

--- (client) Stops the motion capture. 
--- [https://wiki.facepunch.com/gmod/motionsensor.Stop]
--- @return void
function motionsensor.Stop() end

