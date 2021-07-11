--- @class NextBot
NextBot = {}

--- (server) Become a ragdoll and remove the entity. 
--- [https://wiki.facepunch.com/gmod/NextBot:BecomeRagdoll]
--- @param info CTakeDamageInfo @ Damage info passed from an onkilled event
--- @return Entity
function NextBot:BecomeRagdoll(info) end

--- (server) Should only be called in [NEXTBOT:BodyUpdate](https://wiki.facepunch.com/gmod/NEXTBOT:BodyUpdate). This sets the `move_x` and `move_y` pose parameters of the bot to fit how they're currently moving, sets the animation speed ([Entity:GetPlaybackRate](https://wiki.facepunch.com/gmod/Entity:GetPlaybackRate)) to suit the ground speed, and calls [Entity:FrameAdvance](https://wiki.facepunch.com/gmod/Entity:FrameAdvance). 
--- [https://wiki.facepunch.com/gmod/NextBot:BodyMoveXY]
--- @return void
function NextBot:BodyMoveXY() end

--- (server) Like [NextBot:FindSpots](https://wiki.facepunch.com/gmod/NextBot:FindSpots) but only returns a vector. 
--- [https://wiki.facepunch.com/gmod/NextBot:FindSpot]
--- @param type string @ Either "random", "near", "far"
--- @param options table @ This table should contain the search info.[string](https://wiki.facepunch.com/gmod/string) type - The type (Only'hiding' for now)[Vector](https://wiki.facepunch.com/gmod/Vector) pos - the position to search.[number](https://wiki.facepunch.com/gmod/number) radius - the radius to search.[number](https://wiki.facepunch.com/gmod/number) stepup - the highest step to step up.[number](https://wiki.facepunch.com/gmod/number) stepdown - the highest we can step down without being hurt.
--- @return Vector
function NextBot:FindSpot(type, options) end

--- (server) Returns a table of hiding spots. 
--- [https://wiki.facepunch.com/gmod/NextBot:FindSpots]
--- @param specs table @ This table should contain the search info.[string](https://wiki.facepunch.com/gmod/string) type - The type (optional, only 'hiding' supported)[Vector](https://wiki.facepunch.com/gmod/Vector) pos - the position to search.[number](https://wiki.facepunch.com/gmod/number) radius - the radius to search.[number](https://wiki.facepunch.com/gmod/number) stepup - the highest step to step up.[number](https://wiki.facepunch.com/gmod/number) stepdown - the highest we can step down without being hurt.
--- @return table
function NextBot:FindSpots(specs) end

--- (server) Returns the currently running activity 
--- [https://wiki.facepunch.com/gmod/NextBot:GetActivity]
--- @return number
function NextBot:GetActivity() end

--- (server) Returns the Field of View of the Nextbot NPC, used for its vision functionality, such as [NextBot:IsAbleToSee](https://wiki.facepunch.com/gmod/NextBot:IsAbleToSee). 
--- [https://wiki.facepunch.com/gmod/NextBot:GetFOV]
--- @return number
function NextBot:GetFOV() end

--- (server) Returns the maximum range the nextbot can see other nextbots/players at. See [NextBot:IsAbleToSee](https://wiki.facepunch.com/gmod/NextBot:IsAbleToSee). 
--- [https://wiki.facepunch.com/gmod/NextBot:GetMaxVisionRange]
--- @return number
function NextBot:GetMaxVisionRange() end

--- (server) Returns squared distance to an entity or a position.See also [NextBot:GetRangeTo](https://wiki.facepunch.com/gmod/NextBot:GetRangeTo). 
--- [https://wiki.facepunch.com/gmod/NextBot:GetRangeSquaredTo]
--- @param to Vector @ The position to measure distance to. Can be an entity.
--- @return number
function NextBot:GetRangeSquaredTo(to) end

--- (server) Returns the distance to an entity or position.See also [NextBot:GetRangeSquaredTo](https://wiki.facepunch.com/gmod/NextBot:GetRangeSquaredTo). 
--- [https://wiki.facepunch.com/gmod/NextBot:GetRangeTo]
--- @param to Vector @ The position to measure distance to. Can be an entity.
--- @return number
function NextBot:GetRangeTo(to) end

--- (server) Returns the solid mask for given NextBot. 
--- [https://wiki.facepunch.com/gmod/NextBot:GetSolidMask]
--- @return number
function NextBot:GetSolidMask() end

--- (server) Called from Lua when the NPC is stuck. This should only be called from the behaviour coroutine - so if you want to override this function and do something special that yields - then go for it.You should always call self.loco:ClearStuck() in this function to reset the stuck status - so it knows it's unstuck. See [CLuaLocomotion:ClearStuck](https://wiki.facepunch.com/gmod/CLuaLocomotion:ClearStuck). 
--- [https://wiki.facepunch.com/gmod/NextBot:HandleStuck]
--- @return void
function NextBot:HandleStuck() end

--- (server) Returns if the Nextbot NPC can see the give entity or not. 
--- [https://wiki.facepunch.com/gmod/NextBot:IsAbleToSee]
--- @param ent Entity @ The entity to test if we can see
--- @param useFOV number @ Whether to use the Field of View of the Nextbot
--- @return boolean
function NextBot:IsAbleToSee(ent, useFOV) end

--- (server) To be called in the behaviour coroutine only! Will yield until the bot has reached the goal or is stuck 
--- [https://wiki.facepunch.com/gmod/NextBot:MoveToPos]
--- @param pos Vector @ The position we want to get to
--- @param options table @ A table containing a bunch of tweakable options.[number](https://wiki.facepunch.com/gmod/number) lookahead - Minimum look ahead distance.[number](https://wiki.facepunch.com/gmod/number) tolerance - How close we must be to the goal before it can be considered complete.[boolean](https://wiki.facepunch.com/gmod/boolean) draw - Draw the path. Only visible on listen servers and single player.[number](https://wiki.facepunch.com/gmod/number) maxage - Maximum age of the path before it times out.[number](https://wiki.facepunch.com/gmod/number) repath - Rebuilds the path after this number of seconds.
--- @return string
function NextBot:MoveToPos(pos, options) end

--- (server) To be called in the behaviour coroutine only! Plays an animation sequence and waits for it to end before returning. 
--- [https://wiki.facepunch.com/gmod/NextBot:PlaySequenceAndWait]
--- @param name string @ The sequence name
--- @param speed number @ Playback Rate of that sequence
--- @return void
function NextBot:PlaySequenceAndWait(name, speed) end

--- (server) Sets the Field of View for the Nextbot NPC, used for its vision functionality, such as [NextBot:IsAbleToSee](https://wiki.facepunch.com/gmod/NextBot:IsAbleToSee). 
--- [https://wiki.facepunch.com/gmod/NextBot:SetFOV]
--- @param fov number @ The new FOV
--- @return void
function NextBot:SetFOV(fov) end

--- (server) Sets the maximum range the nextbot can see other nextbots/players at. See [NextBot:IsAbleToSee](https://wiki.facepunch.com/gmod/NextBot:IsAbleToSee). 
--- [https://wiki.facepunch.com/gmod/NextBot:SetMaxVisionRange]
--- @param range number @ The new vision range to set.
--- @return void
function NextBot:SetMaxVisionRange(range) end

--- (server) Sets the solid mask for given NextBot.The default solid mask of a NextBot is [MASK_NPCSOLID](https://wiki.facepunch.com/gmod/Enums/MASK). 
--- [https://wiki.facepunch.com/gmod/NextBot:SetSolidMask]
--- @param mask number @ The new mask, see [CONTENTS](https://wiki.facepunch.com/gmod/Enums/CONTENTS) and [MASK](https://wiki.facepunch.com/gmod/Enums/MASK)
--- @return void
function NextBot:SetSolidMask(mask) end

--- (server) Start doing an activity (animation) 
--- [https://wiki.facepunch.com/gmod/NextBot:StartActivity]
--- @param activity number @ One of the [ACT](https://wiki.facepunch.com/gmod/Enums/ACT)
--- @return void
function NextBot:StartActivity(activity) end

