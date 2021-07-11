--- @class IMaterial
IMaterial = {}

--- (client/server) Returns the color of the specified pixel of the $basetexture, only works for materials created from PNG files.
--- Basically identical to [ITexture:GetColor](https://wiki.facepunch.com/gmod/ITexture:GetColor) used on [IMaterial:GetTexture](https://wiki.facepunch.com/gmod/IMaterial:GetTexture)( "$basetexture" ). 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetColor]
--- @param x number @ The X coordinate.
--- @param y number @ The Y coordinate.
--- @return table
function IMaterial:GetColor(x, y) end

--- (client/server) Returns the specified material value as a float, or nil if the value is not set. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetFloat]
--- @param materialFloat string @ The name of the material value.
--- @return number
function IMaterial:GetFloat(materialFloat) end

--- (client/server) Returns the specified material value as a int, rounds the value if its a float, or nil if the value is not set. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetInt]
--- @param materialInt string @ The name of the material integer.
--- @return number
function IMaterial:GetInt(materialInt) end

--- (client/server) Gets all the key values defined for the material. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetKeyValues]
--- @return table
function IMaterial:GetKeyValues() end

--- (client/server) Returns the specified material matrix as a int, or nil if the value is not set or is not a matrix. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetMatrix]
--- @param materialMatrix string @ The name of the material matrix.
--- @return VMatrix
function IMaterial:GetMatrix(materialMatrix) end

--- (client/server) Returns the name of the material, in most cases the path. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetName]
--- @return string
function IMaterial:GetName() end

--- (client/server) Returns the name of the materials shader. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetShader]
--- @return string
function IMaterial:GetShader() end

--- (client/server) Returns the specified material string, or nil if the value is not set or if the value can not be converted to a string. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetString]
--- @param materialString string @ The name of the material string.
--- @return string
function IMaterial:GetString(materialString) end

--- (client/server) Returns an [ITexture](https://wiki.facepunch.com/gmod/ITexture) based on the passed shader parameter. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetTexture]
--- @param param string @ The [shader parameter](https://developer.valvesoftware.com/wiki/Category:List_of_Shader_Parameters) to retrieve. This should normally be `$basetexture`.
--- @return ITexture
function IMaterial:GetTexture(param) end

--- (client/server) Returns the specified material vector, or nil if the value is not set.
--- See also [IMaterial:GetVectorLinear](https://wiki.facepunch.com/gmod/IMaterial:GetVectorLinear) 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetVector]
--- @param materialVector string @ The name of the material vector.
--- @return Vector
function IMaterial:GetVector(materialVector) end

--- (client/server) Returns the specified material vector as a 4 component vector. 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetVector4D]
--- @param name string @ The name of the material vector to retrieve.
--- @return number|number|number|number
function IMaterial:GetVector4D(name) end

--- (client/server) Returns the specified material linear color vector, or nil if the value is not set.
--- See https://en.wikipedia.org/wiki/Gamma_correction
--- See also [IMaterial:GetVector](https://wiki.facepunch.com/gmod/IMaterial:GetVector) 
--- [https://wiki.facepunch.com/gmod/IMaterial:GetVectorLinear]
--- @param materialVector string @ The name of the material vector.
--- @return Vector
function IMaterial:GetVectorLinear(materialVector) end

--- (client/server) Returns the height of the member texture set for $basetexture. 
--- [https://wiki.facepunch.com/gmod/IMaterial:Height]
--- @return number
function IMaterial:Height() end

--- (client/server) Returns whenever the material is valid, i.e. whether it was not loaded successfully from disk or not. 
--- [https://wiki.facepunch.com/gmod/IMaterial:IsError]
--- @return boolean
function IMaterial:IsError() end

--- (client/server) Recomputes the material's snapshot. This needs to be called if you have changed variables on your material and it isn't changing. 
--- Be careful though - this function is slow - so try to call it only when needed! 
--- [https://wiki.facepunch.com/gmod/IMaterial:Recompute]
--- @return void
function IMaterial:Recompute() end

--- (client/server) Sets the specified material float to the specified float, does nothing on a type mismatch. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetFloat]
--- @param materialFloat string @ The name of the material float.
--- @param float number @ The new float value.
--- @return void
function IMaterial:SetFloat(materialFloat, float) end

--- (client/server) Sets the specified material value to the specified int, does nothing on a type mismatch. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetInt]
--- @param materialInt string @ The name of the material int.
--- @param int number @ The new int value.
--- @return void
function IMaterial:SetInt(materialInt, int) end

--- (client/server) Sets the specified material value to the specified matrix, does nothing on a type mismatch. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetMatrix]
--- @param materialMatrix string @ The name of the material int.
--- @param matrix VMatrix @ The new matrix.
--- @return void
function IMaterial:SetMatrix(materialMatrix, matrix) end

--- (client/server) The functionality of this function was removed due to the amount of crashes it caused. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetShader]
--- @param shaderName string @ Name of the shader
--- @return void
function IMaterial:SetShader(shaderName) end

--- (client/server) Sets the specified material value to the specified string, does nothing on a type mismatch. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetString]
--- @param materialString string @ The name of the material string.
--- @param string string @ The new string.
--- @return void
function IMaterial:SetString(materialString, string) end

--- (client/server) Sets the specified material texture to the specified texture, does nothing on a type mismatch. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetTexture]
--- @param materialTexture string @ The name of the keyvalue on the material to store the texture on.
--- @param texture ITexture @ The new texture. This can also be a string, the name of the new texture.
--- @return void
function IMaterial:SetTexture(materialTexture, texture) end

--- (client/server) Unsets the value for the specified material value. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetUndefined]
--- @param materialValueName string @ The name of the material value to be unset.
--- @return void
function IMaterial:SetUndefined(materialValueName) end

--- (client/server) Sets the specified material vector to the specified vector, does nothing on a type mismatch. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetVector]
--- @param MaterialVector string @ The name of the material vector.
--- @param vec Vector @ The new vector.
--- @return void
function IMaterial:SetVector(MaterialVector, vec) end

--- (client/server) Sets the specified material vector to the specified 4 component vector, does nothing on a type mismatch. 
--- [https://wiki.facepunch.com/gmod/IMaterial:SetVector4D]
--- @param name string @ The name of the material vector.
--- @param x number @ The x component of the new vector.
--- @param y number @ The y component of the new vector.
--- @param z number @ The z component of the new vector.
--- @param w number @ The w component of the new vector.
--- @return void
function IMaterial:SetVector4D(name, x, y, z, w) end

--- (client/server) Returns the width of the member texture set for $basetexture. 
--- [https://wiki.facepunch.com/gmod/IMaterial:Width]
--- @return number
function IMaterial:Width() end

