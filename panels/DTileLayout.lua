--- @class DTileLayout : DDragBase
DTileLayout = {}

--- (client) Clears the panel's tile table. Used by [DTileLayout:LayoutTiles](https://wiki.facepunch.com/gmod/DTileLayout:LayoutTiles). 
--- [https://wiki.facepunch.com/gmod/DTileLayout:ClearTiles]
--- @return void
function DTileLayout:ClearTiles() end

--- (client) Called to designate a range of tiles as occupied by a panel. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:ConsumeTiles]
--- @param x number @ The x coordinate of the top-left corner of the panel.
--- @param y number @ The y coordinate of the top-left corner of the panel.
--- @param w number @ The panel's width.
--- @param h number @ The panel's height.
--- @return void
function DTileLayout:ConsumeTiles(x, y, w, h) end

--- (client) Creates and returns an exact copy of the DTileLayout. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:Copy]
--- @return Panel
function DTileLayout:Copy() end

--- (client) Creates copies of all the children from the given panel object and parents them to this one. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:CopyContents]
--- @param source Panel @ The source panel from which to copy all children.
--- @return void
function DTileLayout:CopyContents(source) end

--- (client) Finds the coordinates of the first group of free tiles that fit the given size. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:FindFreeTile]
--- @param x number @ The x coordinate to start looking from.
--- @param y number @ The y coordinate to start looking from.
--- @param w number @ The needed width.
--- @param h number @ The needed height.
--- @return number|number
function DTileLayout:FindFreeTile(x, y, w, h) end

--- (client) Determines if a group of tiles is vacant. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:FitsInTile]
--- @param x number @ The x coordinate of the first tile.
--- @param y number @ The y coordinate of the first tile.
--- @param w number @ The width needed.
--- @param h number @ The height needed.
--- @return boolean
function DTileLayout:FitsInTile(x, y, w, h) end

--- (client) Returns the size of each single tile, set with [DTileLayout:SetBaseSize](https://wiki.facepunch.com/gmod/DTileLayout:SetBaseSize). 
--- [https://wiki.facepunch.com/gmod/DTileLayout:GetBaseSize]
--- @return number
function DTileLayout:GetBaseSize() end

--- (client) Returns the border spacing set by [DTileLayout:SetBorder](https://wiki.facepunch.com/gmod/DTileLayout:SetBorder). 
--- [https://wiki.facepunch.com/gmod/DTileLayout:GetBorder]
--- @return number
function DTileLayout:GetBorder() end

--- (client) Returns the minimum height the DTileLayout can resize to. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:GetMinHeight]
--- @return number
function DTileLayout:GetMinHeight() end

--- (client) Returns the X axis spacing between 2 elements set by [DTileLayout:SetSpaceX](https://wiki.facepunch.com/gmod/DTileLayout:SetSpaceX). 
--- [https://wiki.facepunch.com/gmod/DTileLayout:GetSpaceX]
--- @return number
function DTileLayout:GetSpaceX() end

--- (client) Returns the Y axis spacing between 2 elements set by [DTileLayout:SetSpaceY](https://wiki.facepunch.com/gmod/DTileLayout:SetSpaceY). 
--- [https://wiki.facepunch.com/gmod/DTileLayout:GetSpaceY]
--- @return number
function DTileLayout:GetSpaceY() end

--- (client) Gets the occupied state of a tile. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:GetTile]
--- @param x number @ The x coordinate of the tile.
--- @param y number @ The y coordinate of the tile.
--- @return any
function DTileLayout:GetTile(x, y) end

--- (client) Resets the last width/height info, and invalidates the panel's layout, causing it to recalculate all child positions. It is called whenever a child is added or removed, and can be called to refresh the panel. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:Layout]
--- @return void
function DTileLayout:Layout() end

--- (client) Called by [PANEL:PerformLayout](https://wiki.facepunch.com/gmod/PANEL:PerformLayout) to arrange and lay out the child panels, if it has changed in size. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:LayoutTiles]
--- @return void
function DTileLayout:LayoutTiles() end

--- (client) Called when anything is dropped on or rearranged within the DTileLayout. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:OnModified]
--- @return void
function DTileLayout:OnModified() end

--- (client) Sets the size of a single tile. If a child panel is larger than this size, it will occupy several tiles.
--- If you are setting the size of the children properly then you probably don't need to change this. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:SetBaseSize]
--- @param size number @ The size of each tile. It is recommended you use `2ⁿ` (`16, 32, 64...`) numbers, and those above `4`, as numbers lower than this will result in many tiles being processed and therefore slow operation.
--- @return void
function DTileLayout:SetBaseSize(size) end

--- (client) Sets the spacing between the border/edge of the [DTileLayout](https://wiki.facepunch.com/gmod/DTileLayout) and all the elements inside. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:SetBorder]
--- @param border number @ No description provided
--- @return void
function DTileLayout:SetBorder(border) end

--- (client) Determines the minimum height the DTileLayout will resize to. This is useful if child panels will be added/removed often. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:SetMinHeight]
--- @param minH number @ The minimum height the panel can shrink to.
--- @return void
function DTileLayout:SetMinHeight(minH) end

--- (client) Sets the spacing between 2 elements in the [DTileLayout](https://wiki.facepunch.com/gmod/DTileLayout) on the X axis. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:SetSpaceX]
--- @param spacingX number @ No description provided
--- @return void
function DTileLayout:SetSpaceX(spacingX) end

--- (client) Sets the spacing between 2 elements in the [DTileLayout](https://wiki.facepunch.com/gmod/DTileLayout) on the Y axis. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:SetSpaceY]
--- @param spaceY number @ No description provided
--- @return void
function DTileLayout:SetSpaceY(spaceY) end

--- (client) Called to set the occupied state of a tile. 
--- [https://wiki.facepunch.com/gmod/DTileLayout:SetTile]
--- @param x number @ The x coordinate of the tile.
--- @param y number @ The y coordinate of the tile.
--- @param state any @ The new state of the tile, normally `1` or `nil`.
--- @return void
function DTileLayout:SetTile(x, y, state) end

