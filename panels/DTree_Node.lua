--- @class DTree_Node
DTree_Node = {}

--- (client) A helper function that adds a new node and calls to [DTree_Node:MakeFolder](https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder) on it. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:AddFolder]
--- @param name string @ The name of the new node
--- @param folder string @ The folder in the filesystem to use, relative to the garrysmod/ folder.
--- @param path string @ The path to search in. See [File Search Paths](https://wiki.facepunch.com/gmod/File%20Search%20Paths)
--- @param showFiles boolean @ Should files be added as nodes (true) or folders only (false)
--- @param wildcard string @ The wildcard to use when searching for files.
--- @param bDontForceExpandable boolean @ No description provided
--- @return Panel
function DTree_Node:AddFolder(name, folder, path, showFiles, wildcard, bDontForceExpandable) end

--- (client) Add a child node to the DTree_Node 
--- [https://wiki.facepunch.com/gmod/DTree_Node:AddNode]
--- @param name string @ Name of the node.
--- @param icon string @ The icon that will show next to the node in the DTree.
--- @return Panel
function DTree_Node:AddNode(name, icon) end

--- (client) Adds the given panel to the child nodes list, a [DListLayout](https://wiki.facepunch.com/gmod/DListLayout). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:AddPanel]
--- @param pnl Panel @ The panel to add.
--- @return void
function DTree_Node:AddPanel(pnl) end

--- (client) Internal function that handles the expand/collapse animations. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:AnimSlide]
--- @param anim table @ No description provided
--- @param delta number @ No description provided
--- @param data table @ No description provided
--- @return void
function DTree_Node:AnimSlide(anim, delta, data) end

--- (client) Called when a child node is expanded or collapsed to propagate this event to parent nodes to update layout. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:ChildExpanded]
--- @param expanded boolean @ No description provided
--- @return void
function DTree_Node:ChildExpanded(expanded) end

--- (client) Cleans up the internal table of items (sub-nodes) of this node from invalid panels or sub-nodes that were moved from this node to another.
--- Appears the be completely unused by the game on its own. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:CleanList]
--- @return void
function DTree_Node:CleanList() end

--- (client) Create and returns a copy of this node, including all the sub-nodes. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:Copy]
--- @return Panel
function DTree_Node:Copy() end

--- (client) Creates the container [DListLayout](https://wiki.facepunch.com/gmod/DListLayout) for the [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node)s.
--- This is called automatically so you don't have to. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:CreateChildNodes]
--- @return void
function DTree_Node:CreateChildNodes() end

--- (client) Called automatically to update the status of [DTree_Node:GetLastChild](https://wiki.facepunch.com/gmod/DTree_Node:GetLastChild) on children of this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:DoChildrenOrder]
--- @return void
function DTree_Node:DoChildrenOrder() end

--- (client) Called when the node is clicked.
--- See also [DTree_Node:DoRightClick](https://wiki.facepunch.com/gmod/DTree_Node:DoRightClick). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:DoClick]
--- @return boolean
function DTree_Node:DoClick() end

--- (client) Called when the node is right clicked.
--- See also [DTree_Node:DoClick](https://wiki.facepunch.com/gmod/DTree_Node:DoClick). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:DoRightClick]
--- @return boolean
function DTree_Node:DoRightClick() end

--- (client) Expands or collapses this node, as well as ALL child nodes of this node.
--- Works opposite of [DTree_Node:ExpandTo](https://wiki.facepunch.com/gmod/DTree_Node:ExpandTo). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:ExpandRecurse]
--- @param expand boolean @ Whether to expand (true) or collapse (false)
--- @return void
function DTree_Node:ExpandRecurse(expand) end

--- (client) Collapses or expands all nodes from the topmost-level node to this one.
--- Works opposite of [DTree_Node:ExpandRecurse](https://wiki.facepunch.com/gmod/DTree_Node:ExpandRecurse). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:ExpandTo]
--- @param expand boolean @ Whether to expand (true) or collapse (false)
--- @return void
function DTree_Node:ExpandTo(expand) end

--- (client) Called automatically from [DTree_Node:PopulateChildrenAndSelf](https://wiki.facepunch.com/gmod/DTree_Node:PopulateChildrenAndSelf) and [DTree_Node:PopulateChildren](https://wiki.facepunch.com/gmod/DTree_Node:PopulateChildren) to populate this node with child nodes of files and folders. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:FilePopulate]
--- @param bAndChildren boolean @ Does nothing. Set to true if called from [DTree_Node:PopulateChildren](https://wiki.facepunch.com/gmod/DTree_Node:PopulateChildren).
--- @param bExpand boolean @ Expand self once population process is finished.
--- @return void
function DTree_Node:FilePopulate(bAndChildren, bExpand) end

--- (client) Called automatically from [DTree_Node:FilePopulate](https://wiki.facepunch.com/gmod/DTree_Node:FilePopulate) to actually fill the node with sub-nodes based on set preferences like should files be added, etc. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:FilePopulateCallback]
--- @param files table @ A list of files in this folder
--- @param folders table @ A list of folder in this folder.
--- @param foldername string @ The folder name/path this node represents
--- @param path string @ The Path ID search was performed with. See [File Search Paths](https://wiki.facepunch.com/gmod/File%20Search%20Paths)
--- @param bAndChildren boolean @ Inherited from the FilePopulate call. Does nothing
--- @param wildcard string @ The wildcard that was given
--- @return void
function DTree_Node:FilePopulateCallback(files, folders, foldername, path, bAndChildren, wildcard) end

--- (client) Returns n-th child node.
--- Basically an alias of [Panel:GetChild](https://wiki.facepunch.com/gmod/Panel:GetChild). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetChildNode]
--- @param num number @ The number of the child to get, starting with 0
--- @return Panel
function DTree_Node:GetChildNode(num) end

--- (client) Returns the number of child nodes this node has. For use with [DTree_Node:GetChildNode](https://wiki.facepunch.com/gmod/DTree_Node:GetChildNode) 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetChildNodeCount]
--- @return number
function DTree_Node:GetChildNodeCount() end

--- (client) Returns a table containing all child nodes of this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetChildNodes]
--- @return table
function DTree_Node:GetChildNodes() end

--- (client) Returns value set by [DTree_Node:SetDirty](https://wiki.facepunch.com/gmod/DTree_Node:SetDirty). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetDirty]
--- @return boolean
function DTree_Node:GetDirty() end

--- (client) Returns whether the double clock to collapse/expand functionality is enabled on this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetDoubleClickToOpen]
--- @return boolean
function DTree_Node:GetDoubleClickToOpen() end

--- (client) Returns what is set by [DTree_Node:SetDraggableName](https://wiki.facepunch.com/gmod/DTree_Node:SetDraggableName). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetDraggableName]
--- @return string
function DTree_Node:GetDraggableName() end

--- (client) Returns whether or not this node is drawing lines 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetDrawLines]
--- @return boolean
function DTree_Node:GetDrawLines() end

--- (client) Returns whether the node is expanded or not. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetExpanded]
--- @return boolean
function DTree_Node:GetExpanded() end

--- (client) Returns the filepath of the file attached to this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetFileName]
--- @return string
function DTree_Node:GetFileName() end

--- (client) Returns the folder path to search in, set by [DTree_Node:MakeFolder](https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetFolder]
--- @return string
function DTree_Node:GetFolder() end

--- (client) Returns whether the expand/collapse button is shown on this node regardless of whether or not it has sub-nodes.
--- See also [DTree_Node:SetForceShowExpander](https://wiki.facepunch.com/gmod/DTree_Node:SetForceShowExpander). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetForceShowExpander]
--- @return boolean
function DTree_Node:GetForceShowExpander() end

--- (client) Returns whether the expand button (little + button) should be shown or hidden. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetHideExpander]
--- @return boolean
function DTree_Node:GetHideExpander() end

--- (client) Returns the image path to the icon of this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetIcon]
--- @return string
function DTree_Node:GetIcon() end

--- (client) Returns the indentation level of the [DTree](https://wiki.facepunch.com/gmod/DTree) this node belongs to.
--- Alias of [DTree:GetIndentSize](https://wiki.facepunch.com/gmod/DTree:GetIndentSize), see it for more info. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetIndentSize]
--- @return number
function DTree_Node:GetIndentSize() end

--- (client) Returns whether this node is the last child on this level or not. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetLastChild]
--- @return boolean
function DTree_Node:GetLastChild() end

--- (client) The height of a single [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) of the [DTree](https://wiki.facepunch.com/gmod/DTree) this node belongs to.
--- Alias of [DTree:GetLineHeight](https://wiki.facepunch.com/gmod/DTree:GetLineHeight). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetLineHeight]
--- @return number
function DTree_Node:GetLineHeight() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetNeedsChildSearch]
--- @return boolean
function DTree_Node:GetNeedsChildSearch() end

--- (client) Returns whether or not the node is set to be populated from the filesystem. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetNeedsPopulating]
--- @return boolean
function DTree_Node:GetNeedsPopulating() end

--- (client) Returns the parent [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node). Note that [Panel:GetParent](https://wiki.facepunch.com/gmod/Panel:GetParent) will not be the same! 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetParentNode]
--- @return Panel
function DTree_Node:GetParentNode() end

--- (client) Returns the path ID ([File Search Paths](https://wiki.facepunch.com/gmod/File%20Search%20Paths)) used in populating the [DTree](https://wiki.facepunch.com/gmod/DTree) from the filesystem.
--- See [DTree_Node:SetPathID](https://wiki.facepunch.com/gmod/DTree_Node:SetPathID) and [DTree_Node:MakeFolder](https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetPathID]
--- @return string
function DTree_Node:GetPathID() end

--- (client) Returns the root node, the [DTree](https://wiki.facepunch.com/gmod/DTree) this node is under.
--- See also [DTree_Node:GetParentNode](https://wiki.facepunch.com/gmod/DTree_Node:GetParentNode). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetRoot]
--- @return Panel
function DTree_Node:GetRoot() end

--- (client) Returns whether or not nodes for files should/will be added when populating the node from filesystem. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetShowFiles]
--- @return boolean
function DTree_Node:GetShowFiles() end

--- (client) Returns the wildcard set by [DTree_Node:MakeFolder](https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:GetWildCard]
--- @return string
function DTree_Node:GetWildCard() end

--- (client) Inserts a sub-node into this node before or after the given node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:Insert]
--- @param node Panel @ The [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) to insert.
--- @param nodeNextTo Panel @ The node to insert the node above before or after.
--- @param before boolean @ true to insert before, false to insert after.
--- @return void
function DTree_Node:Insert(node, nodeNextTo, before) end

--- (client) Inserts an existing node as a "child" or a sub-node of this node.
--- Used internally by the drag'n'drop functionality. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:InsertNode]
--- @param node Panel @ Has to be [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node)
--- @return void
function DTree_Node:InsertNode(node) end

--- (client) Called automatically internally.
--- Makes the target node compatible with this node's drag'n'drop. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:InstallDraggable]
--- @param node Panel @ The [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node).
--- @return void
function DTree_Node:InstallDraggable(node) end

--- (client) See [DTree_Node:DoClick](https://wiki.facepunch.com/gmod/DTree_Node:DoClick) 
--- [https://wiki.facepunch.com/gmod/DTree_Node:InternalDoClick]
--- @return void
function DTree_Node:InternalDoClick() end

--- (client) See [DTree_Node:DoRightClick](https://wiki.facepunch.com/gmod/DTree_Node:DoRightClick). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:InternalDoRightClick]
--- @return void
function DTree_Node:InternalDoRightClick() end

--- (client) Returns true if [DTree_Node:GetRoot](https://wiki.facepunch.com/gmod/DTree_Node:GetRoot) is the same as [DTree_Node:GetParentNode](https://wiki.facepunch.com/gmod/DTree_Node:GetParentNode) of this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:IsRootNode]
--- @return boolean
function DTree_Node:IsRootNode() end

--- (client) Removes given node as a sub-node of this node.
--- It doesn't actually remove or unparent the panel, just removes it from the internal [DListView](https://wiki.facepunch.com/gmod/DListView). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:LeaveTree]
--- @param pnl Panel @ The node to remove
--- @return void
function DTree_Node:LeaveTree(pnl) end

--- (client) Makes this node a folder in the filesystem. This will make it automatically populated.
--- See also [DTree_Node:AddFolder](https://wiki.facepunch.com/gmod/DTree_Node:AddFolder). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder]
--- @param folder string @ The folder in the filesystem to use, relative to the garrysmod/ folder.
--- @param path string @ The path to search in. See [File Search Paths](https://wiki.facepunch.com/gmod/File%20Search%20Paths)
--- @param showFiles boolean @ Should files be added as nodes (true) or folders only (false)
--- @param wildcard string @ The wildcard to use when searching for files.
--- @param dontForceExpandable boolean @ If set to true, don't show the expand buttons on empty nodes.
--- @return void
function DTree_Node:MakeFolder(folder, path, showFiles, wildcard, dontForceExpandable) end

--- (client) Moves given panel to the top of the children of this node.
--- Despite name of this function, it cannot move the children to any position but the topmost. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:MoveChildTo]
--- @param node Panel @ The node to move.
--- @return void
function DTree_Node:MoveChildTo(node) end

--- (client) Moves this node to the top of the level. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:MoveToTop]
--- @return void
function DTree_Node:MoveToTop() end

--- (client) Called when sub-nodes of this [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) were changed, such as being rearranged if that functionality is enabled. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:OnModified]
--- @return void
function DTree_Node:OnModified() end

--- (client) Called when a new sub-node is added this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:OnNodeAdded]
--- @param newNode DTree_Node @ The newly added sub node.
--- @return void
function DTree_Node:OnNodeAdded(newNode) end

--- (client) Called when this or a sub node is selected. Do not use this, it is not for override.
--- Use [DTree:OnNodeSelected](https://wiki.facepunch.com/gmod/DTree:OnNodeSelected) or [DTree_Node:DoClick](https://wiki.facepunch.com/gmod/DTree_Node:DoClick) instead. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:OnNodeSelected]
--- @param node Panel @ No description provided
--- @return void
function DTree_Node:OnNodeSelected(node) end

--- (client) Called automatically to perform layout on this node if this node [DTree_Node:IsRootNode](https://wiki.facepunch.com/gmod/DTree_Node:IsRootNode). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:PerformRootNodeLayout]
--- @return void
function DTree_Node:PerformRootNodeLayout() end

--- (client) Called automatically from [DTree_Node:PopulateChildrenAndSelf](https://wiki.facepunch.com/gmod/DTree_Node:PopulateChildrenAndSelf). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:PopulateChildren]
--- @return void
function DTree_Node:PopulateChildren() end

--- (client) Called automatically from [DTree_Node:SetExpanded](https://wiki.facepunch.com/gmod/DTree_Node:SetExpanded) (or when user manually expands the node) to populate the node with sub-nodes from the filesystem if this was enabled via [DTree_Node:MakeFolder](https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:PopulateChildrenAndSelf]
--- @param expand boolean @ Expand self once population process is finished.
--- @return void
function DTree_Node:PopulateChildrenAndSelf(expand) end

--- (client) Appears to have no effect on the [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetDirty]
--- @param dirty boolean @ No description provided
--- @return void
function DTree_Node:SetDirty(dirty) end

--- (client) Sets whether double clicking the node should expand/collapse it or not. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetDoubleClickToOpen]
--- @param enable boolean @ true to enable, false to disable this functionality.
--- @return void
function DTree_Node:SetDoubleClickToOpen(enable) end

--- (client) Used to store name for sub elements for a [Panel:Droppable](https://wiki.facepunch.com/gmod/Panel:Droppable) call. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetDraggableName]
--- @param name string @ No description provided
--- @return void
function DTree_Node:SetDraggableName(name) end

--- (client) Sets whether or not this node should draw visual lines. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetDrawLines]
--- @param draw boolean @ No description provided
--- @return void
function DTree_Node:SetDrawLines(draw) end

--- (client) Expands or collapses this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetExpanded]
--- @param expand boolean @ Whether to expand (true) or collapse (false)
--- @param surpressAnimation boolean @ Whether to play animation (false) or not (true)
--- @return void
function DTree_Node:SetExpanded(expand, surpressAnimation) end

--- (client) Sets the file full filepath to the file attached to this node 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetFileName]
--- @param filename string @ No description provided
--- @return void
function DTree_Node:SetFileName(filename) end

--- (client) Sets the folder to search files and folders in.
--- Use [DTree_Node:MakeFolder](https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder) instead. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetFolder]
--- @param folder string @ No description provided
--- @return void
function DTree_Node:SetFolder(folder) end

--- (client) Sets whether or not the expand/collapse button (+/- button) should be shown on this node regardless of whether it has sub-elements or not. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetForceShowExpander]
--- @param forceShow boolean @ No description provided
--- @return void
function DTree_Node:SetForceShowExpander(forceShow) end

--- (client) Sets whether the expand button (little + button) should be shown or hidden. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetHideExpander]
--- @param hide boolean @ No description provided
--- @return void
function DTree_Node:SetHideExpander(hide) end

--- (client) Sets the material for the icon of the [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node). 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetIcon]
--- @param path string @ The path to the material to be used. Do not include "materials/". .pngs are supported.
--- @return void
function DTree_Node:SetIcon(path) end

--- (client) Called automatically to set whether this node is the last child on this level or not. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetLastChild]
--- @param last boolean @ No description provided
--- @return void
function DTree_Node:SetLastChild(last) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetNeedsChildSearch]
--- @param newState boolean @ No description provided
--- @return void
function DTree_Node:SetNeedsChildSearch(newState) end

--- (client) Sets whether or not the node needs populating from the filesystem. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetNeedsPopulating]
--- @param needs boolean @ Whether or not the node needs populating
--- @return void
function DTree_Node:SetNeedsPopulating(needs) end

--- (client) Sets the parent node of this node. Not the same as [Panel:SetParent](https://wiki.facepunch.com/gmod/Panel:SetParent).
--- This is set automatically, you shouldn't use this. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetParentNode]
--- @param parent Panel @ The panel to set as a parent node for this node
--- @return void
function DTree_Node:SetParentNode(parent) end

--- (client) Sets the path ID ([File Search Paths](https://wiki.facepunch.com/gmod/File%20Search%20Paths)) for populating the tree from the filesystem.
--- Use [DTree_Node:MakeFolder](https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder) instead. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetPathID]
--- @param path string @ The path ID to set.
--- @return void
function DTree_Node:SetPathID(path) end

--- (client) Sets the root node (the [DTree](https://wiki.facepunch.com/gmod/DTree)) of this node.
--- This is set automatically, you shouldn't use this. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetRoot]
--- @param root Panel @ The panel to set as root node.
--- @return void
function DTree_Node:SetRoot(root) end

--- (client) Called automatically to update the "selected" status of this node. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetSelected]
--- @param selected boolean @ Whether this node is currently selected or not.
--- @return void
function DTree_Node:SetSelected(selected) end

--- (client) Sets whether or not nodes for files should be added when populating the node from filesystem. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetShowFiles]
--- @param showFiles boolean @ No description provided
--- @return void
function DTree_Node:SetShowFiles(showFiles) end

--- (client) Currently does nothing, not implemented. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetupCopy]
--- @return void
function DTree_Node:SetupCopy() end

--- (client) Sets the search wildcard.
--- Use [DTree_Node:MakeFolder](https://wiki.facepunch.com/gmod/DTree_Node:MakeFolder) instead 
--- [https://wiki.facepunch.com/gmod/DTree_Node:SetWildCard]
--- @param wildcard string @ The wildcard to set
--- @return void
function DTree_Node:SetWildCard(wildcard) end

--- (client) Returns whether or not the [DTree](https://wiki.facepunch.com/gmod/DTree) this node is in has icons enabled.
--- See [DTree:ShowIcons](https://wiki.facepunch.com/gmod/DTree:ShowIcons) for more info. 
--- [https://wiki.facepunch.com/gmod/DTree_Node:ShowIcons]
--- @return number
function DTree_Node:ShowIcons() end

