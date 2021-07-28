--- @class DMenuOption : DButton
DMenuOption = {}

--- (client) Creates a sub [DMenu](https://wiki.facepunch.com/gmod/DMenu) and returns it. Has no duplicate call protection. 
--- [https://wiki.facepunch.com/gmod/DMenuOption:AddSubMenu]
--- @return Panel
function DMenuOption:AddSubMenu() end

--- (client) Returns the checked state of [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption). 
--- [https://wiki.facepunch.com/gmod/DMenuOption:GetChecked]
--- @return boolean
function DMenuOption:GetChecked() end

--- (client) Returns whether the [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption) is a checkbox option or a normal button option. 
--- [https://wiki.facepunch.com/gmod/DMenuOption:GetIsCheckable]
--- @return boolean
function DMenuOption:GetIsCheckable() end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DMenuOption:GetMenu]
--- @return Panel
function DMenuOption:GetMenu() end

--- (client) Called whenever the [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption)'s checked state changes. 
--- [https://wiki.facepunch.com/gmod/DMenuOption:OnChecked]
--- @param checked boolean @ The new checked state
--- @return void
function DMenuOption:OnChecked(checked) end

--- (client) Sets the checked state of the [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption). Does not invoke [DMenuOption:OnChecked](https://wiki.facepunch.com/gmod/DMenuOption:OnChecked). 
--- [https://wiki.facepunch.com/gmod/DMenuOption:SetChecked]
--- @param checked boolean @ No description provided
--- @return void
function DMenuOption:SetChecked(checked) end

--- (client) Sets whether the [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption) is a checkbox option or a normal button option. 
--- [https://wiki.facepunch.com/gmod/DMenuOption:SetIsCheckable]
--- @param checkable boolean @ No description provided
--- @return void
function DMenuOption:SetIsCheckable(checkable) end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DMenuOption:SetMenu]
--- @param pnl Panel @ No description provided
--- @return void
function DMenuOption:SetMenu(pnl) end

--- (client) Used internally by [DMenuOption:AddSubMenu](https://wiki.facepunch.com/gmod/DMenuOption:AddSubMenu) to create the submenu arrow and assign the created submenu to be opened this this option is hovered. 
--- [https://wiki.facepunch.com/gmod/DMenuOption:SetSubMenu]
--- @param menu Panel @ No description provided
--- @return void
function DMenuOption:SetSubMenu(menu) end

--- (client) Toggles the checked state of [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption). Does not respect [DMenuOption:GetIsCheckable](https://wiki.facepunch.com/gmod/DMenuOption:GetIsCheckable). 
--- [https://wiki.facepunch.com/gmod/DMenuOption:ToggleCheck]
--- @return void
function DMenuOption:ToggleCheck() end

