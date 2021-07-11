--- @class render
render = {}

--- (client) Adds a beam segment to the beam started by [render.StartBeam](https://wiki.facepunch.com/gmod/render.StartBeam). 
--- [https://wiki.facepunch.com/gmod/render.AddBeam]
--- @param startPos Vector @ Beam start position.
--- @param width number @ The width of the beam.
--- @param textureEnd number @ The end coordinate of the texture used.
--- @param color table @ The color to be used. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function render.AddBeam(startPos, width, textureEnd, color) end

--- (client) Blurs the render target ( or a given texture ) 
--- [https://wiki.facepunch.com/gmod/render.BlurRenderTarget]
--- @param rendertarget ITexture @ The texture to blur
--- @param blurx number @ Horizontal amount of blur
--- @param blury number @ Vertical amount of blur
--- @param passes number @ Amount of passes to go through
--- @return void
function render.BlurRenderTarget(rendertarget, blurx, blury, passes) end

--- (client) This function overrides the brush material for next render operations. It can be used with [Entity:DrawModel](https://wiki.facepunch.com/gmod/Entity:DrawModel). 
--- [https://wiki.facepunch.com/gmod/render.BrushMaterialOverride]
--- @param mat IMaterial @ No description provided
--- @return void
function render.BrushMaterialOverride(mat) end

--- (client) Captures a part of the current render target and returns the data as a binary string in the given format.Since the pixel buffer clears itself every frame, this will return a black screen outside of. To capture the user's final view, use [GM:PostRender](https://wiki.facepunch.com/gmod/GM:PostRender). This will not capture the Steam overlay or third-party injections (such as the Discord overlay, Overwolf, and advanced cheats) on the user's screen. 
--- [https://wiki.facepunch.com/gmod/render.Capture]
--- @param captureData table @ Parameters of the capture. See [RenderCaptureData](https://wiki.facepunch.com/gmod/Structures/RenderCaptureData).
--- @return string
function render.Capture(captureData) end

--- (client) Dumps the current render target and allows the pixels to be accessed by [render.ReadPixel](https://wiki.facepunch.com/gmod/render.ReadPixel). 
--- [https://wiki.facepunch.com/gmod/render.CapturePixels]
--- @return void
function render.CapturePixels() end

--- (client) Clears the current render target and the specified buffers. 
--- [https://wiki.facepunch.com/gmod/render.Clear]
--- @param r number @ Red component to clear to.
--- @param g number @ Green component to clear to.
--- @param b number @ Blue component to clear to.
--- @param a number @ Alpha component to clear to.
--- @param clearDepth boolean @ Clear the depth.
--- @param clearStencil boolean @ Clear the stencil.
--- @return void
function render.Clear(r, g, b, a, clearDepth, clearStencil) end

--- (client) Clears the current rendertarget for obeying the current stencil buffer conditions. 
--- [https://wiki.facepunch.com/gmod/render.ClearBuffersObeyStencil]
--- @param r number @ Value of the **red** channel to clear the current rt with.
--- @param g number @ Value of the **green** channel to clear the current rt with.
--- @param b number @ Value of the **blue** channel to clear the current rt with.
--- @param a number @ Value of the **alpha** channel to clear the current rt with.
--- @param depth boolean @ Clear the depth buffer.
--- @return void
function render.ClearBuffersObeyStencil(r, g, b, a, depth) end

--- (client) Resets the depth buffer. 
--- [https://wiki.facepunch.com/gmod/render.ClearDepth]
--- @return void
function render.ClearDepth() end

--- (client) Clears a render targetIt uses [render.Clear](https://wiki.facepunch.com/gmod/render.Clear) then [render.SetRenderTarget](https://wiki.facepunch.com/gmod/render.SetRenderTarget) on the modified render target. 
--- [https://wiki.facepunch.com/gmod/render.ClearRenderTarget]
--- @param texture ITexture @ No description provided
--- @param color table @ The color, see [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function render.ClearRenderTarget(texture, color) end

--- (client) Resets all values in the stencil buffer to zero. 
--- [https://wiki.facepunch.com/gmod/render.ClearStencil]
--- @return void
function render.ClearStencil() end

--- (client) Sets the stencil value in a specified rect.This is **not** affected by [render.SetStencilWriteMask](https://wiki.facepunch.com/gmod/render.SetStencilWriteMask) 
--- [https://wiki.facepunch.com/gmod/render.ClearStencilBufferRectangle]
--- @param originX number @ X origin of the rectangle.
--- @param originY number @ Y origin of the rectangle.
--- @param endX number @ The end X coordinate of the rectangle.
--- @param endY number @ The end Y coordinate of the rectangle.
--- @param stencilValue number @ Value to set cleared stencil buffer to.
--- @return void
function render.ClearStencilBufferRectangle(originX, originY, endX, endY, stencilValue) end

--- (client) Calculates the lighting caused by dynamic lights for the specified surface. 
--- [https://wiki.facepunch.com/gmod/render.ComputeDynamicLighting]
--- @param position Vector @ The position to sample from.
--- @param normal Vector @ The normal of the surface.
--- @return Vector
function render.ComputeDynamicLighting(position, normal) end

--- (client) Calculates the light color of a certain surface. 
--- [https://wiki.facepunch.com/gmod/render.ComputeLighting]
--- @param position Vector @ The position of the surface to get the light from.
--- @param normal Vector @ The normal of the surface to get the light from.
--- @return Vector
function render.ComputeLighting(position, normal) end

--- (client) Copies the currently active Render Target to the specified texture. 
--- [https://wiki.facepunch.com/gmod/render.CopyRenderTargetToTexture]
--- @param Target ITexture @ The texture to copy to
--- @return void
function render.CopyRenderTargetToTexture(Target) end

--- (client) Copies the contents of one texture to another. Only works with rendertargets. 
--- [https://wiki.facepunch.com/gmod/render.CopyTexture]
--- @param texture_from ITexture @ No description provided
--- @param texture_to ITexture @ No description provided
--- @return void
function render.CopyTexture(texture_from, texture_to) end

--- (client) Changes the cull mode. 
--- [https://wiki.facepunch.com/gmod/render.CullMode]
--- @param cullMode number @ Cullmode, see [MATERIAL_CULLMODE](https://wiki.facepunch.com/gmod/Enums/MATERIAL_CULLMODE)
--- @return void
function render.CullMode(cullMode) end

--- (client) Set's the depth range of the upcoming render. 
--- [https://wiki.facepunch.com/gmod/render.DepthRange]
--- @param depthmin number @ The minimum depth of the upcoming render. `0.0` = render normally; `1.0` = render nothing.
--- @param depthmax number @ The maximum depth of the upcoming render. `0.0` = render everything (through walls); `1.0` = render normally.
--- @return void
function render.DepthRange(depthmin, depthmax) end

--- (client) Draws textured beam. 
--- [https://wiki.facepunch.com/gmod/render.DrawBeam]
--- @param startPos Vector @ Beam start position.
--- @param endPos Vector @ Beam end position.
--- @param width number @ The width of the beam.
--- @param textureStart number @ The start coordinate of the texture used.
--- @param textureEnd number @ The end coordinate of the texture used.
--- @param color table @ The color to be used. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function render.DrawBeam(startPos, endPos, width, textureStart, textureEnd, color) end

--- (client) Draws a box in 3D space. 
--- [https://wiki.facepunch.com/gmod/render.DrawBox]
--- @param position Vector @ Origin of the box.
--- @param angles Angle @ Orientation of the box.
--- @param mins Vector @ Start position of the box, relative to origin.
--- @param maxs Vector @ End position of the box, relative to origin.
--- @param color table @ The color of the box. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function render.DrawBox(position, angles, mins, maxs, color) end

--- (client) Draws a line in 3D space. 
--- [https://wiki.facepunch.com/gmod/render.DrawLine]
--- @param startPos Vector @ Line start position in world coordinates.
--- @param endPos Vector @ Line end position in world coordinates.
--- @param color table @ The color to be used. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param writeZ boolean @ Whether or not to consider the Z buffer. If false, the line will be drawn over everything currently drawn, if true, the line will be drawn with depth considered, as if it were a regular object in 3D space.
--- @return void
function render.DrawLine(startPos, endPos, color, writeZ) end

--- (client) Draws 2 connected triangles. Expects material to be set by [render.SetMaterial](https://wiki.facepunch.com/gmod/render.SetMaterial). 
--- [https://wiki.facepunch.com/gmod/render.DrawQuad]
--- @param vert1 Vector @ First vertex.
--- @param vert2 Vector @ The second vertex.
--- @param vert3 Vector @ The third vertex.
--- @param vert4 Vector @ The fourth vertex.
--- @param color table @ The color of the quad. See [Color](https://wiki.facepunch.com/gmod/Global.Color)
--- @return void
function render.DrawQuad(vert1, vert2, vert3, vert4, color) end

--- (client) Draws a quad. 
--- [https://wiki.facepunch.com/gmod/render.DrawQuadEasy]
--- @param position Vector @ Origin of the sprite.
--- @param normal Vector @ The face direction of the quad.
--- @param width number @ The width of the quad.
--- @param height number @ The height of the quad.
--- @param color table @ The color of the quad. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param rotation number @ The rotation of the quad counter-clockwise in degrees around the normal axis. In other words, the quad will always face the same way but this will rotate its corners.
--- @return void
function render.DrawQuadEasy(position, normal, width, height, color, rotation) end

--- (client) Draws the current material set by [render.SetMaterial](https://wiki.facepunch.com/gmod/render.SetMaterial) to the whole screen. The color cannot be customized.See also [render.DrawScreenQuadEx](https://wiki.facepunch.com/gmod/render.DrawScreenQuadEx). 
--- [https://wiki.facepunch.com/gmod/render.DrawScreenQuad]
--- @param applyPoster boolean @ If set to true, when rendering a poster the quad will be properly drawn in parts in the poster. This is used internally by some Post Processing effects. Certain special textures (frame buffer like textures) do not need this adjustment.
--- @return void
function render.DrawScreenQuad(applyPoster) end

--- (client) Draws the the current material set by [render.SetMaterial](https://wiki.facepunch.com/gmod/render.SetMaterial) to the area specified. Color cannot be customized.See also [render.DrawScreenQuad](https://wiki.facepunch.com/gmod/render.DrawScreenQuad). 
--- [https://wiki.facepunch.com/gmod/render.DrawScreenQuadEx]
--- @param startX number @ X start position of the rect.
--- @param startY number @ Y start position of the rect.
--- @param width number @ Width of the rect.
--- @param height number @ Height of the rect.
--- @return void
function render.DrawScreenQuadEx(startX, startY, width, height) end

--- (client) Draws a sphere in 3D space. The material previously set with [render.SetMaterial](https://wiki.facepunch.com/gmod/render.SetMaterial) will be applied the sphere's surface.See also [render.DrawWireframeSphere](https://wiki.facepunch.com/gmod/render.DrawWireframeSphere) for a wireframe equivalent. 
--- [https://wiki.facepunch.com/gmod/render.DrawSphere]
--- @param position Vector @ Position of the sphere.
--- @param radius number @ Radius of the sphere. Negative radius will make the sphere render inwards rather than outwards.
--- @param longitudeSteps number @ The number of longitude steps. This controls the quality of the sphere. Higher quality will lower performance significantly. 50 is a good number to start with.
--- @param latitudeSteps number @ The number of latitude steps. This controls the quality of the sphere. Higher quality will lower performance significantly. 50 is a good number to start with.
--- @param color table @ The color of the sphere. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function render.DrawSphere(position, radius, longitudeSteps, latitudeSteps, color) end

--- (client) Draws a sprite in 3D space. 
--- [https://wiki.facepunch.com/gmod/render.DrawSprite]
--- @param position Vector @ Position of the sprite.
--- @param width number @ Width of the sprite.
--- @param height number @ Height of the sprite.
--- @param color table @ Color of the sprite. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function render.DrawSprite(position, width, height, color) end

--- (client) Draws a texture over the whole screen. 
--- [https://wiki.facepunch.com/gmod/render.DrawTextureToScreen]
--- @param tex ITexture @ The texture to draw
--- @return void
function render.DrawTextureToScreen(tex) end

--- (client) Draws a textured rectangle. 
--- [https://wiki.facepunch.com/gmod/render.DrawTextureToScreenRect]
--- @param tex ITexture @ The texture to draw
--- @param x number @ The x coordinate of the rectangle to draw.
--- @param y number @ The y coordinate of the rectangle to draw.
--- @param width number @ The width of the rectangle to draw.
--- @param height number @ The height of the rectangle to draw.
--- @return void
function render.DrawTextureToScreenRect(tex, x, y, width, height) end

--- (client) Draws a wireframe box in 3D space. 
--- [https://wiki.facepunch.com/gmod/render.DrawWireframeBox]
--- @param position Vector @ Position of the box.
--- @param angle Angle @ Angles of the box.
--- @param mins Vector @ The lowest corner of the box.
--- @param maxs Vector @ The highest corner of the box.
--- @param color table @ The color of the box. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param writeZ boolean @ Sets whenever to write to the zBuffer.
--- @return void
function render.DrawWireframeBox(position, angle, mins, maxs, color, writeZ) end

--- (client) Draws a wireframe sphere in 3d space. 
--- [https://wiki.facepunch.com/gmod/render.DrawWireframeSphere]
--- @param position Vector @ Position of the sphere.
--- @param radius number @ The size of the sphere.
--- @param longitudeSteps number @ The amount of longitude steps. The larger this number is, the smoother the sphere is.
--- @param latitudeSteps number @ The amount of latitude steps. The larger this number is, the smoother the sphere is.
--- @param color table @ The color of the wireframe. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param writeZ boolean @ Whether or not to consider the Z buffer. If false, the wireframe will be drawn over everything currently drawn. If true, it will be drawn with depth considered, as if it were a regular object in 3D space.
--- @return void
function render.DrawWireframeSphere(position, radius, longitudeSteps, latitudeSteps, color, writeZ) end

--- (client) Sets the status of the clip renderer, returning previous state. 
--- [https://wiki.facepunch.com/gmod/render.EnableClipping]
--- @param state boolean @ New clipping state.
--- @return boolean
function render.EnableClipping(state) end

--- (client) Ends the beam mesh of a beam started with [render.StartBeam](https://wiki.facepunch.com/gmod/render.StartBeam). 
--- [https://wiki.facepunch.com/gmod/render.EndBeam]
--- @return void
function render.EndBeam() end

--- (client) Sets the color of the fog. 
--- [https://wiki.facepunch.com/gmod/render.FogColor]
--- @param red number @ Red channel of the fog color, 0 - 255.
--- @param green number @ Green channel of the fog color, 0 - 255.
--- @param blue number @ Blue channel of the fog color, 0 - 255.
--- @return void
function render.FogColor(red, green, blue) end

--- (client) Sets the at which the fog reaches its max density. 
--- [https://wiki.facepunch.com/gmod/render.FogEnd]
--- @param distance number @ The distance at which the fog reaches its max density.
--- @return void
function render.FogEnd(distance) end

--- (client) Sets the maximum density of the fog. 
--- [https://wiki.facepunch.com/gmod/render.FogMaxDensity]
--- @param maxDensity number @ The maximum density of the fog, 0-1.
--- @return void
function render.FogMaxDensity(maxDensity) end

--- (client) Sets the mode of fog. 
--- [https://wiki.facepunch.com/gmod/render.FogMode]
--- @param fogMode number @ Fog mode, see [MATERIAL_FOG](https://wiki.facepunch.com/gmod/Enums/MATERIAL_FOG).
--- @return void
function render.FogMode(fogMode) end

--- (client) Sets the distance at which the fog starts showing up. 
--- [https://wiki.facepunch.com/gmod/render.FogStart]
--- @param fogStart number @ The distance at which the fog starts showing up.
--- @return void
function render.FogStart(fogStart) end

--- (client) Returns the ambient color of the map. 
--- [https://wiki.facepunch.com/gmod/render.GetAmbientLightColor]
--- @return Vector
function render.GetAmbientLightColor() end

--- (client) Returns the current alpha blending. 
--- [https://wiki.facepunch.com/gmod/render.GetBlend]
--- @return number
function render.GetBlend() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.GetBloomTex0]
--- @return ITexture
function render.GetBloomTex0() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.GetBloomTex1]
--- @return ITexture
function render.GetBloomTex1() end

--- (client) Returns the current color modulation values as normals. 
--- [https://wiki.facepunch.com/gmod/render.GetColorModulation]
--- @return number|number|number
function render.GetColorModulation() end

--- (client) Returns the maximum available directX version. 
--- [https://wiki.facepunch.com/gmod/render.GetDXLevel]
--- @return number
function render.GetDXLevel() end

--- (client) Returns the current fog color. 
--- [https://wiki.facepunch.com/gmod/render.GetFogColor]
--- @return number|number|number
function render.GetFogColor() end

--- (client) Returns the fog start and end distance. 
--- [https://wiki.facepunch.com/gmod/render.GetFogDistances]
--- @return number|number|number
function render.GetFogDistances() end

--- (client) Returns the fog mode. 
--- [https://wiki.facepunch.com/gmod/render.GetFogMode]
--- @return number
function render.GetFogMode() end

--- (client) Returns the _rt_FullFrameDepth texture. Alias of _rt_PowerOfTwoFB 
--- [https://wiki.facepunch.com/gmod/render.GetFullScreenDepthTexture]
--- @return ITexture
function render.GetFullScreenDepthTexture() end

--- (client) Returns whether HDR is currently enabled or not. This takes into account hardware support, current map and current client settings. 
--- [https://wiki.facepunch.com/gmod/render.GetHDREnabled]
--- @return boolean
function render.GetHDREnabled() end

--- (client) Gets the light exposure on the specified position. 
--- [https://wiki.facepunch.com/gmod/render.GetLightColor]
--- @param position Vector @ The position of the surface to get the light from.
--- @return Vector
function render.GetLightColor(position) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.GetMoBlurTex0]
--- @return ITexture
function render.GetMoBlurTex0() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.GetMoBlurTex1]
--- @return ITexture
function render.GetMoBlurTex1() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.GetMorphTex0]
--- @return ITexture
function render.GetMorphTex0() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.GetMorphTex1]
--- @return ITexture
function render.GetMorphTex1() end

--- (client) Returns the render target's power of two texture. 
--- [https://wiki.facepunch.com/gmod/render.GetPowerOfTwoTexture]
--- @return ITexture
function render.GetPowerOfTwoTexture() end

--- (client) Alias of [render.GetPowerOfTwoTexture](https://wiki.facepunch.com/gmod/render.GetPowerOfTwoTexture). 
--- [https://wiki.facepunch.com/gmod/render.GetRefractTexture]
--- @return ITexture
function render.GetRefractTexture() end

--- (client) Returns the currently active render target.Instead of saving the current render target using this function and restoring to it later, it is generally better practice to use [render.PushRenderTarget](https://wiki.facepunch.com/gmod/render.PushRenderTarget) and [render.PopRenderTarget](https://wiki.facepunch.com/gmod/render.PopRenderTarget). 
--- [https://wiki.facepunch.com/gmod/render.GetRenderTarget]
--- @return ITexture
function render.GetRenderTarget() end

--- (client) Returns the `_rt_ResolvedFullFrameDepth` texture for SSAO depth. It will only be updated if [GM:NeedsDepthPass](https://wiki.facepunch.com/gmod/GM:NeedsDepthPass) returns true. 
--- [https://wiki.facepunch.com/gmod/render.GetResolvedFullFrameDepth]
--- @return ITexture
function render.GetResolvedFullFrameDepth() end

--- (client) Obtain an [ITexture](https://wiki.facepunch.com/gmod/ITexture) of the screen. You must call [render.UpdateScreenEffectTexture](https://wiki.facepunch.com/gmod/render.UpdateScreenEffectTexture) in order to update this texture with the currently rendered scene.This texture is mainly used within [GM:RenderScreenspaceEffects](https://wiki.facepunch.com/gmod/GM:RenderScreenspaceEffects) 
--- [https://wiki.facepunch.com/gmod/render.GetScreenEffectTexture]
--- @param textureIndex number @ Max index is 3, but engine only creates the first two for you.
--- @return ITexture
function render.GetScreenEffectTexture(textureIndex) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.GetSmallTex0]
--- @return ITexture
function render.GetSmallTex0() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.GetSmallTex1]
--- @return ITexture
function render.GetSmallTex1() end

--- (client) Returns a floating point texture the same resolution as the screen. 
--- [https://wiki.facepunch.com/gmod/render.GetSuperFPTex]
--- @return ITexture
function render.GetSuperFPTex() end

--- (client) See [render.GetSuperFPTex](https://wiki.facepunch.com/gmod/render.GetSuperFPTex) 
--- [https://wiki.facepunch.com/gmod/render.GetSuperFPTex2]
--- @return ITexture
function render.GetSuperFPTex2() end

--- (client) Performs a render trace and returns the color of the surface hit, this uses a low res version of the texture. 
--- [https://wiki.facepunch.com/gmod/render.GetSurfaceColor]
--- @param startPos Vector @ The start position to trace from.
--- @param endPos Vector @ The end position of the trace.
--- @return Vector
function render.GetSurfaceColor(startPos, endPos) end

--- (client) Returns a vector representing linear tone mapping scale. 
--- [https://wiki.facepunch.com/gmod/render.GetToneMappingScaleLinear]
--- @return Vector
function render.GetToneMappingScaleLinear() end

--- (client) Sets the render material override for all next calls of [Entity:DrawModel](https://wiki.facepunch.com/gmod/Entity:DrawModel). Also overrides [render.MaterialOverrideByIndex](https://wiki.facepunch.com/gmod/render.MaterialOverrideByIndex). 
--- [https://wiki.facepunch.com/gmod/render.MaterialOverride]
--- @param material IMaterial @ The material to use as override, use nil to disable.
--- @return void
function render.MaterialOverride(material) end

--- (client) Similar to [render.MaterialOverride](https://wiki.facepunch.com/gmod/render.MaterialOverride), but overrides the materials per index.[render.MaterialOverride](https://wiki.facepunch.com/gmod/render.MaterialOverride) overrides effects of this function. 
--- [https://wiki.facepunch.com/gmod/render.MaterialOverrideByIndex]
--- @param index number @ Starts with 0, the index of the material to override
--- @param material IMaterial @ The material to override with
--- @return void
function render.MaterialOverrideByIndex(index, material) end

--- (client) Returns the maximum texture height the renderer can handle. 
--- [https://wiki.facepunch.com/gmod/render.MaxTextureHeight]
--- @return number
function render.MaxTextureHeight() end

--- (client) Returns the maximum texture width the renderer can handle. 
--- [https://wiki.facepunch.com/gmod/render.MaxTextureWidth]
--- @return number
function render.MaxTextureWidth() end

--- (client) Creates a new [ClientsideModel](https://wiki.facepunch.com/gmod/Global.ClientsideModel), renders it at the specified pos/ang, and removes it. Can also be given an existing [CSEnt](https://wiki.facepunch.com/gmod/CSEnt) to reuse instead. 
--- [https://wiki.facepunch.com/gmod/render.Model]
--- @param settings table @ Requires:* [string](https://wiki.facepunch.com/gmod/string) model - The model to draw* [Vector](https://wiki.facepunch.com/gmod/Vector) pos - The position to draw the model at* [Angle](https://wiki.facepunch.com/gmod/Angle) angle - The angles to draw the model at
--- @param ent CSEnt @ If provided, this entity will be reused instead of creating a new one with [ClientsideModel](https://wiki.facepunch.com/gmod/Global.ClientsideModel). Note that the ent's model, position and angles will be changed, and [Entity:SetNoDraw](https://wiki.facepunch.com/gmod/Entity:SetNoDraw) will be set to true.
--- @return void
function render.Model(settings, ent) end

--- (client) Sets a material to override a model's default material. Similar to [Entity:SetMaterial](https://wiki.facepunch.com/gmod/Entity:SetMaterial) except it uses an [IMaterial](https://wiki.facepunch.com/gmod/IMaterial) argument and it can be used to change materials on models which are part of the world geometry. 
--- [https://wiki.facepunch.com/gmod/render.ModelMaterialOverride]
--- @param material IMaterial @ The material override.
--- @return void
function render.ModelMaterialOverride(material) end

--- (client) Overrides the write behaviour of all next rendering operations towards the alpha channel of the current render target.See also [render.OverrideBlend](https://wiki.facepunch.com/gmod/render.OverrideBlend). 
--- [https://wiki.facepunch.com/gmod/render.OverrideAlphaWriteEnable]
--- @param enable boolean @ Enable or disable the override.
--- @param shouldWrite boolean @ If the previous argument is true, sets whether the next rendering operations should write to the alpha channel or not. Has no effect if the previous argument is false.
--- @return void
function render.OverrideAlphaWriteEnable(enable, shouldWrite) end

--- (client) Overrides the internal graphical functions used to determine the final color and alpha of a rendered texture.See also [render.OverrideAlphaWriteEnable](https://wiki.facepunch.com/gmod/render.OverrideAlphaWriteEnable). 
--- [https://wiki.facepunch.com/gmod/render.OverrideBlend]
--- @param enabled boolean @ true to enable, false to disable. No other arguments are required when disabling.
--- @param srcBlend number @ The source color blend function [BLEND](https://wiki.facepunch.com/gmod/Enums/BLEND). Determines how a rendered texture's final color should be calculated.
--- @param destBlend number @ The destination color blend function [BLEND](https://wiki.facepunch.com/gmod/Enums/BLEND).
--- @param blendFunc number @ The blend mode used for drawing the color layer [BLENDFUNC](https://wiki.facepunch.com/gmod/Enums/BLENDFUNC).
--- @param srcBlendAlpha number @ The source alpha blend function [BLEND](https://wiki.facepunch.com/gmod/Enums/BLEND). Determines how a rendered texture's final alpha should be calculated.
--- @param destBlendAlpha number @ The destination alpha blend function [BLEND](https://wiki.facepunch.com/gmod/Enums/BLEND).
--- @param blendFuncAlpha number @ The blend mode used for drawing the alpha layer [BLENDFUNC](https://wiki.facepunch.com/gmod/Enums/BLENDFUNC).
--- @return void
function render.OverrideBlend(enabled, srcBlend, destBlend, blendFunc, srcBlendAlpha, destBlendAlpha, blendFuncAlpha) end

--- (client) Overrides the internal graphical functions used to determine the final color and alpha of a rendered texture.See also [render.OverrideAlphaWriteEnable](https://wiki.facepunch.com/gmod/render.OverrideAlphaWriteEnable). 
--- [https://wiki.facepunch.com/gmod/render.OverrideBlendFunc]
--- @param enabled boolean @ true to enable, false to disable. No other arguments are required when disabling.
--- @param srcBlend number @ The source color blend function [BLEND](https://wiki.facepunch.com/gmod/Enums/BLEND). Determines how a rendered texture's final color should be calculated.
--- @param destBlend number @ No description provided
--- @param srcBlendAlpha number @ The source alpha blend function [BLEND](https://wiki.facepunch.com/gmod/Enums/BLEND). Determines how a rendered texture's final alpha should be calculated.
--- @param destBlendAlpha number @ No description provided
--- @return void
function render.OverrideBlendFunc(enabled, srcBlend, destBlend, srcBlendAlpha, destBlendAlpha) end

--- (client) Overrides the write behaviour of all next rendering operations towards the color channel of the current render target. 
--- [https://wiki.facepunch.com/gmod/render.OverrideColorWriteEnable]
--- @param enable boolean @ Enable or disable the override.
--- @param shouldWrite boolean @ If the previous argument is true, sets whether the next rendering operations should write to the color channel or not. Has no effect if the previous argument is false.
--- @return void
function render.OverrideColorWriteEnable(enable, shouldWrite) end

--- (client) Overrides the write behaviour of all next rendering operations towards the depth buffer. 
--- [https://wiki.facepunch.com/gmod/render.OverrideDepthEnable]
--- @param enable boolean @ Enable or disable the override.
--- @param shouldWrite boolean @ If the previous argument is true, sets whether the next rendering operations should write to the depth buffer or not. Has no effect if the previous argument is false.
--- @return void
function render.OverrideDepthEnable(enable, shouldWrite) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.PerformFullScreenStencilOperation]
--- @return void
function render.PerformFullScreenStencilOperation() end

--- (client) Removes the current active clipping plane from the clip plane stack. 
--- [https://wiki.facepunch.com/gmod/render.PopCustomClipPlane]
--- @return void
function render.PopCustomClipPlane() end

--- (client) Pops the current texture magnification filter from the filter stack.See [render.PushFilterMag](https://wiki.facepunch.com/gmod/render.PushFilterMag) 
--- [https://wiki.facepunch.com/gmod/render.PopFilterMag]
--- @return void
function render.PopFilterMag() end

--- (client) Pops the current texture minification filter from the filter stack.See [render.PushFilterMin](https://wiki.facepunch.com/gmod/render.PushFilterMin) 
--- [https://wiki.facepunch.com/gmod/render.PopFilterMin]
--- @return void
function render.PopFilterMin() end

--- (client) Pops the current flashlight mode from the flashlight mode stack. 
--- [https://wiki.facepunch.com/gmod/render.PopFlashlightMode]
--- @return void
function render.PopFlashlightMode() end

--- (client) Pops the last render target and viewport from the RT stack and sets them as the current render target and viewport.This is should be called to restore the previous render target and viewport after a call to [render.PushRenderTarget](https://wiki.facepunch.com/gmod/render.PushRenderTarget). 
--- [https://wiki.facepunch.com/gmod/render.PopRenderTarget]
--- @return void
function render.PopRenderTarget() end

--- (client) Pushes a new clipping plane of the clip plane stack and sets it as active. 
--- [https://wiki.facepunch.com/gmod/render.PushCustomClipPlane]
--- @param normal Vector @ The normal of the clipping plane.
--- @param distance number @ The distance of the plane from the world origin. You can use [Vector:Dot](https://wiki.facepunch.com/gmod/Vector:Dot) between the normal and any point on the plane to find this.
--- @return void
function render.PushCustomClipPlane(normal, distance) end

--- (client) Pushes a texture filter onto the magnification texture filter stack.See also [render.PushFilterMin](https://wiki.facepunch.com/gmod/render.PushFilterMin) and [render.PopFilterMag](https://wiki.facepunch.com/gmod/render.PopFilterMag). 
--- [https://wiki.facepunch.com/gmod/render.PushFilterMag]
--- @param texFilterType number @ The texture filter type, see [TEXFILTER](https://wiki.facepunch.com/gmod/Enums/TEXFILTER)
--- @return void
function render.PushFilterMag(texFilterType) end

--- (client) Pushes a texture filter onto the minification texture filter stack. 
--- [https://wiki.facepunch.com/gmod/render.PushFilterMin]
--- @param texFilterType number @ The texture filter type, see [TEXFILTER](https://wiki.facepunch.com/gmod/Enums/TEXFILTER)
--- @return void
function render.PushFilterMin(texFilterType) end

--- (client) Enables the flashlight projection for the upcoming rendering. 
--- [https://wiki.facepunch.com/gmod/render.PushFlashlightMode]
--- @param enable boolean @ Whether the flashlight mode should be enabled or disabled.
--- @return void
function render.PushFlashlightMode(enable) end

--- (client) Pushes the current render target and viewport to the RT stack then sets a new current render target and viewport. If the viewport is not specified, the dimensions of the render target are used instead.This is similar to a call to [render.SetRenderTarget](https://wiki.facepunch.com/gmod/render.SetRenderTarget) and [render.SetViewPort](https://wiki.facepunch.com/gmod/render.SetViewPort) where the current render target and viewport have been saved beforehand, except the viewport isn't clipped to screen bounds.See also [render.PopRenderTarget](https://wiki.facepunch.com/gmod/render.PopRenderTarget). 
--- [https://wiki.facepunch.com/gmod/render.PushRenderTarget]
--- @param texture ITexture @ The new render target to be used.
--- @param x number @ X origin of the viewport.
--- @param y number @ Y origin of the viewport.
--- @param w number @ Width of the viewport.
--- @param h number @ Height of the viewport
--- @return void
function render.PushRenderTarget(texture, x, y, w, h) end

--- (client) Reads the color of the specified pixel from the RenderTarget sent by [render.CapturePixels](https://wiki.facepunch.com/gmod/render.CapturePixels) 
--- [https://wiki.facepunch.com/gmod/render.ReadPixel]
--- @param x number @ The x coordinate.
--- @param y number @ The y coordinate.
--- @return number|number|number|number
function render.ReadPixel(x, y) end

--- (client) This applies the changes made to map lighting using [engine.LightStyle](https://wiki.facepunch.com/gmod/engine.LightStyle). 
--- [https://wiki.facepunch.com/gmod/render.RedownloadAllLightmaps]
--- @param DoStaticProps boolean @ When true, this will also apply lighting changes to static props. This is really slow on large maps.
--- @param UpdateStaticLighting boolean @ Forces all props to update their static lighting. Can be slow.
--- @return void
function render.RedownloadAllLightmaps(DoStaticProps, UpdateStaticLighting) end

--- (client) Renders the HUD on the screen. 
--- [https://wiki.facepunch.com/gmod/render.RenderHUD]
--- @param x number @ X position for the HUD draw origin.
--- @param y number @ Y position for the HUD draw origin.
--- @param w number @ Width of the HUD draw.
--- @param h number @ Height of the HUD draw.
--- @return void
function render.RenderHUD(x, y, w, h) end

--- (client) Renders the scene with the specified viewData to the current active render target. 
--- [https://wiki.facepunch.com/gmod/render.RenderView]
--- @param view table @ The view data to be used in the rendering. See [ViewData](https://wiki.facepunch.com/gmod/Structures/ViewData). Any missing value is assumed to be that of the current view. Similarly, you can make a normal render by simply not passing this table at all.
--- @return void
function render.RenderView(view) end

--- (client) Resets the model lighting to the specified color.Calls [render.SetModelLighting](https://wiki.facepunch.com/gmod/render.SetModelLighting) for every direction with given color. 
--- [https://wiki.facepunch.com/gmod/render.ResetModelLighting]
--- @param r number @ The red part of the color, 0-1
--- @param g number @ The green part of the color, 0-1
--- @param b number @ The blue part of the color, 0-1
--- @return void
function render.ResetModelLighting(r, g, b) end

--- (client) Resets the HDR tone multiplier to the specified value.This will only work on HDR maps, and the value will automatically fade to what it was ( or whatever [render.SetGoalToneMappingScale](https://wiki.facepunch.com/gmod/render.SetGoalToneMappingScale) is ) if called only once. 
--- [https://wiki.facepunch.com/gmod/render.ResetToneMappingScale]
--- @param scale number @ The value which should be used as multiplier.
--- @return void
function render.ResetToneMappingScale(scale) end

--- (client) Sets the ambient lighting for any upcoming render operation. 
--- [https://wiki.facepunch.com/gmod/render.SetAmbientLight]
--- @param r number @ The red part of the color, 0-1.
--- @param g number @ The green part of the color, 0-1.
--- @param b number @ The blue part of the color, 0-1.
--- @return void
function render.SetAmbientLight(r, g, b) end

--- (client) Sets the alpha blending for every upcoming render operation. 
--- [https://wiki.facepunch.com/gmod/render.SetBlend]
--- @param blending number @ Blending value from 0-1.
--- @return void
function render.SetBlend(blending) end

--- (client) Sets the current drawing material to "color".The material is defined as:``` "UnlitGeneric" { 	"$basetexture" "color/white" 	"$model" 		1 	"$translucent" 	1 	"$vertexalpha" 	1 	"$vertexcolor" 	1 }``` 
--- [https://wiki.facepunch.com/gmod/render.SetColorMaterial]
--- @return void
function render.SetColorMaterial() end

--- (client) Sets the current drawing material to `color_ignorez`.The material is defined as:``` "UnlitGeneric" { 	"$basetexture" "color/white"  	"$model" 		1 	"$translucent" 	1 	"$vertexalpha" 	1 	"$vertexcolor" 	1 	"$ignorez"		1 }``` 
--- [https://wiki.facepunch.com/gmod/render.SetColorMaterialIgnoreZ]
--- @return void
function render.SetColorMaterialIgnoreZ() end

--- (client) Sets the color modulation. 
--- [https://wiki.facepunch.com/gmod/render.SetColorModulation]
--- @param r number @ The red channel multiplier normal ranging from 0-1.
--- @param g number @ The green channel multiplier normal ranging from 0-1.
--- @param b number @ The blue channel multiplier normal ranging from 0-1.
--- @return void
function render.SetColorModulation(r, g, b) end

--- (client) If the fog mode is set to [MATERIAL_FOG_LINEAR_BELOW_FOG_Z](https://wiki.facepunch.com/gmod/Enums/MATERIAL_FOG), the fog will only be rendered below the specified height. 
--- [https://wiki.facepunch.com/gmod/render.SetFogZ]
--- @param fogZ number @ The fog Z.
--- @return void
function render.SetFogZ(fogZ) end

--- (client) Sets the goal HDR tone mapping scale.Use this in a rendering/think hook as it is reset every frame. 
--- [https://wiki.facepunch.com/gmod/render.SetGoalToneMappingScale]
--- @param scale number @ The target scale.
--- @return void
function render.SetGoalToneMappingScale(scale) end

--- (client) Sets lighting mode when rendering something. 
--- [https://wiki.facepunch.com/gmod/render.SetLightingMode]
--- @param Mode number @ Lighting render modePossible values are:* 0 - Default* 1 - Total fullbright, similar to `mat_fullbright 1` but excluding some weapon view models* 2 - Increased brightness(?), models look fullbright
--- @return void
function render.SetLightingMode(Mode) end

--- (client) Sets the lighting origin. 
--- [https://wiki.facepunch.com/gmod/render.SetLightingOrigin]
--- @param lightingOrigin Vector @ The position from which the light should be "emitted".
--- @return void
function render.SetLightingOrigin(lightingOrigin) end

--- (client) Sets the texture to be used as the lightmap in upcoming rendering operations. This is required when rendering meshes using a material with a lightmapped shader such as LightmappedGeneric. 
--- [https://wiki.facepunch.com/gmod/render.SetLightmapTexture]
--- @param tex ITexture @ The texture to be used as the lightmap.
--- @return void
function render.SetLightmapTexture(tex) end

--- (client) Sets up the local lighting for any upcoming render operation. Up to 4 local lights can be defined, with one of three different types (point, directional, spot).Disables all local lights if called with no arguments. 
--- [https://wiki.facepunch.com/gmod/render.SetLocalModelLights]
--- @param lights table @ A table containing up to 4 tables for each light source that should be set up. Each of these tables should contain the properties of its associated light source, see [LocalLight](https://wiki.facepunch.com/gmod/Structures/LocalLight).
--- @return void
function render.SetLocalModelLights(lights) end

--- (client) Sets the material to be used in any upcoming render operation using the [render](https://wiki.facepunch.com/gmod/render).Not to be confused with [surface.SetMaterial](https://wiki.facepunch.com/gmod/surface.SetMaterial). 
--- [https://wiki.facepunch.com/gmod/render.SetMaterial]
--- @param mat IMaterial @ The material to be used.
--- @return void
function render.SetMaterial(mat) end

--- (client) Sets up the ambient lighting for any upcoming render operation. Ambient lighting can be seen as a cube enclosing the object to be drawn, each of its faces representing a directional light source that shines towards the object. Thus, there is a total of six different light sources that can be configured separately.Light color components are not restricted to a specific range (i.e. 0-255), instead, higher values will result in a brighter light. 
--- [https://wiki.facepunch.com/gmod/render.SetModelLighting]
--- @param lightDirection number @ The light source to edit, see [BOX](https://wiki.facepunch.com/gmod/Enums/BOX).
--- @param red number @ The red component of the light color.
--- @param green number @ The green component of the light color.
--- @param blue number @ The blue component of the light color.
--- @return void
function render.SetModelLighting(lightDirection, red, green, blue) end

--- (client) Sets the render target to the specified rt. 
--- [https://wiki.facepunch.com/gmod/render.SetRenderTarget]
--- @param texture ITexture @ The new render target to be used.
--- @return void
function render.SetRenderTarget(texture) end

--- (client) Sets the render target with the specified index to the specified rt. 
--- [https://wiki.facepunch.com/gmod/render.SetRenderTargetEx]
--- @param rtIndex number @ The index of the rt to set.
--- @param texture ITexture @ The new render target to be used.
--- @return void
function render.SetRenderTargetEx(rtIndex, texture) end

--- (client) Sets a scissoring rect which limits the drawing area. 
--- [https://wiki.facepunch.com/gmod/render.SetScissorRect]
--- @param startX number @ X start coordinate of the scissor rect.
--- @param startY number @ Y start coordinate of the scissor rect.
--- @param endX number @ X end coordinate of the scissor rect.
--- @param endY number @ Y end coordinate of the scissor rect.
--- @param enable boolean @ Enable or disable the scissor rect.
--- @return void
function render.SetScissorRect(startX, startY, endX, endY, enable) end

--- (client) Sets the shadow color. 
--- [https://wiki.facepunch.com/gmod/render.SetShadowColor]
--- @param red number @ The red channel of the shadow color.
--- @param green number @ The green channel of the shadow color.
--- @param blue number @ The blue channel of the shadow color.
--- @return void
function render.SetShadowColor(red, green, blue) end

--- (client) Sets the shadow projection direction. 
--- [https://wiki.facepunch.com/gmod/render.SetShadowDirection]
--- @param shadowDirections Vector @ The new shadow direction.
--- @return void
function render.SetShadowDirection(shadowDirections) end

--- (client) Sets the maximum shadow projection range. 
--- [https://wiki.facepunch.com/gmod/render.SetShadowDistance]
--- @param shadowDistance number @ The new maximum shadow distance.
--- @return void
function render.SetShadowDistance(shadowDistance) end

--- (client) Sets whether any future render operations will ignore shadow drawing. 
--- [https://wiki.facepunch.com/gmod/render.SetShadowsDisabled]
--- @param newState boolean @ No description provided
--- @return void
function render.SetShadowsDisabled(newState) end

--- (client) Sets the compare function of the stencil.Pixels which fail the stencil comparison function are not written to the render target. The operation to be performed on the stencil buffer values for these pixels can be set using [render.SetStencilFailOperation](https://wiki.facepunch.com/gmod/render.SetStencilFailOperation).Pixels which pass the stencil comparison function are written to the render target unless they fail the depth buffer test (where applicable). The operation to perform on the stencil buffer values for these pixels can be set using [render.SetStencilPassOperation](https://wiki.facepunch.com/gmod/render.SetStencilPassOperation) and [render.SetStencilZFailOperation](https://wiki.facepunch.com/gmod/render.SetStencilZFailOperation). 
--- [https://wiki.facepunch.com/gmod/render.SetStencilCompareFunction]
--- @param compareFunction number @ Compare function, see [STENCILCOMPARISONFUNCTION](https://wiki.facepunch.com/gmod/Enums/STENCILCOMPARISONFUNCTION), and [STENCIL](https://wiki.facepunch.com/gmod/Enums/STENCIL) for short.
--- @return void
function render.SetStencilCompareFunction(compareFunction) end

--- (client) Sets whether stencil tests are carried out for each rendered pixel.Only pixels passing the stencil test are written to the render target. 
--- [https://wiki.facepunch.com/gmod/render.SetStencilEnable]
--- @param newState boolean @ The new state.
--- @return void
function render.SetStencilEnable(newState) end

--- (client) Sets the operation to be performed on the stencil buffer values if the compare function was not successful.Note that this takes place **before** depth testing. 
--- [https://wiki.facepunch.com/gmod/render.SetStencilFailOperation]
--- @param failOperation number @ Fail operation function, see [STENCILOPERATION](https://wiki.facepunch.com/gmod/Enums/STENCILOPERATION).
--- @return void
function render.SetStencilFailOperation(failOperation) end

--- (client) Sets the operation to be performed on the stencil buffer values if the compare function was successful. 
--- [https://wiki.facepunch.com/gmod/render.SetStencilPassOperation]
--- @param passOperation number @ Pass operation function, see [STENCILOPERATION](https://wiki.facepunch.com/gmod/Enums/STENCILOPERATION).
--- @return void
function render.SetStencilPassOperation(passOperation) end

--- (client) Sets the reference value which will be used for all stencil operations. This is an unsigned integer. 
--- [https://wiki.facepunch.com/gmod/render.SetStencilReferenceValue]
--- @param referenceValue number @ Reference value.
--- @return void
function render.SetStencilReferenceValue(referenceValue) end

--- (client) Sets the unsigned 8-bit test bitflag mask to be used for any stencil testing. 
--- [https://wiki.facepunch.com/gmod/render.SetStencilTestMask]
--- @param mask number @ The mask bitflag.
--- @return void
function render.SetStencilTestMask(mask) end

--- (client) Sets the unsigned 8-bit write bitflag mask to be used for any writes to the stencil buffer. 
--- [https://wiki.facepunch.com/gmod/render.SetStencilWriteMask]
--- @param mask number @ The mask bitflag.
--- @return void
function render.SetStencilWriteMask(mask) end

--- (client) Sets the operation to be performed on the stencil buffer values if the stencil test is passed but the depth buffer test fails. 
--- [https://wiki.facepunch.com/gmod/render.SetStencilZFailOperation]
--- @param zFailOperation number @ Z fail operation function, see [STENCILOPERATION](https://wiki.facepunch.com/gmod/Enums/STENCILOPERATION)
--- @return void
function render.SetStencilZFailOperation(zFailOperation) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/render.SetToneMappingScaleLinear]
--- @param vec Vector @ No description provided
--- @return void
function render.SetToneMappingScaleLinear(vec) end

--- (client) Changes the view port position and size. The values will be clamped to the game's screen resolution.If you are looking to render something to a texture (render target), you should use [render.PushRenderTarget](https://wiki.facepunch.com/gmod/render.PushRenderTarget). 
--- [https://wiki.facepunch.com/gmod/render.SetViewPort]
--- @param x number @ X origin of the view port.
--- @param y number @ Y origin of the view port.
--- @param w number @ Width of the view port.
--- @param h number @ Height of the view port.
--- @return void
function render.SetViewPort(x, y, w, h) end

--- (client) Sets the internal parameter **INT_RENDERPARM_WRITE_DEPTH_TO_DESTALPHA** 
--- [https://wiki.facepunch.com/gmod/render.SetWriteDepthToDestAlpha]
--- @param enable boolean @ No description provided
--- @return void
function render.SetWriteDepthToDestAlpha(enable) end

--- (client) Swaps the frame buffers/cycles the frame. In other words, this updates the screen.If you take a really long time during a single frame render, it is a good idea to use this and let the user know that the game isn't stuck. 
--- [https://wiki.facepunch.com/gmod/render.Spin]
--- @return void
function render.Spin() end

--- (client) Start a new beam draw operation. 
--- [https://wiki.facepunch.com/gmod/render.StartBeam]
--- @param segmentCount number @ Amount of beam segments that are about to be drawn.
--- @return void
function render.StartBeam(segmentCount) end

--- (client) Returns whether the player's hardware supports HDR. (High Dynamic Range) HDR can still be disabled by the `mat_hdr_level` console variable or just not be supported by the map. 
--- [https://wiki.facepunch.com/gmod/render.SupportsHDR]
--- @return boolean
function render.SupportsHDR() end

--- (client) Returns if the current settings and the system allow the usage of pixel shaders 1.4. 
--- [https://wiki.facepunch.com/gmod/render.SupportsPixelShaders_1_4]
--- @return boolean
function render.SupportsPixelShaders_1_4() end

--- (client) Returns if the current settings and the system allow the usage of pixel shaders 2.0. 
--- [https://wiki.facepunch.com/gmod/render.SupportsPixelShaders_2_0]
--- @return boolean
function render.SupportsPixelShaders_2_0() end

--- (client) Returns if the current settings and the system allow the usage of vertex shaders 2.0. 
--- [https://wiki.facepunch.com/gmod/render.SupportsVertexShaders_2_0]
--- @return boolean
function render.SupportsVertexShaders_2_0() end

--- (client) Suppresses or enables any engine lighting for any upcoming render operation. 
--- [https://wiki.facepunch.com/gmod/render.SuppressEngineLighting]
--- @param suppressLighting boolean @ True to suppress false to enable.
--- @return void
function render.SuppressEngineLighting(suppressLighting) end

--- (client) Enables HDR tone mapping which influences the brightness. 
--- [https://wiki.facepunch.com/gmod/render.TurnOnToneMapping]
--- @return void
function render.TurnOnToneMapping() end

--- (client) Updates the texture returned by [render.GetFullScreenDepthTexture](https://wiki.facepunch.com/gmod/render.GetFullScreenDepthTexture).Silently fails if [render.SupportsPixelShaders_2_0](https://wiki.facepunch.com/gmod/render.SupportsPixelShaders_2_0) returns false. 
--- [https://wiki.facepunch.com/gmod/render.UpdateFullScreenDepthTexture]
--- @return void
function render.UpdateFullScreenDepthTexture() end

--- (client) Updates the power of two texture. 
--- [https://wiki.facepunch.com/gmod/render.UpdatePowerOfTwoTexture]
--- @return ITexture
function render.UpdatePowerOfTwoTexture() end

--- (client) Pretty much alias of [render.UpdatePowerOfTwoTexture](https://wiki.facepunch.com/gmod/render.UpdatePowerOfTwoTexture) but does not return the texture. 
--- [https://wiki.facepunch.com/gmod/render.UpdateRefractTexture]
--- @return void
function render.UpdateRefractTexture() end

--- (client) Copies the entire screen to the screen effect texture, which can be acquired via [render.GetScreenEffectTexture](https://wiki.facepunch.com/gmod/render.GetScreenEffectTexture). This function is mainly intended to be used in [GM:RenderScreenspaceEffects](https://wiki.facepunch.com/gmod/GM:RenderScreenspaceEffects) 
--- [https://wiki.facepunch.com/gmod/render.UpdateScreenEffectTexture]
--- @return void
function render.UpdateScreenEffectTexture() end

