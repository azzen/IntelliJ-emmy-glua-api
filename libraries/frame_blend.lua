--- @class frame_blend
frame_blend = {}

--- (client) Adds a frame to the blend. Calls [frame_blend.CompleteFrame](https://wiki.facepunch.com/gmod/frame_blend.CompleteFrame) once enough frames have passed since last [frame_blend.CompleteFrame](https://wiki.facepunch.com/gmod/frame_blend.CompleteFrame) call. 
--- [https://wiki.facepunch.com/gmod/frame_blend.AddFrame]
--- @return void
function frame_blend.AddFrame() end

--- (client) Blends the frame(s). 
--- [https://wiki.facepunch.com/gmod/frame_blend.BlendFrame]
--- @return void
function frame_blend.BlendFrame() end

--- (client) Renders the frame onto internal render target. 
--- [https://wiki.facepunch.com/gmod/frame_blend.CompleteFrame]
--- @return void
function frame_blend.CompleteFrame() end

--- (client) Actually draws the frame blend effect. 
--- [https://wiki.facepunch.com/gmod/frame_blend.DrawPreview]
--- @return void
function frame_blend.DrawPreview() end

--- (client) Returns whether frame blend post processing effect is enabled or not. 
--- [https://wiki.facepunch.com/gmod/frame_blend.IsActive]
--- @return boolean
function frame_blend.IsActive() end

--- (client) Returns whether the current frame is the last frame? 
--- [https://wiki.facepunch.com/gmod/frame_blend.IsLastFrame]
--- @return boolean
function frame_blend.IsLastFrame() end

--- (client) Returns amount of frames needed to render? 
--- [https://wiki.facepunch.com/gmod/frame_blend.RenderableFrames]
--- @return number
function frame_blend.RenderableFrames() end

--- (client) Returns whether we should skip frame or not 
--- [https://wiki.facepunch.com/gmod/frame_blend.ShouldSkipFrame]
--- @return boolean
function frame_blend.ShouldSkipFrame() end

