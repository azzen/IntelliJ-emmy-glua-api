--- @class Vector
Vector = {}

--- (client/server) Adds the values of the argument vector to the orignal vector. This functions the same as vector1 + vector2 without creating a new vector object, skipping object construction and garbage collection. 
--- [https://wiki.facepunch.com/gmod/Vector:Add]
--- @param vector Vector @ The vector to add.
--- @return void
function Vector:Add(vector) end

--- (client/server) Returns an angle representing the normal of the vector. 
--- [https://wiki.facepunch.com/gmod/Vector:Angle]
--- @return Angle
function Vector:Angle() end

--- (client/server) Returns the angle of the vector, but instead of assuming that up is [Vector](https://wiki.facepunch.com/gmod/Global.Vector)( 0, 0, 1 ) (Like [Vector:Angle](https://wiki.facepunch.com/gmod/Vector:Angle) does) you can specify which direction is 'up' for the angle. 
--- [https://wiki.facepunch.com/gmod/Vector:AngleEx]
--- @param up Vector @ The up direction vector
--- @return Angle
function Vector:AngleEx(up) end

--- (client/server) Calculates the cross product of this vector and the passed one.The cross product of two vectors is a 3-dimensional vector with a direction perpendicular (at right angles) to both of them (according to the right-hand rule), and magnitude equal to the area of parallelogram they span. This is defined as the product of the magnitudes, the sine of the angle between them, and unit (normal) vector `n` defined by the right-hand rule::**a** × **b** = |**a**| |**b**| sin(θ) **n̂**where **a** and **b** are vectors, and **n̂** is a unit vector (magnitude of 1) perpendicular to both. 
--- [https://wiki.facepunch.com/gmod/Vector:Cross]
--- @param otherVector Vector @ Vector to calculate the cross product with.
--- @return Vector
function Vector:Cross(otherVector) end

--- (client/server) Returns the euclidean distance between the vector and the other vector. 
--- [https://wiki.facepunch.com/gmod/Vector:Distance]
--- @param otherVector Vector @ The vector to get the distance to.
--- @return number
function Vector:Distance(otherVector) end

--- (client/server) Returns the squared distance of 2 vectors, this is faster than [Vector:Distance](https://wiki.facepunch.com/gmod/Vector:Distance) as calculating the square root is an expensive process. 
--- [https://wiki.facepunch.com/gmod/Vector:DistToSqr]
--- @param otherVec Vector @ The vector to calculate the distance to.
--- @return number
function Vector:DistToSqr(otherVec) end

--- (client/server) Divide the vector by the given number, that means x, y and z are divided by that value. This will change the value of the original vector, see example 2 for division without changing the value. 
--- [https://wiki.facepunch.com/gmod/Vector:Div]
--- @param divisor number @ The value to divide the vector with.
--- @return void
function Vector:Div(divisor) end

--- (client/server) Returns the [dot product](https://en.wikipedia.org/wiki/Dot_product#Geometric_definition)  of this vector and the passed one.The dot product of two vectors is the product of their magnitudes (lengths), and the cosine of the angle between them:**a · b** = |**a**| |**b**| cos(θ) where **a** and **b** are vectors.See [Vector:Length](https://wiki.facepunch.com/gmod/Vector:Length) for obtaining magnitudes.A dot product returns just the cosine of the angle if both vectors are normalized, and zero if the vectors are at right angles to each other. 
--- [https://wiki.facepunch.com/gmod/Vector:Dot]
--- @param otherVector Vector @ The vector to calculate the dot product with
--- @return number
function Vector:Dot(otherVector) end

--- (client/server) Returns the dot product of the two vectors. 
--- [https://wiki.facepunch.com/gmod/Vector:DotProduct]
--- @param Vector Vector @ The other vector.
--- @return number
function Vector:DotProduct(Vector) end

--- (client/server) Returns a normalized version of the vector. This is a alias of [Vector:GetNormalized](https://wiki.facepunch.com/gmod/Vector:GetNormalized). 
--- [https://wiki.facepunch.com/gmod/Vector:GetNormal]
--- @return Vector
function Vector:GetNormal() end

--- (client/server) Returns a normalized version of the vector. Normalized means vector with same direction but with length of 1.This does not affect the vector you call it on; to do this, use [Vector:Normalize](https://wiki.facepunch.com/gmod/Vector:Normalize). 
--- [https://wiki.facepunch.com/gmod/Vector:GetNormalized]
--- @return Vector
function Vector:GetNormalized() end

--- (client/server) Returns if the vector is equal to another vector with the given tolerance. 
--- [https://wiki.facepunch.com/gmod/Vector:IsEqualTol]
--- @param compare Vector @ The vector to compare to.
--- @param tolerance number @ The tolerance range.
--- @return boolean
function Vector:IsEqualTol(compare, tolerance) end

--- (client/server) Checks whenever all fields of the vector are 0. 
--- [https://wiki.facepunch.com/gmod/Vector:IsZero]
--- @return boolean
function Vector:IsZero() end

--- (client/server) Returns the [Euclidean length](https://en.wikipedia.org/wiki/Euclidean_vector#Length) of the vector: √(x² + y² + z²). 
--- [https://wiki.facepunch.com/gmod/Vector:Length]
--- @return number
function Vector:Length() end

--- (client/server) Returns the length of the vector in two dimensions, without the Z axis. 
--- [https://wiki.facepunch.com/gmod/Vector:Length2D]
--- @return number
function Vector:Length2D() end

--- (client/server) Returns the squared length of the vectors x and y value, x² + y².This is faster than [Vector:Length2D](https://wiki.facepunch.com/gmod/Vector:Length2D) as calculating the square root is an expensive process. 
--- [https://wiki.facepunch.com/gmod/Vector:Length2DSqr]
--- @return number
function Vector:Length2DSqr() end

--- (client/server) Returns the squared length of the vector, x² + y² + z².This is faster than [Vector:Length](https://wiki.facepunch.com/gmod/Vector:Length) as calculating the square root is an expensive process. 
--- [https://wiki.facepunch.com/gmod/Vector:LengthSqr]
--- @return number
function Vector:LengthSqr() end

--- (client/server) Scales the vector by the given number (that means x, y and z are multiplied by that value) or Vector. 
--- [https://wiki.facepunch.com/gmod/Vector:Mul]
--- @param multiplier number @ The value to scale the vector with.
--- @return void
function Vector:Mul(multiplier) end

--- (client/server) Normalizes the given vector. This changes the vector you call it on, if you want to return a normalized copy without affecting the original, use [Vector:GetNormalized](https://wiki.facepunch.com/gmod/Vector:GetNormalized). 
--- [https://wiki.facepunch.com/gmod/Vector:Normalize]
--- @return void
function Vector:Normalize() end

--- (client/server) Rotates a vector by the given angle.Doesn't return anything, but rather changes the original vector. 
--- [https://wiki.facepunch.com/gmod/Vector:Rotate]
--- @param rotation Angle @ The angle to rotate the vector by.
--- @return void
function Vector:Rotate(rotation) end

--- (client/server) Copies the values from the second vector to the first vector. 
--- [https://wiki.facepunch.com/gmod/Vector:Set]
--- @param vector Vector @ The vector to copy from.
--- @return void
function Vector:Set(vector) end

--- (client/server) Sets the x, y, and z of the vector. 
--- [https://wiki.facepunch.com/gmod/Vector:SetUnpacked]
--- @param x number @ The x component
--- @param y number @ The y component
--- @param z number @ The z component
--- @return void
function Vector:SetUnpacked(x, y, z) end

--- (client/server) Substracts the values of the second vector from the orignal vector, this function can be used to avoid garbage collection. 
--- [https://wiki.facepunch.com/gmod/Vector:Sub]
--- @param vector Vector @ The other vector.
--- @return void
function Vector:Sub(vector) end

--- (client/server) Translates the [Vector](https://wiki.facepunch.com/gmod/Vector) (values ranging from 0 to 1) into a [Color](https://wiki.facepunch.com/gmod/Color). This will also range the values from 0 - 1 to 0 - 255.x * 255 -> ry * 255 -> gz * 255 -> bThis is the opposite of [Color:ToVector](https://wiki.facepunch.com/gmod/Color:ToVector) 
--- [https://wiki.facepunch.com/gmod/Vector:ToColor]
--- @return table
function Vector:ToColor() end

--- (client) Returns where on the screen the specified position vector would appear. A related function is [gui.ScreenToVector](https://wiki.facepunch.com/gmod/gui.ScreenToVector), which converts a 2D coordinate to a 3D direction. 
--- [https://wiki.facepunch.com/gmod/Vector:ToScreen]
--- @return table
function Vector:ToScreen() end

--- (client/server) Returns the vector as a table with three elements. 
--- [https://wiki.facepunch.com/gmod/Vector:ToTable]
--- @return table
function Vector:ToTable() end

--- (client/server) Returns the x, y, and z of the vector. 
--- [https://wiki.facepunch.com/gmod/Vector:Unpack]
--- @return number|number|number
function Vector:Unpack() end

--- (client/server) Returns whenever the given vector is in a box created by the 2 other vectors. 
--- [https://wiki.facepunch.com/gmod/Vector:WithinAABox]
--- @param boxStart Vector @ The first vector.
--- @param boxEnd Vector @ The second vector.
--- @return boolean
function Vector:WithinAABox(boxStart, boxEnd) end

--- (client/server) Sets x, y and z to 0. 
--- [https://wiki.facepunch.com/gmod/Vector:Zero]
--- @return void
function Vector:Zero() end

