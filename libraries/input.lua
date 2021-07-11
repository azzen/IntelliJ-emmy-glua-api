--- @class input
input = {}

--- (client/menu) Returns the last key captured by key trapping. 
--- [https://wiki.facepunch.com/gmod/input.CheckKeyTrapping]
--- @return number
function input.CheckKeyTrapping() end

--- (client/menu) Returns the digital value of an analog stick on the current (set up via convars) controller. 
--- [https://wiki.facepunch.com/gmod/input.GetAnalogValue]
--- @param axis number @ The analog axis to poll. See [ANALOG](https://wiki.facepunch.com/gmod/Enums/ANALOG).
--- @return number
function input.GetAnalogValue(axis) end

--- (client/menu) Returns the cursor's position on the screen. 
--- [https://wiki.facepunch.com/gmod/input.GetCursorPos]
--- @return number|number
function input.GetCursorPos() end

--- (client/menu) Gets the button code from a button name. This is opposite of [input.GetKeyName](https://wiki.facepunch.com/gmod/input.GetKeyName). 
--- [https://wiki.facepunch.com/gmod/input.GetKeyCode]
--- @param button string @ The internal button name, such as  or .
--- @return number
function input.GetKeyCode(button) end

--- (client/menu) Gets the button name from a numeric button code. The name needs to be translated with [language.GetPhrase](https://wiki.facepunch.com/gmod/language.GetPhrase) before being displayed. 
--- [https://wiki.facepunch.com/gmod/input.GetKeyName]
--- @param button number @ The button, see [BUTTON_CODE](https://wiki.facepunch.com/gmod/Enums/BUTTON_CODE).
--- @return string
function input.GetKeyName(button) end

--- (client/menu) Gets whether the specified button code is down.
--- Unlike [input.IsKeyDown](https://wiki.facepunch.com/gmod/input.IsKeyDown) this can also detect joystick presses from [JOYSTICK](https://wiki.facepunch.com/gmod/Enums/JOYSTICK) 
--- [https://wiki.facepunch.com/gmod/input.IsButtonDown]
--- @param button number @ The button, valid values are in the range of [BUTTON_CODE](https://wiki.facepunch.com/gmod/Enums/BUTTON_CODE).
--- @return boolean
function input.IsButtonDown(button) end

--- (client/menu) Returns whether a control key is being pressed 
--- [https://wiki.facepunch.com/gmod/input.IsControlDown]
--- @return boolean
function input.IsControlDown() end

--- (client/menu) Gets whether a key is down. 
--- [https://wiki.facepunch.com/gmod/input.IsKeyDown]
--- @param key number @ The key, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return boolean
function input.IsKeyDown(key) end

--- (client/menu) Returns whether key trapping is activate and the next key press will be captured. 
--- [https://wiki.facepunch.com/gmod/input.IsKeyTrapping]
--- @return boolean
function input.IsKeyTrapping() end

--- (client/menu) Gets whether a mouse button is down 
--- [https://wiki.facepunch.com/gmod/input.IsMouseDown]
--- @param mouseKey number @ The key, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE)
--- @return boolean
function input.IsMouseDown(mouseKey) end

--- (client/menu) Gets whether a shift key is being pressed 
--- [https://wiki.facepunch.com/gmod/input.IsShiftDown]
--- @return boolean
function input.IsShiftDown() end

--- (client/menu) Returns the client's bound key for the specified console command. If the player has multiple keys bound to a single command, there is no defined behavior of which key will be returned. 
--- [https://wiki.facepunch.com/gmod/input.LookupBinding]
--- @param binding string @ The binding name
--- @param exact boolean @ True if the binding should match exactly
--- @return string
function input.LookupBinding(binding, exact) end

--- (client/menu) Returns the bind string that the given key is bound to. 
--- [https://wiki.facepunch.com/gmod/input.LookupKeyBinding]
--- @param key number @ Key from [BUTTON_CODE](https://wiki.facepunch.com/gmod/Enums/BUTTON_CODE)
--- @return string
function input.LookupKeyBinding(key) end

--- (client) Switches to the provided weapon on the next CUserCmd generation/CreateMove call. Direct binding to [CInput::MakeWeaponSelection](https://github.com/LestaD/SourceEngine2007/blob/43a5c90a5ada1e69ca044595383be67f40b33c61/se2007/game/client/in_main.cpp#L929-L932). 
--- [https://wiki.facepunch.com/gmod/input.SelectWeapon]
--- @param weapon Weapon @ The weapon entity to switch to.
--- @return void
function input.SelectWeapon(weapon) end

--- (client/menu) Sets the cursor's position on the screen, relative to the topleft corner of the window 
--- [https://wiki.facepunch.com/gmod/input.SetCursorPos]
--- @param mouseX number @ X coordinate for mouse position
--- @param mouseY number @ Y coordinate for mouse position
--- @return void
function input.SetCursorPos(mouseX, mouseY) end

--- (client/menu) Begins waiting for a key to be pressed so we can save it for [input.CheckKeyTrapping](https://wiki.facepunch.com/gmod/input.CheckKeyTrapping). Used by the [DBinder](https://wiki.facepunch.com/gmod/DBinder). 
--- [https://wiki.facepunch.com/gmod/input.StartKeyTrapping]
--- @return void
function input.StartKeyTrapping() end

--- (client/menu) Translates a console command alias, basically reverse of the `alias` console command. 
--- [https://wiki.facepunch.com/gmod/input.TranslateAlias]
--- @param command string @ The alias to lookup.
--- @return string
function input.TranslateAlias(command) end

--- (client/menu) Returns whether a key was initially pressed in the same frame this function was called.
--- This function only works in Move hooks, and will detect key presses even in main menu or when a typing in a text field. 
--- [https://wiki.facepunch.com/gmod/input.WasKeyPressed]
--- @param key number @ The key, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return boolean
function input.WasKeyPressed(key) end

--- (client/menu) Returns whether a key was released in the same frame this function was called.
--- This function only works in Move hooks, and will detect key releases even in main menu or when a typing in a text field. 
--- [https://wiki.facepunch.com/gmod/input.WasKeyReleased]
--- @param key number @ The key, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return boolean
function input.WasKeyReleased(key) end

--- (client/menu) Returns whether the key is being held down or not.
--- This function only works in Move hooks, and will detect key events even in main menu or when a typing in a text field. 
--- [https://wiki.facepunch.com/gmod/input.WasKeyTyped]
--- @param key number @ The key to test, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY)
--- @return boolean
function input.WasKeyTyped(key) end

--- (client/menu) Returns whether a mouse key was double pressed in the same frame this function was called.
--- If this function returns true, [input.WasMousePressed](https://wiki.facepunch.com/gmod/input.WasMousePressed) will return false.
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field. 
--- [https://wiki.facepunch.com/gmod/input.WasMouseDoublePressed]
--- @param button number @ The mouse button to test, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE)
--- @return boolean
function input.WasMouseDoublePressed(button) end

--- (client/menu) Returns whether a mouse key was initially pressed in the same frame this function was called.
--- If [input.WasMouseDoublePressed](https://wiki.facepunch.com/gmod/input.WasMouseDoublePressed) returns true, this function will return false.
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field. 
--- [https://wiki.facepunch.com/gmod/input.WasMousePressed]
--- @param key number @ The key, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE)
--- @return boolean
function input.WasMousePressed(key) end

--- (client/menu) Returns whether a mouse key was released in the same frame this function was called.
--- This function only works in Move hooks, and will detect mouse events even in main menu or when a typing in a text field. 
--- [https://wiki.facepunch.com/gmod/input.WasMouseReleased]
--- @param key number @ The key to test, see [MOUSE](https://wiki.facepunch.com/gmod/Enums/MOUSE)
--- @return boolean
function input.WasMouseReleased(key) end

