--- @class CMoveData
CMoveData = {}

--- (client/server) Adds keys to the move data, as if player pressed them. 
--- [https://wiki.facepunch.com/gmod/CMoveData:AddKey]
--- @param keys number @ Keys to add, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return void
function CMoveData:AddKey(keys) end

--- (client/server) Gets the aim angle. Seems to be same as [CMoveData:GetAngles](https://wiki.facepunch.com/gmod/CMoveData:GetAngles). 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetAbsMoveAngles]
--- @return Angle
function CMoveData:GetAbsMoveAngles() end

--- (client/server) Gets the aim angle. On client is the same as [Entity:GetAngles](https://wiki.facepunch.com/gmod/Entity:GetAngles). 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetAngles]
--- @return Angle
function CMoveData:GetAngles() end

--- (client/server) Gets which buttons are down 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetButtons]
--- @return number
function CMoveData:GetButtons() end

--- (client/server) Returns the center of the player movement constraint. See [CMoveData:SetConstraintCenter](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintCenter). 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetConstraintCenter]
--- @return Vector
function CMoveData:GetConstraintCenter() end

--- (client/server) Returns the radius that constrains the players movement. See [CMoveData:SetConstraintRadius](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintRadius). 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetConstraintRadius]
--- @return number
function CMoveData:GetConstraintRadius() end

--- (client/server) Returns the player movement constraint speed scale. See [CMoveData:SetConstraintSpeedScale](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintSpeedScale). 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetConstraintSpeedScale]
--- @return number
function CMoveData:GetConstraintSpeedScale() end

--- (client/server) Returns the width (distance from the edge of the radius, inward) where the actual movement constraint functions. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetConstraintWidth]
--- @return number
function CMoveData:GetConstraintWidth() end

--- (client/server) Returns an internal player movement variable `m_outWishVel`. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetFinalIdealVelocity]
--- @return Vector
function CMoveData:GetFinalIdealVelocity() end

--- (client/server) Returns an internal player movement variable `m_outJumpVel`. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetFinalJumpVelocity]
--- @return Vector
function CMoveData:GetFinalJumpVelocity() end

--- (client/server) Returns an internal player movement variable `m_outStepHeight`. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetFinalStepHeight]
--- @return number
function CMoveData:GetFinalStepHeight() end

--- (client/server) Returns the players forward speed. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetForwardSpeed]
--- @return number
function CMoveData:GetForwardSpeed() end

--- (client/server) Gets the number passed to "impulse" console command 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetImpulseCommand]
--- @return number
function CMoveData:GetImpulseCommand() end

--- (client/server) Returns the maximum client speed of the player 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetMaxClientSpeed]
--- @return number
function CMoveData:GetMaxClientSpeed() end

--- (client/server) Returns the maximum speed of the player. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetMaxSpeed]
--- @return number
function CMoveData:GetMaxSpeed() end

--- (client/server) Returns the angle the player is moving at. For more info, see [CMoveData:SetMoveAngles](https://wiki.facepunch.com/gmod/CMoveData:SetMoveAngles). 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetMoveAngles]
--- @return Angle
function CMoveData:GetMoveAngles() end

--- (client/server) Gets the aim angle. Only works clientside, server returns same as [CMoveData:GetAngles](https://wiki.facepunch.com/gmod/CMoveData:GetAngles). 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetOldAngles]
--- @return Angle
function CMoveData:GetOldAngles() end

--- (client/server) Get which buttons were down last frame 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetOldButtons]
--- @return number
function CMoveData:GetOldButtons() end

--- (client/server) Gets the player's position. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetOrigin]
--- @return Vector
function CMoveData:GetOrigin() end

--- (client/server) Returns the strafe speed of the player. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetSideSpeed]
--- @return number
function CMoveData:GetSideSpeed() end

--- (client/server) Returns the vertical speed of the player. ( Z axis of [CMoveData:GetVelocity](https://wiki.facepunch.com/gmod/CMoveData:GetVelocity) ) 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetUpSpeed]
--- @return number
function CMoveData:GetUpSpeed() end

--- (client/server) Gets the players velocity. 
--- [https://wiki.facepunch.com/gmod/CMoveData:GetVelocity]
--- @return Vector
function CMoveData:GetVelocity() end

--- (client/server) Returns whether the key is down or not 
--- [https://wiki.facepunch.com/gmod/CMoveData:KeyDown]
--- @param key number @ The key to test, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return boolean
function CMoveData:KeyDown(key) end

--- (client/server) Returns whether the key was pressed. If you want to check if the key is held down, try [CMoveData:KeyDown](https://wiki.facepunch.com/gmod/CMoveData:KeyDown) 
--- [https://wiki.facepunch.com/gmod/CMoveData:KeyPressed]
--- @param key number @ The key to test, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return boolean
function CMoveData:KeyPressed(key) end

--- (client/server) Returns whether the key was released 
--- [https://wiki.facepunch.com/gmod/CMoveData:KeyReleased]
--- @param key number @ A key to test, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return boolean
function CMoveData:KeyReleased(key) end

--- (client/server) Returns whether the key was down or not.
--- 
--- 
--- Unlike [CMoveData:KeyDown](https://wiki.facepunch.com/gmod/CMoveData:KeyDown), it will return false if [CMoveData:KeyPressed](https://wiki.facepunch.com/gmod/CMoveData:KeyPressed) is true and it will return true if [CMoveData:KeyReleased](https://wiki.facepunch.com/gmod/CMoveData:KeyReleased) is true. 
--- [https://wiki.facepunch.com/gmod/CMoveData:KeyWasDown]
--- @param key number @ The key to test, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return boolean
function CMoveData:KeyWasDown(key) end

--- (client/server) Sets absolute move angles.( ? ) Doesn't seem to do anything. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetAbsMoveAngles]
--- @param ang Angle @ New absolute move angles
--- @return void
function CMoveData:SetAbsMoveAngles(ang) end

--- (client/server) Sets angles. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetAngles]
--- @param ang Angle @ The angles.
--- @return void
function CMoveData:SetAngles(ang) end

--- (client/server) Sets the pressed buttons on the move data 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetButtons]
--- @param buttons number @ A number representing which buttons are down, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return void
function CMoveData:SetButtons(buttons) end

--- (client/server) Sets the center of the player movement constraint. See [CMoveData:SetConstraintRadius](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintRadius). 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetConstraintCenter]
--- @param pos Vector @ The constraint origin.
--- @return void
function CMoveData:SetConstraintCenter(pos) end

--- (client/server) Sets the radius that constrains the players movement.
--- Works with conjunction of:
--- * [CMoveData:SetConstraintWidth](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintWidth)
--- * [CMoveData:SetConstraintSpeedScale](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintSpeedScale)
--- * [CMoveData:SetConstraintCenter](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintCenter) 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetConstraintRadius]
--- @param radius number @ The new constraint radius
--- @return void
function CMoveData:SetConstraintRadius(radius) end

--- (client/server) Sets the player movement constraint speed scale. This will be applied to the player within the [constraint radius](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintRadius) when approaching its edge. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetConstraintSpeedScale]
--- @param number number @ The constraint speed scale
--- @return void
function CMoveData:SetConstraintSpeedScale(number) end

--- (client/server) Sets  the width (distance from the edge of the [radius](https://wiki.facepunch.com/gmod/CMoveData:SetConstraintRadius), inward) where the actual movement constraint functions. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetConstraintWidth]
--- @param number number @ The constraint width
--- @return void
function CMoveData:SetConstraintWidth(number) end

--- (client/server) Sets an internal player movement variable `m_outWishVel`. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetFinalIdealVelocity]
--- @param idealVel Vector @ No description provided
--- @return void
function CMoveData:SetFinalIdealVelocity(idealVel) end

--- (client/server) Sets an internal player movement variable `m_outJumpVel`. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetFinalJumpVelocity]
--- @param jumpVel Vector @ No description provided
--- @return void
function CMoveData:SetFinalJumpVelocity(jumpVel) end

--- (client/server) Sets an internal player movement variable `m_outStepHeight`. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetFinalStepHeight]
--- @param stepHeight number @ No description provided
--- @return void
function CMoveData:SetFinalStepHeight(stepHeight) end

--- (client/server) Sets players forward speed. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetForwardSpeed]
--- @param speed number @ New forward speed
--- @return void
function CMoveData:SetForwardSpeed(speed) end

--- (client/server) Sets the impulse command. This isn't actually utilised in the engine anywhere. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetImpulseCommand]
--- @param impulse number @ The impulse to set
--- @return void
function CMoveData:SetImpulseCommand(impulse) end

--- (client/server) Sets the maximum player speed. Player won't be able to run or sprint faster then this value.
--- This also automatically sets [CMoveData:SetMaxSpeed](https://wiki.facepunch.com/gmod/CMoveData:SetMaxSpeed) when used in the [GM:SetupMove](https://wiki.facepunch.com/gmod/GM:SetupMove) hook. You must set it manually in the [GM:Move](https://wiki.facepunch.com/gmod/GM:Move) hook.
--- This must be called on both client and server to avoid prediction errors.
--- This will **not** reduce speed in air. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetMaxClientSpeed]
--- @param maxSpeed number @ The new maximum speed
--- @return void
function CMoveData:SetMaxClientSpeed(maxSpeed) end

--- (client/server) Sets the maximum speed of the player. This must match with [CMoveData:SetMaxClientSpeed](https://wiki.facepunch.com/gmod/CMoveData:SetMaxClientSpeed) both, on server and client.
--- Doesn't seem to be doing anything on it's own, use [CMoveData:SetMaxClientSpeed](https://wiki.facepunch.com/gmod/CMoveData:SetMaxClientSpeed) instead. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetMaxSpeed]
--- @param maxSpeed number @ The new maximum speed
--- @return void
function CMoveData:SetMaxSpeed(maxSpeed) end

--- (client/server) Sets the serverside move angles, making the movement keys act as if player was facing that direction. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetMoveAngles]
--- @param dir Angle @ The aim direction.
--- @return void
function CMoveData:SetMoveAngles(dir) end

--- (client/server) Sets old aim angles. ( ? ) Doesn't seem to be doing anything. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetOldAngles]
--- @param aimAng Angle @ The old angles
--- @return void
function CMoveData:SetOldAngles(aimAng) end

--- (client/server) Sets the 'old' pressed buttons on the move data. These buttons are used to work out which buttons have been released, which have just been pressed and which are being held down. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetOldButtons]
--- @param buttons number @ A number representing which buttons were down, see [IN](https://wiki.facepunch.com/gmod/Enums/IN)
--- @return void
function CMoveData:SetOldButtons(buttons) end

--- (client/server) Sets the players position. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetOrigin]
--- @param pos Vector @ The position
--- @return void
function CMoveData:SetOrigin(pos) end

--- (client/server) Sets players strafe speed. 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetSideSpeed]
--- @param speed number @ Strafe speed
--- @return void
function CMoveData:SetSideSpeed(speed) end

--- (client/server) Sets vertical speed of the player. ( Z axis of [CMoveData:SetVelocity](https://wiki.facepunch.com/gmod/CMoveData:SetVelocity) ) 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetUpSpeed]
--- @param speed number @ Vertical speed to set
--- @return void
function CMoveData:SetUpSpeed(speed) end

--- (client/server) Sets the player's velocity 
--- [https://wiki.facepunch.com/gmod/CMoveData:SetVelocity]
--- @param velocity Vector @ The velocity to set
--- @return void
function CMoveData:SetVelocity(velocity) end

