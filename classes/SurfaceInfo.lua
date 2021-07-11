--- @class SurfaceInfo
SurfaceInfo = {}

--- (client/server) Returns the brush surface's material. 
--- [https://wiki.facepunch.com/gmod/SurfaceInfo:GetMaterial]
--- @return IMaterial
function SurfaceInfo:GetMaterial() end

--- (client/server) Returns a list of vertices the brush surface is built from. 
--- [https://wiki.facepunch.com/gmod/SurfaceInfo:GetVertices]
--- @return table
function SurfaceInfo:GetVertices() end

--- (client/server) Checks if the brush surface is a nodraw surface, meaning it will not be drawn by the engine. 
--- [https://wiki.facepunch.com/gmod/SurfaceInfo:IsNoDraw]
--- @return boolean
function SurfaceInfo:IsNoDraw() end

--- (client/server) Checks if the brush surface is displaying the skybox. 
--- [https://wiki.facepunch.com/gmod/SurfaceInfo:IsSky]
--- @return boolean
function SurfaceInfo:IsSky() end

--- (client/server) Checks if the brush surface is water. 
--- [https://wiki.facepunch.com/gmod/SurfaceInfo:IsWater]
--- @return boolean
function SurfaceInfo:IsWater() end

