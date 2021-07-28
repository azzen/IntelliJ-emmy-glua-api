--- @class DHTMLControls : PANEL
DHTMLControls = {}

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DHTMLControls:FinishedLoading]
--- @return void
function DHTMLControls:FinishedLoading() end

--- (client) Sets the color of the navigation buttons. 
--- [https://wiki.facepunch.com/gmod/DHTMLControls:SetButtonColor]
--- @param clr table @ A [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DHTMLControls:SetButtonColor(clr) end

--- (client) Sets the [DHTML](https://wiki.facepunch.com/gmod/DHTML) element to control with these [DHTMLControls](https://wiki.facepunch.com/gmod/DHTMLControls). 
--- [https://wiki.facepunch.com/gmod/DHTMLControls:SetHTML]
--- @param dhtml Panel @ The HTML panel
--- @return void
function DHTMLControls:SetHTML(dhtml) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DHTMLControls:StartedLoading]
--- @return void
function DHTMLControls:StartedLoading() end

--- (client) Basically adds an URL to the history. 
--- [https://wiki.facepunch.com/gmod/DHTMLControls:UpdateHistory]
--- @param url string @ No description provided
--- @return void
function DHTMLControls:UpdateHistory(url) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DHTMLControls:UpdateNavButtonStatus]
--- @return void
function DHTMLControls:UpdateNavButtonStatus() end

