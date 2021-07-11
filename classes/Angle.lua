--- @class Angle
Angle = {}

--- (client/server) Adds the values of the argument angle to the orignal angle. This functions the same as angle1 + angle2 without creating a new angle object, skipping object construction and garbage collection. 
--- [https://wiki.facepunch.com/gmod/Angle:Add]
--- @param angle Angle @ The angle to add.
--- @return void
function Angle:Add(angle) end

--- (client/server) Divides all values of the original angle by a scalar. This functions the same as angle1 / num without creating a new angle object, skipping object construction and garbage collection. 
--- [https://wiki.facepunch.com/gmod/Angle:Div]
--- @param scalar number @ The number to divide by.
--- @return void
function Angle:Div(scalar) end

--- (client/server) Returns a normal vector facing in the direction that the angle points. 
--- [https://wiki.facepunch.com/gmod/Angle:Forward]
--- @return Vector
function Angle:Forward() end

--- (client/server) Returns whether the pitch, yaw and roll are 0 or not. 
--- [https://wiki.facepunch.com/gmod/Angle:IsZero]
--- @return boolean
function Angle:IsZero() end

--- (client/server) Multiplies a scalar to all the values of the orignal angle. This functions the same as num * angle without creating a new angle object, skipping object construction and garbage collection. 
--- [https://wiki.facepunch.com/gmod/Angle:Mul]
--- @param scalar number @ The number to multiply.
--- @return void
function Angle:Mul(scalar) end

--- (client/server) Normalizes the angles by applying a module with 360 to pitch, yaw and roll. 
--- [https://wiki.facepunch.com/gmod/Angle:Normalize]
--- @return void
function Angle:Normalize() end

--- (client/server) Returns a normal vector facing in the direction that points right relative to the angle's direction. 
--- [https://wiki.facepunch.com/gmod/Angle:Right]
--- @return Vector
function Angle:Right() end

--- (client/server) Rotates the angle around the specified axis by the specified degrees. 
--- [https://wiki.facepunch.com/gmod/Angle:RotateAroundAxis]
--- @param axis Vector @ The axis to rotate around as a normalized unit vector. When argument is not a unit vector, you will experience numerical offset errors in the rotated angle.
--- @param rotation number @ The degrees to rotate around the specified axis.
--- @return void
function Angle:RotateAroundAxis(axis, rotation) end

--- (client/server) Copies pitch, yaw and roll from the second angle to the first. 
--- [https://wiki.facepunch.com/gmod/Angle:Set]
--- @param originalAngle Angle @ The angle to copy the values from.
--- @return void
function Angle:Set(originalAngle) end

--- (client/server) Sets the p, y, and r of the angle. 
--- [https://wiki.facepunch.com/gmod/Angle:SetUnpacked]
--- @param p number @ The pitch component of the Angle
--- @param y number @ The yaw component of the Angle
--- @param r number @ The roll component of the Angle
--- @return void
function Angle:SetUnpacked(p, y, r) end

--- (client/server) Snaps the angle to nearest interval of degrees. 
--- [https://wiki.facepunch.com/gmod/Angle:SnapTo]
--- @param axis string @ The component/axis to snap. Can be either "p"/"pitch", "y"/"yaw" or "r"/"roll".
--- @param target number @ The target angle snap interval
--- @return Angle
function Angle:SnapTo(axis, target) end

--- (client/server) Subtracts the values of the argument angle to the orignal angle. This functions the same as angle1 - angle2 without creating a new angle object, skipping object construction and garbage collection. 
--- [https://wiki.facepunch.com/gmod/Angle:Sub]
--- @param angle Angle @ The angle to subtract.
--- @return void
function Angle:Sub(angle) end

--- (client/server) Returns the angle as a table with three elements. 
--- [https://wiki.facepunch.com/gmod/Angle:ToTable]
--- @return table
function Angle:ToTable() end

--- (client/server) Returns the pitch, yaw, and roll components of the angle. 
--- [https://wiki.facepunch.com/gmod/Angle:Unpack]
--- @return number|number|number
function Angle:Unpack() end

--- (client/server) Returns a normal vector facing in the direction that points up relative to the angle's direction. 
--- [https://wiki.facepunch.com/gmod/Angle:Up]
--- @return Vector
function Angle:Up() end

--- (client/server) Sets pitch, yaw and roll to 0.This function is faster than doing it manually. 
--- [https://wiki.facepunch.com/gmod/Angle:Zero]
--- @return void
function Angle:Zero() end

