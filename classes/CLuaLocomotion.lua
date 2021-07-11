--- @class CLuaLocomotion
CLuaLocomotion = {}

--- (server) Sets the location we want to get to 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:Approach]
--- @param goal Vector @ The vector we want to get to
--- @param goalweight number @ If unsure then set this to 1
--- @return void
function CLuaLocomotion:Approach(goal, goalweight) end

--- (server) Removes the stuck status from the bot 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:ClearStuck]
--- @return void
function CLuaLocomotion:ClearStuck() end

--- (server) Sets the direction we want to face 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:FaceTowards]
--- @param goal Vector @ The vector we want to face
--- @return void
function CLuaLocomotion:FaceTowards(goal) end

--- (server) Returns the acceleration speed 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetAcceleration]
--- @return number
function CLuaLocomotion:GetAcceleration() end

--- (server) Returns the current acceleration as a vector 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetCurrentAcceleration]
--- @return Vector
function CLuaLocomotion:GetCurrentAcceleration() end

--- (server) Gets the height the bot is scared to fall from 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetDeathDropHeight]
--- @return number
function CLuaLocomotion:GetDeathDropHeight() end

--- (server) Gets the deceleration speed 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetDeceleration]
--- @return number
function CLuaLocomotion:GetDeceleration() end

--- (server) Returns the locomotion's gravity. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetGravity]
--- @return number
function CLuaLocomotion:GetGravity() end

--- (server) Return unit vector in XY plane describing our direction of motion - even if we are currently not moving 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetGroundMotionVector]
--- @return Vector
function CLuaLocomotion:GetGroundMotionVector() end

--- (server) Gets the height of the bot's jump 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetJumpHeight]
--- @return number
function CLuaLocomotion:GetJumpHeight() end

--- (server) Returns maximum jump height of this [CLuaLocomotion](https://wiki.facepunch.com/gmod/CLuaLocomotion). 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetMaxJumpHeight]
--- @return number
function CLuaLocomotion:GetMaxJumpHeight() end

--- (server) Returns the max rate at which the NextBot can visually rotate. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetMaxYawRate]
--- @return number
function CLuaLocomotion:GetMaxYawRate() end

--- (server) Returns the [NextBot](https://wiki.facepunch.com/gmod/NextBot) this locomotion is associated with. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetNextBot]
--- @return NextBot
function CLuaLocomotion:GetNextBot() end

--- (server) Gets the max height the bot can step up 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetStepHeight]
--- @return number
function CLuaLocomotion:GetStepHeight() end

--- (server) Returns the current movement velocity as a vector 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:GetVelocity]
--- @return Vector
function CLuaLocomotion:GetVelocity() end

--- (server) Returns whether this [CLuaLocomotion](https://wiki.facepunch.com/gmod/CLuaLocomotion) can reach and/or traverse/move in given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:IsAreaTraversable]
--- @param area CNavArea @ The area to test
--- @return boolean
function CLuaLocomotion:IsAreaTraversable(area) end

--- (server) Returns true if we're trying to move. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:IsAttemptingToMove]
--- @return boolean
function CLuaLocomotion:IsAttemptingToMove() end

--- (server) Returns true of the locomotion engine is jumping or climbing 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:IsClimbingOrJumping]
--- @return boolean
function CLuaLocomotion:IsClimbingOrJumping() end

--- (server) Returns whether the nextbot this locomotion is attached to is on ground or not. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:IsOnGround]
--- @return boolean
function CLuaLocomotion:IsOnGround() end

--- (server) Returns true if we're stuck 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:IsStuck]
--- @return boolean
function CLuaLocomotion:IsStuck() end

--- (server) Returns whether or not the target in question is on a ladder or not. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:IsUsingLadder]
--- @return boolean
function CLuaLocomotion:IsUsingLadder() end

--- (server) Makes the bot jump. It must be on ground ([Entity:IsOnGround](https://wiki.facepunch.com/gmod/Entity:IsOnGround)) and its model must have `ACT_JUMP` activity. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:Jump]
--- @return void
function CLuaLocomotion:Jump() end

--- (server) Makes the bot jump across a gap. The bot must be on ground ([Entity:IsOnGround](https://wiki.facepunch.com/gmod/Entity:IsOnGround)) and its model must have `ACT_JUMP` activity. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:JumpAcrossGap]
--- @param landingGoal Vector @ No description provided
--- @param landingForward Vector @ No description provided
--- @return void
function CLuaLocomotion:JumpAcrossGap(landingGoal, landingForward) end

--- (server) Sets the acceleration speed 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetAcceleration]
--- @param speed number @ Speed acceleration (default is 400)
--- @return void
function CLuaLocomotion:SetAcceleration(speed) end

--- (server) Sets the height the bot is scared to fall from. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetDeathDropHeight]
--- @param height number @ Height (default is 200)
--- @return void
function CLuaLocomotion:SetDeathDropHeight(height) end

--- (server) Sets the deceleration speed. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetDeceleration]
--- @param deceleration number @ New deceleration speed (default is 400)
--- @return void
function CLuaLocomotion:SetDeceleration(deceleration) end

--- (server) Sets movement speed. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetDesiredSpeed]
--- @param speed number @ The new desired speed
--- @return void
function CLuaLocomotion:SetDesiredSpeed(speed) end

--- (server) Sets the locomotion's gravity. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetGravity]
--- @param gravity number @ New gravity to set. Default is 1000.
--- @return void
function CLuaLocomotion:SetGravity(gravity) end

--- (server) Sets the height of the bot's jump 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetJumpHeight]
--- @param height number @ Height (default is 58)
--- @return void
function CLuaLocomotion:SetJumpHeight(height) end

--- (server) Sets the max rate at which the NextBot can visually rotate. This will not affect moving or pathing. 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetMaxYawRate]
--- @param yawRate number @ Desired new maximum yaw rate
--- @return void
function CLuaLocomotion:SetMaxYawRate(yawRate) end

--- (server) Sets the max height the bot can step up 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetStepHeight]
--- @param height number @ Height (default is 18)
--- @return void
function CLuaLocomotion:SetStepHeight(height) end

--- (server) Sets the current movement velocity 
--- [https://wiki.facepunch.com/gmod/CLuaLocomotion:SetVelocity]
--- @param velocity Vector @ No description provided
--- @return void
function CLuaLocomotion:SetVelocity(velocity) end

