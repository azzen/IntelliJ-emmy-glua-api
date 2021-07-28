--- @class DProgress : PANEL
DProgress = {}

--- (client) Returns the progress bar's fraction. 0 is 0% and 1 is 100%. 
--- [https://wiki.facepunch.com/gmod/DProgress:GetFraction]
--- @return number
function DProgress:GetFraction() end

--- (client) Sets the fraction of the progress bar. 0 is 0% and 1 is 100%. 
--- [https://wiki.facepunch.com/gmod/DProgress:SetFraction]
--- @param fraction number @ Fraction of the progress bar. Range is 0 to 1 (0% to 100%).
--- @return void
function DProgress:SetFraction(fraction) end

