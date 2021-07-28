--- @class DVScrollBar : PANEL
DVScrollBar = {}

--- (client) Adds specified amount of scroll in pixels. 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:AddScroll]
--- @param add number @ How much to scroll downwards. Can be negative for upwards scroll
--- @return boolean
function DVScrollBar:AddScroll(add) end

--- (client) Smoothly scrolls to given level. 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:AnimateTo]
--- @param scroll number @ The scroll level to animate to. In pixels from the top ( from 0 )
--- @param length number @ Length of the animation in seconds
--- @param delay number @ Delay of the animation in seconds
--- @param ease number @ See [Panel:NewAnimation](https://wiki.facepunch.com/gmod/Panel:NewAnimation) for explanation.
--- @return void
function DVScrollBar:AnimateTo(scroll, length, delay, ease) end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:BarScale]
--- @return number
function DVScrollBar:BarScale() end

--- (client) Returns whether or not the manual up/down scroll buttons are visible or not. Set by [DVScrollBar:SetHideButtons](https://wiki.facepunch.com/gmod/DVScrollBar:SetHideButtons). 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:GetHideButtons]
--- @return boolean
function DVScrollBar:GetHideButtons() end

--- (client) Returns the negative of [DVScrollBar:GetScroll](https://wiki.facepunch.com/gmod/DVScrollBar:GetScroll). 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:GetOffset]
--- @return number
function DVScrollBar:GetOffset() end

--- (client) Returns the amount of scroll level from the top in pixels 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:GetScroll]
--- @return number
function DVScrollBar:GetScroll() end

--- (client) Called from within [DScrollBarGrip](https://wiki.facepunch.com/gmod/DScrollBarGrip) 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:Grip]
--- @return void
function DVScrollBar:Grip() end

--- (client) Allows hiding the up and down buttons for better visual stylisation. 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:SetHideButtons]
--- @param hide boolean @ True to hide
--- @return void
function DVScrollBar:SetHideButtons(hide) end

--- (client) Sets the scroll level in pixels. 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:SetScroll]
--- @param scroll number @ No description provided
--- @return void
function DVScrollBar:SetScroll(scroll) end

--- (client) Sets up the scrollbar for use.
--- The scrollbar will automatically disable itself if the total height of the canvas is lower than the height of the panel that holds the canvas during this function call. 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:SetUp]
--- @param barSize number @ The size of the panel that holds the canvas, basically size of "1 page".
--- @param canvasSize number @ The total size of the canvas, this typically is the bigger number.
--- @return void
function DVScrollBar:SetUp(barSize, canvasSize) end

--- (client) Should return nil in all cases. See [DVScrollBar:GetScroll](https://wiki.facepunch.com/gmod/DVScrollBar:GetScroll). 
--- [https://wiki.facepunch.com/gmod/DVScrollBar:Value]
--- @return any
function DVScrollBar:Value() end

