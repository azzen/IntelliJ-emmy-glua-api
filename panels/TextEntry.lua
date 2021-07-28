--- @class TextEntry : PANEL
TextEntry = {}

--- (client) Called from engine whenever a valid character is typed while the text entry is focused.
--- Used internally for functionality of [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) 
--- [https://wiki.facepunch.com/gmod/TextEntry:OnKeyCodeTyped]
--- @param keyCode number @ They key code of the key pressed, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return boolean
function TextEntry:OnKeyCodeTyped(keyCode) end

