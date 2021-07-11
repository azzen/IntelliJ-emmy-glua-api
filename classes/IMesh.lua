--- @class IMesh
IMesh = {}

--- (client) Builds the mesh from a table mesh vertexes.See [Mesh](https://wiki.facepunch.com/gmod/Global.Mesh) and [util.GetModelMeshes](https://wiki.facepunch.com/gmod/util.GetModelMeshes) for examples. 
--- [https://wiki.facepunch.com/gmod/IMesh:BuildFromTriangles]
--- @param vertexes table @ A table consisting of [MeshVertex](https://wiki.facepunch.com/gmod/Structures/MeshVertex)s.
--- @return void
function IMesh:BuildFromTriangles(vertexes) end

--- (client) Deletes the mesh and frees the memory used by it. 
--- [https://wiki.facepunch.com/gmod/IMesh:Destroy]
--- @return void
function IMesh:Destroy() end

--- (client) Renders the mesh with the active matrix. 
--- [https://wiki.facepunch.com/gmod/IMesh:Draw]
--- @return void
function IMesh:Draw() end

--- (client) Returns whether this [IMesh](https://wiki.facepunch.com/gmod/IMesh) is valid or not. 
--- [https://wiki.facepunch.com/gmod/IMesh:IsValid]
--- @return boolean
function IMesh:IsValid() end

