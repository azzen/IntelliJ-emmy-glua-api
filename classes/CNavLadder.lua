--- @class CNavLadder
CNavLadder = {}

--- (server) Connects this ladder to a [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) with a one way connection. ( From this ladder to the target area ).See [CNavArea:ConnectTo](https://wiki.facepunch.com/gmod/CNavArea:ConnectTo) for making the connection from area to ladder. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:ConnectTo]
--- @param area CNavArea @ The area this ladder leads to.
--- @return void
function CNavLadder:ConnectTo(area) end

--- (server) Disconnects this ladder from given area in a single direction. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:Disconnect]
--- @param area CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) this to disconnect from.
--- @return void
function CNavLadder:Disconnect(area) end

--- (server) Returns the bottom most position of the ladder. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetBottom]
--- @return Vector
function CNavLadder:GetBottom() end

--- (server) Returns the bottom area of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetBottomArea]
--- @return CNavArea
function CNavLadder:GetBottomArea() end

--- (server) Returns this [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder)s unique ID. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetID]
--- @return number
function CNavLadder:GetID() end

--- (server) Returns the length of the ladder. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetLength]
--- @return number
function CNavLadder:GetLength() end

--- (server) Returns the direction of this [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). ( The direction in which players back will be facing if they are looking directly at the ladder ) 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetNormal]
--- @return Vector
function CNavLadder:GetNormal() end

--- (server) Returns the world position based on given height relative to the ladder. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetPosAtHeight]
--- @param height number @ The Z position in world space coordinates.
--- @return Vector
function CNavLadder:GetPosAtHeight(height) end

--- (server) Returns the topmost position of the ladder. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetTop]
--- @return Vector
function CNavLadder:GetTop() end

--- (server) Returns the top behind [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetTopBehindArea]
--- @return CNavArea
function CNavLadder:GetTopBehindArea() end

--- (server) Returns the top forward [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetTopForwardArea]
--- @return CNavArea
function CNavLadder:GetTopForwardArea() end

--- (server) Returns the top left [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetTopLeftArea]
--- @return CNavArea
function CNavLadder:GetTopLeftArea() end

--- (server) Returns the top right [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetTopRightArea]
--- @return CNavArea
function CNavLadder:GetTopRightArea() end

--- (server) Returns the width of the ladder in Hammer Units. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:GetWidth]
--- @return number
function CNavLadder:GetWidth() end

--- (server) Returns whether this [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) has an outgoing ( one or two way ) connection **to** given [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) in given direction. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:IsConnectedAtSide]
--- @param navArea CNavArea @ The [CNavArea](https://wiki.facepunch.com/gmod/CNavArea) to test against.
--- @param navDirType number @ The direction, in which to look for the connection. See [NavDir](https://wiki.facepunch.com/gmod/Enums/NavDir)
--- @return boolean
function CNavLadder:IsConnectedAtSide(navArea, navDirType) end

--- (server) Returns whether this [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder) is valid or not. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:IsValid]
--- @return boolean
function CNavLadder:IsValid() end

--- (server) Removes the given nav ladder. 
--- [https://wiki.facepunch.com/gmod/CNavLadder:Remove]
--- @return void
function CNavLadder:Remove() end

--- (server) Sets the bottom area of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:SetBottomArea]
--- @param area CNavArea @ No description provided
--- @return void
function CNavLadder:SetBottomArea(area) end

--- (server) Sets the top behind area of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:SetTopBehindArea]
--- @param area CNavArea @ No description provided
--- @return void
function CNavLadder:SetTopBehindArea(area) end

--- (server) Sets the top forward area of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:SetTopForwardArea]
--- @param area CNavArea @ No description provided
--- @return void
function CNavLadder:SetTopForwardArea(area) end

--- (server) Sets the top left area of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:SetTopLeftArea]
--- @param area CNavArea @ No description provided
--- @return void
function CNavLadder:SetTopLeftArea(area) end

--- (server) Sets the top right area of the [CNavLadder](https://wiki.facepunch.com/gmod/CNavLadder). 
--- [https://wiki.facepunch.com/gmod/CNavLadder:SetTopRightArea]
--- @param area CNavArea @ No description provided
--- @return void
function CNavLadder:SetTopRightArea(area) end

