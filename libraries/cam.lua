--- @class cam
cam = {}

--- (client) Shakes the screen at a certain position. 
--- [https://wiki.facepunch.com/gmod/cam.ApplyShake]
--- @param pos Vector @ Origin of the shake.
--- @param angles Angle @ Angles of the shake.
--- @param factor number @ The shake factor.
--- @return void
function cam.ApplyShake(pos, angles, factor) end

--- (client) Switches the renderer back to the previous drawing mode from a 3D context.
--- This function is an alias of [cam.End3D](https://wiki.facepunch.com/gmod/cam.End3D). 
--- [https://wiki.facepunch.com/gmod/cam.End]
--- @return void
function cam.End() end

--- (client) Switches the renderer back to the previous drawing mode from a 2D context. 
--- [https://wiki.facepunch.com/gmod/cam.End2D]
--- @return void
function cam.End2D() end

--- (client) Switches the renderer back to the previous drawing mode from a 3D context. 
--- [https://wiki.facepunch.com/gmod/cam.End3D]
--- @return void
function cam.End3D() end

--- (client) Switches the renderer back to the previous drawing mode from a 3D2D context. 
--- [https://wiki.facepunch.com/gmod/cam.End3D2D]
--- @return void
function cam.End3D2D() end

--- (client) Switches the renderer back to the previous drawing mode from a 3D orthographic rendering context. 
--- [https://wiki.facepunch.com/gmod/cam.EndOrthoView]
--- @return void
function cam.EndOrthoView() end

--- (client) Returns the currently active model matrix. 
--- [https://wiki.facepunch.com/gmod/cam.GetModelMatrix]
--- @return VMatrix
function cam.GetModelMatrix() end

--- (client) Tells the renderer to ignore the depth buffer and draw any upcoming operation "ontop" of everything that was drawn yet.
--- This is identical to calling `render.DepthRange( 0, 0.01 )` for `true` and  `render.DepthRange( 0, 1 )` for `false`. See [render.DepthRange](https://wiki.facepunch.com/gmod/render.DepthRange). 
--- [https://wiki.facepunch.com/gmod/cam.IgnoreZ]
--- @param ignoreZ boolean @ Determines whenever to ignore the depth buffer or not.
--- @return void
function cam.IgnoreZ(ignoreZ) end

--- (client) Pops the current active rendering matrix from the stack and reinstates the previous one. 
--- [https://wiki.facepunch.com/gmod/cam.PopModelMatrix]
--- @return void
function cam.PopModelMatrix() end

--- (client) Pushes the specified matrix onto the render matrix stack. Unlike opengl, this will replace the current model matrix. 
--- [https://wiki.facepunch.com/gmod/cam.PushModelMatrix]
--- @param matrix VMatrix @ The matrix to push.
--- @param multiply boolean @ If set, multiplies given matrix with currently active matrix ([cam.GetModelMatrix](https://wiki.facepunch.com/gmod/cam.GetModelMatrix)) before pushing.
--- @return void
function cam.PushModelMatrix(matrix, multiply) end

--- (client) Sets up a new rendering context. This is an extended version of [cam.Start3D](https://wiki.facepunch.com/gmod/cam.Start3D) and [cam.Start2D](https://wiki.facepunch.com/gmod/cam.Start2D). Must be finished by [cam.End3D](https://wiki.facepunch.com/gmod/cam.End3D) or [cam.End2D](https://wiki.facepunch.com/gmod/cam.End2D). 
--- [https://wiki.facepunch.com/gmod/cam.Start]
--- @param dataTbl table @ Render context config. See [RenderCamData](https://wiki.facepunch.com/gmod/Structures/RenderCamData)
--- @return void
function cam.Start(dataTbl) end

--- (client) Sets up a new 2D rendering context. Must be finished by [cam.End2D](https://wiki.facepunch.com/gmod/cam.End2D).
--- This is almost always used with a render target from the [render](https://wiki.facepunch.com/gmod/render). To set its position use [render.SetViewPort](https://wiki.facepunch.com/gmod/render.SetViewPort) with a target already stored. 
--- [https://wiki.facepunch.com/gmod/cam.Start2D]
--- @return void
function cam.Start2D() end

--- (client) Sets up a new 3D rendering context. Must be finished by [cam.End3D](https://wiki.facepunch.com/gmod/cam.End3D).
--- For more advanced settings such as an orthographic view, use [cam.Start](https://wiki.facepunch.com/gmod/cam.Start) instead. 
--- [https://wiki.facepunch.com/gmod/cam.Start3D]
--- @param pos Vector @ Render cam position.
--- @param angles Angle @ Render cam angles.
--- @param fov number @ Field of view.
--- @param x number @ X coordinate of where to start the new view port.
--- @param y number @ Y coordinate of where to start the new view port.
--- @param w number @ Width of the new viewport.
--- @param h number @ Height of the new viewport.
--- @param zNear number @ Distance to near clipping plane.
--- @param zFar number @ Distance to far clipping plane.
--- @return void
function cam.Start3D(pos, angles, fov, x, y, w, h, zNear, zFar) end

--- (client) Sets up a new 2D rendering context. Must be finished by [cam.End3D2D](https://wiki.facepunch.com/gmod/cam.End3D2D). This function pushes a new matrix onto the stack. ([cam.PushModelMatrix](https://wiki.facepunch.com/gmod/cam.PushModelMatrix))
--- Matrix formula:
--- ```
--- local m = Matrix()
--- m:SetAngles(angles)
--- m:SetTranslation(pos)
--- m:SetScale(Vector(scale, -scale, 1))
--- ``` 
--- [https://wiki.facepunch.com/gmod/cam.Start3D2D]
--- @param pos Vector @ Origin of the 3D2D context, ie. the top left corner, (0, 0).
--- @param angles Angle @ Angles of the 3D2D context. +x in the 2d context corresponds to +x of the angle (its forward direction). +y in the 2d context corresponds to -y of the angle (its right direction). If (dx, dy) are your desired (+x, +y) unit vectors, the angle you want is dx:AngleEx(dx:Cross(-dy)).
--- @param scale number @ The scale of the render context. If scale is 1 then 1 pixel in 2D context will equal to 1 unit in 3D context.
--- @return void
function cam.Start3D2D(pos, angles, scale) end

--- (client) Sets up a new 3d context using orthographic projection. 
--- [https://wiki.facepunch.com/gmod/cam.StartOrthoView]
--- @param leftOffset number @ The left plane offset.
--- @param topOffset number @ The top plane offset.
--- @param rightOffset number @ The right plane offset.
--- @param bottomOffset number @ The bottom plane offset.
--- @return void
function cam.StartOrthoView(leftOffset, topOffset, rightOffset, bottomOffset) end

