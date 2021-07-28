--- @class DAdjustableModelPanel : DModelPanel
DAdjustableModelPanel = {}

--- (client) Used by the panel to perform mouse capture operations when adjusting the model. 
--- [https://wiki.facepunch.com/gmod/DAdjustableModelPanel:CaptureMouse]
--- @return void
function DAdjustableModelPanel:CaptureMouse() end

--- (client) Used to adjust the perspective in the model panel via the keyboard, when the right mouse button is used. 
--- [https://wiki.facepunch.com/gmod/DAdjustableModelPanel:FirstPersonControls]
--- @return void
function DAdjustableModelPanel:FirstPersonControls() end

--- (client) Gets whether mouse and keyboard-based adjustment of the perspective has been enabled. See [DAdjustableModelPanel:SetFirstPerson](https://wiki.facepunch.com/gmod/DAdjustableModelPanel:SetFirstPerson) for more information. 
--- [https://wiki.facepunch.com/gmod/DAdjustableModelPanel:GetFirstPerson]
--- @return boolean
function DAdjustableModelPanel:GetFirstPerson() end

--- (client) Enables mouse and keyboard-based adjustment of the perspective.
--- This is set to `true` automatically each time mouse capture is enabled, and hence doesn't serve as a usable setting, other than to disable this functionality after the [PANEL:OnMousePressed](https://wiki.facepunch.com/gmod/PANEL:OnMousePressed) event. 
--- [https://wiki.facepunch.com/gmod/DAdjustableModelPanel:SetFirstPerson]
--- @param enable boolean @ Whether to enable/disable first person controls. See [DAdjustableModelPanel:FirstPersonControls](https://wiki.facepunch.com/gmod/DAdjustableModelPanel:FirstPersonControls).
--- @return void
function DAdjustableModelPanel:SetFirstPerson(enable) end

