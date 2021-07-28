--- @class DTooltip : DLabel
DTooltip = {}

--- (client) Forces the tooltip to close. This will remove the panel. 
--- [https://wiki.facepunch.com/gmod/DTooltip:Close]
--- @return void
function DTooltip:Close() end

--- (client) Used to draw a triangle beneath the [DTooltip](https://wiki.facepunch.com/gmod/DTooltip) 
--- [https://wiki.facepunch.com/gmod/DTooltip:DrawArrow]
--- @param x number @ arrow location on the x axis
--- @param y number @ arrow location on the y axis
--- @return void
function DTooltip:DrawArrow(x, y) end

--- (client) Sets up the tooltip for display for given panel and starts the timer.
--- Normally you wouldn't call this and you'd use [Panel:SetTooltip](https://wiki.facepunch.com/gmod/Panel:SetTooltip), [Panel:SetTooltipPanel](https://wiki.facepunch.com/gmod/Panel:SetTooltipPanel) or [Panel:SetTooltipPanelOverride](https://wiki.facepunch.com/gmod/Panel:SetTooltipPanelOverride). 
--- [https://wiki.facepunch.com/gmod/DTooltip:OpenForPanel]
--- @param pnl Panel @ The panel to open the tooltip for.
--- @return void
function DTooltip:OpenForPanel(pnl) end

--- (client) Positions the [DTooltip](https://wiki.facepunch.com/gmod/DTooltip) so it doesn't stay in the same draw position. 
--- [https://wiki.facepunch.com/gmod/DTooltip:PositionTooltip]
--- @return void
function DTooltip:PositionTooltip() end

--- (client) What Panel you want put inside of the [DTooltip](https://wiki.facepunch.com/gmod/DTooltip) 
--- [https://wiki.facepunch.com/gmod/DTooltip:SetContents]
--- @param panel Panel @ Contents
--- @param bDelete boolean @ If set to true, the panel in the first argument will be automatically removed when [DTooltip](https://wiki.facepunch.com/gmod/DTooltip) is closed via [DTooltip:Close](https://wiki.facepunch.com/gmod/DTooltip:Close).
--- @return void
function DTooltip:SetContents(panel, bDelete) end

