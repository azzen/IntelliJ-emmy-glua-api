--- @class resource
resource = {}

--- (server) Adds the specified and all related files to the files the client should download.
--- For convenience, this function will automatically add any other files that are related to the selected one, and throw an error if it can't find them. For example, a `.vmt` file will automatically add the `.vtf` with the same name, and a `.mdl` file will automatically add all `.vvd`, `.ani`, `.dx80.vtx`, `.dx90.vtx`, `.sw.vtx`, `.phy` and `.jpg` files with the same name, with a separate error for each missing file.
--- If you do not want it to do this, use [resource.AddSingleFile](https://wiki.facepunch.com/gmod/resource.AddSingleFile). 
--- [https://wiki.facepunch.com/gmod/resource.AddFile]
--- @param path string @ Virtual path of the file to be added, relative to `garrysmod/`. Do not add `.bz2` to the filepath. Do not put `gamemodes/gamemodename/content/` or `addons/addonname/` into the path.
--- @return void
function resource.AddFile(path) end

--- (server) Adds the specified file to the files the client should download.
--- If you wish to add textures or models, consider using [resource.AddFile](https://wiki.facepunch.com/gmod/resource.AddFile) to add all the files required for a texture/model. 
--- [https://wiki.facepunch.com/gmod/resource.AddSingleFile]
--- @param path string @ Path of the file to be added, relative to garrysmod/
--- @return void
function resource.AddSingleFile(path) end

--- (server) Adds a workshop addon for the client to download before entering the server.
--- Having the raw files from a workshop item does not count as having already downloaded it.
--- So players who previously downloaded a map through Fast Download will have to re-download it if you use the workshop.
--- You should try to only add addons that have custom content ( models, sounds, etc ).
--- Gamemodes that are [workshop enabled](https://wiki.facepunch.com/gmod/Gamemode_Creation#Gamemode_Text_File) are automatically added to this list - so there's no need to add them.
--- 
--- The server's current map is also automatically added, if it is loaded from a workshop addon. 
--- [https://wiki.facepunch.com/gmod/resource.AddWorkshop]
--- @param workshopid string @ The workshop id of the file. This cannot be a collection.
--- @return void
function resource.AddWorkshop(workshopid) end

