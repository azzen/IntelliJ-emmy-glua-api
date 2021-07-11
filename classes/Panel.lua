--- @class Panel
Panel = {}

--- (client) Adds the specified object to the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:Add]
--- @param object Panel @ The panel to be added (parented). Can also be:  [string](https://wiki.facepunch.com/gmod/string) Class Name - creates panel with the specified name and adds it to the panel.  [table](https://wiki.facepunch.com/gmod/table) PANEL table - creates a panel from table and adds it to the panel.
--- @return Panel
function Panel:Add(object) end

--- (client) This function does nothing. 
--- [https://wiki.facepunch.com/gmod/Panel:AddText]
--- @return void
function Panel:AddText() end

--- (client) Aligns the panel on the bottom of its parent with the specified offset. 
--- [https://wiki.facepunch.com/gmod/Panel:AlignBottom]
--- @param offset number @ The align offset.
--- @return void
function Panel:AlignBottom(offset) end

--- (client) Aligns the panel on the left of its parent with the specified offset. 
--- [https://wiki.facepunch.com/gmod/Panel:AlignLeft]
--- @param offset number @ The align offset.
--- @return void
function Panel:AlignLeft(offset) end

--- (client) Aligns the panel on the right of its parent with the specified offset. 
--- [https://wiki.facepunch.com/gmod/Panel:AlignRight]
--- @param offset number @ The align offset.
--- @return void
function Panel:AlignRight(offset) end

--- (client) Aligns the panel on the top of its parent with the specified offset. 
--- [https://wiki.facepunch.com/gmod/Panel:AlignTop]
--- @param offset number @ The align offset.
--- @return void
function Panel:AlignTop(offset) end

--- (client) Uses animation to transition the current alpha value of a panel to a new alpha, over a set period of time and after a specified delay. 
--- [https://wiki.facepunch.com/gmod/Panel:AlphaTo]
--- @param alpha number @ The alpha value (0-255) to approach.
--- @param duration number @ The time in seconds it should take to reach the alpha.
--- @param delay number @ The delay before the animation starts.
--- @param callback function @ The function to be called once the animation finishes. Arguments are:  [table](https://wiki.facepunch.com/gmod/table) animData - The AnimationData that was used. See [AnimationData](https://wiki.facepunch.com/gmod/Structures/AnimationData)  [Panel](https://wiki.facepunch.com/gmod/Panel) pnl - The panel object whose alpha was changed.
--- @return void
function Panel:AlphaTo(alpha, duration, delay, callback) end

--- (client) Performs the per-frame operations required for panel animations.
--- This is called every frame by [PANEL:AnimationThink](https://wiki.facepunch.com/gmod/PANEL:AnimationThink). 
--- [https://wiki.facepunch.com/gmod/Panel:AnimationThinkInternal]
--- @return void
function Panel:AnimationThinkInternal() end

--- (client) Returns the [SysTime](https://wiki.facepunch.com/gmod/Global.SysTime) value when all animations for this panel object will end. 
--- [https://wiki.facepunch.com/gmod/Panel:AnimTail]
--- @return number
function Panel:AnimTail() end

--- (client) Appends text to a [RichText](https://wiki.facepunch.com/gmod/RichText) element. This does not automatically add a new line. 
--- [https://wiki.facepunch.com/gmod/Panel:AppendText]
--- @param txt string @ The text to append (add on).
--- @return void
function Panel:AppendText(txt) end

--- (client) Used by [Panel:LoadGWENFile](https://wiki.facepunch.com/gmod/Panel:LoadGWENFile) and [Panel:LoadGWENString](https://wiki.facepunch.com/gmod/Panel:LoadGWENString) to apply a GWEN controls table to a panel object.
--- You can do this manually using [file.Read](https://wiki.facepunch.com/gmod/file.Read) and [util.JSONToTable](https://wiki.facepunch.com/gmod/util.JSONToTable) to import and create a GWEN table structure from a `.gwen` file. This method can then be called, passing the GWEN table's `Controls` member. 
--- [https://wiki.facepunch.com/gmod/Panel:ApplyGWEN]
--- @param GWENTable table @ The GWEN controls table to apply to the panel.
--- @return void
function Panel:ApplyGWEN(GWENTable) end

--- (client) Centers the panel on its parent. 
--- [https://wiki.facepunch.com/gmod/Panel:Center]
--- @return void
function Panel:Center() end

--- (client) Centers the panel horizontally with specified fraction. 
--- [https://wiki.facepunch.com/gmod/Panel:CenterHorizontal]
--- @param fraction number @ The center fraction.
--- @return void
function Panel:CenterHorizontal(fraction) end

--- (client) Centers the panel vertically with specified fraction. 
--- [https://wiki.facepunch.com/gmod/Panel:CenterVertical]
--- @param fraction number @ The center fraction.
--- @return void
function Panel:CenterVertical(fraction) end

--- (client) Returns the amount of children of the of panel. 
--- [https://wiki.facepunch.com/gmod/Panel:ChildCount]
--- @return number
function Panel:ChildCount() end

--- (client) Returns the width and height of the space between the position of the panel (upper-left corner) and the max bound of the children panels (farthest reaching lower-right corner). 
--- [https://wiki.facepunch.com/gmod/Panel:ChildrenSize]
--- @return number|number
function Panel:ChildrenSize() end

--- (client) Marks all of the panel's children for deletion. 
--- [https://wiki.facepunch.com/gmod/Panel:Clear]
--- @return void
function Panel:Clear() end

--- (client) Fades panels color to specified one. It won't work unless panel has SetColor function. 
--- [https://wiki.facepunch.com/gmod/Panel:ColorTo]
--- @param color table @ The color to fade to
--- @param length number @ Length of the animation
--- @param delay number @ Delay before start fading
--- @param callback function @ Function to execute when finished
--- @return void
function Panel:ColorTo(color, length, delay, callback) end

--- (client) Sends an action command signal to the panel. The response is handled by [PANEL:ActionSignal](https://wiki.facepunch.com/gmod/PANEL:ActionSignal). 
--- [https://wiki.facepunch.com/gmod/Panel:Command]
--- @param command string @ The command to send to the panel.
--- @return void
function Panel:Command(command) end

--- (client) Updates a panel object's associated console variable. This must first be set up with [Derma_Install_Convar_Functions](https://wiki.facepunch.com/gmod/Global.Derma_Install_Convar_Functions), and have a ConVar set using [Panel:SetConVar](https://wiki.facepunch.com/gmod/Panel:SetConVar). 
--- [https://wiki.facepunch.com/gmod/Panel:ConVarChanged]
--- @param newValue string @ The new value to set the associated console variable to.
--- @return void
function Panel:ConVarChanged(newValue) end

--- (client) A think hook for [Panel](https://wiki.facepunch.com/gmod/Panel)s using ConVars as a value. Call it in the Think hook. Sets the panel's value should the convar change.
--- This function is best for: checkboxes, sliders, number wangs
--- For a string alternative, see [Panel:ConVarStringThink](https://wiki.facepunch.com/gmod/Panel:ConVarStringThink).
--- `Important`: Make sure your Panel has a SetValue function, else you may get errors. 
--- [https://wiki.facepunch.com/gmod/Panel:ConVarNumberThink]
--- @return void
function Panel:ConVarNumberThink() end

--- (client) A think hook for [panels](https://wiki.facepunch.com/gmod/Panel) using ConVars as a value. Call it in the Think hook. Sets the panel's value should the convar change.
--- This function is best for: text inputs, read-only inputs, dropdown selects
--- For a number alternative, see [Panel:ConVarNumberThink](https://wiki.facepunch.com/gmod/Panel:ConVarNumberThink).
--- `Important`: Make sure your Panel has a SetValue function, else you may get errors. 
--- [https://wiki.facepunch.com/gmod/Panel:ConVarStringThink]
--- @return void
function Panel:ConVarStringThink() end

--- (client) Gets the size, position and dock state of the passed panel object, and applies it to this one. 
--- [https://wiki.facepunch.com/gmod/Panel:CopyBase]
--- @param srcPanel Panel @ The panel to copy the boundary and dock settings from.
--- @return void
function Panel:CopyBase(srcPanel) end

--- (client) Copies position and size of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:CopyBounds]
--- @param base Panel @ The panel to copy size and position from.
--- @return void
function Panel:CopyBounds(base) end

--- (client) Copies the height of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:CopyHeight]
--- @param base Panel @ Panel to copy the height from.
--- @return void
function Panel:CopyHeight(base) end

--- (client) Copies the position of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:CopyPos]
--- @param base Panel @ Panel to position the width from.
--- @return void
function Panel:CopyPos(base) end

--- (client) Performs the "CONTROL + C" key combination effect ( Copy selection to clipboard ) on selected text. 
--- [https://wiki.facepunch.com/gmod/Panel:CopySelected]
--- @return void
function Panel:CopySelected() end

--- (client) Copies the width of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:CopyWidth]
--- @param base Panel @ Panel to copy the width from.
--- @return void
function Panel:CopyWidth(base) end

--- (client) Returns the cursor position relative to the top left of the panel.
--- This is equivalent to calling [gui.MousePos](https://wiki.facepunch.com/gmod/gui.MousePos) and then [Panel:ScreenToLocal](https://wiki.facepunch.com/gmod/Panel:ScreenToLocal). 
--- [https://wiki.facepunch.com/gmod/Panel:CursorPos]
--- @return number|number
function Panel:CursorPos() end

--- (client) Performs the "CONTROL + X" ( delete text and copy it to clipboard buffer ) action on selected text. 
--- [https://wiki.facepunch.com/gmod/Panel:CutSelected]
--- @return void
function Panel:CutSelected() end

--- (client) Deletes a cookie value using the panel's cookie name ( [Panel:GetCookieName](https://wiki.facepunch.com/gmod/Panel:GetCookieName) ) and the passed extension. 
--- [https://wiki.facepunch.com/gmod/Panel:DeleteCookie]
--- @param cookieName string @ The unique cookie name to delete.
--- @return void
function Panel:DeleteCookie(cookieName) end

--- (client) Resets the panel object's [Panel:SetPos](https://wiki.facepunch.com/gmod/Panel:SetPos) method and removes its animation table (`Panel.LerpAnim`). This effectively undoes the changes made by [Panel:LerpPositions](https://wiki.facepunch.com/gmod/Panel:LerpPositions).
--- In order to use Lerp animation again, you must call [Panel:Stop](https://wiki.facepunch.com/gmod/Panel:Stop) before setting its `SetPosReal` property to `nil`. See the example below. 
--- [https://wiki.facepunch.com/gmod/Panel:DisableLerp]
--- @return void
function Panel:DisableLerp() end

--- (client) Returns the linear distance from the center of this panel object and another. **Both panels must have the same parent for this function to work properly.** 
--- [https://wiki.facepunch.com/gmod/Panel:Distance]
--- @param tgtPanel Panel @ The target object with which to compare position.
--- @return number
function Panel:Distance(tgtPanel) end

--- (client) Returns the distance between the center of this panel object and a specified point **local to the parent panel**. 
--- [https://wiki.facepunch.com/gmod/Panel:DistanceFrom]
--- @param posX number @ The horizontal (x) position in pixels of the point to compare with. Local to the parent panel, or container, not the panel the function is called on.
--- @param posY number @ The vertical (y) position in pixels of the point to compare with. Local to the parent panel, or container, not the panel the function is called on.
--- @return number
function Panel:DistanceFrom(posX, posY) end

--- (client) Sets the dock type for the panel, making the panel "dock" in a certain direction, modifying it's position and size.
--- You can set the inner spacing of a panel's docking using [Panel:DockPadding](https://wiki.facepunch.com/gmod/Panel:DockPadding), which will affect docked child panels, and you can set the outer spacing of a panel's docking using [Panel:DockMargin](https://wiki.facepunch.com/gmod/Panel:DockMargin), which affects how docked siblings are positioned/sized.
--- You may need to use [Panel:SetZPos](https://wiki.facepunch.com/gmod/Panel:SetZPos) to ensure child panels ([DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry)) stay in a specific order. 
--- [https://wiki.facepunch.com/gmod/Panel:Dock]
--- @param dockType number @ Dock type using [DOCK](https://wiki.facepunch.com/gmod/Enums/DOCK).
--- @return void
function Panel:Dock(dockType) end

--- (client) Sets the dock margin of the panel.
--- The dock margin is the extra space that will be left around the edge when this element is docked inside its parent element. 
--- [https://wiki.facepunch.com/gmod/Panel:DockMargin]
--- @param marginLeft number @ The left margin to the parent.
--- @param marginTop number @ The top margin to the parent.
--- @param marginRight number @ The right margin to the parent.
--- @param marginBottom number @ The bottom margin to the parent.
--- @return void
function Panel:DockMargin(marginLeft, marginTop, marginRight, marginBottom) end

--- (client) Sets the dock padding of the panel.
--- The dock padding is the extra space that will be left around the edge when child elements are docked inside this element. 
--- [https://wiki.facepunch.com/gmod/Panel:DockPadding]
--- @param paddingLeft number @ The left padding to the parent.
--- @param paddingTop number @ The top padding to the parent.
--- @param paddingRight number @ The right padding to the parent.
--- @param paddingBottom number @ The bottom padding to the parent.
--- @return void
function Panel:DockPadding(paddingLeft, paddingTop, paddingRight, paddingBottom) end

--- (client) Makes the panel "lock" the screen until it is removed. All input will be directed to the given panel.
--- It will silently fail if used while cursor is not visible.
--- Call [Panel:MakePopup](https://wiki.facepunch.com/gmod/Panel:MakePopup) before calling this function.
--- This must be called on a panel derived from [EditablePanel](https://wiki.facepunch.com/gmod/EditablePanel). 
--- [https://wiki.facepunch.com/gmod/Panel:DoModal]
--- @return void
function Panel:DoModal() end

--- (client) Called by [Panel:DragMouseRelease](https://wiki.facepunch.com/gmod/Panel:DragMouseRelease) when a user clicks one mouse button whilst dragging with another. 
--- [https://wiki.facepunch.com/gmod/Panel:DragClick]
--- @return boolean
function Panel:DragClick() end

--- (client) Called by [dragndrop.HoverThink](https://wiki.facepunch.com/gmod/dragndrop.HoverThink) to perform actions on an object that is dragged and hovered over another. 
--- [https://wiki.facepunch.com/gmod/Panel:DragHover]
--- @param HoverTime number @ If this time is greater than 0.1, [PANEL:DragHoverClick](https://wiki.facepunch.com/gmod/PANEL:DragHoverClick) is called, passing it as an argument.
--- @return void
function Panel:DragHover(HoverTime) end

--- (client) Called to end a drag and hover action. This resets the panel's [PANEL:PaintOver](https://wiki.facepunch.com/gmod/PANEL:PaintOver) method, and is primarily used by [dragndrop.StopDragging](https://wiki.facepunch.com/gmod/dragndrop.StopDragging). 
--- [https://wiki.facepunch.com/gmod/Panel:DragHoverEnd]
--- @return void
function Panel:DragHoverEnd() end

--- (client) Called to inform the [dragndrop](https://wiki.facepunch.com/gmod/dragndrop) that a mouse button is being held down on a panel object. 
--- [https://wiki.facepunch.com/gmod/Panel:DragMousePress]
--- @param mouseCode number @ The code for the mouse button pressed, passed by, for example, [PANEL:OnMousePressed](https://wiki.facepunch.com/gmod/PANEL:OnMousePressed). See the [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @return void
function Panel:DragMousePress(mouseCode) end

--- (client) Called to inform the [dragndrop](https://wiki.facepunch.com/gmod/dragndrop) that a mouse button has been depressed on a panel object. 
--- [https://wiki.facepunch.com/gmod/Panel:DragMouseRelease]
--- @param mouseCode number @ The code for the mouse button pressed, passed by, for example, [PANEL:OnMouseReleased](https://wiki.facepunch.com/gmod/PANEL:OnMouseReleased). See the [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @return boolean
function Panel:DragMouseRelease(mouseCode) end

--- (client) Called to draw the drop target when an object is being dragged across another. See [Panel:SetDropTarget](https://wiki.facepunch.com/gmod/Panel:SetDropTarget). 
--- [https://wiki.facepunch.com/gmod/Panel:DrawDragHover]
--- @param x number @ The x coordinate of the top-left corner of the drop area.
--- @param y number @ The y coordinate of the top-left corner of the drop area.
--- @param width number @ The width of the drop area.
--- @param height number @ The height of the drop area.
--- @return void
function Panel:DrawDragHover(x, y, width, height) end

--- (client) Draws a coloured rectangle to fill the panel object this method is called on. The colour is set using [surface.SetDrawColor](https://wiki.facepunch.com/gmod/surface.SetDrawColor). This should only be called within the object's [PANEL:Paint](https://wiki.facepunch.com/gmod/PANEL:Paint) or [PANEL:PaintOver](https://wiki.facepunch.com/gmod/PANEL:PaintOver) hooks, as a shortcut for [surface.DrawRect](https://wiki.facepunch.com/gmod/surface.DrawRect). 
--- [https://wiki.facepunch.com/gmod/Panel:DrawFilledRect]
--- @return void
function Panel:DrawFilledRect() end

--- (client) Draws a hollow rectangle the size of the panel object this method is called on, with a border width of 1 px. The border colour is set using [surface.SetDrawColor](https://wiki.facepunch.com/gmod/surface.SetDrawColor). This should only be called within the object's [PANEL:Paint](https://wiki.facepunch.com/gmod/PANEL:Paint) or [PANEL:PaintOver](https://wiki.facepunch.com/gmod/PANEL:PaintOver) hooks, as a shortcut for [surface.DrawOutlinedRect](https://wiki.facepunch.com/gmod/surface.DrawOutlinedRect). 
--- [https://wiki.facepunch.com/gmod/Panel:DrawOutlinedRect]
--- @return void
function Panel:DrawOutlinedRect() end

--- (client) Used to draw the magenta highlight colour of a panel object when it is selected. This should be called in the object's [PANEL:PaintOver](https://wiki.facepunch.com/gmod/PANEL:PaintOver) hook. Once this is implemented, the highlight colour will be displayed only when the object is selectable and selected. This is achieved using [Panel:SetSelectable](https://wiki.facepunch.com/gmod/Panel:SetSelectable) and [Panel:SetSelected](https://wiki.facepunch.com/gmod/Panel:SetSelected) respectively. 
--- [https://wiki.facepunch.com/gmod/Panel:DrawSelections]
--- @return void
function Panel:DrawSelections() end

--- (client) Used to draw the text in a [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) within a derma skin. This should be called within the [SKIN:PaintTextEntry](https://wiki.facepunch.com/gmod/SKIN:PaintTextEntry) skin hook. 
--- [https://wiki.facepunch.com/gmod/Panel:DrawTextEntryText]
--- @param textCol table @ The colour of the main text.
--- @param highlightCol table @ The colour of the selection highlight (when selecting text).
--- @param cursorCol table @ The colour of the text cursor (or caret).
--- @return void
function Panel:DrawTextEntryText(textCol, highlightCol, cursorCol) end

--- (client) Draws a textured rectangle to fill the panel object this method is called on. The texture is set using [surface.SetTexture](https://wiki.facepunch.com/gmod/surface.SetTexture) or [surface.SetMaterial](https://wiki.facepunch.com/gmod/surface.SetMaterial). This should only be called within the object's [PANEL:Paint](https://wiki.facepunch.com/gmod/PANEL:Paint) or [PANEL:PaintOver](https://wiki.facepunch.com/gmod/PANEL:PaintOver) hooks, as a shortcut for [surface.DrawTexturedRect](https://wiki.facepunch.com/gmod/surface.DrawTexturedRect). 
--- [https://wiki.facepunch.com/gmod/Panel:DrawTexturedRect]
--- @return void
function Panel:DrawTexturedRect() end

--- (client) Makes this panel droppable. This is used with [Panel:Receiver](https://wiki.facepunch.com/gmod/Panel:Receiver) to create drag and drop events.
--- Can be called multiple times with different names allowing to be dropped onto different receivers. 
--- [https://wiki.facepunch.com/gmod/Panel:Droppable]
--- @param name string @ Name of your droppable panel
--- @return table
function Panel:Droppable(name) end

--- (client) Completes a box selection. If the end point of the selection box is within the selection canvas, mouse capture is disabled for the panel object, and the selected state of each child object within the selection box is toggled. 
--- [https://wiki.facepunch.com/gmod/Panel:EndBoxSelection]
--- @return boolean
function Panel:EndBoxSelection() end

--- (client) Used to run commands within a [DHTML](https://wiki.facepunch.com/gmod/DHTML) window. 
--- [https://wiki.facepunch.com/gmod/Panel:Exec]
--- @param cmd string @ The command to be run.
--- @return void
function Panel:Exec(cmd) end

--- (client) Finds a panel in its children(and sub children) with the given name. 
--- [https://wiki.facepunch.com/gmod/Panel:Find]
--- @param panelName string @ The name of the panel that should be found.
--- @return Panel
function Panel:Find(panelName) end

--- (client) Focuses the next panel in the focus queue. 
--- [https://wiki.facepunch.com/gmod/Panel:FocusNext]
--- @return void
function Panel:FocusNext() end

--- (client) Focuses the previous panel in the focus queue. 
--- [https://wiki.facepunch.com/gmod/Panel:FocusPrevious]
--- @return void
function Panel:FocusPrevious() end

--- (client) Returns the alpha multiplier for this panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetAlpha]
--- @return number
function Panel:GetAlpha() end

--- (client) Returns the background color of a panel such as a [RichText](https://wiki.facepunch.com/gmod/RichText), [Label](https://wiki.facepunch.com/gmod/Label) or [DColorCube](https://wiki.facepunch.com/gmod/DColorCube). 
--- [https://wiki.facepunch.com/gmod/Panel:GetBGColor]
--- @return number
function Panel:GetBGColor() end

--- (client) Returns the position and size of the panel.
--- This is equivalent to calling [Panel:GetPos](https://wiki.facepunch.com/gmod/Panel:GetPos) and [Panel:GetSize](https://wiki.facepunch.com/gmod/Panel:GetSize) together. 
--- [https://wiki.facepunch.com/gmod/Panel:GetBounds]
--- @return number|number|number|number
function Panel:GetBounds() end

--- (client) Returns the position/offset of the caret (or text cursor) in a text-based panel object. 
--- [https://wiki.facepunch.com/gmod/Panel:GetCaretPos]
--- @return number
function Panel:GetCaretPos() end

--- (client) Gets a child by its index. 
--- [https://wiki.facepunch.com/gmod/Panel:GetChild]
--- @param childIndex number @ The index of the child to get.
--- @return void
function Panel:GetChild(childIndex) end

--- (client) Gets a child object's position relative to this panel object. The number of levels is not relevant; the child may have many parents between itself and the object on which the method is called. 
--- [https://wiki.facepunch.com/gmod/Panel:GetChildPosition]
--- @param pnl Panel @ The panel to get the position of.
--- @return number|number
function Panel:GetChildPosition(pnl) end

--- (client) Returns a table with all the child panels of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetChildren]
--- @return table
function Panel:GetChildren() end

--- (client) Returns a table of all visible, selectable children of the panel object that lie at least partially within the specified rectangle. 
--- [https://wiki.facepunch.com/gmod/Panel:GetChildrenInRect]
--- @param x number @ The horizontal (x) position of the top-left corner of the rectangle, relative to the panel object.
--- @param y number @ The vertical (y) position of the top-left corner of the rectangle, relative to the panel object.
--- @param w number @ The width of the rectangle.
--- @param h number @ The height of the rectangle.
--- @return table
function Panel:GetChildrenInRect(x, y, w, h) end

--- (client) Returns the class name of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetClassName]
--- @return string
function Panel:GetClassName() end

--- (client) Returns the child of this panel object that is closest to the specified point. The point is relative to the object on which the method is called. The distance the child is from this point is also returned. 
--- [https://wiki.facepunch.com/gmod/Panel:GetClosestChild]
--- @param x number @ The horizontal (x) position of the point.
--- @param y number @ The vertical (y) position of the point.
--- @return Panel|number
function Panel:GetClosestChild(x, y) end

--- (client) Gets the size of the content/children within a panel object.
--- Only works with [Label](https://wiki.facepunch.com/gmod/Label) derived panels by default such as [DLabel](https://wiki.facepunch.com/gmod/DLabel).
--- Will also work on any panel that manually implements this method. 
--- [https://wiki.facepunch.com/gmod/Panel:GetContentSize]
--- @return number|number
function Panel:GetContentSize() end

--- (client) Gets the value of a cookie stored by the panel object. This can also be done with [cookie.GetString](https://wiki.facepunch.com/gmod/cookie.GetString), using the panel's cookie name, a fullstop, and then the actual name of the cookie.
--- Make sure the panel's cookie name has not changed since writing, or the cookie will not be accessible. This can be done with [Panel:GetCookieName](https://wiki.facepunch.com/gmod/Panel:GetCookieName) and [Panel:SetCookieName](https://wiki.facepunch.com/gmod/Panel:SetCookieName). 
--- [https://wiki.facepunch.com/gmod/Panel:GetCookie]
--- @param cookieName string @ The name of the cookie from which to retrieve the value.
--- @param default string @ The default value to return if the cookie does not exist.
--- @return string
function Panel:GetCookie(cookieName, default) end

--- (client) Gets the name the panel uses to store cookies. This is set with [Panel:SetCookieName](https://wiki.facepunch.com/gmod/Panel:SetCookieName). 
--- [https://wiki.facepunch.com/gmod/Panel:GetCookieName]
--- @return string
function Panel:GetCookieName() end

--- (client) Gets the value of a cookie stored by the panel object, as a number. This can also be done with [cookie.GetNumber](https://wiki.facepunch.com/gmod/cookie.GetNumber), using the panel's cookie name, a fullstop, and then the actual name of the cookie.
--- Make sure the panel's cookie name has not changed since writing, or the cookie will not be accessible. This can be done with [Panel:GetCookieName](https://wiki.facepunch.com/gmod/Panel:GetCookieName) and [Panel:SetCookieName](https://wiki.facepunch.com/gmod/Panel:SetCookieName). 
--- [https://wiki.facepunch.com/gmod/Panel:GetCookieNumber]
--- @param cookieName string @ The name of the cookie from which to retrieve the value.
--- @param default number @ The default value to return if the cookie does not exist.
--- @return number
function Panel:GetCookieNumber(cookieName, default) end

--- (client) Returns a dock enum for the panel's current docking type. 
--- [https://wiki.facepunch.com/gmod/Panel:GetDock]
--- @return number
function Panel:GetDock() end

--- (client) Returns the docked margins of the panel. (set by [Panel:DockMargin](https://wiki.facepunch.com/gmod/Panel:DockMargin)) 
--- [https://wiki.facepunch.com/gmod/Panel:GetDockMargin]
--- @return number|number|number|number
function Panel:GetDockMargin() end

--- (client) Returns the docked padding of the panel. (set by [Panel:DockPadding](https://wiki.facepunch.com/gmod/Panel:DockPadding)) 
--- [https://wiki.facepunch.com/gmod/Panel:GetDockPadding]
--- @return number|number|number|number
function Panel:GetDockPadding() end

--- (client) Returns the foreground color of the panel.
--- For a [Label](https://wiki.facepunch.com/gmod/Label) or [RichText](https://wiki.facepunch.com/gmod/RichText), this is the color of its text. 
--- [https://wiki.facepunch.com/gmod/Panel:GetFGColor]
--- @return table
function Panel:GetFGColor() end

--- (client) Returns the name of the font that the panel renders its text with.
--- This is the same font name set with [Panel:SetFontInternal](https://wiki.facepunch.com/gmod/Panel:SetFontInternal). 
--- [https://wiki.facepunch.com/gmod/Panel:GetFont]
--- @return string
function Panel:GetFont() end

--- (client) Returns the panel's HTML material. Only works with [Awesomium](https://wiki.facepunch.com/gmod/Awesomium), [HTML](https://wiki.facepunch.com/gmod/HTML) and [DHTML](https://wiki.facepunch.com/gmod/DHTML) panels that have been fully loaded. 
--- [https://wiki.facepunch.com/gmod/Panel:GetHTMLMaterial]
--- @return IMaterial
function Panel:GetHTMLMaterial() end

--- (client) Returns the current maximum character count.
--- This function will only work on [RichText](https://wiki.facepunch.com/gmod/RichText) and [TextEntry](https://wiki.facepunch.com/gmod/TextEntry) panels and their derivatives. 
--- [https://wiki.facepunch.com/gmod/Panel:GetMaximumCharCount]
--- @return number
function Panel:GetMaximumCharCount() end

--- (client) Returns the internal name of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetName]
--- @return string
function Panel:GetName() end

--- (client) Returns the number of lines in a [RichText](https://wiki.facepunch.com/gmod/RichText). You must wait a couple frames before calling this after using [Panel:AppendText](https://wiki.facepunch.com/gmod/Panel:AppendText) or [Panel:SetText](https://wiki.facepunch.com/gmod/Panel:SetText), otherwise it will return the number of text lines before the text change. 
--- [https://wiki.facepunch.com/gmod/Panel:GetNumLines]
--- @return number
function Panel:GetNumLines() end

--- (client) Returns the parent of the panel, returns nil if there is no parent. 
--- [https://wiki.facepunch.com/gmod/Panel:GetParent]
--- @return Panel
function Panel:GetParent() end

--- (client) Returns the position of the panel relative to its [Panel:GetParent](https://wiki.facepunch.com/gmod/Panel:GetParent).
--- If you require the panel's position **and** size, consider using [Panel:GetBounds](https://wiki.facepunch.com/gmod/Panel:GetBounds) instead.
--- If you need the position in screen space, see [Panel:LocalToScreen](https://wiki.facepunch.com/gmod/Panel:LocalToScreen).
--- See also [Panel:GetX](https://wiki.facepunch.com/gmod/Panel:GetX) and [Panel:GetY](https://wiki.facepunch.com/gmod/Panel:GetY). 
--- [https://wiki.facepunch.com/gmod/Panel:GetPos]
--- @return number|number
function Panel:GetPos() end

--- (client) Returns a table of all children of the panel object that are selected. This is recursive, and the returned table will include tables for any child objects that also have children. This means that not all first-level members in the returned table will be of type [Panel](https://wiki.facepunch.com/gmod/Panel). 
--- [https://wiki.facepunch.com/gmod/Panel:GetSelectedChildren]
--- @return table
function Panel:GetSelectedChildren() end

--- (client) Returns the currently selected range of text.
--- This function will only work on [RichText](https://wiki.facepunch.com/gmod/RichText) and [TextEntry](https://wiki.facepunch.com/gmod/TextEntry) panels and their derivatives. 
--- [https://wiki.facepunch.com/gmod/Panel:GetSelectedTextRange]
--- @return number|number
function Panel:GetSelectedTextRange() end

--- (client) Returns the panel object (`self`) if it has been enabled as a selection canvas. This is achieved using [Panel:SetSelectionCanvas](https://wiki.facepunch.com/gmod/Panel:SetSelectionCanvas). 
--- [https://wiki.facepunch.com/gmod/Panel:GetSelectionCanvas]
--- @return Panel
function Panel:GetSelectionCanvas() end

--- (client) Returns the size of the panel.
--- If you require both the panel's position and size, consider using [Panel:GetBounds](https://wiki.facepunch.com/gmod/Panel:GetBounds) instead. 
--- [https://wiki.facepunch.com/gmod/Panel:GetSize]
--- @return number|number
function Panel:GetSize() end

--- (client) Returns the table for the derma skin currently being used by this panel object. 
--- [https://wiki.facepunch.com/gmod/Panel:GetSkin]
--- @return table
function Panel:GetSkin() end

--- (client) Returns the internal Lua table of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetTable]
--- @return table
function Panel:GetTable() end

--- (client) Returns the height of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetTall]
--- @return number
function Panel:GetTall() end

--- (client) Returns the panel's text (where applicable).
--- This method returns a maximum of 1023 bytes, except for [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry). 
--- [https://wiki.facepunch.com/gmod/Panel:GetText]
--- @return string
function Panel:GetText() end

--- (client) Gets the left and top text margins of a text-based panel object, such as a [DButton](https://wiki.facepunch.com/gmod/DButton) or [DLabel](https://wiki.facepunch.com/gmod/DLabel). This is set with [Panel:SetTextInset](https://wiki.facepunch.com/gmod/Panel:SetTextInset). 
--- [https://wiki.facepunch.com/gmod/Panel:GetTextInset]
--- @return number|number
function Panel:GetTextInset() end

--- (client) Gets the size of the text within a [Label](https://wiki.facepunch.com/gmod/Label) derived panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetTextSize]
--- @return number|number
function Panel:GetTextSize() end

--- (client) Gets valid receiver slot of currently dragged panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetValidReceiverSlot]
--- @return Panel|table
function Panel:GetValidReceiverSlot() end

--- (client) Returns the value the panel holds.
--- In engine is only implemented for [CheckButton](https://wiki.facepunch.com/gmod/CheckButton), [Label](https://wiki.facepunch.com/gmod/Label) and [TextEntry](https://wiki.facepunch.com/gmod/TextEntry) as a string. 
--- [https://wiki.facepunch.com/gmod/Panel:GetValue]
--- @return any
function Panel:GetValue() end

--- (client) Returns the width of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetWide]
--- @return number
function Panel:GetWide() end

--- (client) Returns the X position of the panel relative to its [Panel:GetParent](https://wiki.facepunch.com/gmod/Panel:GetParent).
--- Uses [Panel:GetPos](https://wiki.facepunch.com/gmod/Panel:GetPos) internally. 
--- [https://wiki.facepunch.com/gmod/Panel:GetX]
--- @return number
function Panel:GetX() end

--- (client) Returns the Y position of the panel relative to its [Panel:GetParent](https://wiki.facepunch.com/gmod/Panel:GetParent).
--- Uses [Panel:GetPos](https://wiki.facepunch.com/gmod/Panel:GetPos) internally. 
--- [https://wiki.facepunch.com/gmod/Panel:GetY]
--- @return number
function Panel:GetY() end

--- (client) Returns the Z position of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GetZPos]
--- @return number
function Panel:GetZPos() end

--- (client) Goes back one page in the HTML panel's history if available. 
--- [https://wiki.facepunch.com/gmod/Panel:GoBack]
--- @return void
function Panel:GoBack() end

--- (client) Goes forward one page in the HTML panel's history if available. 
--- [https://wiki.facepunch.com/gmod/Panel:GoForward]
--- @return void
function Panel:GoForward() end

--- (client) Goes to the page in the HTML panel's history at the specified relative offset. 
--- [https://wiki.facepunch.com/gmod/Panel:GoToHistoryOffset]
--- @param offset number @ The offset in the panel's back/forward history, relative to the current page, that you would like to skip to. Because this is relative, 0 = current page while negative goes back and positive goes forward. For example, -2 will go back 2 pages in the history.
--- @return void
function Panel:GoToHistoryOffset(offset) end

--- (client) Causes a [RichText](https://wiki.facepunch.com/gmod/RichText) element to scroll to the bottom of its text. 
--- [https://wiki.facepunch.com/gmod/Panel:GotoTextEnd]
--- @return void
function Panel:GotoTextEnd() end

--- (client) Causes a [RichText](https://wiki.facepunch.com/gmod/RichText) element to scroll to the top of its text. 
--- [https://wiki.facepunch.com/gmod/Panel:GotoTextStart]
--- @return void
function Panel:GotoTextStart() end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `CheckboxText` property to a [DCheckBoxLabel](https://wiki.facepunch.com/gmod/DCheckBoxLabel). This does exactly the same as [Panel:GWEN_SetText](https://wiki.facepunch.com/gmod/Panel:GWEN_SetText), but exists to cater for the seperate GWEN properties. 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetCheckboxText]
--- @param txt string @ The text to be applied to the DCheckBoxLabel.
--- @return void
function Panel:GWEN_SetCheckboxText(txt) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `ControlName` property to a panel. This calls [Panel:SetName](https://wiki.facepunch.com/gmod/Panel:SetName). 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetControlName]
--- @param name string @ The new name to apply to the panel.
--- @return void
function Panel:GWEN_SetControlName(name) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `Dock` property to a  panel object. This calls [Panel:Dock](https://wiki.facepunch.com/gmod/Panel:Dock). 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetDock]
--- @param dockState string @ The dock mode to pass to the panel's `Dock` method. This reads a string and applies the approriate [DOCK](https://wiki.facepunch.com/gmod/Enums/DOCK).  `Right`: Dock right.  `Left`: Dock left.  `Bottom`: Dock at the bottom.  `Top`: Dock at the top.  `Fill`: Fill the parent panel.
--- @return void
function Panel:GWEN_SetDock(dockState) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `HorizontalAlign` property to a  panel object. This calls [Panel:SetContentAlignment](https://wiki.facepunch.com/gmod/Panel:SetContentAlignment). 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetHorizontalAlign]
--- @param hAlign string @ The alignment, as a string, to pass to [Panel:SetContentAlignment](https://wiki.facepunch.com/gmod/Panel:SetContentAlignment). Accepts:  `Right`: Align mid-right.  `Left`: Align mid-left.  `Center`: Align mid-center.
--- @return void
function Panel:GWEN_SetHorizontalAlign(hAlign) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `Margin` property to a  panel object. This calls [Panel:DockMargin](https://wiki.facepunch.com/gmod/Panel:DockMargin). 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetMargin]
--- @param margins table @ A four-membered table containing the margins as numbers:  [number](https://wiki.facepunch.com/gmod/number) left - The left margin.  [number](https://wiki.facepunch.com/gmod/number) top - The top margin.  [number](https://wiki.facepunch.com/gmod/number) right - The right margin.  [number](https://wiki.facepunch.com/gmod/number) bottom - The bottom margin.
--- @return void
function Panel:GWEN_SetMargin(margins) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `Max` property to a  [DNumberWang](https://wiki.facepunch.com/gmod/DNumberWang), [Slider](https://wiki.facepunch.com/gmod/Slider), [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider) or [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch). This calls `SetMax` on one of the previously listed methods. 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetMax]
--- @param maxValue number @ The maximum value the element is to permit.
--- @return void
function Panel:GWEN_SetMax(maxValue) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `Min` property to a  [DNumberWang](https://wiki.facepunch.com/gmod/DNumberWang), [Slider](https://wiki.facepunch.com/gmod/Slider), [DNumSlider](https://wiki.facepunch.com/gmod/DNumSlider) or [DNumberScratch](https://wiki.facepunch.com/gmod/DNumberScratch). This calls `SetMin` on one of the previously listed methods. 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetMin]
--- @param minValue number @ The minimum value the element is to permit.
--- @return void
function Panel:GWEN_SetMin(minValue) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `Position` property to a  panel object. This calls [Panel:SetPos](https://wiki.facepunch.com/gmod/Panel:SetPos). 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetPosition]
--- @param pos table @ A two-membered table containing the x and y coordinates as numbers:  [number](https://wiki.facepunch.com/gmod/number) x - The x coordinate.  [number](https://wiki.facepunch.com/gmod/number) y - The y coordinate.
--- @return void
function Panel:GWEN_SetPosition(pos) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `Size` property to a  panel object. This calls [Panel:SetSize](https://wiki.facepunch.com/gmod/Panel:SetSize). 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetSize]
--- @param size table @ A two-membered table containing the width and heights as numbers:  [number](https://wiki.facepunch.com/gmod/number) w - The width.  [number](https://wiki.facepunch.com/gmod/number) h - The height.
--- @return void
function Panel:GWEN_SetSize(size) end

--- (client) Used by [Panel:ApplyGWEN](https://wiki.facepunch.com/gmod/Panel:ApplyGWEN) to apply the `Text` property to a panel. 
--- [https://wiki.facepunch.com/gmod/Panel:GWEN_SetText]
--- @param txt string @ The text to be applied to the panel.
--- @return void
function Panel:GWEN_SetText(txt) end

--- (client) Returns whenever the panel has child panels. 
--- [https://wiki.facepunch.com/gmod/Panel:HasChildren]
--- @return boolean
function Panel:HasChildren() end

--- (client) Returns if the panel is focused. 
--- [https://wiki.facepunch.com/gmod/Panel:HasFocus]
--- @return boolean
function Panel:HasFocus() end

--- (client) Returns if the panel or any of its children(sub children and so on) has the focus. 
--- [https://wiki.facepunch.com/gmod/Panel:HasHierarchicalFocus]
--- @return boolean
function Panel:HasHierarchicalFocus() end

--- (client) Returns whether the panel is a descendent of the given panel. 
--- [https://wiki.facepunch.com/gmod/Panel:HasParent]
--- @param parentPanel Panel @ No description provided
--- @return boolean
function Panel:HasParent(parentPanel) end

--- (client) Makes a panel invisible. 
--- [https://wiki.facepunch.com/gmod/Panel:Hide]
--- @return void
function Panel:Hide() end

--- (client) Marks the end of a clickable text segment in a [RichText](https://wiki.facepunch.com/gmod/RichText) element, started with [Panel:InsertClickableTextStart](https://wiki.facepunch.com/gmod/Panel:InsertClickableTextStart). 
--- [https://wiki.facepunch.com/gmod/Panel:InsertClickableTextEnd]
--- @return void
function Panel:InsertClickableTextEnd() end

--- (client) Starts the insertion of clickable text for a [RichText](https://wiki.facepunch.com/gmod/RichText) element. Any text appended with [Panel:AppendText](https://wiki.facepunch.com/gmod/Panel:AppendText) between this call and [Panel:InsertClickableTextEnd](https://wiki.facepunch.com/gmod/Panel:InsertClickableTextEnd) will become clickable text.
--- The hook [PANEL:ActionSignal](https://wiki.facepunch.com/gmod/PANEL:ActionSignal) is called when the text is clicked, with "TextClicked" as the signal name and `signalValue` as the signal value. 
--- [https://wiki.facepunch.com/gmod/Panel:InsertClickableTextStart]
--- @param signalValue string @ The text passed as the action signal's value.
--- @return void
function Panel:InsertClickableTextStart(signalValue) end

--- (client) Inserts a color change in a [RichText](https://wiki.facepunch.com/gmod/RichText) element, which affects the color of all text added with [Panel:AppendText](https://wiki.facepunch.com/gmod/Panel:AppendText) until another color change is applied. 
--- [https://wiki.facepunch.com/gmod/Panel:InsertColorChange]
--- @param r number @ The red value `(0 - 255)`.
--- @param g number @ The green value `(0 - 255)`.
--- @param b number @ The blue value `(0 - 255)`.
--- @param a number @ The alpha value `(0 - 255)`.
--- @return void
function Panel:InsertColorChange(r, g, b, a) end

--- (client) Begins a text fade for a [RichText](https://wiki.facepunch.com/gmod/RichText) element where the last appended text segment is fully faded out after a specific amount of time, at a specific speed.
--- The alpha of the text at any given time is determined by the text's base alpha * ((`sustain` - [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime)) / `length`) where [CurTime](https://wiki.facepunch.com/gmod/Global.CurTime) is added to `sustain` when this method is called. 
--- [https://wiki.facepunch.com/gmod/Panel:InsertFade]
--- @param sustain number @ The number of seconds the text remains visible.
--- @param length number @ The number of seconds it takes the text to fade out. If set lower than `sustain`, the text will not begin fading out until (`sustain` - `length`) seconds have passed. If set higher than `sustain`, the text will begin fading out immediately at a fraction of the base alpha. If set to -1, the text doesn't fade out.
--- @return void
function Panel:InsertFade(sustain, length) end

--- (client) Invalidates the layout of this panel object and all its children. This will cause these objects to re-layout immediately, calling [PANEL:PerformLayout](https://wiki.facepunch.com/gmod/PANEL:PerformLayout). If you want to perform the layout in the next frame, you will have loop manually through all children, and call [Panel:InvalidateLayout](https://wiki.facepunch.com/gmod/Panel:InvalidateLayout) on each. 
--- [https://wiki.facepunch.com/gmod/Panel:InvalidateChildren]
--- @param recursive boolean @ If `true`, the method will recursively invalidate the layout of all children. Otherwise, only immediate children are affected.
--- @return void
function Panel:InvalidateChildren(recursive) end

--- (client) Causes the panel to re-layout in the next frame. During the layout process  [PANEL:PerformLayout](https://wiki.facepunch.com/gmod/PANEL:PerformLayout) will be called on the target panel.
--- You should avoid calling this function every frame. 
--- [https://wiki.facepunch.com/gmod/Panel:InvalidateLayout]
--- @param layoutNow boolean @ If true the panel will re-layout instantly and not wait for the next frame.
--- @return void
function Panel:InvalidateLayout(layoutNow) end

--- (client) Calls [Panel:InvalidateLayout](https://wiki.facepunch.com/gmod/Panel:InvalidateLayout) on the panel's [parent](https://wiki.facepunch.com/gmod/Panel:GetParent). This function will silently fail if the panel has no parent.
--- This will cause the parent panel to re-layout, calling [PANEL:PerformLayout](https://wiki.facepunch.com/gmod/PANEL:PerformLayout).
--- Internally sets `LayingOutParent` to `true` on this panel, and will silently fail if it is already set. 
--- [https://wiki.facepunch.com/gmod/Panel:InvalidateParent]
--- @param layoutNow boolean @ If `true`, the re-layout will occur immediately, otherwise it will be performed in the next frame.
--- @return void
function Panel:InvalidateParent(layoutNow) end

--- (client) Determines whether the mouse cursor is hovered over one of this panel object's children. This is a reverse process using [vgui.GetHoveredPanel](https://wiki.facepunch.com/gmod/vgui.GetHoveredPanel), and looks upward to find the parent. 
--- [https://wiki.facepunch.com/gmod/Panel:IsChildHovered]
--- @param immediate boolean @ Set to true to check only the immediate children of given panel ( first level )
--- @return boolean
function Panel:IsChildHovered(immediate) end

--- (client) Returns whether this panel is draggable ( if user is able to drag it ) or not. 
--- [https://wiki.facepunch.com/gmod/Panel:IsDraggable]
--- @return boolean
function Panel:IsDraggable() end

--- (client) Returns whether this panel is currently being dragged or not. 
--- [https://wiki.facepunch.com/gmod/Panel:IsDragging]
--- @return boolean
function Panel:IsDragging() end

--- (client) Returns whether the the panel is enabled or disabled.
--- See [Panel:SetEnabled](https://wiki.facepunch.com/gmod/Panel:SetEnabled) for a function that makes the panel enabled or disabled. 
--- [https://wiki.facepunch.com/gmod/Panel:IsEnabled]
--- @return boolean
function Panel:IsEnabled() end

--- (client) Returns whether the mouse cursor is hovering over this panel or not
--- Uses [vgui.GetHoveredPanel](https://wiki.facepunch.com/gmod/vgui.GetHoveredPanel) internally.
--- Requires [Panel:SetMouseInputEnabled](https://wiki.facepunch.com/gmod/Panel:SetMouseInputEnabled) to be set to true. 
--- [https://wiki.facepunch.com/gmod/Panel:IsHovered]
--- @return boolean
function Panel:IsHovered() end

--- (client) Returns true if the panel can receive keyboard input. 
--- [https://wiki.facepunch.com/gmod/Panel:IsKeyboardInputEnabled]
--- @return boolean
function Panel:IsKeyboardInputEnabled() end

--- (client) Determines whether or not a [HTML](https://wiki.facepunch.com/gmod/HTML) or [DHTML](https://wiki.facepunch.com/gmod/DHTML) element is currently loading a page. 
--- [https://wiki.facepunch.com/gmod/Panel:IsLoading]
--- @return boolean
function Panel:IsLoading() end

--- (client) Returns if the panel is going to be deleted in the next frame. 
--- [https://wiki.facepunch.com/gmod/Panel:IsMarkedForDeletion]
--- @return boolean
function Panel:IsMarkedForDeletion() end

--- (client) Returns whether the panel was made modal or not. See [Panel:DoModal](https://wiki.facepunch.com/gmod/Panel:DoModal). 
--- [https://wiki.facepunch.com/gmod/Panel:IsModal]
--- @return boolean
function Panel:IsModal() end

--- (client) Returns true if the panel can receive mouse input. 
--- [https://wiki.facepunch.com/gmod/Panel:IsMouseInputEnabled]
--- @return boolean
function Panel:IsMouseInputEnabled() end

--- (client) Returns whether the panel contains the given panel, recursively. 
--- [https://wiki.facepunch.com/gmod/Panel:IsOurChild]
--- @param childPanel Panel @ No description provided
--- @return boolean
function Panel:IsOurChild(childPanel) end

--- (client) Returns if the panel was made popup or not. See [Panel:MakePopup](https://wiki.facepunch.com/gmod/Panel:MakePopup) 
--- [https://wiki.facepunch.com/gmod/Panel:IsPopup]
--- @return boolean
function Panel:IsPopup() end

--- (client) Determines if the panel object is selectable (like icons in the Spawn Menu, holding ). This is set with [Panel:SetSelectable](https://wiki.facepunch.com/gmod/Panel:SetSelectable). 
--- [https://wiki.facepunch.com/gmod/Panel:IsSelectable]
--- @return boolean
function Panel:IsSelectable() end

--- (client) Returns if the panel object is selected (like icons in the Spawn Menu, holding ). This can be set in Lua using [Panel:SetSelected](https://wiki.facepunch.com/gmod/Panel:SetSelected). 
--- [https://wiki.facepunch.com/gmod/Panel:IsSelected]
--- @return boolean
function Panel:IsSelected() end

--- (client) Determines if the panel object is a selection canvas or not. This is set with [Panel:SetSelectionCanvas](https://wiki.facepunch.com/gmod/Panel:SetSelectionCanvas). 
--- [https://wiki.facepunch.com/gmod/Panel:IsSelectionCanvas]
--- @return any
function Panel:IsSelectionCanvas() end

--- (client) Returns if the panel is valid and not marked for deletion. 
--- [https://wiki.facepunch.com/gmod/Panel:IsValid]
--- @return boolean
function Panel:IsValid() end

--- (client) Returns if the panel is visible. This will **NOT** take into account visibility of the parent. 
--- [https://wiki.facepunch.com/gmod/Panel:IsVisible]
--- @return boolean
function Panel:IsVisible() end

--- (client) Returns if a panel allows world clicking set by [Panel:SetWorldClicker](https://wiki.facepunch.com/gmod/Panel:SetWorldClicker). 
--- [https://wiki.facepunch.com/gmod/Panel:IsWorldClicker]
--- @return boolean
function Panel:IsWorldClicker() end

--- (client) Remove the focus from the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:KillFocus]
--- @return void
function Panel:KillFocus() end

--- (client) Redefines the panel object's [Panel:SetPos](https://wiki.facepunch.com/gmod/Panel:SetPos) method to operate using frame-by-frame linear interpolation ([Lerp](https://wiki.facepunch.com/gmod/Global.Lerp)). When the panel's position is changed, it will move to the target position at the speed defined. You can undo this with [Panel:DisableLerp](https://wiki.facepunch.com/gmod/Panel:DisableLerp).
--- Unlike the other panel animation functions, such as [Panel:MoveTo](https://wiki.facepunch.com/gmod/Panel:MoveTo), this animation method will not operate whilst the game is paused. This is because it relies on [FrameTime](https://wiki.facepunch.com/gmod/Global.FrameTime). 
--- [https://wiki.facepunch.com/gmod/Panel:LerpPositions]
--- @param speed number @ The speed at which to move the panel. This is affected by the value of `easeOut`. Recommended values are:  0.1 - 10 when `easeOut` is `false`.  0.1 - 1 when `easeOut` is `true`.
--- @param easeOut boolean @ This causes the panel object to 'jump' at the target, slowing as it approaches. This affects the `speed` value significantly, see above.
--- @return void
function Panel:LerpPositions(speed, easeOut) end

--- (client) Similar to [Panel:LoadControlsFromString](https://wiki.facepunch.com/gmod/Panel:LoadControlsFromString) but loads controls from a file. 
--- [https://wiki.facepunch.com/gmod/Panel:LoadControlsFromFile]
--- @param path string @ The path to load the controls from.
--- @return void
function Panel:LoadControlsFromFile(path) end

--- (client) Loads controls(positions, etc) from given data. This is what the default options menu uses. 
--- [https://wiki.facepunch.com/gmod/Panel:LoadControlsFromString]
--- @param data string @ The data to load controls from. Format unknown.
--- @return void
function Panel:LoadControlsFromString(data) end

--- (client) Loads a .gwen file (created by GWEN Designer) and calls [Panel:LoadGWENString](https://wiki.facepunch.com/gmod/Panel:LoadGWENString) with the contents of the loaded file.
--- Used to load panel controls from a file. 
--- [https://wiki.facepunch.com/gmod/Panel:LoadGWENFile]
--- @param filename string @ The file to open. The path is relative to garrysmod/garrysmod/.
--- @param path string @ The path used to look up the file.  "GAME" Structured like base folder (garrysmod/), searches all the mounted content (main folder, addons, mounted games etc)  "LUA" or "lsv" - All Lua folders (lua/) including gamesmodes and addons  "DATA" Data folder (garrysmod/data)  "MOD" Strictly the game folder (garrysmod/), ignores mounting.
--- @return void
function Panel:LoadGWENFile(filename, path) end

--- (client) Loads controls for the panel from a JSON string. 
--- [https://wiki.facepunch.com/gmod/Panel:LoadGWENString]
--- @param str string @ JSON string containing information about controls to create.
--- @return void
function Panel:LoadGWENString(str) end

--- (client) Sets a new image to be loaded by a [TGAImage](https://wiki.facepunch.com/gmod/TGAImage). 
--- [https://wiki.facepunch.com/gmod/Panel:LoadTGAImage]
--- @param imageName string @ The file path.
--- @param strPath string @ The PATH to search in. See [File Search Paths](https://wiki.facepunch.com/gmod/File%20Search%20Paths). This isn't used internally.
--- @return void
function Panel:LoadTGAImage(imageName, strPath) end

--- (client) Returns the cursor position local to the position of the panel (usually the upper-left corner). 
--- [https://wiki.facepunch.com/gmod/Panel:LocalCursorPos]
--- @return number|number
function Panel:LocalCursorPos() end

--- (client) Gets the absolute screen position of the position specified relative to the panel.
--- See also [Panel:ScreenToLocal](https://wiki.facepunch.com/gmod/Panel:ScreenToLocal). 
--- [https://wiki.facepunch.com/gmod/Panel:LocalToScreen]
--- @param posX number @ The X coordinate of the position on the panel to translate.
--- @param posY number @ The Y coordinate of the position on the panel to translate.
--- @return number|number
function Panel:LocalToScreen(posX, posY) end

--- (client) Focuses the panel and enables it to receive input.
--- This automatically calls [Panel:SetMouseInputEnabled](https://wiki.facepunch.com/gmod/Panel:SetMouseInputEnabled) and [Panel:SetKeyboardInputEnabled](https://wiki.facepunch.com/gmod/Panel:SetKeyboardInputEnabled) and sets them to `true`. 
--- [https://wiki.facepunch.com/gmod/Panel:MakePopup]
--- @return void
function Panel:MakePopup() end

--- (client) Allows the panel to receive mouse input even if the mouse cursor is outside the bounds of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:MouseCapture]
--- @param doCapture boolean @ Set to true to enable, set to false to disable.
--- @return void
function Panel:MouseCapture(doCapture) end

--- (client) Places the panel above the passed panel with the specified offset. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveAbove]
--- @param panel Panel @ Panel to position relatively to.
--- @param offset number @ The align offset.
--- @return void
function Panel:MoveAbove(panel, offset) end

--- (client) Places the panel below the passed panel with the specified offset. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveBelow]
--- @param panel Panel @ Panel to position relatively to.
--- @param offset number @ The align offset.
--- @return void
function Panel:MoveBelow(panel, offset) end

--- (client) Moves the panel by the specified coordinates using animation. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveBy]
--- @param moveX number @ The number of pixels to move by in the horizontal (x) direction.
--- @param moveY number @ The number of pixels to move by in the vertical (y) direction.
--- @param time number @ The time (in seconds) in which to perform the animation.
--- @param delay number @ The delay (in seconds) before the animation begins.
--- @param ease number @ The easing of the start and/or end speed of the animation. See [Panel:NewAnimation](https://wiki.facepunch.com/gmod/Panel:NewAnimation) for how this works.
--- @param callback function @ The function to be called once the animation is complete. Arguments are:  [table](https://wiki.facepunch.com/gmod/table) animData - The [AnimationData that was used.](https://wiki.facepunch.com/gmod/AnimationData%20that%20was%20used.)  [Panel](https://wiki.facepunch.com/gmod/Panel) pnl - The panel object that was moved.
--- @return void
function Panel:MoveBy(moveX, moveY, time, delay, ease, callback) end

--- (client) Places the panel left to the passed panel with the specified offset. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveLeftOf]
--- @param panel Panel @ Panel to position relatively to.
--- @param offset number @ The align offset.
--- @return void
function Panel:MoveLeftOf(panel, offset) end

--- (client) Places the panel right to the passed panel with the specified offset. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveRightOf]
--- @param panel Panel @ Panel to position relatively to.
--- @param offset number @ The align offset.
--- @return void
function Panel:MoveRightOf(panel, offset) end

--- (client) Moves the panel to the specified position using animation. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveTo]
--- @param posX number @ The target x coordinate of the panel.
--- @param posY number @ The target y coordinate of the panel.
--- @param time number @ The time to perform the animation within.
--- @param delay number @ The delay before the animation starts.
--- @param ease number @ The easing of the start and/or end speed of the animation. See [Panel:NewAnimation](https://wiki.facepunch.com/gmod/Panel:NewAnimation) for how this works.
--- @param callback function @ The function to be called once the animation finishes. Arguments are:  [table](https://wiki.facepunch.com/gmod/table) animData - The [AnimationData](https://wiki.facepunch.com/gmod/Structures/AnimationData) that was used.  [Panel](https://wiki.facepunch.com/gmod/Panel) pnl - The panel object that was moved.
--- @return void
function Panel:MoveTo(posX, posY, time, delay, ease, callback) end

--- (client) Moves this panel object in front of the specified sibling (child of the same parent) in the render order, and shuffles up the Z-positions of siblings now behind. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveToAfter]
--- @param siblingPanel Panel @ The panel to move this one in front of. Must be a child of the same parent panel.
--- @return boolean
function Panel:MoveToAfter(siblingPanel) end

--- (client) Moves the panel object behind all other panels on screen. If the panel has been made a pop-up with [Panel:MakePopup](https://wiki.facepunch.com/gmod/Panel:MakePopup), it will still draw in front of any panels that haven't. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveToBack]
--- @return void
function Panel:MoveToBack() end

--- (client) Moves this panel object behind the specified sibling (child of the same parent) in the render order, and shuffles up the [Panel:SetZPos](https://wiki.facepunch.com/gmod/Panel:SetZPos) of siblings now in front. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveToBefore]
--- @param siblingPanel Panel @ The panel to move this one behind. Must be a child of the same parent panel.
--- @return boolean
function Panel:MoveToBefore(siblingPanel) end

--- (client) Moves the panel in front of all other panels on screen. Unless the panel has been made a pop-up using [Panel:MakePopup](https://wiki.facepunch.com/gmod/Panel:MakePopup), it will still draw behind any that have. 
--- [https://wiki.facepunch.com/gmod/Panel:MoveToFront]
--- @return void
function Panel:MoveToFront() end

--- (client) Creates a new animation for the panel object.
--- Methods that use this function:
--- * [Panel:MoveTo](https://wiki.facepunch.com/gmod/Panel:MoveTo)
--- * [Panel:SizeTo](https://wiki.facepunch.com/gmod/Panel:SizeTo)
--- * [Panel:SlideUp](https://wiki.facepunch.com/gmod/Panel:SlideUp)
--- * [Panel:SlideDown](https://wiki.facepunch.com/gmod/Panel:SlideDown)
--- * [Panel:ColorTo](https://wiki.facepunch.com/gmod/Panel:ColorTo)
--- * [Panel:AlphaTo](https://wiki.facepunch.com/gmod/Panel:AlphaTo)
--- * [Panel:MoveBy](https://wiki.facepunch.com/gmod/Panel:MoveBy)
--- * [Panel:LerpPositions](https://wiki.facepunch.com/gmod/Panel:LerpPositions) 
--- [https://wiki.facepunch.com/gmod/Panel:NewAnimation]
--- @param length number @ The length of the animation in seconds.
--- @param delay number @ The delay before the animation starts.
--- @param ease number @ The power/index to use for easing.  Positive values greater than 1 will ease in; the higher the number, the sharper the curve's gradient (less linear).  A value of 1 removes all easing.  Positive values between 0 and 1 ease out; values closer to 0 increase the curve's gradient (less linear).  A value of 0 will break the animation and should be avoided.  Any value less than zero will ease in/out; the value has no effect on the gradient.
--- @param callback function @ The function to be called when the animation ends. Arguments passed are:  [table](https://wiki.facepunch.com/gmod/table) animTable - The [AnimationData](https://wiki.facepunch.com/gmod/Structures/AnimationData) that was used.  [Panel](https://wiki.facepunch.com/gmod/Panel) tgtPanel - The panel object that was animated.
--- @return table
function Panel:NewAnimation(length, delay, ease, callback) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/Panel:NewObject]
--- @param objectName string @ No description provided
--- @return void
function Panel:NewObject(objectName) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/Panel:NewObjectCallback]
--- @param objectName string @ No description provided
--- @param callbackName string @ No description provided
--- @return void
function Panel:NewObjectCallback(objectName, callbackName) end

--- (client) Sets whether this panel's drawings should be clipped within the parent panel's bounds.
--- See also [DisableClipping](https://wiki.facepunch.com/gmod/Global.DisableClipping). 
--- [https://wiki.facepunch.com/gmod/Panel:NoClipping]
--- @param clip boolean @ Whether to clip or not.
--- @return void
function Panel:NoClipping(clip) end

--- (client) Returns the number of children of the panel object that are selected. This is equivalent to calling [Panel:IsSelected](https://wiki.facepunch.com/gmod/Panel:IsSelected) on all child objects and counting the number of returns that are `true`. 
--- [https://wiki.facepunch.com/gmod/Panel:NumSelectedChildren]
--- @return number
function Panel:NumSelectedChildren() end

--- (client) Paints a ghost copy of the panel at the given position. 
--- [https://wiki.facepunch.com/gmod/Panel:PaintAt]
--- @param posX number @ The x coordinate to draw the panel from.
--- @param posY number @ The y coordinate to draw the panel from.
--- @return void
function Panel:PaintAt(posX, posY) end

--- (client) Paints the panel at its current position. To use this you must call [Panel:SetPaintedManually](https://wiki.facepunch.com/gmod/Panel:SetPaintedManually)(true). 
--- [https://wiki.facepunch.com/gmod/Panel:PaintManual]
--- @return void
function Panel:PaintManual() end

--- (client) Parents the panel to the HUD.
--- Makes it invisible on the escape-menu and disables controls. 
--- [https://wiki.facepunch.com/gmod/Panel:ParentToHUD]
--- @return void
function Panel:ParentToHUD() end

--- (client) Only works for TextEntries.
--- Pastes the contents of the clipboard into the TextEntry. 
--- [https://wiki.facepunch.com/gmod/Panel:Paste]
--- @return void
function Panel:Paste() end

--- (client) Sets the width and position of a [DLabel](https://wiki.facepunch.com/gmod/DLabel) and places the passed panel object directly to the right of it. Returns the `y` value of the bottom of the tallest object. The panel on which this method is run is not relevant; only the passed objects are affected. 
--- [https://wiki.facepunch.com/gmod/Panel:PositionLabel]
--- @param lblWidth number @ The width to set the label to.
--- @param x number @ The horizontal (x) position at which to place the label.
--- @param y number @ The vertical (y) position at which to place the label.
--- @param lbl Panel @ The label to resize and position.
--- @param panelObj Panel @ The panel object to place to the right of the label.
--- @return number
function Panel:PositionLabel(lblWidth, x, y, lbl, panelObj) end

--- (client) Sends a command to the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:PostMessage]
--- @param messageName string @ The name of the message.
--- @param valueType string @ The type of the variable to post.
--- @param value string @ The value to post.
--- @return void
function Panel:PostMessage(messageName, valueType, value) end

--- (client) Installs Lua defined functions into the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:Prepare]
--- @return void
function Panel:Prepare() end

--- (client) Enables the queue for panel animations. If enabled, the next new animation will begin after all current animations have ended. This must be called before [Panel:NewAnimation](https://wiki.facepunch.com/gmod/Panel:NewAnimation) to work, and only applies to the next new animation. If you want to queue many, you must call this before each. 
--- [https://wiki.facepunch.com/gmod/Panel:Queue]
--- @return void
function Panel:Queue() end

--- (client) Causes a [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon) to rebuild its model image. 
--- [https://wiki.facepunch.com/gmod/Panel:RebuildSpawnIcon]
--- @return void
function Panel:RebuildSpawnIcon() end

--- (client) Re-renders a spawn icon with customized cam data.
--- [PositionSpawnIcon](https://wiki.facepunch.com/gmod/Global.PositionSpawnIcon) can be used to easily calculate the necessary camera parameters. 
--- [https://wiki.facepunch.com/gmod/Panel:RebuildSpawnIconEx]
--- @param data table @ A four-membered table containing the information needed to re-render:  [Vector](https://wiki.facepunch.com/gmod/Vector) cam_pos - The relative camera position the model is viewed from.  [Angle](https://wiki.facepunch.com/gmod/Angle) cam_ang - The camera angle the model is viewed from.  [number](https://wiki.facepunch.com/gmod/number) cam_fov - The camera's field of view (FOV).  [Entity](https://wiki.facepunch.com/gmod/Entity) ent - The entity object of the model. See the example below for how to retrieve these values.
--- @return void
function Panel:RebuildSpawnIconEx(data) end

--- (client) Allows the panel to receive drag and drop events. Can be called multiple times with different names to receive multiple different draggable panel events. 
--- [https://wiki.facepunch.com/gmod/Panel:Receiver]
--- @param name string @ Name of DnD panels to receive. This is set on the drag'n'drop-able panels via  [Panel:Droppable](https://wiki.facepunch.com/gmod/Panel:Droppable)
--- @param func function @ This function is called whenever a panel with valid name is hovering above and dropped on this panel. It has next arguments:  [Panel](https://wiki.facepunch.com/gmod/Panel) pnl - The receiver panel  [table](https://wiki.facepunch.com/gmod/table) tbl - A table of panels dropped onto receiver panel  [boolean](https://wiki.facepunch.com/gmod/boolean) dropped - False if hovering over, true if dropped onto  [number](https://wiki.facepunch.com/gmod/number) menuIndex - Index of clicked menu item from third argument of [Panel:Receiver](https://wiki.facepunch.com/gmod/Panel:Receiver)  [number](https://wiki.facepunch.com/gmod/number) x - Cursor pos, relative to the receiver  [number](https://wiki.facepunch.com/gmod/number) y - Cursor pos, relative to the receiver
--- @param menu table @ A table of strings that will act as a menu if drag'n'drop was performed with a right click
--- @return void
function Panel:Receiver(name, func, menu) end

--- (client) Refreshes the HTML panel's current page. 
--- [https://wiki.facepunch.com/gmod/Panel:Refresh]
--- @param ignoreCache boolean @ If true, the refresh will ignore cached content similar to "ctrl+f5" in most browsers.
--- @return void
function Panel:Refresh(ignoreCache) end

--- (client) Marks a panel for deletion so it will be deleted on the next frame.
--- This will not mark child panels for deletion this frame, but they will be marked and deleted in the next frame.
--- See also [Panel:IsMarkedForDeletion](https://wiki.facepunch.com/gmod/Panel:IsMarkedForDeletion)
--- Will automatically call [Panel:InvalidateParent](https://wiki.facepunch.com/gmod/Panel:InvalidateParent). 
--- [https://wiki.facepunch.com/gmod/Panel:Remove]
--- @return void
function Panel:Remove() end

--- (client) Attempts to obtain focus for this panel. 
--- [https://wiki.facepunch.com/gmod/Panel:RequestFocus]
--- @return void
function Panel:RequestFocus() end

--- (client) Resets all text fades in a [RichText](https://wiki.facepunch.com/gmod/RichText) element made with [Panel:InsertFade](https://wiki.facepunch.com/gmod/Panel:InsertFade). 
--- [https://wiki.facepunch.com/gmod/Panel:ResetAllFades]
--- @param hold boolean @ True to reset fades, false otherwise.
--- @param expiredOnly boolean @ Any value equating to `true` will reset fades only on text segments that are completely faded out.
--- @param newSustain number @ The new sustain value of each faded text segment. Set to -1 to keep the old sustain value.
--- @return void
function Panel:ResetAllFades(hold, expiredOnly, newSustain) end

--- (client) Runs/Executes a string as JavaScript code in a panel. 
--- [https://wiki.facepunch.com/gmod/Panel:RunJavascript]
--- @param js string @ Specify JavaScript code to be executed.
--- @return void
function Panel:RunJavascript(js) end

--- (client) Saves the current state (caret position and the text inside) of a [TextEntry](https://wiki.facepunch.com/gmod/TextEntry) as an undo state.
--- See also [Panel:Undo](https://wiki.facepunch.com/gmod/Panel:Undo). 
--- [https://wiki.facepunch.com/gmod/Panel:SaveUndoState]
--- @return void
function Panel:SaveUndoState() end

--- (client) Translates global screen coordinate to coordinates relative to the panel.
--- See also [Panel:LocalToScreen](https://wiki.facepunch.com/gmod/Panel:LocalToScreen). 
--- [https://wiki.facepunch.com/gmod/Panel:ScreenToLocal]
--- @param screenX number @ The x coordinate of the screen position to be translated.
--- @param screenY number @ The y coordinate of the screed position be to translated.
--- @return number|number
function Panel:ScreenToLocal(screenX, screenY) end

--- (client) Selects all items within a panel or object. For text-based objects, selects all text. 
--- [https://wiki.facepunch.com/gmod/Panel:SelectAll]
--- @return void
function Panel:SelectAll() end

--- (client) If called on a text entry, clicking the text entry for the first time will automatically select all of the text ready to be copied by the user. 
--- [https://wiki.facepunch.com/gmod/Panel:SelectAllOnFocus]
--- @return void
function Panel:SelectAllOnFocus() end

--- (client) Selects all the text in a panel object. Will not select non-text items; for this, use [Panel:SelectAll](https://wiki.facepunch.com/gmod/Panel:SelectAll). 
--- [https://wiki.facepunch.com/gmod/Panel:SelectAllText]
--- @return void
function Panel:SelectAllText() end

--- (client) Deselects all items in a panel object. For text-based objects, this will deselect all text. 
--- [https://wiki.facepunch.com/gmod/Panel:SelectNone]
--- @return void
function Panel:SelectNone() end

--- (client) Sets the achievement to be displayed by [AchievementIcon](https://wiki.facepunch.com/gmod/AchievementIcon). 
--- [https://wiki.facepunch.com/gmod/Panel:SetAchievement]
--- @param id number @ Achievement number ID
--- @return void
function Panel:SetAchievement(id) end

--- (client) Used in [Button](https://wiki.facepunch.com/gmod/Button) to call a function when the button is clicked and in [Slider](https://wiki.facepunch.com/gmod/Slider) when the value changes. 
--- [https://wiki.facepunch.com/gmod/Panel:SetActionFunction]
--- @param func function @ Function to call when the [Button](https://wiki.facepunch.com/gmod/Button) is clicked or the [Slider](https://wiki.facepunch.com/gmod/Slider) value is changed. Arguments given are:  [Panel](https://wiki.facepunch.com/gmod/Panel) self - The panel itself  [string](https://wiki.facepunch.com/gmod/string) action - "Command" on button press, "SliderMoved" on slider move.  [number](https://wiki.facepunch.com/gmod/number) val - The new value of the [Slider](https://wiki.facepunch.com/gmod/Slider). Will always equal 0 for buttons.  [number](https://wiki.facepunch.com/gmod/number) zed - Always equals 0.
--- @return void
function Panel:SetActionFunction(func) end

--- (client) Configures a text input to allow user to type characters that are not included in the US-ASCII (7-bit ASCII) character set.
--- Characters not included in US-ASCII are multi-byte characters in UTF-8. They can be accented characters, non-Latin characters and special characters. 
--- [https://wiki.facepunch.com/gmod/Panel:SetAllowNonAsciiCharacters]
--- @param allowed boolean @ Set to true in order not to restrict input characters.
--- @return void
function Panel:SetAllowNonAsciiCharacters(allowed) end

--- (client) Sets the alpha multiplier for the panel 
--- [https://wiki.facepunch.com/gmod/Panel:SetAlpha]
--- @param alpha number @ The alpha value in the range of 0-255.
--- @return void
function Panel:SetAlpha(alpha) end

--- (client) Enables or disables animations for the panel object by overriding the [PANEL:AnimationThink](https://wiki.facepunch.com/gmod/PANEL:AnimationThink) hook to nil and back. 
--- [https://wiki.facepunch.com/gmod/Panel:SetAnimationEnabled]
--- @param enable boolean @ Whether to enable or disable animations.
--- @return void
function Panel:SetAnimationEnabled(enable) end

--- (client) Sets whenever the panel should be removed if the parent was removed. 
--- [https://wiki.facepunch.com/gmod/Panel:SetAutoDelete]
--- @param autoDelete boolean @ Whenever to delete if the parent was removed or not.
--- @return void
function Panel:SetAutoDelete(autoDelete) end

--- (client) Sets the background color of a panel such as a [RichText](https://wiki.facepunch.com/gmod/RichText), [Label](https://wiki.facepunch.com/gmod/Label) or [DColorCube](https://wiki.facepunch.com/gmod/DColorCube).
--- For [DLabel](https://wiki.facepunch.com/gmod/DLabel) elements, you must use [Panel:SetPaintBackgroundEnabled](https://wiki.facepunch.com/gmod/Panel:SetPaintBackgroundEnabled)( true ) before applying the color.
--- This will not work on setup of the panel - you should use this function in a hook like [PANEL:ApplySchemeSettings](https://wiki.facepunch.com/gmod/PANEL:ApplySchemeSettings) or [PANEL:PerformLayout](https://wiki.facepunch.com/gmod/PANEL:PerformLayout). 
--- [https://wiki.facepunch.com/gmod/Panel:SetBGColor]
--- @param r or color number @ The red channel of the color, or a [Color](https://wiki.facepunch.com/gmod/Color). If you pass the latter, the following three arguments are ignored.
--- @param g number @ The green channel of the color.
--- @param b number @ The blue channel of the color.
--- @param a number @ The alpha channel of the color.
--- @return void
function Panel:SetBGColor(r or color, g, b, a) end

--- (client) Sets the background color of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:SetBGColorEx]
--- @param r number @ The red channel of the color.
--- @param g number @ The green channel of the color.
--- @param b number @ The blue channel of the color.
--- @param a number @ The alpha channel of the color.
--- @return void
function Panel:SetBGColorEx(r, g, b, a) end

--- (client) Sets the position of the caret (or text cursor) in a text-based panel object. 
--- [https://wiki.facepunch.com/gmod/Panel:SetCaretPos]
--- @param offset number @ Caret position/offset from the start of text. A value of `0` places the caret before the first character.
--- @return void
function Panel:SetCaretPos(offset) end

--- (client) Sets the action signal command that's fired when a [Button](https://wiki.facepunch.com/gmod/Button) is clicked. The hook [PANEL:ActionSignal](https://wiki.facepunch.com/gmod/PANEL:ActionSignal) is called as the click response.
--- This has no effect on buttons unless it has had its `AddActionSignalTarget` method called (an internal function not available by default in Garry's Mod LUA).
--- A better alternative is calling [Panel:Command](https://wiki.facepunch.com/gmod/Panel:Command) when a [DButton](https://wiki.facepunch.com/gmod/DButton) is clicked. 
--- [https://wiki.facepunch.com/gmod/Panel:SetCommand]
--- @return void
function Panel:SetCommand() end

--- (client) Sets the alignment of the contents. 
--- [https://wiki.facepunch.com/gmod/Panel:SetContentAlignment]
--- @param alignment number @ The direction of the content, based on the number pad. : bottom-left  : bottom-center  : bottom-right  : middle-left  : center  : middle-right  : top-left  : top-center  : top-right
--- @return void
function Panel:SetContentAlignment(alignment) end

--- (client) Sets this panel's convar. When the convar changes this panel will update automatically.
--- For developer implementation, see [Derma_Install_Convar_Functions](https://wiki.facepunch.com/gmod/Global.Derma_Install_Convar_Functions). 
--- [https://wiki.facepunch.com/gmod/Panel:SetConVar]
--- @param convar string @ The console variable to check.
--- @return void
function Panel:SetConVar(convar) end

--- (client) Stores a string in the named cookie using [Panel:GetCookieName](https://wiki.facepunch.com/gmod/Panel:GetCookieName) as prefix.
--- You can also retrieve and modify this cookie by using the [cookie](https://wiki.facepunch.com/gmod/cookie). Cookies are stored in this format:
--- ```
--- panelCookieName.cookieName
--- ``` 
--- [https://wiki.facepunch.com/gmod/Panel:SetCookie]
--- @param cookieName string @ The unique name used to retrieve the cookie later.
--- @param value string @ The value to store in the cookie. This can be retrieved later as a [string](https://wiki.facepunch.com/gmod/string) or [number](https://wiki.facepunch.com/gmod/number).
--- @return void
function Panel:SetCookie(cookieName, value) end

--- (client) Sets the panel's cookie name. Calls [PANEL:LoadCookies](https://wiki.facepunch.com/gmod/PANEL:LoadCookies) if defined. 
--- [https://wiki.facepunch.com/gmod/Panel:SetCookieName]
--- @param name string @ The panel's cookie name. Used as prefix for [Panel:SetCookie](https://wiki.facepunch.com/gmod/Panel:SetCookie)
--- @return void
function Panel:SetCookieName(name) end

--- (client) Sets the appearance of the cursor. You can find a list of all available cursors with image previews [here](https://wiki.facepunch.com/gmod/Cursors). 
--- [https://wiki.facepunch.com/gmod/Panel:SetCursor]
--- @param cursor string @ The cursor to be set. Can be one of the following:  [arrow](https://wiki.facepunch.com/gmod/Cursors#:~:text=arrow)  [beam](https://wiki.facepunch.com/gmod/Cursors#:~:text=beam)  [hourglass](https://wiki.facepunch.com/gmod/Cursors#:~:text=hourglass)  [waitarrow](https://wiki.facepunch.com/gmod/Cursors#:~:text=waitarrow)  [crosshair](https://wiki.facepunch.com/gmod/Cursors#:~:text=crosshair)  [up](https://wiki.facepunch.com/gmod/Cursors#:~:text=up)  [sizenwse](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizenwse)  [sizenesw](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizenesw)  [sizewe](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizewe)  [sizens](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizens)  [sizeall](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizeall)  [no](https://wiki.facepunch.com/gmod/Cursors#:~:text=no)  [hand](https://wiki.facepunch.com/gmod/Cursors#:~:text=hand)  [blank](https://wiki.facepunch.com/gmod/Cursors#:~:text=blank) Set to anything else to set it to "none", the default fallback. Do note that a value of "none" does not, as one might assume, result in no cursor being drawn - hiding the cursor requires a value of "blank" instead.
--- @return void
function Panel:SetCursor(cursor) end

--- (client) Sets the drag parent.
--- Drag parent means that when we start to drag this panel, we'll really start dragging the defined parent. 
--- [https://wiki.facepunch.com/gmod/Panel:SetDragParent]
--- @param parent Panel @ The panel to set as drag parent.
--- @return void
function Panel:SetDragParent(parent) end

--- (client) Sets the visibility of the language selection box in a TextEntry when typing in non-English mode.
--- See [Panel:SetDrawLanguageIDAtLeft](https://wiki.facepunch.com/gmod/Panel:SetDrawLanguageIDAtLeft) for a function that changes the position of the language selection box. 
--- [https://wiki.facepunch.com/gmod/Panel:SetDrawLanguageID]
--- @param visible boolean @ true to make it visible, false to hide it.
--- @return void
function Panel:SetDrawLanguageID(visible) end

--- (client) Sets where to draw the language selection box.
--- See [Panel:SetDrawLanguageID](https://wiki.facepunch.com/gmod/Panel:SetDrawLanguageID) for a function that hides or shows the language selection box. 
--- [https://wiki.facepunch.com/gmod/Panel:SetDrawLanguageIDAtLeft]
--- @param left boolean @ true = left, false = right
--- @return void
function Panel:SetDrawLanguageIDAtLeft(left) end

--- (client) Makes the panel render in front of all others, including the spawn menu and main menu.
--- Priority is given based on the last call, so of two panels that call this method, the second will draw in front of the first. 
--- [https://wiki.facepunch.com/gmod/Panel:SetDrawOnTop]
--- @param drawOnTop boolean @ Whether or not to draw the panel in front of all others.
--- @return void
function Panel:SetDrawOnTop(drawOnTop) end

--- (client) Sets the target area for dropping when an object is being dragged around this panel using the [dragndrop](https://wiki.facepunch.com/gmod/dragndrop). 
--- This draws a target box of the specified size and position, until [Panel:DragHoverEnd](https://wiki.facepunch.com/gmod/Panel:DragHoverEnd) is called. It uses [Panel:DrawDragHover](https://wiki.facepunch.com/gmod/Panel:DrawDragHover) to draw this area. 
--- [https://wiki.facepunch.com/gmod/Panel:SetDropTarget]
--- @param x number @ The x coordinate of the top-left corner of the drop area.
--- @param y number @ The y coordinate of the top-left corner of the drop area.
--- @param width number @ The width of the drop area.
--- @param height number @ The height of the drop area.
--- @return void
function Panel:SetDropTarget(x, y, width, height) end

--- (client) Sets the enabled state of a disable-able panel object, such as a [DButton](https://wiki.facepunch.com/gmod/DButton) or [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry).
--- See [Panel:IsEnabled](https://wiki.facepunch.com/gmod/Panel:IsEnabled) for a function that retrieves the "enabled" state of a panel. 
--- [https://wiki.facepunch.com/gmod/Panel:SetEnabled]
--- @param enable boolean @ Whether to enable or disable the panel object.
--- @return void
function Panel:SetEnabled(enable) end

--- (client) Adds a shadow falling to the bottom right corner of the panel's text. This has no effect on panels that do not derive from Label. 
--- [https://wiki.facepunch.com/gmod/Panel:SetExpensiveShadow]
--- @param distance number @ The distance of the shadow from the panel.
--- @param Color table @ The color of the shadow. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function Panel:SetExpensiveShadow(distance, Color) end

--- (client) Sets the foreground color of a panel.
--- For a [Label](https://wiki.facepunch.com/gmod/Label) or [RichText](https://wiki.facepunch.com/gmod/RichText), this is the color of its text.
--- This function calls [Panel:SetFGColorEx](https://wiki.facepunch.com/gmod/Panel:SetFGColorEx) internally. 
--- [https://wiki.facepunch.com/gmod/Panel:SetFGColor]
--- @param r or color number @ The red channel of the color, or a [Color](https://wiki.facepunch.com/gmod/Color). If you pass the latter, the following three arguments are ignored.
--- @param g number @ The green channel of the color.
--- @param b number @ The blue channel of the color.
--- @param a number @ The alpha channel of the color.
--- @return void
function Panel:SetFGColor(r or color, g, b, a) end

--- (client) Sets the foreground color of the panel.
--- For labels, this is the color of their text. 
--- [https://wiki.facepunch.com/gmod/Panel:SetFGColorEx]
--- @param r number @ The red channel of the color.
--- @param g number @ The green channel of the color.
--- @param b number @ The blue channel of the color.
--- @param a number @ The alpha channel of the color.
--- @return void
function Panel:SetFGColorEx(r, g, b, a) end

--- (client) Sets the panel that owns this FocusNavGroup to be the root in the focus traversal hierarchy. This function will only work on EditablePanel class panels and its derivatives. 
--- [https://wiki.facepunch.com/gmod/Panel:SetFocusTopLevel]
--- @param state boolean @ No description provided
--- @return void
function Panel:SetFocusTopLevel(state) end

--- (client) Sets the font used to render this panel's text.
--- To retrieve the font used by a panel, call [Panel:GetFont](https://wiki.facepunch.com/gmod/Panel:GetFont). 
--- [https://wiki.facepunch.com/gmod/Panel:SetFontInternal]
--- @param fontName string @ The name of the font. See [here](https://wiki.facepunch.com/gmod/Default_Fonts) for a list of existing fonts. Alternatively, use [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont) to create your own custom font.
--- @return void
function Panel:SetFontInternal(fontName) end

--- (client) Sets the height of the panel.
--- Calls [PANEL:OnSizeChanged](https://wiki.facepunch.com/gmod/PANEL:OnSizeChanged) and marks this panel for layout ([Panel:InvalidateLayout](https://wiki.facepunch.com/gmod/Panel:InvalidateLayout)).
--- See also [Panel:SetSize](https://wiki.facepunch.com/gmod/Panel:SetSize). 
--- [https://wiki.facepunch.com/gmod/Panel:SetHeight]
--- @param height number @ The height to be set.
--- @return void
function Panel:SetHeight(height) end

--- (client) Allows you to set HTML code within a panel. 
--- [https://wiki.facepunch.com/gmod/Panel:SetHTML]
--- @param HTML code string @ The code to set.
--- @return void
function Panel:SetHTML(HTML code) end

--- (client) Enables or disables the keyboard input for the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:SetKeyBoardInputEnabled]
--- @param keyboardInput boolean @ Whether to enable or disable keyboard input.
--- @return void
function Panel:SetKeyBoardInputEnabled(keyboardInput) end

--- (client) Sets the maximum character count this panel should have.
--- This function will only work on [RichText](https://wiki.facepunch.com/gmod/RichText) and [TextEntry](https://wiki.facepunch.com/gmod/TextEntry) panels and their derivatives. 
--- [https://wiki.facepunch.com/gmod/Panel:SetMaximumCharCount]
--- @param maxChar number @ The new maximum amount of characters this panel is allowed to contain.
--- @return void
function Panel:SetMaximumCharCount(maxChar) end

--- (client) Sets the minimum dimensions of the panel or object.
--- You can restrict either or both values.
--- Calling the function without arguments will remove the minimum size. 
--- [https://wiki.facepunch.com/gmod/Panel:SetMinimumSize]
--- @param minW number @ The minimum width of the object.
--- @param minH number @ The minimum height of the object.
--- @return void
function Panel:SetMinimumSize(minW, minH) end

--- (client) Sets the model to be displayed by [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon). 
--- [https://wiki.facepunch.com/gmod/Panel:SetModel]
--- @param ModelPath string @ The path of the model to set
--- @param skin number @ The skin to set
--- @param bodygroups string @ The body groups to set. Each single-digit number in the string represents a separate bodygroup, This argument must be 9 characters in total.
--- @return void
function Panel:SetModel(ModelPath, skin, bodygroups) end

--- (client) Enables or disables the mouse input for the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:SetMouseInputEnabled]
--- @param mouseInput boolean @ Whenever to enable or disable mouse input.
--- @return void
function Panel:SetMouseInputEnabled(mouseInput) end

--- (client) Sets the internal name of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:SetName]
--- @param name string @ The new name of the panel.
--- @return void
function Panel:SetName(name) end

--- (client) Sets whenever all the default background of the panel should be drawn or not. 
--- [https://wiki.facepunch.com/gmod/Panel:SetPaintBackgroundEnabled]
--- @param paintBackground boolean @ Whenever to draw the background or not.
--- @return void
function Panel:SetPaintBackgroundEnabled(paintBackground) end

--- (client) Sets whenever all the default border of the panel should be drawn or not. 
--- [https://wiki.facepunch.com/gmod/Panel:SetPaintBorderEnabled]
--- @param paintBorder boolean @ Whenever to draw the border or not.
--- @return void
function Panel:SetPaintBorderEnabled(paintBorder) end

--- (client) Enables or disables painting of the panel manually with [Panel:PaintManual](https://wiki.facepunch.com/gmod/Panel:PaintManual). 
--- [https://wiki.facepunch.com/gmod/Panel:SetPaintedManually]
--- @param paintedManually boolean @ True if the panel should be painted manually.
--- @return void
function Panel:SetPaintedManually(paintedManually) end

--- (client) This function does nothing. 
--- [https://wiki.facepunch.com/gmod/Panel:SetPaintFunction]
--- @return void
function Panel:SetPaintFunction() end

--- (client) Sets the parent of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:SetParent]
--- @param parent Panel @ The new parent of the panel.
--- @return void
function Panel:SetParent(parent) end

--- (client) Used by [AvatarImage](https://wiki.facepunch.com/gmod/AvatarImage) to load an avatar for given player. 
--- [https://wiki.facepunch.com/gmod/Panel:SetPlayer]
--- @param player Player @ The player to use avatar of.
--- @param size number @ The size of the avatar to use. Acceptable sizes are 32, 64, 184.
--- @return void
function Panel:SetPlayer(player, size) end

--- (client) If this panel object has been made a popup with [Panel:MakePopup](https://wiki.facepunch.com/gmod/Panel:MakePopup), this method will prevent it from drawing in front of other panels when it receives input focus. 
--- [https://wiki.facepunch.com/gmod/Panel:SetPopupStayAtBack]
--- @param stayAtBack boolean @ If `true`, the popup panel will not draw in front of others when it gets focus, for example when it is clicked.
--- @return void
function Panel:SetPopupStayAtBack(stayAtBack) end

--- (client) Sets the position of the panel's top left corner.
--- This will trigger [PANEL:PerformLayout](https://wiki.facepunch.com/gmod/PANEL:PerformLayout). You should avoid calling this function in [PANEL:PerformLayout](https://wiki.facepunch.com/gmod/PANEL:PerformLayout) to avoid infinite loops.
--- See also [Panel:SetX](https://wiki.facepunch.com/gmod/Panel:SetX) and [Panel:SetY](https://wiki.facepunch.com/gmod/Panel:SetY). 
--- [https://wiki.facepunch.com/gmod/Panel:SetPos]
--- @param posX number @ The x coordinate of the position.
--- @param posY number @ The y coordinate of the position.
--- @return void
function Panel:SetPos(posX, posY) end

--- (client) Sets whenever the panel should be rendered in the next screenshot. 
--- [https://wiki.facepunch.com/gmod/Panel:SetRenderInScreenshots]
--- @param renderInScreenshot boolean @ Whenever to render or not.
--- @return void
function Panel:SetRenderInScreenshots(renderInScreenshot) end

--- (client) Sets whether the panel object can be selected or not (like icons in the Spawn Menu, holding ). If enabled, this will affect the function of a [DButton](https://wiki.facepunch.com/gmod/DButton) whilst  is pressed. [Panel:SetSelected](https://wiki.facepunch.com/gmod/Panel:SetSelected) can be used to select/deselect the object. 
--- [https://wiki.facepunch.com/gmod/Panel:SetSelectable]
--- @param selectable boolean @ Whether the panel object should be selectable or not.
--- @return void
function Panel:SetSelectable(selectable) end

--- (client) Sets the selected state of a selectable panel object. This functionality is set with [Panel:SetSelectable](https://wiki.facepunch.com/gmod/Panel:SetSelectable) and checked with [Panel:IsSelectable](https://wiki.facepunch.com/gmod/Panel:IsSelectable). 
--- [https://wiki.facepunch.com/gmod/Panel:SetSelected]
--- @param selected boolean @ Whether the object should be selected or deselected. [Panel:IsSelected](https://wiki.facepunch.com/gmod/Panel:IsSelected) can be used to determine the selected state of the object.
--- @return void
function Panel:SetSelected(selected) end

--- (client) Enables the panel object for selection (much like the spawn menu). 
--- [https://wiki.facepunch.com/gmod/Panel:SetSelectionCanvas]
--- @param selCanvas any @ Any value other than `nil` or `false` will enable the panel object for selection. It is recommended to pass `true`.
--- @return void
function Panel:SetSelectionCanvas(selCanvas) end

--- (client) Sets the size of the panel.
--- Calls [PANEL:OnSizeChanged](https://wiki.facepunch.com/gmod/PANEL:OnSizeChanged) and marks this panel for layout ([Panel:InvalidateLayout](https://wiki.facepunch.com/gmod/Panel:InvalidateLayout)).
--- See also [Panel:SetWidth](https://wiki.facepunch.com/gmod/Panel:SetWidth) and [Panel:SetHeight](https://wiki.facepunch.com/gmod/Panel:SetHeight). 
--- [https://wiki.facepunch.com/gmod/Panel:SetSize]
--- @param width number @ The width of the panel.
--- @param height number @ The height of the panel.
--- @return void
function Panel:SetSize(width, height) end

--- (client) Sets the derma skin that the panel object will use, and refreshes all panels with [derma.RefreshSkins](https://wiki.facepunch.com/gmod/derma.RefreshSkins). 
--- [https://wiki.facepunch.com/gmod/Panel:SetSkin]
--- @param skinName string @ The name of the skin to use. The default derma skin is `Default`.
--- @return void
function Panel:SetSkin(skinName) end

--- (client) Sets the `.png` image to be displayed on a  [SpawnIcon](https://wiki.facepunch.com/gmod/SpawnIcon) or the panel it is based on - [ModelImage](https://wiki.facepunch.com/gmod/ModelImage).
--- Only `.png` images can be used with this function. 
--- [https://wiki.facepunch.com/gmod/Panel:SetSpawnIcon]
--- @param icon string @ A path to the .png material, for example one of the [Silkicons](https://wiki.facepunch.com/gmod/Silkicons) shipped with the game.
--- @return void
function Panel:SetSpawnIcon(icon) end

--- (client) Used by [AvatarImage](https://wiki.facepunch.com/gmod/AvatarImage) panels to load an avatar by its 64-bit Steam ID (community ID). 
--- [https://wiki.facepunch.com/gmod/Panel:SetSteamID]
--- @param steamid string @ The 64bit SteamID of the player to load avatar of
--- @param size number @ The size of the avatar to use. Acceptable sizes are 32, 64, 184.
--- @return void
function Panel:SetSteamID(steamid, size) end

--- (client) When TAB is pressed, the next selectable panel in the number sequence is selected. 
--- [https://wiki.facepunch.com/gmod/Panel:SetTabPosition]
--- @param position number @ No description provided
--- @return void
function Panel:SetTabPosition(position) end

--- (client) Sets height of a panel. An alias of [Panel:SetHeight](https://wiki.facepunch.com/gmod/Panel:SetHeight). 
--- [https://wiki.facepunch.com/gmod/Panel:SetTall]
--- @param height number @ Desired height to set
--- @return void
function Panel:SetTall(height) end

--- (client) Removes the panel after given time in seconds. 
--- [https://wiki.facepunch.com/gmod/Panel:SetTerm]
--- @param delay number @ Delay in seconds after which the panel should be removed.
--- @return void
function Panel:SetTerm(delay) end

--- (client) Sets the text value of a panel object containing text, such as a [Label](https://wiki.facepunch.com/gmod/Label), [TextEntry](https://wiki.facepunch.com/gmod/TextEntry) or  [RichText](https://wiki.facepunch.com/gmod/RichText) and their derivatives, such as [DLabel](https://wiki.facepunch.com/gmod/DLabel), [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) or [DButton](https://wiki.facepunch.com/gmod/DButton). 
--- [https://wiki.facepunch.com/gmod/Panel:SetText]
--- @param text string @ The text value to set.
--- @return void
function Panel:SetText(text) end

--- (client) Sets the left and top text margins of a text-based panel object, such as a [DButton](https://wiki.facepunch.com/gmod/DButton) or [DLabel](https://wiki.facepunch.com/gmod/DLabel). 
--- [https://wiki.facepunch.com/gmod/Panel:SetTextInset]
--- @param insetX number @ The left margin for the text, in pixels. This will only affect centered text if the margin is greater than its x-coordinate.
--- @param insetY number @ The top margin for the text, in pixels.
--- @return void
function Panel:SetTextInset(insetX, insetY) end

--- (client) Sets the height of a [RichText](https://wiki.facepunch.com/gmod/RichText) element to accommodate the text inside. 
--- [https://wiki.facepunch.com/gmod/Panel:SetToFullHeight]
--- @return void
function Panel:SetToFullHeight() end

--- (client) Sets the tooltip to be displayed when a player hovers over the panel object with their cursor. 
--- [https://wiki.facepunch.com/gmod/Panel:SetTooltip]
--- @param str string @ The text to be displayed in the tooltip. Set false to disable it.
--- @return void
function Panel:SetTooltip(str) end

--- (client) Sets the panel to be displayed as contents of a [DTooltip](https://wiki.facepunch.com/gmod/DTooltip) when a player hovers over the panel object with their cursor. See [Panel:SetTooltipPanelOverride](https://wiki.facepunch.com/gmod/Panel:SetTooltipPanelOverride) if you are looking to override [DTooltip](https://wiki.facepunch.com/gmod/DTooltip) itself. 
--- [https://wiki.facepunch.com/gmod/Panel:SetTooltipPanel]
--- @param tooltipPanel Panel @ The panel to use as the tooltip.
--- @return void
function Panel:SetTooltipPanel(tooltipPanel) end

--- (client) Sets the panel class to be created instead of [DTooltip](https://wiki.facepunch.com/gmod/DTooltip) when the player hovers over this panel and a tooltip needs creating. 
--- [https://wiki.facepunch.com/gmod/Panel:SetTooltipPanelOverride]
--- @param override string @ The panel class to override the default [DTooltip](https://wiki.facepunch.com/gmod/DTooltip). The new panel class must have the following methods:  [SetText](https://wiki.facepunch.com/gmod/Panel:SetText) - If you are using [Panel:SetTooltip](https://wiki.facepunch.com/gmod/Panel:SetTooltip).  [SetContents](https://wiki.facepunch.com/gmod/DTooltip:SetContents) - If you are using [Panel:SetTooltipPanel](https://wiki.facepunch.com/gmod/Panel:SetTooltipPanel).  [OpenForPanel](https://wiki.facepunch.com/gmod/DTooltip:OpenForPanel) - A "hook" type function that gets called shortly after creation (and after the above 2) to open and position the tooltip. You can see this logic in `lua/includes/util/tooltips.lua`.
--- @return void
function Panel:SetTooltipPanelOverride(override) end

--- (client) Sets the underlined font for use by clickable text in a [RichText](https://wiki.facepunch.com/gmod/RichText). See also [Panel:InsertClickableTextStart](https://wiki.facepunch.com/gmod/Panel:InsertClickableTextStart)
--- This function will only work on [RichText](https://wiki.facepunch.com/gmod/RichText) panels. 
--- [https://wiki.facepunch.com/gmod/Panel:SetUnderlineFont]
--- @param fontName string @ The name of the font. See [here](https://wiki.facepunch.com/gmod/Default_Fonts) for a list of existing fonts. Alternatively, use [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont) to create your own custom font.
--- @return void
function Panel:SetUnderlineFont(fontName) end

--- (client) Sets the URL of a link-based panel such as [DLabelURL](https://wiki.facepunch.com/gmod/DLabelURL). 
--- [https://wiki.facepunch.com/gmod/Panel:SetURL]
--- @param url string @ The URL to set. It must begin with either `http://` or `https://`.
--- @return void
function Panel:SetURL(url) end

--- (client) Sets the visibility of the vertical scrollbar.
--- Works for [RichText](https://wiki.facepunch.com/gmod/RichText) and [TextEntry](https://wiki.facepunch.com/gmod/TextEntry). 
--- [https://wiki.facepunch.com/gmod/Panel:SetVerticalScrollbarEnabled]
--- @param display boolean @ True to display the vertical text scroll bar, false to hide it.
--- @return void
function Panel:SetVerticalScrollbarEnabled(display) end

--- (client) Sets the "visibility" of the panel. 
--- [https://wiki.facepunch.com/gmod/Panel:SetVisible]
--- @param visible boolean @ The visibility of the panel.
--- @return void
function Panel:SetVisible(visible) end

--- (client) Sets width of a panel. An alias of [Panel:SetWidth](https://wiki.facepunch.com/gmod/Panel:SetWidth). 
--- [https://wiki.facepunch.com/gmod/Panel:SetWide]
--- @param width number @ Desired width to set
--- @return void
function Panel:SetWide(width) end

--- (client) Sets the width of the panel.
--- Calls [PANEL:OnSizeChanged](https://wiki.facepunch.com/gmod/PANEL:OnSizeChanged) and marks this panel for layout ([Panel:InvalidateLayout](https://wiki.facepunch.com/gmod/Panel:InvalidateLayout)).
--- See also [Panel:SetSize](https://wiki.facepunch.com/gmod/Panel:SetSize). 
--- [https://wiki.facepunch.com/gmod/Panel:SetWidth]
--- @param width number @ The new width of the panel.
--- @return void
function Panel:SetWidth(width) end

--- (client) This makes it so that when you're hovering over this panel you can `click` on the world. Your viewmodel will aim etc. This is primarily used for the Sandbox context menu. 
--- [https://wiki.facepunch.com/gmod/Panel:SetWorldClicker]
--- @param enabled boolean @ No description provided
--- @return void
function Panel:SetWorldClicker(enabled) end

--- (client) Sets whether text wrapping should be enabled or disabled on [Label](https://wiki.facepunch.com/gmod/Label) and [DLabel](https://wiki.facepunch.com/gmod/DLabel) panels.
--- Use [DLabel:SetAutoStretchVertical](https://wiki.facepunch.com/gmod/DLabel:SetAutoStretchVertical) to automatically correct vertical size; [Panel:SizeToContents](https://wiki.facepunch.com/gmod/Panel:SizeToContents) will not set the correct height. 
--- [https://wiki.facepunch.com/gmod/Panel:SetWrap]
--- @param wrap boolean @ `True` to enable text wrapping, `false` otherwise.
--- @return void
function Panel:SetWrap(wrap) end

--- (client) Sets the X position of the panel.
--- Uses [Panel:SetPos](https://wiki.facepunch.com/gmod/Panel:SetPos) internally. 
--- [https://wiki.facepunch.com/gmod/Panel:SetX]
--- @param x number @ The X coordinate of the position.
--- @return void
function Panel:SetX(x) end

--- (client) Sets the Y position of the panel.
--- Uses [Panel:SetPos](https://wiki.facepunch.com/gmod/Panel:SetPos) internally. 
--- [https://wiki.facepunch.com/gmod/Panel:SetY]
--- @param y number @ The Y coordinate of the position.
--- @return void
function Panel:SetY(y) end

--- (client) Sets the panels z position which determines the rendering order.
--- Panels with lower z positions appear behind panels with higher z positions.
--- This also controls in which order panels docked with [Panel:Dock](https://wiki.facepunch.com/gmod/Panel:Dock) appears. 
--- [https://wiki.facepunch.com/gmod/Panel:SetZPos]
--- @param zIndex number @ The z position of the panel.  Can't be lower than -32768 or higher than 32767.
--- @return void
function Panel:SetZPos(zIndex) end

--- (client) Makes a panel visible. 
--- [https://wiki.facepunch.com/gmod/Panel:Show]
--- @return void
function Panel:Show() end

--- (client) Uses animation to resize the panel to the specified size. 
--- [https://wiki.facepunch.com/gmod/Panel:SizeTo]
--- @param sizeW number @ The target width of the panel. Use -1 to retain the current width.
--- @param sizeH number @ The target height of the panel. Use -1 to retain the current height.
--- @param time number @ The time to perform the animation within.
--- @param delay number @ The delay before the animation starts.
--- @param ease number @ Easing of the start and/or end speed of the animation. See [Panel:NewAnimation](https://wiki.facepunch.com/gmod/Panel:NewAnimation) for how this works.
--- @param callback function @ The function to be called once the animation finishes. Arguments are:  [table](https://wiki.facepunch.com/gmod/table) animData - The [AnimationData](https://wiki.facepunch.com/gmod/Structures/AnimationData) that was used.  [Panel](https://wiki.facepunch.com/gmod/Panel) pnl - The panel object that was resized.
--- @return void
function Panel:SizeTo(sizeW, sizeH, time, delay, ease, callback) end

--- (client) Resizes the panel to fit the bounds of its children. 
--- [https://wiki.facepunch.com/gmod/Panel:SizeToChildren]
--- @param sizeW boolean @ Resize with width of the panel.
--- @param sizeH boolean @ Resize the height of the panel.
--- @return void
function Panel:SizeToChildren(sizeW, sizeH) end

--- (client) Resizes the panel so that its width and height fit all of the content inside. 
--- [https://wiki.facepunch.com/gmod/Panel:SizeToContents]
--- @return void
function Panel:SizeToContents() end

--- (client) Resizes the panel object's width to accommodate all child objects/contents.
--- Only works on [Label](https://wiki.facepunch.com/gmod/Label) derived panels such as [DLabel](https://wiki.facepunch.com/gmod/DLabel) by default, and on any panel that manually implemented [Panel:GetContentSize](https://wiki.facepunch.com/gmod/Panel:GetContentSize) method. 
--- [https://wiki.facepunch.com/gmod/Panel:SizeToContentsX]
--- @param addVal number @ The number of extra pixels to add to the width. Can be a negative number, to reduce the width.
--- @return void
function Panel:SizeToContentsX(addVal) end

--- (client) Resizes the panel object's height to accommodate all child objects/contents.
--- Only works on [Label](https://wiki.facepunch.com/gmod/Label) derived panels such as [DLabel](https://wiki.facepunch.com/gmod/DLabel) by default, and on any panel that manually implemented [Panel:GetContentSize](https://wiki.facepunch.com/gmod/Panel:GetContentSize) method. 
--- [https://wiki.facepunch.com/gmod/Panel:SizeToContentsY]
--- @param addVal number @ The number of extra pixels to add to the height.
--- @return void
function Panel:SizeToContentsY(addVal) end

--- (client) Slides the panel in from above. 
--- [https://wiki.facepunch.com/gmod/Panel:SlideDown]
--- @param Length number @ Time to complete the animation.
--- @return void
function Panel:SlideDown(Length) end

--- (client) Slides the panel out to the top. 
--- [https://wiki.facepunch.com/gmod/Panel:SlideUp]
--- @param Length number @ Time to complete the animation.
--- @return void
function Panel:SlideUp(Length) end

--- (client) Begins a box selection, enables mouse capture for the panel object, and sets the start point of the selection box to the mouse cursor's position, relative to this object. For this to work, either the object or its parent must be enabled as a selection canvas. This is set using [Panel:SetSelectionCanvas](https://wiki.facepunch.com/gmod/Panel:SetSelectionCanvas). 
--- [https://wiki.facepunch.com/gmod/Panel:StartBoxSelection]
--- @return void
function Panel:StartBoxSelection() end

--- (client) Stops all panel animations by clearing its animation list. This also clears all delayed animations. 
--- [https://wiki.facepunch.com/gmod/Panel:Stop]
--- @return void
function Panel:Stop() end

--- (client) Resizes the panel object's height so that its bottom is aligned with the top of the passed panel. An offset greater than zero will reduce the panel's height to leave a gap between it and the passed panel. 
--- [https://wiki.facepunch.com/gmod/Panel:StretchBottomTo]
--- @param tgtPanel Panel @ The panel to align the bottom of this one with.
--- @param offset number @ The gap to leave between this and the passed panel. Negative values will cause the panel's height to increase, forming an overlap.
--- @return void
function Panel:StretchBottomTo(tgtPanel, offset) end

--- (client) Resizes the panel object's width so that its right edge is aligned with the left of the passed panel. An offset greater than zero will reduce the panel's width to leave a gap between it and the passed panel. 
--- [https://wiki.facepunch.com/gmod/Panel:StretchRightTo]
--- @param tgtPanel Panel @ The panel to align the right edge of this one with.
--- @param offset number @ The gap to leave between this and the passed panel. Negative values will cause the panel's width to increase, forming an overlap.
--- @return void
function Panel:StretchRightTo(tgtPanel, offset) end

--- (client) Sets the dimensions of the panel to fill its parent. It will only stretch in directions that aren't nil. 
--- [https://wiki.facepunch.com/gmod/Panel:StretchToParent]
--- @param offsetLeft number @ The left offset to the parent.
--- @param offsetTop number @ The top offset to the parent.
--- @param offsetRight number @ The right offset to the parent.
--- @param offsetBottom number @ The bottom offset to the parent.
--- @return void
function Panel:StretchToParent(offsetLeft, offsetTop, offsetRight, offsetBottom) end

--- (client) Toggles the selected state of a selectable panel object. This functionality is set with [Panel:SetSelectable](https://wiki.facepunch.com/gmod/Panel:SetSelectable) and checked with [Panel:IsSelectable](https://wiki.facepunch.com/gmod/Panel:IsSelectable). To check whether the object is selected or not, [Panel:IsSelected](https://wiki.facepunch.com/gmod/Panel:IsSelected) is used. 
--- [https://wiki.facepunch.com/gmod/Panel:ToggleSelection]
--- @return void
function Panel:ToggleSelection() end

--- (client) Toggles the visibility of a panel and all its children. 
--- [https://wiki.facepunch.com/gmod/Panel:ToggleVisible]
--- @return void
function Panel:ToggleVisible() end

--- (client) Restores the last saved state (caret position and the text inside) of a [TextEntry](https://wiki.facepunch.com/gmod/TextEntry). Should act identically to pressing CTRL+Z in a [TextEntry](https://wiki.facepunch.com/gmod/TextEntry).
--- See also [Panel:SaveUndoState](https://wiki.facepunch.com/gmod/Panel:SaveUndoState). 
--- [https://wiki.facepunch.com/gmod/Panel:Undo]
--- @return void
function Panel:Undo() end

--- (client) Recursively deselects this panel object and all of its children. This will cascade to all child objects at every level below the parent. 
--- [https://wiki.facepunch.com/gmod/Panel:UnselectAll]
--- @return void
function Panel:UnselectAll() end

--- (client) Forcibly updates the panels' HTML Material, similar to when Paint is called on it.This is only useful if the panel is not normally visible, i.e the panel exists purely for its HTML Material. 
--- [https://wiki.facepunch.com/gmod/Panel:UpdateHTMLTexture]
--- @return void
function Panel:UpdateHTMLTexture() end

--- (client) Returns if a given panel is valid or not. 
--- [https://wiki.facepunch.com/gmod/Panel:Valid]
--- @return boolean
function Panel:Valid() end

