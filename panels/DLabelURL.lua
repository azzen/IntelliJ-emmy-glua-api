--- @class DLabelURL : URLLabel
DLabelURL = {}

--- (client) Gets the current text color of the [DLabelURL](https://wiki.facepunch.com/gmod/DLabelURL). Alias as [DLabelURL:GetTextColor](https://wiki.facepunch.com/gmod/DLabelURL:GetTextColor). 
--- [https://wiki.facepunch.com/gmod/DLabelURL:GetColor]
--- @return table
function DLabelURL:GetColor() end

--- (client) Gets the current text color of the [DLabelURL](https://wiki.facepunch.com/gmod/DLabelURL) set by [DLabelURL:SetTextColor](https://wiki.facepunch.com/gmod/DLabelURL:SetTextColor). 
--- [https://wiki.facepunch.com/gmod/DLabelURL:GetTextColor]
--- @return table
function DLabelURL:GetTextColor() end

--- (client) Returns the color set by [DLabelURL:SetTextStyleColor](https://wiki.facepunch.com/gmod/DLabelURL:SetTextStyleColor). 
--- [https://wiki.facepunch.com/gmod/DLabelURL:GetTextStyleColor]
--- @return table
function DLabelURL:GetTextStyleColor() end

--- (client) Alias of [DLabelURL:SetTextColor](https://wiki.facepunch.com/gmod/DLabelURL:SetTextColor). 
--- [https://wiki.facepunch.com/gmod/DLabelURL:SetColor]
--- @param col table @ The [Color](https://wiki.facepunch.com/gmod/Global.Color) to use.
--- @return void
function DLabelURL:SetColor(col) end

--- (client) Sets the text color of the [DLabelURL](https://wiki.facepunch.com/gmod/DLabelURL). Overrides [DLabelURL:SetTextStyleColor](https://wiki.facepunch.com/gmod/DLabelURL:SetTextStyleColor).
--- This should only be used immediately after it is created, and otherwise [Panel:SetFGColor](https://wiki.facepunch.com/gmod/Panel:SetFGColor). 
--- [https://wiki.facepunch.com/gmod/DLabelURL:SetTextColor]
--- @param col table @ The [Color](https://wiki.facepunch.com/gmod/Global.Color) to use.
--- @return void
function DLabelURL:SetTextColor(col) end

--- (client) Sets the base text color of the [DLabelURL](https://wiki.facepunch.com/gmod/DLabelURL). This is overridden by [DLabelURL:SetTextColor](https://wiki.facepunch.com/gmod/DLabelURL:SetTextColor). 
--- [https://wiki.facepunch.com/gmod/DLabelURL:SetTextStyleColor]
--- @param color table @ The [Color](https://wiki.facepunch.com/gmod/Global.Color) to set
--- @return void
function DLabelURL:SetTextStyleColor(color) end

