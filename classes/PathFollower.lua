--- @class PathFollower
PathFollower = {}

--- (server) If you created your path with type "Chase" this functions should be used in place of [PathFollower:Update](https://wiki.facepunch.com/gmod/PathFollower:Update) to cause the bot to chase the specified entity. 
--- [https://wiki.facepunch.com/gmod/PathFollower:Chase]
--- @param bot NextBot @ The bot to update along the path. This can also be a nextbot player ([player.CreateNextbot](https://wiki.facepunch.com/gmod/player.CreateNextbot))
--- @param ent Entity @ The entity we want to chase
--- @return void
function PathFollower:Chase(bot, ent) end

--- (server) Compute shortest path from bot to 'goal' via A* algorithm. 
--- [https://wiki.facepunch.com/gmod/PathFollower:Compute]
--- @param from NextBot @ The nextbot we're generating for.  This can also be a nextbot player ([player.CreateNextbot](https://wiki.facepunch.com/gmod/player.CreateNextbot)).
--- @param to Vector @ To point
--- @param generator function @ A funtion that allows you to alter the path generation. See example below for the default function.
--- @return boolean
function PathFollower:Compute(from, to, generator) end

--- (server) Draws the path. This is meant for debugging - and uses debug overlay. 
--- [https://wiki.facepunch.com/gmod/PathFollower:Draw]
--- @return void
function PathFollower:Draw() end

--- (server) Returns the first segment of the path. 
--- [https://wiki.facepunch.com/gmod/PathFollower:FirstSegment]
--- @return table
function PathFollower:FirstSegment() end

--- (server) Returns the age since the path was built 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetAge]
--- @return number
function PathFollower:GetAge() end

--- (server) Returns all of the segments of the given path. 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetAllSegments]
--- @return table
function PathFollower:GetAllSegments() end

--- (server) The closest position along the path to a position 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetClosestPosition]
--- @param position Vector @ The point we're querying for
--- @return Vector
function PathFollower:GetClosestPosition(position) end

--- (server) Returns the current goal data. Can return nil if the current goal is invalid, for example immediately after [PathFollower:Update](https://wiki.facepunch.com/gmod/PathFollower:Update). 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetCurrentGoal]
--- @return table
function PathFollower:GetCurrentGoal() end

--- (server) Returns the cursor data 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetCursorData]
--- @return table
function PathFollower:GetCursorData() end

--- (server) Returns the current progress along the path 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetCursorPosition]
--- @return number
function PathFollower:GetCursorPosition() end

--- (server) Returns the path end position 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetEnd]
--- @return Vector
function PathFollower:GetEnd() end

--- (server) Returns how close we can get to the goal to call it done. 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetGoalTolerance]
--- @return number
function PathFollower:GetGoalTolerance() end

--- (server) No description provided 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetHindrance]
--- @return Entity
function PathFollower:GetHindrance() end

--- (server) Returns the total length of the path 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetLength]
--- @return number
function PathFollower:GetLength() end

--- (server) Returns the minimum range movement goal must be along path. 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetMinLookAheadDistance]
--- @return number
function PathFollower:GetMinLookAheadDistance() end

--- (server) Returns the vector position of distance along path 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetPositionOnPath]
--- @param distance number @ The distance along the path to query
--- @return Vector
function PathFollower:GetPositionOnPath(distance) end

--- (server) Returns the path start position 
--- [https://wiki.facepunch.com/gmod/PathFollower:GetStart]
--- @return Vector
function PathFollower:GetStart() end

--- (server) Invalidates the current path 
--- [https://wiki.facepunch.com/gmod/PathFollower:Invalidate]
--- @return void
function PathFollower:Invalidate() end

--- (server) Returns true if the path is valid 
--- [https://wiki.facepunch.com/gmod/PathFollower:IsValid]
--- @return boolean
function PathFollower:IsValid() end

--- (server) Returns the last segment of the path. 
--- [https://wiki.facepunch.com/gmod/PathFollower:LastSegment]
--- @return table
function PathFollower:LastSegment() end

--- (server) Moves the cursor by give distance.
--- For a function that sets the distance, see [PathFollower:MoveCursorTo](https://wiki.facepunch.com/gmod/PathFollower:MoveCursorTo). 
--- [https://wiki.facepunch.com/gmod/PathFollower:MoveCursor]
--- @param distance number @ The distance to move the cursor (in relative world units)
--- @return void
function PathFollower:MoveCursor(distance) end

--- (server) Sets the cursor position to given distance.
--- For relative distance, see [PathFollower:MoveCursor](https://wiki.facepunch.com/gmod/PathFollower:MoveCursor). 
--- [https://wiki.facepunch.com/gmod/PathFollower:MoveCursorTo]
--- @param distance number @ The distance to move the cursor (in world units)
--- @return void
function PathFollower:MoveCursorTo(distance) end

--- (server) Moves the cursor of the path to the closest position compared to given vector. 
--- [https://wiki.facepunch.com/gmod/PathFollower:MoveCursorToClosestPosition]
--- @param pos Vector @ No description provided
--- @param type number @ Seek type 0 = SEEK_ENTIRE_PATH - Search the entire path length 1 = SEEK_AHEAD - Search from current cursor position forward toward end of path 2 = SEEK_BEHIND - Search from current cursor position backward toward path start
--- @param alongLimit number @ No description provided
--- @return void
function PathFollower:MoveCursorToClosestPosition(pos, type, alongLimit) end

--- (server) Moves the cursor to the end of the path 
--- [https://wiki.facepunch.com/gmod/PathFollower:MoveCursorToEnd]
--- @return void
function PathFollower:MoveCursorToEnd() end

--- (server) Moves the cursor to the end of the path 
--- [https://wiki.facepunch.com/gmod/PathFollower:MoveCursorToStart]
--- @return void
function PathFollower:MoveCursorToStart() end

--- (server) Resets the age which is retrieved by [PathFollower:GetAge](https://wiki.facepunch.com/gmod/PathFollower:GetAge) to 0. 
--- [https://wiki.facepunch.com/gmod/PathFollower:ResetAge]
--- @return void
function PathFollower:ResetAge() end

--- (server) How close we can get to the goal to call it done 
--- [https://wiki.facepunch.com/gmod/PathFollower:SetGoalTolerance]
--- @param distance number @ The distance we're setting it to
--- @return void
function PathFollower:SetGoalTolerance(distance) end

--- (server) Sets minimum range movement goal must be along path 
--- [https://wiki.facepunch.com/gmod/PathFollower:SetMinLookAheadDistance]
--- @param mindist number @ The minimum look ahead distance
--- @return void
function PathFollower:SetMinLookAheadDistance(mindist) end

--- (server) Move the bot along the path. 
--- [https://wiki.facepunch.com/gmod/PathFollower:Update]
--- @param bot NextBot @ The bot to update along the path
--- @return void
function PathFollower:Update(bot) end

