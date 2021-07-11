--- @class mesh
mesh = {}

--- (client) Pushes the new vertex data onto the render stack. 
--- [https://wiki.facepunch.com/gmod/mesh.AdvanceVertex]
--- @return void
function mesh.AdvanceVertex() end

--- (client) Starts a new dynamic mesh. If an [IMesh](https://wiki.facepunch.com/gmod/IMesh) is passed, it will use that mesh instead. 
--- [https://wiki.facepunch.com/gmod/mesh.Begin]
--- @param mesh IMesh @ Mesh to build. This argument can be removed if you wish to build a "dynamic" mesh. See examples below.
--- @param primitiveType number @ Primitive type, see [MATERIAL](https://wiki.facepunch.com/gmod/Enums/MATERIAL).
--- @param primiteCount number @ The amount of primitives.
--- @return void
function mesh.Begin(mesh, primitiveType, primiteCount) end

--- (client) Sets the color to be used for the next vertex. 
--- [https://wiki.facepunch.com/gmod/mesh.Color]
--- @param r number @ Red component.
--- @param g number @ Green component.
--- @param b number @ Blue component.
--- @param a number @ Alpha component.
--- @return void
function mesh.Color(r, g, b, a) end

--- (client) Ends the mesh and renders it. 
--- [https://wiki.facepunch.com/gmod/mesh.End]
--- @return void
function mesh.End() end

--- (client) Sets the normal to be used for the next vertex. 
--- [https://wiki.facepunch.com/gmod/mesh.Normal]
--- @param normal Vector @ The normal of the vertex.
--- @return void
function mesh.Normal(normal) end

--- (client) Sets the position to be used for the next vertex. 
--- [https://wiki.facepunch.com/gmod/mesh.Position]
--- @param position Vector @ The position of the vertex.
--- @return void
function mesh.Position(position) end

--- (client) Draws a quad using 4 vertices. 
--- [https://wiki.facepunch.com/gmod/mesh.Quad]
--- @param vertex1 Vector @ The first vertex.
--- @param vertex2 Vector @ The second vertex.
--- @param vertex3 Vector @ The third vertex.
--- @param vertex4 Vector @ The fourth vertex.
--- @return void
function mesh.Quad(vertex1, vertex2, vertex3, vertex4) end

--- (client) Draws a quad using a position, a normal and the size. 
--- [https://wiki.facepunch.com/gmod/mesh.QuadEasy]
--- @param position Vector @ The center of the quad.
--- @param normal Vector @ The normal of the quad.
--- @param sizeX number @ X size in pixels.
--- @param sizeY number @ Y size in pixels.
--- @return void
function mesh.QuadEasy(position, normal, sizeX, sizeY) end

--- (client) Sets the specular map values.
--- This function actually does nothing. 
--- [https://wiki.facepunch.com/gmod/mesh.Specular]
--- @param r number @ The red channel multiplier of the specular map.
--- @param g number @ The green channel multiplier of the specular map.
--- @param b number @ The blue channel multiplier of the specular map.
--- @param a number @ The alpha channel multiplier of the specular map.
--- @return void
function mesh.Specular(r, g, b, a) end

--- (client) Sets the s tangent to be used.
--- This function actually does nothing. 
--- [https://wiki.facepunch.com/gmod/mesh.TangentS]
--- @param sTanger Vector @ The s tangent.
--- @return void
function mesh.TangentS(sTanger) end

--- (client) Sets the T tangent to be used.
--- This function actually does nothing. 
--- [https://wiki.facepunch.com/gmod/mesh.TangentT]
--- @param tTanger Vector @ The t tangent.
--- @return void
function mesh.TangentT(tTanger) end

--- (client) Sets the texture coordinates for the next vertex.
--- Non-zero values of stage require the currently bound material to support it. For example, any LightmappedGeneric material supports stages 1 and 2 (lightmap texture coordinates). 
--- [https://wiki.facepunch.com/gmod/mesh.TexCoord]
--- @param stage number @ The stage of the texture coordinate.
--- @param u number @ U coordinate.
--- @param v number @ V coordinate.
--- @return void
function mesh.TexCoord(stage, u, v) end

--- (client) A table of four numbers. This is used by most shaders in Source to hold tangent information of the vertex ( tangentX, tangentY, tangentZ, tangentHandedness ). 
--- [https://wiki.facepunch.com/gmod/mesh.UserData]
--- @param tangentX number @ No description provided
--- @param tangentY number @ No description provided
--- @param tangentZ number @ No description provided
--- @param tangentHandedness number @ No description provided
--- @return void
function mesh.UserData(tangentX, tangentY, tangentZ, tangentHandedness) end

--- (client) Returns the amount of vertex that have yet been pushed. 
--- [https://wiki.facepunch.com/gmod/mesh.VertexCount]
--- @return number
function mesh.VertexCount() end

