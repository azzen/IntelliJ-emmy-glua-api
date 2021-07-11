--- @class PANEL
PANEL = {}

--- (client) Called whenever a panel receives a command signal from one of its children.This hook is called when using [Panel:Command](https://wiki.facepunch.com/gmod/Panel:Command), when clicking a [Button](https://wiki.facepunch.com/gmod/Button) with [Panel:SetCommand](https://wiki.facepunch.com/gmod/Panel:SetCommand) set, and when clicking text within a [RichText](https://wiki.facepunch.com/gmod/RichText) panel that is marked as click-able. 
--- [https://wiki.facepunch.com/gmod/PANEL:ActionSignal]
--- @param signalName string @ The name of the signal, usually the sender of the signal or the command name.
--- @param signalValue string @ The value of the signal, usually a command argument.
--- @return void
function PANEL:ActionSignal(signalName, signalValue) end

--- (client) Called every frame unless [Panel:IsVisible](https://wiki.facepunch.com/gmod/Panel:IsVisible) is set to false. Similar to [PANEL:Think](https://wiki.facepunch.com/gmod/PANEL:Think), but can be disabled by [Panel:SetAnimationEnabled](https://wiki.facepunch.com/gmod/Panel:SetAnimationEnabled) as explained below.If you are overriding this, you must call [Panel:AnimationThinkInternal](https://wiki.facepunch.com/gmod/Panel:AnimationThinkInternal) every frame, else animations will cease to work.If you want to "disable" this hook with [Panel:SetAnimationEnabled](https://wiki.facepunch.com/gmod/Panel:SetAnimationEnabled), you must call it after defining this hook. Once disabled, a custom hook **will not** be re-enabled by [Panel:SetAnimationEnabled](https://wiki.facepunch.com/gmod/Panel:SetAnimationEnabled) again - the hook will have to be re-defined. 
--- [https://wiki.facepunch.com/gmod/PANEL:AnimationThink]
--- @return void
function PANEL:AnimationThink() end

--- (client) Called whenever the panel should apply its scheme (colors, fonts, style).It is called a few frames after Panel's creation once. 
--- [https://wiki.facepunch.com/gmod/PANEL:ApplySchemeSettings]
--- @return void
function PANEL:ApplySchemeSettings() end

--- (client) Called when an object is dragged and hovered over this panel for 0.1 seconds.This is used by [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet) and [DTree](https://wiki.facepunch.com/gmod/DTree), for example to open a tab or expand a node when an object is hovered over it. 
--- [https://wiki.facepunch.com/gmod/PANEL:DragHoverClick]
--- @param hoverTime number @ The time the object was hovered over this panel.
--- @return void
function PANEL:DragHoverClick(hoverTime) end

--- (client) Called when this panel is dropped onto another panel.Only works for panels derived from [DDragBase](https://wiki.facepunch.com/gmod/DDragBase). 
--- [https://wiki.facepunch.com/gmod/PANEL:DroppedOn]
--- @param pnl Panel @ The panel we are dropped onto
--- @return void
function PANEL:DroppedOn(pnl) end

--- (client) Called when the panel should generate example use case / example code to use for this panel. Used in the panel opened by **derma_controls** console command. 
--- [https://wiki.facepunch.com/gmod/PANEL:GenerateExample]
--- @param class string @ The classname of the panel to generate example for. This will be the class name of your panel.
--- @param dpropertysheet Panel @ A [DPropertySheet](https://wiki.facepunch.com/gmod/DPropertySheet) to add your example to. See examples below.
--- @param width number @ Width of the property sheet?
--- @param height number @ Width of the property sheet?
--- @return void
function PANEL:GenerateExample(class, dpropertysheet, width, height) end

--- (client) Called when the panel is created. This is called for each base type that the panel has. 
--- [https://wiki.facepunch.com/gmod/PANEL:Init]
--- @return void
function PANEL:Init() end

--- (client) Called after [Panel:SetCookieName](https://wiki.facepunch.com/gmod/Panel:SetCookieName) is called on this panel to apply the just loaded cookie values for this panel. 
--- [https://wiki.facepunch.com/gmod/PANEL:LoadCookies]
--- @return void
function PANEL:LoadCookies() end

--- (client/menu) Called when we are activated during level load. Used by the loading screen panel. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnActivate]
--- @return void
function PANEL:OnActivate() end

--- (client) Called by HTML panels when the target URL of the frame has changed, this happens when you hover over a link. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnChangeTargetURL]
--- @param targetURL string @ New target URL.
--- @return void
function PANEL:OnChangeTargetURL(targetURL) end

--- (client) Called by HTML panels when the title of the loaded page has been changed. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnChangeTitle]
--- @param newTitle string @ The new title of the page.
--- @return void
function PANEL:OnChangeTitle(newTitle) end

--- (client) Called whenever a child was parented to the panel. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnChildAdded]
--- @param child Panel @ The child which was added.
--- @return void
function PANEL:OnChildAdded(child) end

--- (client) Called whenever a child of the panel is about to removed. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnChildRemoved]
--- @param child Panel @ The child which is about to be removed.
--- @return void
function PANEL:OnChildRemoved(child) end

--- (client) Called by HTML panels when the page attempts to open a new child view (such as a popup or new tab). 
--- [https://wiki.facepunch.com/gmod/PANEL:OnChildViewCreated]
--- @param sourceURL string @ The URL of the page requesting to create a child.
--- @param targetURL string @ The URL of the requested child.
--- @param isPopup boolean @ True if the requested view is a popup.
--- @return void
function PANEL:OnChildViewCreated(sourceURL, targetURL, isPopup) end

--- (client) Called whenever the cursor entered the panels bounds. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnCursorEntered]
--- @return void
function PANEL:OnCursorEntered() end

--- (client) Called whenever the cursor left the panels bounds. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnCursorExited]
--- @return void
function PANEL:OnCursorExited() end

--- (client) Called whenever the cursor was moved with the panels bounds. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnCursorMoved]
--- @param cursorX number @ The new x position of the cursor relative to the panels origin.
--- @param cursorY number @ The new y position of the cursor relative to the panels origin.
--- @return boolean
function PANEL:OnCursorMoved(cursorX, cursorY) end

--- (client/menu) Called when we are deactivated during level load. Used by the loading screen panel. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnDeactivate]
--- @return void
function PANEL:OnDeactivate() end

--- (client) Called by HTML panels when the panel's DOM has been set up. You can run JavaScript in here. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnDocumentReady]
--- @param url string @ The URL of the current page.
--- @return void
function PANEL:OnDocumentReady(url) end

--- (client) We're being dropped on somethingWe can create a new panel here and return it, so that instead of dropping us - it drops the new panel instead! We remain where we are!Only works for panels derived from [DDragBase](https://wiki.facepunch.com/gmod/DDragBase). 
--- [https://wiki.facepunch.com/gmod/PANEL:OnDrop]
--- @return Panel
function PANEL:OnDrop() end

--- (client) Called whenever the panel gained or lost focus. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnFocusChanged]
--- @param gained boolean @ If the focus was gained ( true ) or lost ( false )
--- @return void
function PANEL:OnFocusChanged(gained) end

--- (client) Called whenever a keyboard key was pressed while the panel is focused. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnKeyCodePressed]
--- @param keyCode number @ The key code of the pressed key, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return boolean
function PANEL:OnKeyCodePressed(keyCode) end

--- (client) Called whenever a keyboard key was released while the panel is focused. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnKeyCodeReleased]
--- @param keyCode number @ The key code of the released key, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return boolean
function PANEL:OnKeyCodeReleased(keyCode) end

--- (client) Called whenever a mouse key was pressed while the panel is focused. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnMousePressed]
--- @param keyCode number @ They key code of the key pressed, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @return boolean
function PANEL:OnMousePressed(keyCode) end

--- (client) Called whenever a mouse key was released while the panel is focused. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnMouseReleased]
--- @param keyCode number @ They key code of the key released, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @return boolean
function PANEL:OnMouseReleased(keyCode) end

--- (client) Called whenever the mouse wheel was used. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnMouseWheeled]
--- @param scrollDelta number @ The scroll delta, indicating how much the user turned the mouse wheel.
--- @return boolean
function PANEL:OnMouseWheeled(scrollDelta) end

--- (client) Called when the panel is about to be removed. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnRemove]
--- @return void
function PANEL:OnRemove() end

--- (client) Called when the player's screen resolution of the game changes.[ScrW](https://wiki.facepunch.com/gmod/Global.ScrW) and [ScrH](https://wiki.facepunch.com/gmod/Global.ScrH) will return the new values when this hook is called. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnScreenSizeChanged]
--- @param oldWidth number @ The previous width  of the game's window
--- @param oldHeight number @ The previous height of the game's window
--- @return void
function PANEL:OnScreenSizeChanged(oldWidth, oldHeight) end

--- (client) Called just after the panel size changes.All size functions will return the new values when this hook is called. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnSizeChanged]
--- @param newWidth number @ The new width of the panel
--- @param newHeight number @ The new height of the panel
--- @return void
function PANEL:OnSizeChanged(newWidth, newHeight) end

--- (client) Called by [dragndrop.StartDragging](https://wiki.facepunch.com/gmod/dragndrop.StartDragging) when the panel starts being dragged. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnStartDragging]
--- @return void
function PANEL:OnStartDragging() end

--- (client) Called by [Panel:DragMouseRelease](https://wiki.facepunch.com/gmod/Panel:DragMouseRelease) when the panel object is released after being dragged. 
--- [https://wiki.facepunch.com/gmod/PANEL:OnStopDragging]
--- @return void
function PANEL:OnStopDragging() end

--- (client) Called whenever the panel should be drawn. You can create panels with a customized appearance by overriding their Paint() function, which will prevent the default appearance from being drawn. 
--- [https://wiki.facepunch.com/gmod/PANEL:Paint]
--- @param width number @ The panel's width.
--- @param height number @ The panel's height.
--- @return boolean
function PANEL:Paint(width, height) end

--- (client) Called whenever the panel and all its children were drawn, return true to override the default drawing. 
--- [https://wiki.facepunch.com/gmod/PANEL:PaintOver]
--- @param width number @ The panels current width.
--- @param height number @ The panels current height.
--- @return boolean
function PANEL:PaintOver(width, height) end

--- (client) Called whenever the panels layout was invalidated. This means all child panels must be re-positioned to fit the possibly new size of this panel. 
--- [https://wiki.facepunch.com/gmod/PANEL:PerformLayout]
--- @param width number @ The panels current width.
--- @param height number @ The panels current height.
--- @return void
function PANEL:PerformLayout(width, height) end

--- (client) Only works on elements defined with [derma.DefineControl](https://wiki.facepunch.com/gmod/derma.DefineControl) and only if the panel has **AllowAutoRefresh** set to true.Called after [derma.DefineControl](https://wiki.facepunch.com/gmod/derma.DefineControl) is called with panel's class name.See also [PANEL:PreAutoRefresh](https://wiki.facepunch.com/gmod/PANEL:PreAutoRefresh) 
--- [https://wiki.facepunch.com/gmod/PANEL:PostAutoRefresh]
--- @return void
function PANEL:PostAutoRefresh() end

--- (client) Only works on elements defined with [derma.DefineControl](https://wiki.facepunch.com/gmod/derma.DefineControl) and only if the panel has **AllowAutoRefresh** set to true.Called when [derma.DefineControl](https://wiki.facepunch.com/gmod/derma.DefineControl) is called with this panel's class name before applying changes to this panel.See also [PANEL:PostAutoRefresh](https://wiki.facepunch.com/gmod/PANEL:PostAutoRefresh) 
--- [https://wiki.facepunch.com/gmod/PANEL:PreAutoRefresh]
--- @return void
function PANEL:PreAutoRefresh() end

--- (client) Called to test if the panel is being `hovered` by the mouse. This will only be called if the panel's parent is being hovered. 
--- [https://wiki.facepunch.com/gmod/PANEL:TestHover]
--- @param x number @ The x coordinate of the cursor, in screen space.
--- @param y number @ The y coordinate of the cursor, in screen space.
--- @return boolean
function PANEL:TestHover(x, y) end

--- (client) Called every frame while [Panel:IsVisible](https://wiki.facepunch.com/gmod/Panel:IsVisible) is true. 
--- [https://wiki.facepunch.com/gmod/PANEL:Think]
--- @return void
function PANEL:Think() end

