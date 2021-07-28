--- @class Material : Button
Material = {}

--- (client) Sets the alpha value of the Material panel. 
--- [https://wiki.facepunch.com/gmod/Material:SetAlpha]
--- @param alpha number @ The alpha value, from 0 to 255.
--- @return void
function Material:SetAlpha(alpha) end

--- (client) Sets the material used by the panel. 
--- [https://wiki.facepunch.com/gmod/Material:SetMaterial]
--- @param matname string @ The file path of the material to set (relative to "garrysmod/materials/").
--- @return void
function Material:SetMaterial(matname) end

