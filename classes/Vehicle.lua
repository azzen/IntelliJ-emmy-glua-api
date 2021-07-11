--- @class Vehicle
Vehicle = {}

--- (server) Returns the remaining boosting time left. 
--- [https://wiki.facepunch.com/gmod/Vehicle:BoostTimeLeft]
--- @return number
function Vehicle:BoostTimeLeft() end

--- (server) Tries to find an Exit Point for leaving vehicle, if one is unobstructed in the direction given. 
--- [https://wiki.facepunch.com/gmod/Vehicle:CheckExitPoint]
--- @param yaw number @ Yaw/roll from vehicle angle to check for exit
--- @param distance number @ Distance from origin to drop player
--- @return Vector
function Vehicle:CheckExitPoint(yaw, distance) end

--- (server) Sets whether the engine is enabled or disabled, i.e. can be started or not. 
--- [https://wiki.facepunch.com/gmod/Vehicle:EnableEngine]
--- @param enable boolean @ Enable or disable the engine
--- @return void
function Vehicle:EnableEngine(enable) end

--- (client) Returns information about the ammo of the vehicle 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetAmmo]
--- @return number|number|number
function Vehicle:GetAmmo() end

--- (client/server) Returns third person camera distance. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetCameraDistance]
--- @return number
function Vehicle:GetCameraDistance() end

--- (client/server) Gets the driver of the vehicle, returns `NULL` if no driver is present. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetDriver]
--- @return Entity
function Vehicle:GetDriver() end

--- (server) Returns the current speed of the vehicle in Half-Life Hammer Units (in/s). Same as [Entity:GetVelocity](https://wiki.facepunch.com/gmod/Entity:GetVelocity) + [Vector:Length](https://wiki.facepunch.com/gmod/Vector:Length). 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetHLSpeed]
--- @return number
function Vehicle:GetHLSpeed() end

--- (server) Returns the max speed of the vehicle in MPH. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetMaxSpeed]
--- @return number
function Vehicle:GetMaxSpeed() end

--- (server) Returns some info about the vehicle. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetOperatingParams]
--- @return table
function Vehicle:GetOperatingParams() end

--- (client/server) Gets the passenger of the vehicle, returns NULL if no drivers is present. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetPassenger]
--- @param passenger number @ The index of the passenger
--- @return Entity
function Vehicle:GetPassenger(passenger) end

--- (server) Returns the seat position and angle of a given passenger seat. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetPassengerSeatPoint]
--- @param role number @ The passenger role. ( 1 is the driver )
--- @return Vector|Angle
function Vehicle:GetPassengerSeatPoint(role) end

--- (server) Returns the current RPM of the vehicle. This value is fake and doesn't actually affect the vehicle movement. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetRPM]
--- @return number
function Vehicle:GetRPM() end

--- (server) Returns the current speed of the vehicle in MPH. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetSpeed]
--- @return number
function Vehicle:GetSpeed() end

--- (server) Returns the current steering of the vehicle. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetSteering]
--- @return number
function Vehicle:GetSteering() end

--- (server) Returns the maximum steering degree of the vehicle 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetSteeringDegrees]
--- @return number
function Vehicle:GetSteeringDegrees() end

--- (client/server) Returns if vehicle has thirdperson mode enabled or not. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetThirdPersonMode]
--- @return boolean
function Vehicle:GetThirdPersonMode() end

--- (server) Returns the current throttle of the vehicle. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetThrottle]
--- @return number
function Vehicle:GetThrottle() end

--- (client/server) Returns the vehicle class name. This is only useful for Sandbox spawned vehicles or any vehicle that properly sets the vehicle class with [Vehicle:SetVehicleClass](https://wiki.facepunch.com/gmod/Vehicle:SetVehicleClass). 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetVehicleClass]
--- @return string
function Vehicle:GetVehicleClass() end

--- (server) Returns the vehicle parameters of given vehicle. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetVehicleParams]
--- @return table
function Vehicle:GetVehicleParams() end

--- (client/server) Returns the view position and forward angle of a given passenger seat. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetVehicleViewPosition]
--- @param role number @ The passenger role. 0 is the driver. This parameter seems to be ignored by the game engine and is therefore optional.
--- @return Vector|Angle|number
function Vehicle:GetVehicleViewPosition(role) end

--- (server) Returns the [PhysObj](https://wiki.facepunch.com/gmod/PhysObj) of given wheel. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetWheel]
--- @param wheel number @ The wheel to retrieve
--- @return PhysObj
function Vehicle:GetWheel(wheel) end

--- (server) Returns the base wheel height. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetWheelBaseHeight]
--- @param wheel number @ The wheel to get the base wheel height of.
--- @return number
function Vehicle:GetWheelBaseHeight(wheel) end

--- (server) Returns the wheel contact point. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetWheelContactPoint]
--- @param wheel number @ The wheel to check
--- @return Vector|number|boolean
function Vehicle:GetWheelContactPoint(wheel) end

--- (server) Returns the wheel count of the vehicle 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetWheelCount]
--- @return number
function Vehicle:GetWheelCount() end

--- (server) Returns the total wheel height. 
--- [https://wiki.facepunch.com/gmod/Vehicle:GetWheelTotalHeight]
--- @param wheel number @ The wheel to get the base wheel height of.
--- @return number
function Vehicle:GetWheelTotalHeight(wheel) end

--- (server) Returns whether this vehicle has boost at all. 
--- [https://wiki.facepunch.com/gmod/Vehicle:HasBoost]
--- @return boolean
function Vehicle:HasBoost() end

--- (server) Returns whether this vehicle has a brake pedal. See [Vehicle:SetHasBrakePedal](https://wiki.facepunch.com/gmod/Vehicle:SetHasBrakePedal). 
--- [https://wiki.facepunch.com/gmod/Vehicle:HasBrakePedal]
--- @return boolean
function Vehicle:HasBrakePedal() end

--- (server) Returns whether this vehicle is currently boosting or not. 
--- [https://wiki.facepunch.com/gmod/Vehicle:IsBoosting]
--- @return boolean
function Vehicle:IsBoosting() end

--- (server) Returns whether the engine is enabled or not, i.e. whether it can be started. 
--- [https://wiki.facepunch.com/gmod/Vehicle:IsEngineEnabled]
--- @return boolean
function Vehicle:IsEngineEnabled() end

--- (server) Returns whether the engine is started or not. 
--- [https://wiki.facepunch.com/gmod/Vehicle:IsEngineStarted]
--- @return boolean
function Vehicle:IsEngineStarted() end

--- (client/server) Returns true if the vehicle object is a valid or not. This will return false when [Vehicle](https://wiki.facepunch.com/gmod/Vehicle) functions are not usable on the vehicle. 
--- [https://wiki.facepunch.com/gmod/Vehicle:IsValidVehicle]
--- @return boolean
function Vehicle:IsValidVehicle() end

--- (server) Returns whether this vehicle's engine is underwater or not. ( Internally the attachment point "engine" or "vehicle_engine" is checked ) 
--- [https://wiki.facepunch.com/gmod/Vehicle:IsVehicleBodyInWater]
--- @return boolean
function Vehicle:IsVehicleBodyInWater() end

--- (server) Releases the vehicle's handbrake (Jeep) so it can roll without any passengers.
--- This will be overwritten if the vehicle has a driver. Same as [Vehicle:SetHandbrake](https://wiki.facepunch.com/gmod/Vehicle:SetHandbrake)( false ) 
--- [https://wiki.facepunch.com/gmod/Vehicle:ReleaseHandbrake]
--- @return void
function Vehicle:ReleaseHandbrake() end

--- (server) Sets the boost. It is possible that this function does not work while the vehicle has a valid driver in it. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetBoost]
--- @param boost number @ The new boost value
--- @return void
function Vehicle:SetBoost(boost) end

--- (client/server) Sets the third person camera distance of the vehicle. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetCameraDistance]
--- @param distance number @ Camera distance to set to
--- @return void
function Vehicle:SetCameraDistance(distance) end

--- (server) Turns on or off the Jeep handbrake so it can roll without a driver inside.
--- Does nothing while the vehicle has a driver in it. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetHandbrake]
--- @param handbrake boolean @ true to turn on, false to turn off.
--- @return void
function Vehicle:SetHandbrake(handbrake) end

--- (server) Sets whether this vehicle has a brake pedal. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetHasBrakePedal]
--- @param brakePedal boolean @ Whether this vehicle has a brake pedal
--- @return void
function Vehicle:SetHasBrakePedal(brakePedal) end

--- (server) Sets maximum reverse throttle 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetMaxReverseThrottle]
--- @param maxRevThrottle number @ The new maximum throttle. This number must be negative.
--- @return void
function Vehicle:SetMaxReverseThrottle(maxRevThrottle) end

--- (server) Sets maximum forward throttle 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetMaxThrottle]
--- @param maxThrottle number @ The new maximum throttle.
--- @return void
function Vehicle:SetMaxThrottle(maxThrottle) end

--- (server) Sets spring length of given wheel 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetSpringLength]
--- @param wheel number @ The wheel to change spring length of
--- @param length number @ The new spring length
--- @return void
function Vehicle:SetSpringLength(wheel, length) end

--- (server) Sets the steering of the vehicle. 
--- [https://wiki.facepunch.com/gmod/Vehicle.SetSteering]
--- @param front number @ Angle of the front wheels (-1 to 1)
--- @param rear number @ Angle of the rear wheels (-1 to 1)
--- @return void
function Vehicle:SetSteering(front, rear) end

--- (server) Sets the maximum steering degrees of the vehicle 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetSteeringDegrees]
--- @param steeringDegrees number @ The new maximum steering degree
--- @return void
function Vehicle:SetSteeringDegrees(steeringDegrees) end

--- (client/server) Sets the third person mode state. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetThirdPersonMode]
--- @param enable boolean @ Enable or disable the third person mode for this vehicle
--- @return void
function Vehicle:SetThirdPersonMode(enable) end

--- (server) Sets the throttle of the vehicle. It is possible that this function does not work with a valid driver in it. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetThrottle]
--- @param throttle number @ The new throttle.
--- @return void
function Vehicle:SetThrottle(throttle) end

--- (client/server) Sets the vehicle class name. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetVehicleClass]
--- @param class string @ The vehicle class name to set
--- @return void
function Vehicle:SetVehicleClass(class) end

--- (server) Sets whether the entry or exit camera animation should be played or not. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetVehicleEntryAnim]
--- @param bOn boolean @ Whether the entry or exit camera animation should be played or not.
--- @return void
function Vehicle:SetVehicleEntryAnim(bOn) end

--- (server) Sets the vehicle parameters for given vehicle. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetVehicleParams]
--- @param params table @ The new new vehicle parameters. See [VehicleParams](https://wiki.facepunch.com/gmod/Structures/VehicleParams).
--- @return void
function Vehicle:SetVehicleParams(params) end

--- (server) Sets friction of given wheel.  This function may be broken. 
--- [https://wiki.facepunch.com/gmod/Vehicle:SetWheelFriction]
--- @param wheel number @ The wheel to change the friction of
--- @param friction number @ The new friction to set
--- @return void
function Vehicle:SetWheelFriction(wheel, friction) end

--- (server) Starts or stops the engine. 
--- [https://wiki.facepunch.com/gmod/Vehicle:StartEngine]
--- @param start boolean @ True to start, false to stop.
--- @return void
function Vehicle:StartEngine(start) end

