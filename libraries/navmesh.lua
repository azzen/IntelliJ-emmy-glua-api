--- @class navmesh
navmesh = {}

--- (server) Add this position and normal to the list of walkable positions, used before map generation with [navmesh.BeginGeneration](https://wiki.facepunch.com/gmod/navmesh.BeginGeneration) 
--- [https://wiki.facepunch.com/gmod/navmesh.AddWalkableSeed]
--- @param pos Vector @ The terrain position.
--- @param dir Vector @ The normal of this terrain position.
--- @return void
function navmesh.AddWalkableSeed(pos, dir) end

--- (server) Starts the generation of a new navmesh. 
--- [https://wiki.facepunch.com/gmod/navmesh.BeginGeneration]
--- @return void
function navmesh.BeginGeneration() end

--- (server) Clears all the walkable positions, used before calling [navmesh.BeginGeneration](https://wiki.facepunch.com/gmod/navmesh.BeginGeneration). 
--- [https://wiki.facepunch.com/gmod/navmesh.ClearWalkableSeeds]
--- @return void
function navmesh.ClearWalkableSeeds() end

--- (server) Creates a new [CNavArea](https://wiki.facepunch.com/gmod/CNavArea). 
--- [https://wiki.facepunch.com/gmod/navmesh.CreateNavArea]
--- @param corner Vector @ The first corner of the new [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)
--- @param opposite_corner Vector @ The opposite (diagonally) corner of the new [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)
--- @return CNavArea
function navmesh.CreateNavArea(corner, opposite_corner) end

--- (server) Returns a bunch of areas within distance, used to find hiding spots by [NextBot](https://wiki.facepunch.com/gmod/NextBot)s for example. 
--- [https://wiki.facepunch.com/gmod/navmesh.Find]
--- @param pos Vector @ The position to search around
--- @param radius number @ Radius to search within
--- @param stepdown number @ Maximum stepdown( fall distance ) allowed
--- @param stepup number @ Maximum stepup( jump height ) allowed
--- @return table
function navmesh.Find(pos, radius, stepdown, stepup) end

--- (server) Returns an integer indexed table of all [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s on the current map. If the map doesn't have a navmesh generated then this will return an empty table. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetAllNavAreas]
--- @return table
function navmesh.GetAllNavAreas() end

--- (server) Returns the position of the edit cursor when nav_edit is set to 1. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetEditCursorPosition]
--- @return Vector
function navmesh.GetEditCursorPosition() end

--- (server) Finds the closest standable ground at, above, or below the provided position. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetGroundHeight]
--- @param pos Vector @ Position to find the closest ground for.
--- @return number|Vector
function navmesh.GetGroundHeight(pos) end

--- (server) Returns the currently marked [CNavArea](https://wiki.facepunch.com/gmod/CNavArea), for use with editing console commands. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetMarkedArea]
--- @return CNavArea
function navmesh.GetMarkedArea() end

--- (server) Returns the currently marked [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder), for use with editing console commands. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetMarkedLadder]
--- @return CNavLadder
function navmesh.GetMarkedLadder() end

--- (server) Returns the Nav Area contained in this position that also satisfies the elevation limit.This function will properly see blocked [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s. See [navmesh.GetNearestNavArea](https://wiki.facepunch.com/gmod/navmesh.GetNearestNavArea). 
--- [https://wiki.facepunch.com/gmod/navmesh.GetNavArea]
--- @param pos Vector @ The position to search for.
--- @param beneathLimit number @ The elevation limit at which the Nav Area will be searched.
--- @return CNavArea
function navmesh.GetNavArea(pos, beneathLimit) end

--- (server) Returns a [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) by the given ID. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetNavAreaByID]
--- @param id number @ ID of the [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to get. Starts with 1.
--- @return CNavArea
function navmesh.GetNavAreaByID(id) end

--- (server) Returns the highest ID of all nav areas on the map. While this can be used to get all nav areas, this number may not actually be the actual number of nav areas on the map. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetNavAreaCount]
--- @return number
function navmesh.GetNavAreaCount() end

--- (server) Returns a [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) by the given ID. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetNavLadderByID]
--- @param id number @ ID of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) to get. Starts with 1.
--- @return CNavLadder
function navmesh.GetNavLadderByID(id) end

--- (server) Returns the closest [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to given position at the same height, or beneath it.This function will ignore blocked [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)s. See [navmesh.GetNavArea](https://wiki.facepunch.com/gmod/navmesh.GetNavArea) for a function that does see blocked areas. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetNearestNavArea]
--- @param pos Vector @ The position to look from
--- @param anyZ boolean @ This argument is ignored and has no effect
--- @param maxDist number @ This is the maximum distance from the given position that the function will look for a [CNavArea](https://wiki.facepunch.com/gmod/CNavArea)
--- @param checkLOS boolean @ If this is set to true then the function will internally do a [util.TraceLine](https://wiki.facepunch.com/gmod/util.TraceLine) from the starting position to each potential [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) with a [MASK_NPCSOLID_BRUSHONLY](https://wiki.facepunch.com/gmod/Enums/MASK). If the trace fails then the [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) is ignored.If this is set to false then the function will find the closest [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) through anything, including the world.
--- @param checkGround boolean @ If checkGround is true then this function will internally call [navmesh.GetNavArea](https://wiki.facepunch.com/gmod/navmesh.GetNavArea) to check if there is a [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) directly below the position, and return it if so, before checking anywhere else.
--- @param team number @ This will internally call [CNavArea:IsBlocked](https://wiki.facepunch.com/gmod/CNavArea:IsBlocked) to check if the target [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) is not to be navigated by the given team. Currently this appears to do nothing.
--- @return CNavArea
function navmesh.GetNearestNavArea(pos, anyZ, maxDist, checkLOS, checkGround, team) end

--- (server) Returns the classname of the player spawn entity. 
--- [https://wiki.facepunch.com/gmod/navmesh.GetPlayerSpawnName]
--- @return string
function navmesh.GetPlayerSpawnName() end

--- (server) Whether we're currently generating a new navmesh with [navmesh.BeginGeneration](https://wiki.facepunch.com/gmod/navmesh.BeginGeneration). 
--- [https://wiki.facepunch.com/gmod/navmesh.IsGenerating]
--- @return boolean
function navmesh.IsGenerating() end

--- (server) Returns true if a navmesh has been loaded when loading the map. 
--- [https://wiki.facepunch.com/gmod/navmesh.IsLoaded]
--- @return boolean
function navmesh.IsLoaded() end

--- (server) Loads a new navmesh from the .nav file for current map discarding any changes made to the navmesh previously. 
--- [https://wiki.facepunch.com/gmod/navmesh.Load]
--- @return void
function navmesh.Load() end

--- (server) Deletes every [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) and [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) on the map **without saving the changes**. 
--- [https://wiki.facepunch.com/gmod/navmesh.Reset]
--- @return void
function navmesh.Reset() end

--- (server) Saves any changes made to navmesh to the .nav file. 
--- [https://wiki.facepunch.com/gmod/navmesh.Save]
--- @return void
function navmesh.Save() end

--- (server) Sets the [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) as marked, so it can be used with editing console commands. 
--- [https://wiki.facepunch.com/gmod/navmesh.SetMarkedArea]
--- @param area CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to set as the marked area.
--- @return void
function navmesh.SetMarkedArea(area) end

--- (server) Sets the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) as marked, so it can be used with editing console commands. 
--- [https://wiki.facepunch.com/gmod/navmesh.SetMarkedLadder]
--- @param area CNavLadder @ The [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) to set as the marked ladder.
--- @return void
function navmesh.SetMarkedLadder(area) end

--- (server) Sets the classname of the default spawn point entity, used before generating a new navmesh with [navmesh.BeginGeneration](https://wiki.facepunch.com/gmod/navmesh.BeginGeneration). 
--- [https://wiki.facepunch.com/gmod/navmesh.SetPlayerSpawnName]
--- @param spawnPointClass string @ The classname of what the player uses to spawn, automatically adds it to the walkable positions during map generation.
--- @return void
function navmesh.SetPlayerSpawnName(spawnPointClass) end

