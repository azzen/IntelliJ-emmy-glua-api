--- @class IVideoWriter
IVideoWriter = {}

--- (client) Adds the current framebuffer to the video stream. 
--- [https://wiki.facepunch.com/gmod/IVideoWriter:AddFrame]
--- @param frameTime number @ Usually set to what [FrameTime](https://wiki.facepunch.com/gmod/Global.FrameTime) is, or simply 1/fps.
--- @param downsample boolean @ If true it will downsample the whole screenspace to the videos width and height, otherwise it will just record from the top left corner to the given width and height and therefor not the whole screen.
--- @return void
function IVideoWriter:AddFrame(frameTime, downsample) end

--- (client) Ends the video recording and dumps it to disk. 
--- [https://wiki.facepunch.com/gmod/IVideoWriter:Finish]
--- @return void
function IVideoWriter:Finish() end

--- (client) Returns the height of the video stream. 
--- [https://wiki.facepunch.com/gmod/IVideoWriter:Height]
--- @return number
function IVideoWriter:Height() end

--- (client) Sets whether to record sound or not. 
--- [https://wiki.facepunch.com/gmod/IVideoWriter:SetRecordSound]
--- @param record boolean @ Record.
--- @return void
function IVideoWriter:SetRecordSound(record) end

--- (client) Returns the width of the video stream. 
--- [https://wiki.facepunch.com/gmod/IVideoWriter:Width]
--- @return number
function IVideoWriter:Width() end

