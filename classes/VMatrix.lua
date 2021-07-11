--- @class VMatrix
VMatrix = {}

--- (client/server) Returns the absolute rotation of the matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetAngles]
--- @return Angle
function VMatrix:GetAngles() end

--- (client/server) Returns a specific field in the matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetField]
--- @param row number @ Row of the field whose value is to be retrieved, from 1 to 4
--- @param column number @ Column of the field whose value is to be retrieved, from 1 to 4
--- @return number
function VMatrix:GetField(row, column) end

--- (client/server) Gets the forward direction of the matrix.ie. The first column of the matrix, excluding the w coordinate. 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetForward]
--- @return Vector
function VMatrix:GetForward() end

--- (client/server) Returns an inverted matrix without modifying the original matrix.Inverting the matrix will fail if its [determinant](https://en.wikipedia.org/wiki/Determinant) is 0 or close to 0. (ie. its "scale" in any direction is 0.)See also [VMatrix:GetInverseTR](https://wiki.facepunch.com/gmod/VMatrix:GetInverseTR). 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetInverse]
--- @return VMatrix
function VMatrix:GetInverse() end

--- (client/server) Returns an inverted matrix without modifying the original matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.Using this function on a matrix with modified scale may return an incorrect inverted matrix.To get the inverse of a matrix that contains other modifications, see [VMatrix:GetInverse](https://wiki.facepunch.com/gmod/VMatrix:GetInverse). 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetInverseTR]
--- @return VMatrix
function VMatrix:GetInverseTR() end

--- (client/server) Gets the right direction of the matrix.ie. The second column of the matrix, negated, excluding the w coordinate. 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetRight]
--- @return Vector
function VMatrix:GetRight() end

--- (client/server) Returns the absolute scale of the matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetScale]
--- @return Vector
function VMatrix:GetScale() end

--- (client/server) Returns the absolute translation of the matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetTranslation]
--- @return Vector
function VMatrix:GetTranslation() end

--- (client/server) Gets the up direction of the matrix.ie. The third column of the matrix, excluding the w coordinate. 
--- [https://wiki.facepunch.com/gmod/VMatrix:GetUp]
--- @return Vector
function VMatrix:GetUp() end

--- (client/server) Initializes the matrix as Identity matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:Identity]
--- @return void
function VMatrix:Identity() end

--- (client/server) Inverts the matrix.Inverting the matrix will fail if its [determinant](https://en.wikipedia.org/wiki/Determinant) is 0 or close to 0. (ie. its "scale" in any direction is 0.)If the matrix cannot be inverted, it does not get modified.See also [VMatrix:InvertTR](https://wiki.facepunch.com/gmod/VMatrix:InvertTR). 
--- [https://wiki.facepunch.com/gmod/VMatrix:Invert]
--- @return boolean
function VMatrix:Invert() end

--- (client/server) Inverts the matrix. This function will not fail, but only works correctly on matrices that contain only translation and/or rotation.Using this function on a matrix with modified scale may return an incorrect inverted matrix.To invert a matrix that contains other modifications, see [VMatrix:Invert](https://wiki.facepunch.com/gmod/VMatrix:Invert). 
--- [https://wiki.facepunch.com/gmod/VMatrix:InvertTR]
--- @return void
function VMatrix:InvertTR() end

--- (client/server) Returns whether the matrix is equal to Identity matrix or not. 
--- [https://wiki.facepunch.com/gmod/VMatrix:IsIdentity]
--- @return boolean
function VMatrix:IsIdentity() end

--- (client/server) Returns whether the matrix is a rotation matrix or not.Technically it checks if the forward, right and up vectors are orthogonal and normalized. 
--- [https://wiki.facepunch.com/gmod/VMatrix:IsRotationMatrix]
--- @return boolean
function VMatrix:IsRotationMatrix() end

--- (client/server) Checks whenever all fields of the matrix are 0, aka if this is a [null matrix](https://en.wikipedia.org/wiki/Zero_matrix). 
--- [https://wiki.facepunch.com/gmod/VMatrix:IsZero]
--- @return boolean
function VMatrix:IsZero() end

--- (client/server) Rotates the matrix by the given angle.Postmultiplies the matrix by a rotation matrix (A = AR). 
--- [https://wiki.facepunch.com/gmod/VMatrix:Rotate]
--- @param rotation Angle @ Rotation.
--- @return void
function VMatrix:Rotate(rotation) end

--- (client/server) Scales the matrix by the given vector.Postmultiplies the matrix by a scaling matrix (A = AS). 
--- [https://wiki.facepunch.com/gmod/VMatrix:Scale]
--- @param scale Vector @ Vector to scale with matrix with.
--- @return void
function VMatrix:Scale(scale) end

--- (client/server) Scales the absolute translation with the given value. 
--- [https://wiki.facepunch.com/gmod/VMatrix:ScaleTranslation]
--- @param scale number @ Value to scale the translation with.
--- @return void
function VMatrix:ScaleTranslation(scale) end

--- (client/server) Copies values from the given matrix object. 
--- [https://wiki.facepunch.com/gmod/VMatrix:Set]
--- @param src VMatrix @ The matrix to copy values from.
--- @return void
function VMatrix:Set(src) end

--- (client/server) Sets the absolute rotation of the matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:SetAngles]
--- @param angle Angle @ New angles.
--- @return void
function VMatrix:SetAngles(angle) end

--- (client/server) Sets a specific field in the matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:SetField]
--- @param row number @ Row of the field to be set, from 1 to 4
--- @param column number @ Column of the field to be set, from 1 to 4
--- @param value number @ The value to set in that field
--- @return void
function VMatrix:SetField(row, column, value) end

--- (client/server) Sets the forward direction of the matrix.ie. The first column of the matrix, excluding the w coordinate. 
--- [https://wiki.facepunch.com/gmod/VMatrix:SetForward]
--- @param forward Vector @ The forward direction of the matrix.
--- @return void
function VMatrix:SetForward(forward) end

--- (client/server) Sets the right direction of the matrix.ie. The second column of the matrix, negated, excluding the w coordinate. 
--- [https://wiki.facepunch.com/gmod/VMatrix:SetRight]
--- @param forward Vector @ The right direction of the matrix.
--- @return void
function VMatrix:SetRight(forward) end

--- (client/server) Modifies the scale of the matrix while preserving the rotation and translation. 
--- [https://wiki.facepunch.com/gmod/VMatrix:SetScale]
--- @param scale Vector @ The scale to set.
--- @return void
function VMatrix:SetScale(scale) end

--- (client/server) Sets the absolute translation of the matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:SetTranslation]
--- @param translation Vector @ New translation.
--- @return void
function VMatrix:SetTranslation(translation) end

--- (client/server) Sets each component of the matrix. 
--- [https://wiki.facepunch.com/gmod/VMatrix:SetUnpacked]
--- @param e11 number @ No description provided
--- @param e12 number @ No description provided
--- @param e13 number @ No description provided
--- @param e14 number @ No description provided
--- @param e21 number @ No description provided
--- @param e22 number @ No description provided
--- @param e23 number @ No description provided
--- @param e24 number @ No description provided
--- @param e31 number @ No description provided
--- @param e32 number @ No description provided
--- @param e33 number @ No description provided
--- @param e34 number @ No description provided
--- @param e41 number @ No description provided
--- @param e42 number @ No description provided
--- @param e43 number @ No description provided
--- @param e44 number @ No description provided
--- @return void
function VMatrix:SetUnpacked(e11, e12, e13, e14, e21, e22, e23, e24, e31, e32, e33, e34, e41, e42, e43, e44) end

--- (client/server) Sets the up direction of the matrix.ie. The third column of the matrix, excluding the w coordinate. 
--- [https://wiki.facepunch.com/gmod/VMatrix:SetUp]
--- @param forward Vector @ The up direction of the matrix.
--- @return void
function VMatrix:SetUp(forward) end

--- (client/server) Converts the matrix to a 4x4 table. See [Matrix](https://wiki.facepunch.com/gmod/Global.Matrix) function. 
--- [https://wiki.facepunch.com/gmod/VMatrix:ToTable]
--- @return table
function VMatrix:ToTable() end

--- (client/server) Translates the matrix by the given vector aka. adds the vector to the translation.Postmultiplies the matrix by a translation matrix (A = AT). 
--- [https://wiki.facepunch.com/gmod/VMatrix:Translate]
--- @param translation Vector @ Vector to translate the matrix by.
--- @return void
function VMatrix:Translate(translation) end

--- (client/server) Returns each component of the matrix, expanding rows before columns. 
--- [https://wiki.facepunch.com/gmod/VMatrix:Unpack]
--- @return number|number|number|number|number|number|number|number|number|number|number|number|number|number|number|number
function VMatrix:Unpack() end

--- (client/server) Sets all components of the matrix to 0, also known as a [null matrix](https://en.wikipedia.org/wiki/Zero_matrix).This function is more efficient than setting each element manually. 
--- [https://wiki.facepunch.com/gmod/VMatrix:Zero]
--- @return void
function VMatrix:Zero() end

