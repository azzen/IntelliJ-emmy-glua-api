--- @class DModelPanel : DButton
DModelPanel = {}

--- (client) Called when the entity of the [DModelPanel](https://wiki.facepunch.com/gmod/DModelPanel) was drawn.
--- This is a rendering hook with 3d drawing context. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:PostDrawModel]
--- @param ent Entity @ The clientside entity of the [DModelPanel](https://wiki.facepunch.com/gmod/DModelPanel) that has been drawn.
--- @return void
function DModelPanel:PostDrawModel(ent) end

--- (client) Called **before** the entity of the [DModelPanel](https://wiki.facepunch.com/gmod/DModelPanel) is drawn. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:PreDrawModel]
--- @param ent Entity @ The clientside entity of the [DModelPanel](https://wiki.facepunch.com/gmod/DModelPanel) that has been drawn.
--- @return boolean
function DModelPanel:PreDrawModel(ent) end

--- (client) Used by the DModelPanel's paint hook to draw the model and background. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:DrawModel]
--- @return void
function DModelPanel:DrawModel() end

--- (client) Returns the ambient lighting used on the rendered entity. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetAmbientLight]
--- @return table
function DModelPanel:GetAmbientLight() end

--- (client) Returns whether or not the panel entity should be animated when the default [DModelPanel:LayoutEntity](https://wiki.facepunch.com/gmod/DModelPanel:LayoutEntity) function is called. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetAnimated]
--- @return boolean
function DModelPanel:GetAnimated() end

--- (client) Returns the animation speed of the panel entity, see [DModelPanel:SetAnimSpeed](https://wiki.facepunch.com/gmod/DModelPanel:SetAnimSpeed). 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetAnimSpeed]
--- @return number
function DModelPanel:GetAnimSpeed() end

--- (client) Returns the position of the model viewing camera. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetCamPos]
--- @return Vector
function DModelPanel:GetCamPos() end

--- (client) Returns the color of the rendered entity. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetColor]
--- @return table
function DModelPanel:GetColor() end

--- (client) Returns the entity being rendered by the model panel. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetEntity]
--- @return CSEnt
function DModelPanel:GetEntity() end

--- (client) Returns the FOV (field of view) the camera is using. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetFOV]
--- @return number
function DModelPanel:GetFOV() end

--- (client) Returns the angles of the model viewing camera. Is **nil** until changed with [DModelPanel:SetLookAng](https://wiki.facepunch.com/gmod/DModelPanel:SetLookAng). 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetLookAng]
--- @return Angle
function DModelPanel:GetLookAng() end

--- (client) Returns the position the viewing camera is pointing toward. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetLookAt]
--- @return Vector
function DModelPanel:GetLookAt() end

--- (client) Gets the model of the rendered entity. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:GetModel]
--- @return string
function DModelPanel:GetModel() end

--- (client) By default, this function slowly rotates and animates the entity being rendered.
--- If you want to change this behavior, you should override it. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:LayoutEntity]
--- @param entity Entity @ The entity that is being rendered.
--- @return void
function DModelPanel:LayoutEntity(entity) end

--- (client) This function is used in the **DModelPanel:LayoutEntity**. It will set the active model to the last set animation using [Entity:SetSequence](https://wiki.facepunch.com/gmod/Entity:SetSequence). By default, it is the walking animation. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:RunAnimation]
--- @return void
function DModelPanel:RunAnimation() end

--- (client) Sets the ambient lighting used on the rendered entity. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetAmbientLight]
--- @param color table @ The color of the ambient lighting.
--- @return void
function DModelPanel:SetAmbientLight(color) end

--- (client) Sets whether or not to animate the entity when the default [DModelPanel:LayoutEntity](https://wiki.facepunch.com/gmod/DModelPanel:LayoutEntity) is called. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetAnimated]
--- @param animated boolean @ True to animate, false otherwise.
--- @return void
function DModelPanel:SetAnimated(animated) end

--- (client) Sets the speed used by [DModelPanel:RunAnimation](https://wiki.facepunch.com/gmod/DModelPanel:RunAnimation) to advance frame on an entity sequence. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetAnimSpeed]
--- @param animSpeed number @ The animation speed.
--- @return void
function DModelPanel:SetAnimSpeed(animSpeed) end

--- (client) Sets the position of the camera. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetCamPos]
--- @param pos Vector @ The position to set the camera at.
--- @return void
function DModelPanel:SetCamPos(pos) end

--- (client) Sets the color of the rendered entity. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetColor]
--- @param color table @ The render color of the entity.
--- @return void
function DModelPanel:SetColor(color) end

--- (client) Sets the directional lighting used on the rendered entity. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetDirectionalLight]
--- @param direction number @ The light direction, see [BOX](https://wiki.facepunch.com/gmod/Enums/BOX).
--- @param color table @ The color of the directional lighting.
--- @return void
function DModelPanel:SetDirectionalLight(direction, color) end

--- (client) Sets the entity to be rendered by the model panel. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetEntity]
--- @param ent Entity @ The new panel entity.
--- @return void
function DModelPanel:SetEntity(ent) end

--- (client) Sets the panel camera's FOV (field of view). 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetFOV]
--- @param fov number @ The field of view value.
--- @return void
function DModelPanel:SetFOV(fov) end

--- (client) Sets the angles of the camera. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetLookAng]
--- @param ang Angle @ The angles to set the camera to.
--- @return void
function DModelPanel:SetLookAng(ang) end

--- (client) Makes the panel's camera face the given position. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetLookAt]
--- @param pos Vector @ The position to orient the camera toward.
--- @return void
function DModelPanel:SetLookAt(pos) end

--- (client) Sets the model of the rendered entity. 
--- [https://wiki.facepunch.com/gmod/DModelPanel:SetModel]
--- @param model string @ The model to apply to the entity.
--- @return void
function DModelPanel:SetModel(model) end

--- (client) No Description 
--- [https://wiki.facepunch.com/gmod/DModelPanel:StartScene]
--- @param path string @ The path to the scene file. (.vcd)
--- @return void
function DModelPanel:StartScene(path) end

