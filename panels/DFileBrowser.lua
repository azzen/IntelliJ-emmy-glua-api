--- @class DFileBrowser : DPanel
DFileBrowser = {}

--- (client) Clears the file tree and list, and resets all values. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:Clear]
--- @return void
function DFileBrowser:Clear() end

--- (client) Returns the root directory/folder of the file tree. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetBaseFolder]
--- @return string
function DFileBrowser:GetBaseFolder() end

--- (client) Returns the current directory/folder being displayed. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetCurrentFolder]
--- @return string
function DFileBrowser:GetCurrentFolder() end

--- (client) Returns the current file type filter on the file list. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetFileTypes]
--- @return string
function DFileBrowser:GetFileTypes() end

--- (client) Returns the [DTree Node](https://wiki.facepunch.com/gmod/DTree%20Node) that the file tree stems from.
--- This is a child of the root node of the [DTree](https://wiki.facepunch.com/gmod/DTree). 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetFolderNode]
--- @return Panel
function DFileBrowser:GetFolderNode() end

--- (client) Returns whether or not the model viewer mode is enabled. In this mode, files are displayed as [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon)s instead of a list. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetModels]
--- @return boolean
function DFileBrowser:GetModels() end

--- (client) Returns the name being used for the file tree. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetName]
--- @return string
function DFileBrowser:GetName() end

--- (client) Returns whether or not the file tree is open. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetOpen]
--- @return boolean
function DFileBrowser:GetOpen() end

--- (client) Returns the access path of the file tree. This is `GAME` unless changed with [DFileBrowser:SetPath](https://wiki.facepunch.com/gmod/DFileBrowser:SetPath).
--- See [file.Read](https://wiki.facepunch.com/gmod/file.Read) for how paths work. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetPath]
--- @return string
function DFileBrowser:GetPath() end

--- (client) Returns the current search filter on the file tree. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:GetSearch]
--- @return string
function DFileBrowser:GetSearch() end

--- (client) Called when a file is double-clicked. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:OnDoubleClick]
--- @param filePath string @ The path to the file that was double-clicked.
--- @param selectedPanel Panel @ The panel that was double-clicked to select this file.This will either be a [DListView_Line](https://wiki.facepunch.com/gmod/DListView_Line) or [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon) depending on whether the model viewer mode is enabled. See [DFileBrowser:SetModels](https://wiki.facepunch.com/gmod/DFileBrowser:SetModels).
--- @return void
function DFileBrowser:OnDoubleClick(filePath, selectedPanel) end

--- (client) Called when a file is right-clicked. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:OnRightClick]
--- @param filePath string @ The path to the file that was right-clicked.
--- @param selectedPanel Panel @ The panel that was right-clicked to select this file. This will either be a [DListView_Line](https://wiki.facepunch.com/gmod/DListView_Line) or [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon) depending on whether the model viewer mode is enabled. See [DFileBrowser:SetModels](https://wiki.facepunch.com/gmod/DFileBrowser:SetModels).
--- @return void
function DFileBrowser:OnRightClick(filePath, selectedPanel) end

--- (client) Called when a file is selected. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:OnSelect]
--- @param filePath string @ The path to the file that was selected.
--- @param selectedPanel Panel @ The panel that was clicked to select this file.This will either be a [DListView_Line](https://wiki.facepunch.com/gmod/DListView_Line) or [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon) depending on whether the model viewer mode is enabled. See [DFileBrowser:SetModels](https://wiki.facepunch.com/gmod/DFileBrowser:SetModels).
--- @return void
function DFileBrowser:OnSelect(filePath, selectedPanel) end

--- (client) Sets the root directory/folder of the file tree.
--- This needs to be set for the file tree to be displayed. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetBaseFolder]
--- @param baseDir string @ The path to the folder to use as the root.
--- @return void
function DFileBrowser:SetBaseFolder(baseDir) end

--- (client) Sets the directory/folder from which to display the file list. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetCurrentFolder]
--- @param currentDir string @ The directory to display files from.
--- @return void
function DFileBrowser:SetCurrentFolder(currentDir) end

--- (client) Sets the file type filter for the file list.
--- This accepts the same file extension wildcards as [file.Find](https://wiki.facepunch.com/gmod/file.Find). 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetFileTypes]
--- @param fileTypes string @ A list of file types to display, separated by spaces e.g. ``` ".lua .txt .mdl" ```
--- @return void
function DFileBrowser:SetFileTypes(fileTypes) end

--- (client) Enables or disables the model viewer mode. In this mode, files are displayed as [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon)s instead of a list. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetModels]
--- @param showModels boolean @ Whether or not to display files using [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon)s.
--- @return void
function DFileBrowser:SetModels(showModels) end

--- (client) Sets the name to use for the file tree. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetName]
--- @param treeName string @ The name for the root of the file tree. Passing no value causes this to be the base folder name. See [DFileBrowser:SetBaseFolder](https://wiki.facepunch.com/gmod/DFileBrowser:SetBaseFolder).
--- @return void
function DFileBrowser:SetName(treeName) end

--- (client) Opens or closes the file tree. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetOpen]
--- @param open boolean @ `true` to open the tree, `false` to close it.
--- @param useAnim boolean @ If `true`, the [DTree](https://wiki.facepunch.com/gmod/DTree)'s open/close animation is used.
--- @return void
function DFileBrowser:SetOpen(open, useAnim) end

--- (client) Sets the access path for the file tree. This is set to `GAME` by default.
--- See [file.Read](https://wiki.facepunch.com/gmod/file.Read) for how paths work. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetPath]
--- @param path string @ The access path i.e. "GAME", "LUA", "DATA" etc.
--- @return void
function DFileBrowser:SetPath(path) end

--- (client) Sets the search filter for the file tree.
--- This accepts the same wildcards as [file.Find](https://wiki.facepunch.com/gmod/file.Find). 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetSearch]
--- @param filter string @ The filter to use on the file tree.
--- @return void
function DFileBrowser:SetSearch(filter) end

--- (client) Called to set up the [DTree](https://wiki.facepunch.com/gmod/DTree) and file viewer when a base path has been set.
--- Calls [DFileBrowser:SetupTree](https://wiki.facepunch.com/gmod/DFileBrowser:SetupTree) and [DFileBrowser:SetupFiles](https://wiki.facepunch.com/gmod/DFileBrowser:SetupFiles). 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:Setup]
--- @return boolean
function DFileBrowser:Setup() end

--- (client) Called to set up the [DListView](https://wiki.facepunch.com/gmod/DListView) or [DIconBrowser](https://wiki.facepunch.com/gmod/DIconBrowser) by [DFileBrowser:Setup](https://wiki.facepunch.com/gmod/DFileBrowser:Setup).
--- The icon browser is used when in models mode. See [DFileBrowser:SetModels](https://wiki.facepunch.com/gmod/DFileBrowser:SetModels). 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetupFiles]
--- @return boolean
function DFileBrowser:SetupFiles() end

--- (client) Called to set up the [DTree](https://wiki.facepunch.com/gmod/DTree) by [DFileBrowser:Setup](https://wiki.facepunch.com/gmod/DFileBrowser:Setup). 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SetupTree]
--- @return boolean
function DFileBrowser:SetupTree() end

--- (client) Builds the file or icon list for the current directory.
--- You should use [DFileBrowser:SetCurrentFolder](https://wiki.facepunch.com/gmod/DFileBrowser:SetCurrentFolder) to change the directory. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:ShowFolder]
--- @param currentDir string @ The directory to populate the list from.
--- @return void
function DFileBrowser:ShowFolder(currentDir) end

--- (client) Sorts the file list. 
--- [https://wiki.facepunch.com/gmod/DFileBrowser:SortFiles]
--- @param descending boolean @ The sort order. `true` for descending (z-a), `false` for ascending (a-z).
--- @return void
function DFileBrowser:SortFiles(descending) end

