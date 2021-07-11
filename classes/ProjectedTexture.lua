--- @class ProjectedTexture
ProjectedTexture = {}

--- (client) Returns the angle of the ProjectedTexture, which were previously set by [ProjectedTexture:SetAngles](https://wiki.facepunch.com/gmod/ProjectedTexture:SetAngles) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetAngles]
--- @return Angle
function ProjectedTexture:GetAngles() end

--- (client) Returns the brightness of the ProjectedTexture, which was previously set by [ProjectedTexture:SetBrightness](https://wiki.facepunch.com/gmod/ProjectedTexture:SetBrightness) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetBrightness]
--- @return number
function ProjectedTexture:GetBrightness() end

--- (client) Returns the color of the ProjectedTexture, which was previously set by [ProjectedTexture:SetColor](https://wiki.facepunch.com/gmod/ProjectedTexture:SetColor). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetColor]
--- @return table
function ProjectedTexture:GetColor() end

--- (client) Returns the constant attenuation of the projected texture, which can also be set by [ProjectedTexture:SetConstantAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetConstantAttenuation). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetConstantAttenuation]
--- @return number
function ProjectedTexture:GetConstantAttenuation() end

--- (client) Returns whether shadows are enabled for this ProjectedTexture, which was previously set by [ProjectedTexture:SetEnableShadows](https://wiki.facepunch.com/gmod/ProjectedTexture:SetEnableShadows) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetEnableShadows]
--- @return boolean
function ProjectedTexture:GetEnableShadows() end

--- (client) Returns the projection distance of the ProjectedTexture, which was previously set by [ProjectedTexture:SetFarZ](https://wiki.facepunch.com/gmod/ProjectedTexture:SetFarZ) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetFarZ]
--- @return number
function ProjectedTexture:GetFarZ() end

--- (client) Returns the horizontal FOV of the ProjectedTexture, which was previously set by [ProjectedTexture:SetHorizontalFOV](https://wiki.facepunch.com/gmod/ProjectedTexture:SetHorizontalFOV) or [ProjectedTexture:SetFOV](https://wiki.facepunch.com/gmod/ProjectedTexture:SetFOV) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetHorizontalFOV]
--- @return number
function ProjectedTexture:GetHorizontalFOV() end

--- (client) Returns the linear attenuation of the projected texture, which can also be set by [ProjectedTexture:SetLinearAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetLinearAttenuation). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetLinearAttenuation]
--- @return number
function ProjectedTexture:GetLinearAttenuation() end

--- (client) Returns the NearZ value of the ProjectedTexture, which was previously set by [ProjectedTexture:SetNearZ](https://wiki.facepunch.com/gmod/ProjectedTexture:SetNearZ) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetNearZ]
--- @return number
function ProjectedTexture:GetNearZ() end

--- (client) Returns the current orthographic settings of the Projected Texture. To set these values, use [ProjectedTexture:SetOrthographic](https://wiki.facepunch.com/gmod/ProjectedTexture:SetOrthographic). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetOrthographic]
--- @return boolean|number|number|number|number
function ProjectedTexture:GetOrthographic() end

--- (client) Returns the position of the ProjectedTexture, which was previously set by [ProjectedTexture:SetPos](https://wiki.facepunch.com/gmod/ProjectedTexture:SetPos) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetPos]
--- @return Vector
function ProjectedTexture:GetPos() end

--- (client) Returns the quadratic attenuation of the projected texture, which can also be set by [ProjectedTexture:SetQuadraticAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetQuadraticAttenuation). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetQuadraticAttenuation]
--- @return number
function ProjectedTexture:GetQuadraticAttenuation() end

--- (client) Returns the shadow depth bias of the projected texture.Set by [ProjectedTexture:SetShadowDepthBias](https://wiki.facepunch.com/gmod/ProjectedTexture:SetShadowDepthBias). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetShadowDepthBias]
--- @return number
function ProjectedTexture:GetShadowDepthBias() end

--- (client) Returns the shadow "filter size" of the projected texture. `0` is fully pixelated, higher values will blur the shadow more.Set by [ProjectedTexture:SetShadowFilter](https://wiki.facepunch.com/gmod/ProjectedTexture:SetShadowFilter). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetShadowFilter]
--- @return number
function ProjectedTexture:GetShadowFilter() end

--- (client) Returns the shadow depth slope scale bias of the projected texture.Set by [ProjectedTexture:SetShadowSlopeScaleDepthBias](https://wiki.facepunch.com/gmod/ProjectedTexture:SetShadowSlopeScaleDepthBias). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetShadowSlopeScaleDepthBias]
--- @return number
function ProjectedTexture:GetShadowSlopeScaleDepthBias() end

--- (client) Returns the target entity of this projected texture. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetTargetEntity]
--- @return Entity
function ProjectedTexture:GetTargetEntity() end

--- (client) Returns the texture of the ProjectedTexture, which was previously set by [ProjectedTexture:SetTexture](https://wiki.facepunch.com/gmod/ProjectedTexture:SetTexture) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetTexture]
--- @return ITexture
function ProjectedTexture:GetTexture() end

--- (client) Returns the texture frame of the ProjectedTexture, which was previously set by [ProjectedTexture:SetTextureFrame](https://wiki.facepunch.com/gmod/ProjectedTexture:SetTextureFrame) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetTextureFrame]
--- @return number
function ProjectedTexture:GetTextureFrame() end

--- (client) Returns the vertical FOV of the ProjectedTexture, which was previously set by [ProjectedTexture:SetVerticalFOV](https://wiki.facepunch.com/gmod/ProjectedTexture:SetVerticalFOV) or [ProjectedTexture:SetFOV](https://wiki.facepunch.com/gmod/ProjectedTexture:SetFOV) 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:GetVerticalFOV]
--- @return number
function ProjectedTexture:GetVerticalFOV() end

--- (client) Returns true if the projected texture is valid (i.e. has not been removed), false otherwise.Instead of calling this directly it's a good idea to call [IsValid](https://wiki.facepunch.com/gmod/Global.IsValid) in case the variable is nil.```IsValid( ptexture )```This not only checks whether the projected texture is valid - but also checks whether it's nil. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:IsValid]
--- @return boolean
function ProjectedTexture:IsValid() end

--- (client) Removes the projected texture. After calling this, [ProjectedTexture:IsValid](https://wiki.facepunch.com/gmod/ProjectedTexture:IsValid) will return false, and any hooks with the projected texture as the identifier will be automatically deleted. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:Remove]
--- @return void
function ProjectedTexture:Remove() end

--- (client) Sets the angles (direction) of the projected texture.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetAngles]
--- @param angle Angle @ No description provided
--- @return void
function ProjectedTexture:SetAngles(angle) end

--- (client) Sets the brightness of the projected texture.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetBrightness]
--- @param brightness number @ The brightness to give the projected texture.
--- @return void
function ProjectedTexture:SetBrightness(brightness) end

--- (client) Sets the color of the projected texture.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetColor]
--- @param color table @ Must be a [Color](https://wiki.facepunch.com/gmod/Color).Unlike other projected textures, this color can only go up to 255.
--- @return void
function ProjectedTexture:SetColor(color) end

--- (client) Sets the constant attenuation of the projected texture.See also [ProjectedTexture:SetLinearAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetLinearAttenuation) and [ProjectedTexture:SetQuadraticAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetQuadraticAttenuation).You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetConstantAttenuation]
--- @param constAtten number @ No description provided
--- @return void
function ProjectedTexture:SetConstantAttenuation(constAtten) end

--- (client) Enable or disable shadows cast from the projected texture.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetEnableShadows]
--- @param newState boolean @ No description provided
--- @return void
function ProjectedTexture:SetEnableShadows(newState) end

--- (client) Sets the distance at which the projected texture ends.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetFarZ]
--- @param farZ number @ No description provided
--- @return void
function ProjectedTexture:SetFarZ(farZ) end

--- (client) Sets the angle of projection.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetFOV]
--- @param fov number @ Must be higher than 0 and lower than 180
--- @return void
function ProjectedTexture:SetFOV(fov) end

--- (client) Sets the horizontal angle of projection without affecting the vertical angle.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetHorizontalFOV]
--- @param hFOV number @ The new horizontal Field Of View for the projected texture. Must be in range between 0 and 180.
--- @return void
function ProjectedTexture:SetHorizontalFOV(hFOV) end

--- (client) Sets the linear attenuation of the projected texture.See also [ProjectedTexture:SetConstantAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetConstantAttenuation) and [ProjectedTexture:SetQuadraticAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetQuadraticAttenuation).The default value of linear attenuation when the projected texture is created is 100. (others are 0, as you are not supposed to mix them)You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetLinearAttenuation]
--- @param linearAtten number @ No description provided
--- @return void
function ProjectedTexture:SetLinearAttenuation(linearAtten) end

--- (client) Sets the distance at which the projected texture begins its projection.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetNearZ]
--- @param nearZ number @ No description provided
--- @return void
function ProjectedTexture:SetNearZ(nearZ) end

--- (client) Changes the current projected texture between orthographic and perspective projection.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetOrthographic]
--- @param orthographic boolean @ When false, all other arguments are ignored and the texture is reset to perspective projection.
--- @param left number @ The amount of units left from the projected texture's origin to project.
--- @param top number @ The amount of units upwards from the projected texture's origin to project.
--- @param right number @ The amount of units right from the projected texture's origin to project.
--- @param bottom number @ The amount of units downwards from the projected texture's origin to project.
--- @return void
function ProjectedTexture:SetOrthographic(orthographic, left, top, right, bottom) end

--- (client) Move the Projected Texture to the specified position.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetPos]
--- @param position Vector @ No description provided
--- @return void
function ProjectedTexture:SetPos(position) end

--- (client) Sets the quadratic attenuation of the projected texture.See also [ProjectedTexture:SetLinearAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetLinearAttenuation) and [ProjectedTexture:SetConstantAttenuation](https://wiki.facepunch.com/gmod/ProjectedTexture:SetConstantAttenuation).You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetQuadraticAttenuation]
--- @param quadAtten number @ No description provided
--- @return void
function ProjectedTexture:SetQuadraticAttenuation(quadAtten) end

--- (client) Sets the shadow depth bias of the projected texture.The initial value is `0.0001`. Normal projected textures obey the value of the `mat_depthbias_shadowmap` [ConVar](https://wiki.facepunch.com/gmod/ConVar). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetShadowDepthBias]
--- @param bias number @ The shadow depth bias to set.
--- @return void
function ProjectedTexture:SetShadowDepthBias(bias) end

--- (client) Sets the shadow "filter size" of the projected texture. `0` is fully pixelated, higher values will blur the shadow more. The initial value is the value of `r_projectedtexture_filter` [ConVar](https://wiki.facepunch.com/gmod/ConVar). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetShadowFilter]
--- @param filter number @ The shadow filter size to set.
--- @return void
function ProjectedTexture:SetShadowFilter(filter) end

--- (client) Sets the shadow depth slope scale bias of the projected texture.The initial value is `2`. Normal projected textures obey the value of the `mat_slopescaledepthbias_shadowmap` [ConVar](https://wiki.facepunch.com/gmod/ConVar). 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetShadowSlopeScaleDepthBias]
--- @param bias number @ The shadow depth slope scale bias to set.
--- @return void
function ProjectedTexture:SetShadowSlopeScaleDepthBias(bias) end

--- (client) Sets the target entity for this projected texture, meaning it will only be lighting the given entity and the world. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetTargetEntity]
--- @param target Entity @ The target entity, or `NULL` to reset.
--- @return void
function ProjectedTexture:SetTargetEntity(target) end

--- (client) Sets the texture to be projected.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetTexture]
--- @param texture string @ The name of the texture. Can also be an [ITexture](https://wiki.facepunch.com/gmod/ITexture).
--- @return void
function ProjectedTexture:SetTexture(texture) end

--- (client) For animated textures, this will choose which frame in the animation will be projected.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetTextureFrame]
--- @param frame number @ The frame index to use.
--- @return void
function ProjectedTexture:SetTextureFrame(frame) end

--- (client) Sets the vertical angle of projection without affecting the horizontal angle.You must call [ProjectedTexture:Update](https://wiki.facepunch.com/gmod/ProjectedTexture:Update) after using this function for it to take effect. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:SetVerticalFOV]
--- @param vFOV number @ The new vertical Field Of View for the projected texture. Must be in range between 0 and 180.
--- @return void
function ProjectedTexture:SetVerticalFOV(vFOV) end

--- (client) Updates the Projected Light and applies all previously set parameters. 
--- [https://wiki.facepunch.com/gmod/ProjectedTexture:Update]
--- @return void
function ProjectedTexture:Update() end

