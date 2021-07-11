--- @class gui
gui = {}

--- (client/menu) Opens the game menu overlay. 
--- [https://wiki.facepunch.com/gmod/gui.ActivateGameUI]
--- @return void
function gui.ActivateGameUI() end

--- (client) Enables the mouse cursor without restricting player movement, like using Sandbox's context menu. 
--- [https://wiki.facepunch.com/gmod/gui.EnableScreenClicker]
--- @param enabled boolean @ Whether the cursor should be enabled or not. (true = enable, false = disable)
--- @return void
function gui.EnableScreenClicker(enabled) end

--- (client/menu) Hides the game menu overlay. 
--- [https://wiki.facepunch.com/gmod/gui.HideGameUI]
--- @return void
function gui.HideGameUI() end

--- (client/menu) Simulates a mouse move with the given deltas. 
--- [https://wiki.facepunch.com/gmod/gui.InternalCursorMoved]
--- @param deltaX number @ The movement delta on the x axis.
--- @param deltaY number @ The movement delta on the y axis.
--- @return void
function gui.InternalCursorMoved(deltaX, deltaY) end

--- (client/menu) Simulates a key press for the given key. 
--- [https://wiki.facepunch.com/gmod/gui.InternalKeyCodePressed]
--- @param key number @ The key, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return void
function gui.InternalKeyCodePressed(key) end

--- (client/menu) Simulates a key release for the given key. 
--- [https://wiki.facepunch.com/gmod/gui.InternalKeyCodeReleased]
--- @param key number @ The key, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return void
function gui.InternalKeyCodeReleased(key) end

--- (client/menu) Simulates a key type typing to the specified key. 
--- [https://wiki.facepunch.com/gmod/gui.InternalKeyCodeTyped]
--- @param key number @ The key, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return void
function gui.InternalKeyCodeTyped(key) end

--- (client/menu) Simulates an ASCII symbol writing.
--- Use to write text in the chat or in VGUI.
--- Doesn't work while the main menu is open! 
--- [https://wiki.facepunch.com/gmod/gui.InternalKeyTyped]
--- @param code number @ ASCII code of symbol, see http://www.mikroe.com/img/publication/spa/pic-books/programming-in-basic/chapter/04/fig4-24.gif
--- @return void
function gui.InternalKeyTyped(code) end

--- (client/menu) Simulates a double mouse key press for the given mouse key. 
--- [https://wiki.facepunch.com/gmod/gui.InternalMouseDoublePressed]
--- @param key number @ The key, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @return void
function gui.InternalMouseDoublePressed(key) end

--- (client/menu) Simulates a mouse key press for the given mouse key. 
--- [https://wiki.facepunch.com/gmod/gui.InternalMousePressed]
--- @param key number @ The key, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @return void
function gui.InternalMousePressed(key) end

--- (client/menu) Simulates a mouse key release for the given mouse key. 
--- [https://wiki.facepunch.com/gmod/gui.InternalMouseReleased]
--- @param key number @ The key, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE).
--- @return void
function gui.InternalMouseReleased(key) end

--- (client/menu) Simulates a mouse wheel scroll with the given delta. 
--- [https://wiki.facepunch.com/gmod/gui.InternalMouseWheeled]
--- @param delta number @ The amount of scrolling to simulate.
--- @return void
function gui.InternalMouseWheeled(delta) end

--- (client/menu) Returns whether the console is visible or not. 
--- [https://wiki.facepunch.com/gmod/gui.IsConsoleVisible]
--- @return boolean
function gui.IsConsoleVisible() end

--- (client/menu) Returns whether the game menu overlay ( main menu ) is open or not. 
--- [https://wiki.facepunch.com/gmod/gui.IsGameUIVisible]
--- @return boolean
function gui.IsGameUIVisible() end

--- (client/menu) Returns the cursor's position on the screen, or 0, 0 if cursor is not visible. 
--- [https://wiki.facepunch.com/gmod/gui.MousePos]
--- @return number|number
function gui.MousePos() end

--- (client/menu) Returns x component of the mouse position. 
--- [https://wiki.facepunch.com/gmod/gui.MouseX]
--- @return number
function gui.MouseX() end

--- (client/menu) Returns y component of the mouse position. 
--- [https://wiki.facepunch.com/gmod/gui.MouseY]
--- @return number
function gui.MouseY() end

--- (client/menu) Opens specified URL in the steam overlay browser. 
--- [https://wiki.facepunch.com/gmod/gui.OpenURL]
--- @param url string @ URL to open, it has to start with either `http://` or `https://`.
--- @return void
function gui.OpenURL(url) end

--- (client) Converts the specified screen position to a **direction** vector local to the player's view. A related function is [Vector:ToScreen](https://wiki.facepunch.com/gmod/Vector:ToScreen), which translates a 3D position to a screen coordinate.
--- [util.AimVector](https://wiki.facepunch.com/gmod/util.AimVector) is a more generic version of this, using a custom view instead of the player's current view. 
--- [https://wiki.facepunch.com/gmod/gui.ScreenToVector]
--- @param x number @ X coordinate on the screen.
--- @param y number @ Y coordinate on the screen.
--- @return Vector
function gui.ScreenToVector(x, y) end

--- (client/menu) Sets the cursor's position on the screen, relative to the topleft corner of the window 
--- [https://wiki.facepunch.com/gmod/gui.SetMousePos]
--- @param mouseX number @ The X coordinate to move the cursor to.
--- @param mouseY number @ The Y coordinate to move the cursor to.
--- @return void
function gui.SetMousePos(mouseX, mouseY) end

--- (menu) Shows console in the game UI. 
--- [https://wiki.facepunch.com/gmod/gui.ShowConsole]
--- @return void
function gui.ShowConsole() end

