--- @class DFrame : EditablePanel
DFrame = {}

--- (client) Centers the frame relative to the whole screen and invalidates its layout. This overrides [Panel:Center](https://wiki.facepunch.com/gmod/Panel:Center). 
--- [https://wiki.facepunch.com/gmod/DFrame:Center]
--- @return void
function DFrame:Center() end

--- (client) Hides or removes the DFrame, and calls [DFrame:OnClose](https://wiki.facepunch.com/gmod/DFrame:OnClose).
--- To set whether the frame is hidden or removed, use [DFrame:SetDeleteOnClose](https://wiki.facepunch.com/gmod/DFrame:SetDeleteOnClose). 
--- [https://wiki.facepunch.com/gmod/DFrame:Close]
--- @return void
function DFrame:Close() end

--- (client) Gets whether the background behind the frame is being blurred. 
--- [https://wiki.facepunch.com/gmod/DFrame:GetBackgroundBlur]
--- @return boolean
function DFrame:GetBackgroundBlur() end

--- (client) Determines whether or not the DFrame will be removed when it is closed. This is set with [DFrame:SetDeleteOnClose](https://wiki.facepunch.com/gmod/DFrame:SetDeleteOnClose). 
--- [https://wiki.facepunch.com/gmod/DFrame:GetDeleteOnClose]
--- @return boolean
function DFrame:GetDeleteOnClose() end

--- (client) Gets whether or not the frame is draggable by the user. 
--- [https://wiki.facepunch.com/gmod/DFrame:GetDraggable]
--- @return boolean
function DFrame:GetDraggable() end

--- (client) Gets whether or not the frame is part of a derma menu. This is set with [DFrame:SetIsMenu](https://wiki.facepunch.com/gmod/DFrame:SetIsMenu). 
--- [https://wiki.facepunch.com/gmod/DFrame:GetIsMenu]
--- @return boolean
function DFrame:GetIsMenu() end

--- (client) Gets the minimum height the DFrame can be resized to by the user.
--- You must call [DFrame:SetSizable](https://wiki.facepunch.com/gmod/DFrame:SetSizable) before the user can resize the frame. 
--- [https://wiki.facepunch.com/gmod/DFrame:GetMinHeight]
--- @return number
function DFrame:GetMinHeight() end

--- (client) Gets the minimum width the DFrame can be resized to by the user.
--- You must call [DFrame:SetSizable](https://wiki.facepunch.com/gmod/DFrame:SetSizable) before the user can resize the frame. 
--- [https://wiki.facepunch.com/gmod/DFrame:GetMinWidth]
--- @return number
function DFrame:GetMinWidth() end

--- (client) Gets whether or not the shadow effect bordering the DFrame is being drawn. 
--- [https://wiki.facepunch.com/gmod/DFrame:GetPaintShadow]
--- @return boolean
function DFrame:GetPaintShadow() end

--- (client) Gets whether or not the DFrame is restricted to the boundaries of the screen resolution. 
--- [https://wiki.facepunch.com/gmod/DFrame:GetScreenLock]
--- @return boolean
function DFrame:GetScreenLock() end

--- (client) Gets whether or not the DFrame can be resized by the user.
--- This is achieved by clicking and dragging in the bottom right corner of the frame. 
--- [https://wiki.facepunch.com/gmod/DFrame:GetSizable]
--- @return boolean
function DFrame:GetSizable() end

--- (client) Returns the title of the frame. 
--- [https://wiki.facepunch.com/gmod/DFrame:GetTitle]
--- @return string
function DFrame:GetTitle() end

--- (client) Determines if the frame or one of its children has the screen focus. 
--- [https://wiki.facepunch.com/gmod/DFrame:IsActive]
--- @return boolean
function DFrame:IsActive() end

--- (client) Called when the DFrame is closed with [DFrame:Close](https://wiki.facepunch.com/gmod/DFrame:Close). This applies when the `close` button in the DFrame's control box is clicked.
--- This function is does nothing and is safe to override.
--- This is **not** called when the DFrame is removed with [Panel:Remove](https://wiki.facepunch.com/gmod/Panel:Remove). 
--- [https://wiki.facepunch.com/gmod/DFrame:OnClose]
--- @return void
function DFrame:OnClose() end

--- (client) Blurs background behind the frame. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetBackgroundBlur]
--- @param blur boolean @ Whether or not to create background blur or not.
--- @return void
function DFrame:SetBackgroundBlur(blur) end

--- (client) Determines whether or not the DFrame is removed when it is closed with [DFrame:Close](https://wiki.facepunch.com/gmod/DFrame:Close). 
--- [https://wiki.facepunch.com/gmod/DFrame:SetDeleteOnClose]
--- @param shouldDelete boolean @ Whether or not to delete the frame on close. This is `true` by default.
--- @return void
function DFrame:SetDeleteOnClose(shouldDelete) end

--- (client) Sets whether the frame should be draggable by the user. The DFrame can only be dragged from its title bar. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetDraggable]
--- @param draggable boolean @ Whether to be draggable or not.
--- @return void
function DFrame:SetDraggable(draggable) end

--- (client) Adds or removes an icon on the left of the [DFrame](https://wiki.facepunch.com/gmod/DFrame)'s title. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetIcon]
--- @param path string @ Set to nil to remove the icon. Otherwise, set to file path to create the icon.
--- @return void
function DFrame:SetIcon(path) end

--- (client) Sets whether the frame is part of a derma menu or not.
--- If this is set to `true`, [CloseDermaMenus](https://wiki.facepunch.com/gmod/Global.CloseDermaMenus) will not be called when the frame is clicked, and thus any open menus will remain open. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetIsMenu]
--- @param isMenu boolean @ Whether or not this frame is a menu component.
--- @return void
function DFrame:SetIsMenu(isMenu) end

--- (client) Sets the minimum height the DFrame can be resized to by the user.
--- This only applies to users attempting to resize the frame; [Panel:SetTall](https://wiki.facepunch.com/gmod/Panel:SetTall) and similar methods will not be affected. You must call [DFrame:SetSizable](https://wiki.facepunch.com/gmod/DFrame:SetSizable) before the user can resize the frame. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetMinHeight]
--- @param minH number @ The minimum height the user can resize the frame to.
--- @return void
function DFrame:SetMinHeight(minH) end

--- (client) Sets the minimum width the DFrame can be resized to by the user.
--- This only applies to users attempting to resize the frame; [Panel:SetWide](https://wiki.facepunch.com/gmod/Panel:SetWide) and similar methods will not be affected. You must call [DFrame:SetSizable](https://wiki.facepunch.com/gmod/DFrame:SetSizable) before the user can resize the frame. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetMinWidth]
--- @param minW number @ The minimum width the user can resize the frame to.
--- @return void
function DFrame:SetMinWidth(minW) end

--- (client) Sets whether or not the shadow effect bordering the DFrame should be drawn. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetPaintShadow]
--- @param shouldPaint boolean @ Whether or not to draw the shadow. This is `true` by default.
--- @return void
function DFrame:SetPaintShadow(shouldPaint) end

--- (client) Sets whether the DFrame is restricted to the boundaries of the screen resolution. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetScreenLock]
--- @param lock boolean @ If `true`, the frame cannot be dragged outside of the screen bounds
--- @return void
function DFrame:SetScreenLock(lock) end

--- (client) Sets whether or not the [DFrame](https://wiki.facepunch.com/gmod/DFrame) can be resized by the user.
--- This is achieved by clicking and dragging in the bottom right corner of the frame.
--- You can set the minimum size using [DFrame:SetMinWidth](https://wiki.facepunch.com/gmod/DFrame:SetMinWidth) and [DFrame:SetMinHeight](https://wiki.facepunch.com/gmod/DFrame:SetMinHeight). 
--- [https://wiki.facepunch.com/gmod/DFrame:SetSizable]
--- @param sizeable boolean @ Whether the frame should be resizeable or not.
--- @return void
function DFrame:SetSizable(sizeable) end

--- (client) Sets the title of the frame. 
--- [https://wiki.facepunch.com/gmod/DFrame:SetTitle]
--- @param title string @ New title of the frame.
--- @return void
function DFrame:SetTitle(title) end

--- (client) Determines whether the DFrame's control box (close, minimise and maximise buttons) is displayed. 
--- [https://wiki.facepunch.com/gmod/DFrame:ShowCloseButton]
--- @param show boolean @ `false` hides the control box; this is `true` by default.
--- @return void
function DFrame:ShowCloseButton(show) end

