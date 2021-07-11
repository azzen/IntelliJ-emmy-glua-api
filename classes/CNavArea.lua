--- @class CNavArea
CNavArea = {}

--- (server) Adds a hiding spot onto this nav area.There's a limit of 255 hiding spots per area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:AddHidingSpot]
--- @param pos Vector @ The position on the nav area
--- @param flags number @ Flags describing what kind of hiding spot this is.* 0 = None (Not recommended)* 1 = In Cover/basically a hiding spot, in a corner with good hard cover nearby* 2 = good sniper spot, had at least one decent sniping corridor* 4 = perfect sniper spot, can see either very far, or a large area, or both* 8 = exposed, spot in the open, usually on a ledge or cliffValues over 255 will be clamped.
--- @return void
function CNavArea:AddHidingSpot(pos, flags) end

--- (server) Adds this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to the closed list, a list of areas that have been checked by A* pathfinding algorithm.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:AddToClosedList]
--- @return void
function CNavArea:AddToClosedList() end

--- (server) Adds this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to the Open List.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:AddToOpenList]
--- @return void
function CNavArea:AddToOpenList() end

--- (server) Clears the open and closed lists for a new search.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:ClearSearchLists]
--- @return void
function CNavArea:ClearSearchLists() end

--- (server) Returns the height difference between the edges of two connected navareas. 
--- [https://wiki.facepunch.com/gmod/CNavArea:ComputeAdjacentConnectionHeightChange]
--- @param navarea CNavArea @ No description provided
--- @return number
function CNavArea:ComputeAdjacentConnectionHeightChange(navarea) end

--- (server) Returns the [NavDir](https://wiki.facepunch.com/gmod/Enums/NavDir) direction that the given vector faces on this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CNavArea:ComputeDirection]
--- @param pos Vector @ The position to compute direction towards.
--- @return number
function CNavArea:ComputeDirection(pos) end

--- (server) Returns the height difference on the Z axis of the two [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s. This is calculated from the center most point on both [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s. 
--- [https://wiki.facepunch.com/gmod/CNavArea:ComputeGroundHeightChange]
--- @param navArea CNavArea @ The nav area to test against.
--- @return number
function CNavArea:ComputeGroundHeightChange(navArea) end

--- (server) Connects this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to another [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) or [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) with a one way connection. ( From this area to the target )See [CNavLadder:ConnectTo](https://wiki.facepunch.com/gmod/CNavLadder:ConnectTo) for making the connection from ladder to area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:ConnectTo]
--- @param area CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) or [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) this area leads to.
--- @return void
function CNavArea:ConnectTo(area) end

--- (server) Returns true if this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) contains the given vector. 
--- [https://wiki.facepunch.com/gmod/CNavArea:Contains]
--- @param pos Vector @ The position to test.
--- @return boolean
function CNavArea:Contains(pos) end

--- (server) Disconnects this nav area from given area or ladder. (Only disconnects one way) 
--- [https://wiki.facepunch.com/gmod/CNavArea:Disconnect]
--- @param area CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) or [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) this to disconnect from.
--- @return void
function CNavArea:Disconnect(area) end

--- (server) Draws this navarea on debug overlay. 
--- [https://wiki.facepunch.com/gmod/CNavArea:Draw]
--- @return void
function CNavArea:Draw() end

--- (server) Draws the hiding spots on debug overlay. This includes sniper/exposed spots too! 
--- [https://wiki.facepunch.com/gmod/CNavArea:DrawSpots]
--- @return void
function CNavArea:DrawSpots() end

--- (server) Returns a table of all the [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s that have a  ( one and two way ) connection **from** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea).If an area has a one-way incoming connection to this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea), then it will **not** be returned from this function, use [CNavArea:GetIncomingConnections](https://wiki.facepunch.com/gmod/CNavArea:GetIncomingConnections) to get all one-way incoming connections.See [CNavArea:GetAdjacentAreasAtSide](https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentAreasAtSide) for a function that only returns areas from one side/direction. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentAreas]
--- @return table
function CNavArea:GetAdjacentAreas() end

--- (server) Returns a table of all the [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s that have a ( one and two way ) connection **from** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) in given direction.If an area has a one-way incoming connection to this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea), then it will **not** be returned from this function, use [CNavArea:GetIncomingConnections](https://wiki.facepunch.com/gmod/CNavArea:GetIncomingConnections) to get all incoming connections.See [CNavArea:GetAdjacentAreas](https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentAreas) for a function that returns all areas from all sides/directions. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentAreasAtSide]
--- @param navDir number @ The direction, in which to look for [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s, see [NavDir](https://wiki.facepunch.com/gmod/Enums/NavDir).
--- @return table
function CNavArea:GetAdjacentAreasAtSide(navDir) end

--- (server) Returns the amount of [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s that have a connection ( one and two way ) **from** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea).See [CNavArea:GetAdjacentCountAtSide](https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentCountAtSide) for a function that only returns area count from one side/direction. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentCount]
--- @return number
function CNavArea:GetAdjacentCount() end

--- (server) Returns the amount of [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s that have a connection ( one or two way ) **from** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) in given direction.See [CNavArea:GetAdjacentCount](https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentCount) for a function that returns [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) count from/in all sides/directions. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentCountAtSide]
--- @param navDir number @ The direction, in which to look for [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s, see [NavDir](https://wiki.facepunch.com/gmod/Enums/NavDir).
--- @return number
function CNavArea:GetAdjacentCountAtSide(navDir) end

--- (server) Returns the attribute mask for the given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetAttributes]
--- @return number
function CNavArea:GetAttributes() end

--- (server) Returns the center most vector point for the given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetCenter]
--- @return Vector
function CNavArea:GetCenter() end

--- (server) Returns the closest point of this Nav Area from the given position. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetClosestPointOnArea]
--- @param pos Vector @ The given position, can be outside of the Nav Area bounds.
--- @return Vector
function CNavArea:GetClosestPointOnArea(pos) end

--- (server) Returns the vector position of the corner for the given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetCorner]
--- @param cornerid number @ The target corner to get the position of, takes [NavCorner](https://wiki.facepunch.com/gmod/Enums/NavCorner).
--- @return Vector
function CNavArea:GetCorner(cornerid) end

--- (server) Returns the cost from starting area this area when pathfinding. Set by [CNavArea:SetCostSoFar](https://wiki.facepunch.com/gmod/CNavArea:SetCostSoFar).Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetCostSoFar]
--- @return number
function CNavArea:GetCostSoFar() end

--- (server) Returns a table of very bad hiding spots in this area.See also [CNavArea:GetHidingSpots](https://wiki.facepunch.com/gmod/CNavArea:GetHidingSpots). 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetExposedSpots]
--- @return table
function CNavArea:GetExposedSpots() end

--- (server) Returns size info about the nav area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetExtentInfo]
--- @return table
function CNavArea:GetExtentInfo() end

--- (server) Returns a table of good hiding spots in this area.See also [CNavArea:GetExposedSpots](https://wiki.facepunch.com/gmod/CNavArea:GetExposedSpots). 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetHidingSpots]
--- @param type number @ The type of spots to include.* 0 = None (Not recommended)* 1 = In Cover/basically a hiding spot, in a corner with good hard cover nearby* 2 = good sniper spot, had at least one decent sniping corridor* 4 = perfect sniper spot, can see either very far, or a large area, or both* 8 = exposed, spot in the open, usually on a ledge or cliff, same as GetExposedSpots* Values over 255 and below 0 will be clamped.
--- @return table
function CNavArea:GetHidingSpots(type) end

--- (server) Returns this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s unique ID. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetID]
--- @return number
function CNavArea:GetID() end

--- (server) Returns a table of all the [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s that have a one-way connection **to** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea).If a [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) has a two-way connection **to or from** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) then it will not be returned from this function, use [CNavArea:GetAdjacentAreas](https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentAreas) to get outgoing ( one and two way ) connections.See [CNavArea:GetIncomingConnectionsAtSide](https://wiki.facepunch.com/gmod/CNavArea:GetIncomingConnectionsAtSide) for a function that returns one-way incoming connections from  only one side/direction. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetIncomingConnections]
--- @return table
function CNavArea:GetIncomingConnections() end

--- (server) Returns a table of all the [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s that have a one-way connection **to** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) from given direction.If a [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) has a two-way connection **to or from** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) then it will not be returned from this function, use [CNavArea:GetAdjacentAreas](https://wiki.facepunch.com/gmod/CNavArea:GetAdjacentAreas) to get outgoing ( one and two way ) connections.See [CNavArea:GetIncomingConnections](https://wiki.facepunch.com/gmod/CNavArea:GetIncomingConnections) for a function that returns one-way incoming connections from  all sides/directions. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetIncomingConnectionsAtSide]
--- @param navDir number @ The direction, from which to look for [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s, see [NavDir](https://wiki.facepunch.com/gmod/Enums/NavDir).
--- @return table
function CNavArea:GetIncomingConnectionsAtSide(navDir) end

--- (server) Returns all [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder)s that have a ( one or two way ) connection **from** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea).See [CNavArea:GetLaddersAtSide](https://wiki.facepunch.com/gmod/CNavArea:GetLaddersAtSide) for a function that only returns [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder)s in given direction. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetLadders]
--- @return table
function CNavArea:GetLadders() end

--- (server) Returns all [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder)s that have a ( one or two way ) connection **from** ( one and two way ) this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) in given direction.See [CNavArea:GetLadders](https://wiki.facepunch.com/gmod/CNavArea:GetLadders) for a function that returns [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) from/in all sides/directions. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetLaddersAtSide]
--- @param navDir number @ The direction, in which to look for [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder)s.0 = Up ( LadderDirectionType::LADDER_UP )1 = Down ( LadderDirectionType::LADDER_DOWN )
--- @return table
function CNavArea:GetLaddersAtSide(navDir) end

--- (server) Returns the parent [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetParent]
--- @return CNavArea
function CNavArea:GetParent() end

--- (server) Returns how this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) is connected to its parent. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetParentHow]
--- @return number
function CNavArea:GetParentHow() end

--- (server) Returns the Place of the nav area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetPlace]
--- @return string
function CNavArea:GetPlace() end

--- (server) Returns a random [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) that has an outgoing ( one or two way ) connection **from** this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) in given direction. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetRandomAdjacentAreaAtSide]
--- @param navDir number @ The direction, in which to look for [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s, see [NavDir](https://wiki.facepunch.com/gmod/Enums/NavDir).
--- @return CNavArea
function CNavArea:GetRandomAdjacentAreaAtSide(navDir) end

--- (server) Returns a random point on the nav area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetRandomPoint]
--- @return Vector
function CNavArea:GetRandomPoint() end

--- (server) Returns the width this Nav Area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetSizeX]
--- @return number
function CNavArea:GetSizeX() end

--- (server) Returns the height of this Nav Area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetSizeY]
--- @return number
function CNavArea:GetSizeY() end

--- (server) Returns the total cost when passing from starting area to the goal area through this node. Set by [CNavArea:SetTotalCost](https://wiki.facepunch.com/gmod/CNavArea:SetTotalCost).Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetTotalCost]
--- @return number
function CNavArea:GetTotalCost() end

--- (server) Returns the elevation of this Nav Area at the given position. 
--- [https://wiki.facepunch.com/gmod/CNavArea:GetZ]
--- @param pos Vector @ The position to get the elevation from, the z value from this position is ignored and only the X and Y values are used to this task.
--- @return number
function CNavArea:GetZ(pos) end

--- (server) Returns true if the given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) has this attribute flag set. 
--- [https://wiki.facepunch.com/gmod/CNavArea:HasAttributes]
--- @param attribs number @ Attribute mask to check for, see [NAV_MESH](https://wiki.facepunch.com/gmod/Enums/NAV_MESH)
--- @return boolean
function CNavArea:HasAttributes(attribs) end

--- (server) Returns whether the nav area is blocked or not, i.e. whether it can be walked through or not. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsBlocked]
--- @param teamID number @ The team ID to test, -2 = any team.Only 2 actual teams are available, 0 and 1.
--- @param ignoreNavBlockers boolean @ Whether to ignore [func_nav_blocker](https://developer.valvesoftware.com/wiki/Func_nav_blocker) entities.
--- @return boolean
function CNavArea:IsBlocked(teamID, ignoreNavBlockers) end

--- (server) Returns whether this node is in the Closed List.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsClosed]
--- @return boolean
function CNavArea:IsClosed() end

--- (server) Returns whether this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) can completely (i.e. all corners of this area can see all corners of the given area) see the given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsCompletelyVisible]
--- @param area CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to test.
--- @return boolean
function CNavArea:IsCompletelyVisible(area) end

--- (server) Returns whether this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) has an outgoing ( one or two way ) connection **to** given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea).See [CNavArea:IsConnectedAtSide](https://wiki.facepunch.com/gmod/CNavArea:IsConnectedAtSide) for a function that only checks for outgoing connections in one direction. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsConnected]
--- @param navArea CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to test against.
--- @return boolean
function CNavArea:IsConnected(navArea) end

--- (server) Returns whether this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) has an outgoing ( one or two way ) connection **to** given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) in given direction.See [CNavArea:IsConnected](https://wiki.facepunch.com/gmod/CNavArea:IsConnected) for a function that checks all sides. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsConnectedAtSide]
--- @param navArea CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to test against.
--- @param navDirType number @ The direction, in which to look for the connection. See [NavDir](https://wiki.facepunch.com/gmod/Enums/NavDir)
--- @return boolean
function CNavArea:IsConnectedAtSide(navArea, navDirType) end

--- (server) Returns whether this Nav Area is in the same plane as the given one. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsCoplanar]
--- @param navArea CNavArea @ The Nav Area to test.
--- @return boolean
function CNavArea:IsCoplanar(navArea) end

--- (server) Returns whether this Nav Area is flat within the tolerance of the **nav_coplanar_slope_limit_displacement** and **nav_coplanar_slope_limit** convars. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsFlat]
--- @return boolean
function CNavArea:IsFlat() end

--- (server) Returns whether this area is in the Open List.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsOpen]
--- @return boolean
function CNavArea:IsOpen() end

--- (server) Returns whether the Open List is empty or not.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsOpenListEmpty]
--- @return boolean
function CNavArea:IsOpenListEmpty() end

--- (server) Returns if this position overlaps the Nav Area within the given tolerance. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsOverlapping]
--- @param pos Vector @ The overlapping position to test.
--- @param tolerance number @ The tolerance of the overlapping, set to 0 for no tolerance.
--- @return boolean
function CNavArea:IsOverlapping(pos, tolerance) end

--- (server) Returns true if this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) is overlapping the given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsOverlappingArea]
--- @param navArea CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to test against.
--- @return boolean
function CNavArea:IsOverlappingArea(navArea) end

--- (server) Returns whether this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) can see given position. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsPartiallyVisible]
--- @param pos Vector @ The position to test.
--- @param ignoreEnt Entity @ If set, the given entity will be ignored when doing LOS tests
--- @return boolean
function CNavArea:IsPartiallyVisible(pos, ignoreEnt) end

--- (server) Returns whether this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) can potentially see the given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsPotentiallyVisible]
--- @param area CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to test.
--- @return boolean
function CNavArea:IsPotentiallyVisible(area) end

--- (server) Returns if we're shaped like a square. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsRoughlySquare]
--- @return boolean
function CNavArea:IsRoughlySquare() end

--- (server) Whether this Nav Area is placed underwater. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsUnderwater]
--- @return boolean
function CNavArea:IsUnderwater() end

--- (server) Returns whether this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) is valid or not. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsValid]
--- @return boolean
function CNavArea:IsValid() end

--- (server) Returns whether we can be seen from the given position. 
--- [https://wiki.facepunch.com/gmod/CNavArea:IsVisible]
--- @param pos Vector @ The position to check.
--- @return boolean|Vector
function CNavArea:IsVisible(pos) end

--- (server) Drops a corner or all corners of a [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to the ground below it. 
--- [https://wiki.facepunch.com/gmod/CNavArea:PlaceOnGround]
--- @param corner number @ The corner(s) to drop, uses [NavCorner](https://wiki.facepunch.com/gmod/Enums/NavCorner)
--- @return void
function CNavArea:PlaceOnGround(corner) end

--- (server) Removes a CNavArea from the Open List with the lowest cost to traverse to from the starting node, and returns it.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:PopOpenList]
--- @return CNavArea
function CNavArea:PopOpenList() end

--- (server) Removes the given nav area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:Remove]
--- @return void
function CNavArea:Remove() end

--- (server) Removes this node from the Closed List.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:RemoveFromClosedList]
--- @return void
function CNavArea:RemoveFromClosedList() end

--- (server) Sets the attributes for given CNavArea. 
--- [https://wiki.facepunch.com/gmod/CNavArea:SetAttributes]
--- @param attribs number @ The attribute bitflag. See [NAV_MESH](https://wiki.facepunch.com/gmod/Enums/NAV_MESH)
--- @return void
function CNavArea:SetAttributes(attribs) end

--- (server) Sets the position of a corner of a nav area. 
--- [https://wiki.facepunch.com/gmod/CNavArea:SetCorner]
--- @param corner number @ The corner to set, uses [NavCorner](https://wiki.facepunch.com/gmod/Enums/NavCorner)
--- @param position Vector @ The new position to set.
--- @return void
function CNavArea:SetCorner(corner, position) end

--- (server) Sets the cost from starting area this area when pathfinding.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:SetCostSoFar]
--- @param cost number @ The cost so far
--- @return void
function CNavArea:SetCostSoFar(cost) end

--- (server) Sets the new parent of this [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/CNavArea:SetParent]
--- @param parent CNavArea @ The new parent to set
--- @param how number @ How we get from parent to us using [NavTraverseType](https://wiki.facepunch.com/gmod/Enums/NavTraverseType)
--- @return void
function CNavArea:SetParent(parent, how) end

--- (server) Sets the Place of the nav area.There is a limit of 256 Places per nav file. 
--- [https://wiki.facepunch.com/gmod/CNavArea:SetPlace]
--- @param place string @ Set to "" to remove place from the nav area.
--- @return boolean
function CNavArea:SetPlace(place) end

--- (server) Sets the total cost when passing from starting area to the goal area through this node.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:SetTotalCost]
--- @param cost number @ The total cost of the path to set.Must be above or equal 0.
--- @return void
function CNavArea:SetTotalCost(cost) end

--- (server) Moves this open list to appropriate position based on its [CNavArea:GetTotalCost](https://wiki.facepunch.com/gmod/CNavArea:GetTotalCost) compared to the total cost of other areas in the open list.Used in pathfinding via the [A* algorithm](https://en.wikipedia.org/wiki/A*_search_algorithm).More information can be found on the [Simple Pathfinding](https://wiki.facepunch.com/gmod/Simple%20Pathfinding) page. 
--- [https://wiki.facepunch.com/gmod/CNavArea:UpdateOnOpenList]
--- @return void
function CNavArea:UpdateOnOpenList() end

