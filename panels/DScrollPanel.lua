--- @class DScrollPanel : DPanel
DScrollPanel = {}

--- (client) Parents the passed panel to the DScrollPanel's canvas. 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:AddItem]
--- @param pnl Panel @ The panel to add.
--- @return void
function DScrollPanel:AddItem(pnl) end

--- (client) Clears the `DScrollPanel`'s canvas, removing all added items. 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:Clear]
--- @return void
function DScrollPanel:Clear() end

--- (client) Returns the canvas ( The panel all child panels are parented to ) of the DScrollPanel. 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:GetCanvas]
--- @return Panel
function DScrollPanel:GetCanvas() end

--- (client) Gets the DScrollPanels padding 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:GetPadding]
--- @return number
function DScrollPanel:GetPadding() end

--- (client) Returns the vertical scroll bar of the panel. 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:GetVBar]
--- @return Panel
function DScrollPanel:GetVBar() end

--- (client) Return the width of the DScrollPanel's canvas. 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:InnerWidth]
--- @return number
function DScrollPanel:InnerWidth() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:Rebuild]
--- @return void
function DScrollPanel:Rebuild() end

--- (client) Scrolls to the given child 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:ScrollToChild]
--- @param panel Panel @ The panel to scroll to, must be a child of the DScrollPanel.
--- @return void
function DScrollPanel:ScrollToChild(panel) end

--- (client) Sets the canvas of the DScrollPanel. 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:SetCanvas]
--- @param canvas Panel @ The new canvas
--- @return void
function DScrollPanel:SetCanvas(canvas) end

--- (client) Sets the DScrollPanel's padding. This function appears to be unused. 
--- [https://wiki.facepunch.com/gmod/DScrollPanel:SetPadding]
--- @param padding number @ The padding of the DScrollPanel.
--- @return void
function DScrollPanel:SetPadding(padding) end

