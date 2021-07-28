--- @class DTree : DScrollPanel
DTree = {}

--- (client) Add a node to the DTree 
--- [https://wiki.facepunch.com/gmod/DTree:AddNode]
--- @param name string @ Name of the option.
--- @param icon string @ The icon that will show nexto the node in the DTree.
--- @return Panel
function DTree:AddNode(name, icon) end

--- (client) Calls directly to [Panel:InvalidateLayout](https://wiki.facepunch.com/gmod/Panel:InvalidateLayout).
--- Called by [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node)s when a sub element has been expanded or collapsed.
--- Used as a placeholder function alongside [DTree:ExpandTo](https://wiki.facepunch.com/gmod/DTree:ExpandTo), [DTree:SetExpanded](https://wiki.facepunch.com/gmod/DTree:SetExpanded) and [DTree:MoveChildTo](https://wiki.facepunch.com/gmod/DTree:MoveChildTo).
--- The [DTree](https://wiki.facepunch.com/gmod/DTree) acts a root node and methods with the same name in [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) call to the parent. 
--- [https://wiki.facepunch.com/gmod/DTree:ChildExpanded]
--- @param bExpand boolean @ No description provided
--- @return void
function DTree:ChildExpanded(bExpand) end

--- (client) Called when the any node is clicked. Called by [DTree_Node:DoClick](https://wiki.facepunch.com/gmod/DTree_Node:DoClick). 
--- [https://wiki.facepunch.com/gmod/DTree:DoClick]
--- @return void
function DTree:DoClick() end

--- (client) Called when the any node is right clicked. Called by [DTree_Node:DoRightClick](https://wiki.facepunch.com/gmod/DTree_Node:DoRightClick). 
--- [https://wiki.facepunch.com/gmod/DTree:DoRightClick]
--- @param node DTree_Node @ The right clicked node.
--- @return void
function DTree:DoRightClick(node) end

--- (client) Does nothing. Used as a placeholder empty function alongside [DTree:MoveChildTo](https://wiki.facepunch.com/gmod/DTree:MoveChildTo), [DTree:SetExpanded](https://wiki.facepunch.com/gmod/DTree:SetExpanded) and [DTree:ChildExpanded](https://wiki.facepunch.com/gmod/DTree:ChildExpanded).
--- The [DTree](https://wiki.facepunch.com/gmod/DTree) acts a root node and methods with the same name in [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) call to the parent. 
--- [https://wiki.facepunch.com/gmod/DTree:ExpandTo]
--- @param bExpand boolean @ No description provided
--- @return void
function DTree:ExpandTo(bExpand) end

--- (client) Returns the status of [DTree:SetClickOnDragHover](https://wiki.facepunch.com/gmod/DTree:SetClickOnDragHover). See that for more info. 
--- [https://wiki.facepunch.com/gmod/DTree:GetClickOnDragHover]
--- @return boolean
function DTree:GetClickOnDragHover() end

--- (client) Returns the indentation size of the [DTree](https://wiki.facepunch.com/gmod/DTree), the distance between each "level" of the tree is offset on the left from the previous level.
--- Currently this feature has no effect on the [DTree](https://wiki.facepunch.com/gmod/DTree) element. 
--- [https://wiki.facepunch.com/gmod/DTree:GetIndentSize]
--- @return number
function DTree:GetIndentSize() end

--- (client) Returns the height of each [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) in the tree. 
--- [https://wiki.facepunch.com/gmod/DTree:GetLineHeight]
--- @return number
function DTree:GetLineHeight() end

--- (client) Returns the currently selected node. 
--- [https://wiki.facepunch.com/gmod/DTree:GetSelectedItem]
--- @return Panel
function DTree:GetSelectedItem() end

--- (client) Returns whether or not the [Silkicons](https://wiki.facepunch.com/gmod/Silkicons) next to each node of the DTree will be displayed.
--- Individual icons can be set with [DTree_Node:SetIcon](https://wiki.facepunch.com/gmod/DTree_Node:SetIcon) or passed as the second argument in [DTree:AddNode](https://wiki.facepunch.com/gmod/DTree:AddNode). 
--- [https://wiki.facepunch.com/gmod/DTree:GetShowIcons]
--- @return boolean
function DTree:GetShowIcons() end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DTree:LayoutTree]
--- @return void
function DTree:LayoutTree() end

--- (client) Moves given node to the top of [DTree](https://wiki.facepunch.com/gmod/DTree)s children. (Makes it the topmost mode)
--- Used as a placeholder function alongside [DTree:ExpandTo](https://wiki.facepunch.com/gmod/DTree:ExpandTo), [DTree:SetExpanded](https://wiki.facepunch.com/gmod/DTree:SetExpanded) and [DTree:ChildExpanded](https://wiki.facepunch.com/gmod/DTree:ChildExpanded).
--- The [DTree](https://wiki.facepunch.com/gmod/DTree) acts a root node and methods with the same name in [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) call to the parent. 
--- [https://wiki.facepunch.com/gmod/DTree:MoveChildTo]
--- @param child Panel @ The node to move
--- @param pos number @ Unused, does nothing.
--- @return void
function DTree:MoveChildTo(child, pos) end

--- (client) This function is called when a node within a tree is selected. 
--- [https://wiki.facepunch.com/gmod/DTree:OnNodeSelected]
--- @param node Panel @ The node that was selected.
--- @return void
function DTree:OnNodeSelected(node) end

--- (client) Returns the root [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node), the node that is the parent to all other nodes of the DTree. 
--- [https://wiki.facepunch.com/gmod/DTree:Root]
--- @return Panel
function DTree:Root() end

--- (client) Enables the "click when drag-hovering" functionality.
--- If enabled, when hovering over any [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) of this [DTree](https://wiki.facepunch.com/gmod/DTree) while dragging a panel, the node will be automatically clicked on (and subsequently [DTree:OnNodeSelected](https://wiki.facepunch.com/gmod/DTree:OnNodeSelected) will be called) to open any attached panels, such as spawnlists in spawnmenu.
--- See also: [PANEL:DragHoverClick](https://wiki.facepunch.com/gmod/PANEL:DragHoverClick). 
--- [https://wiki.facepunch.com/gmod/DTree:SetClickOnDragHover]
--- @param enable boolean @ No description provided
--- @return void
function DTree:SetClickOnDragHover(enable) end

--- (client) Does nothing. Is not called by the [DTree](https://wiki.facepunch.com/gmod/DTree) itself.
--- Used as a placeholder empty function alongside [DTree:ExpandTo](https://wiki.facepunch.com/gmod/DTree:ExpandTo), [DTree:MoveChildTo](https://wiki.facepunch.com/gmod/DTree:MoveChildTo) and [DTree:ChildExpanded](https://wiki.facepunch.com/gmod/DTree:ChildExpanded) to prevent errors when [DTree_Node:SetExpanded](https://wiki.facepunch.com/gmod/DTree_Node:SetExpanded) is incorrectly used on a [DTree](https://wiki.facepunch.com/gmod/DTree). 
--- [https://wiki.facepunch.com/gmod/DTree:SetExpanded]
--- @param bExpand boolean @ No description provided
--- @return void
function DTree:SetExpanded(bExpand) end

--- (client) Sets the indentation size of the [DTree](https://wiki.facepunch.com/gmod/DTree), the distance between each "level" of the tree is offset on the left from the previous level.
--- Currently this feature has no effect on the [DTree](https://wiki.facepunch.com/gmod/DTree) element. 
--- [https://wiki.facepunch.com/gmod/DTree:SetIndentSize]
--- @param size number @ The new indentation size.
--- @return void
function DTree:SetIndentSize(size) end

--- (client) Sets the height of each [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) in the tree.
--- The default value is 17. 
--- [https://wiki.facepunch.com/gmod/DTree:SetLineHeight]
--- @param h number @ The height to set.
--- @return void
function DTree:SetLineHeight(h) end

--- (client) Set the currently selected top-level node. 
--- [https://wiki.facepunch.com/gmod/DTree:SetSelectedItem]
--- @param node Panel @ [DTree_Node](https://wiki.facepunch.com/gmod/DTree_Node) to select.
--- @return void
function DTree:SetSelectedItem(node) end

--- (client) Sets whether or not the [Silkicons](https://wiki.facepunch.com/gmod/Silkicons) next to each node of the DTree will be displayed.
--- Individual icons can be set with [DTree_Node:SetIcon](https://wiki.facepunch.com/gmod/DTree_Node:SetIcon) or passed as the second argument in [DTree:AddNode](https://wiki.facepunch.com/gmod/DTree:AddNode). 
--- [https://wiki.facepunch.com/gmod/DTree:SetShowIcons]
--- @param show boolean @ Whether or not to show icons.
--- @return void
function DTree:SetShowIcons(show) end

--- (client) Returns whether or not the [Silkicons](https://wiki.facepunch.com/gmod/Silkicons) next to each node of the DTree will be displayed.
--- Alias of [DTree:GetShowIcons](https://wiki.facepunch.com/gmod/DTree:GetShowIcons). 
--- [https://wiki.facepunch.com/gmod/DTree:ShowIcons]
--- @return boolean
function DTree:ShowIcons() end

