--- @class DTextEntry : TextEntry
DTextEntry = {}

--- (client) Called whenever the value of the panel has been updated (whether by user input or otherwise).
--- It allows you to determine whether a user can modify the [TextEntry](https://wiki.facepunch.com/gmod/TextEntry)'s text.
--- By default, this only checks whether the panel disallows numeric characters, preventing it from being edited if the value contains any.
--- This is actually an engine hook that only works on [TextEntry](https://wiki.facepunch.com/gmod/TextEntry) derived elements. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:AllowInput]
--- @param char string @ The last character entered into the panel.
--- @return boolean
function DTextEntry:AllowInput(char) end

--- (client) Returns whether a string is numeric or not.
--- Always returns false if the [DTextEntry:SetNumeric](https://wiki.facepunch.com/gmod/DTextEntry:SetNumeric) is set to false. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:CheckNumeric]
--- @param strValue string @ The string to check.
--- @return boolean
function DTextEntry:CheckNumeric(strValue) end

--- (client) Called by the DTextEntry when a list of autocompletion options is requested. Meant to be overridden. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetAutoComplete]
--- @param inputText string @ Player's current input.
--- @return table
function DTextEntry:GetAutoComplete(inputText) end

--- (client) Returns the cursor color of a DTextEntry. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetCursorColor]
--- @return table
function DTextEntry:GetCursorColor() end

--- (client) Returns whether pressing Enter can cause the panel to lose focus. Note that a multiline DTextEntry cannot be escaped using the Enter key even when this function returns true. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetEnterAllowed]
--- @return boolean
function DTextEntry:GetEnterAllowed() end

--- (client) Returns the contents of the DTextEntry as a number. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetFloat]
--- @return number
function DTextEntry:GetFloat() end

--- (client) Similar to [DTextEntry:GetFloat](https://wiki.facepunch.com/gmod/DTextEntry:GetFloat), but rounds the value to the nearest integer. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetInt]
--- @return number
function DTextEntry:GetInt() end

--- (client) Returns whether only numeric characters (123456789.-) can be entered into the DTextEntry. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetNumeric]
--- @return boolean
function DTextEntry:GetNumeric() end

--- (client) Return current color of panel placeholder 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetPlaceholderColor]
--- @return table
function DTextEntry:GetPlaceholderColor() end

--- (client) Returns the placeholder text set with [DTextEntry:SetPlaceholderText](https://wiki.facepunch.com/gmod/DTextEntry:SetPlaceholderText). 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetPlaceholderText]
--- @return string
function DTextEntry:GetPlaceholderText() end

--- (client) Returns the text color of a DTextEntry. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetTextColor]
--- @return table
function DTextEntry:GetTextColor() end

--- (client) Returns whether the [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) is set to run [DTextEntry:OnValueChange](https://wiki.facepunch.com/gmod/DTextEntry:OnValueChange) every time a character is typed or deleted or only when Enter is pressed. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:GetUpdateOnType]
--- @return boolean
function DTextEntry:GetUpdateOnType() end

--- (client) Returns whether this DTextEntry is being edited or not. (i.e. has focus) 
--- [https://wiki.facepunch.com/gmod/DTextEntry:IsEditing]
--- @return boolean
function DTextEntry:IsEditing() end

--- (client) Determines whether or not [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) is in multi-line mode. This is set with [DTextEntry:SetMultiline](https://wiki.facepunch.com/gmod/DTextEntry:SetMultiline). 
--- [https://wiki.facepunch.com/gmod/DTextEntry:IsMultiline]
--- @return boolean
function DTextEntry:IsMultiline() end

--- (client) Called internally by [DTextEntry:OnTextChanged](https://wiki.facepunch.com/gmod/DTextEntry:OnTextChanged) when the user modifies the text in the DTextEntry.
--- You should override this function to define custom behavior when the DTextEntry text changes. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:OnChange]
--- @return void
function DTextEntry:OnChange() end

--- (client) Called whenever enter is pressed on a DTextEntry. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:OnEnter]
--- @param value string @ The current text of the [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry)
--- @return void
function DTextEntry:OnEnter(value) end

--- (client) Called whenever the DTextEntry gains focus. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:OnGetFocus]
--- @return void
function DTextEntry:OnGetFocus() end

--- (client) Called from DTextEntry's [TextEntry:OnKeyCodeTyped](https://wiki.facepunch.com/gmod/TextEntry:OnKeyCodeTyped) override whenever a valid character is typed while the text entry is focused. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:OnKeyCode]
--- @param keyCode number @ They key code of the key pressed, see [KEY](https://wiki.facepunch.com/gmod/Enums/KEY).
--- @return void
function DTextEntry:OnKeyCode(keyCode) end

--- (client) Called whenever the DTextEntry lose focus. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:OnLoseFocus]
--- @return void
function DTextEntry:OnLoseFocus() end

--- (client) Called internally when the text inside the DTextEntry changes.
--- You should not override this function. Use [DTextEntry:OnValueChange](https://wiki.facepunch.com/gmod/DTextEntry:OnValueChange) instead. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:OnTextChanged]
--- @param noMenuRemoval boolean @ Determines whether to remove the autocomplete menu (false) or not (true).
--- @return void
function DTextEntry:OnTextChanged(noMenuRemoval) end

--- (client) Called internally when the text changes of the [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) are applied. (And set to the attached console variable, if one is given)
--- See also [DTextEntry:OnChange](https://wiki.facepunch.com/gmod/DTextEntry:OnChange) for a function that is called on every text change, even if the console variable is not updated.
--- You should override this function to define custom behavior when the text changes.
--- This method is called:
--- * When Enter is pressed after typing
--- * When [DTextEntry:SetValue](https://wiki.facepunch.com/gmod/DTextEntry:SetValue) is used
--- * For every key typed - only if [DTextEntry:SetUpdateOnType](https://wiki.facepunch.com/gmod/DTextEntry:SetUpdateOnType) was set to true (default is false) 
--- [https://wiki.facepunch.com/gmod/DTextEntry:OnValueChange]
--- @param value string @ The DTextEntry text.
--- @return void
function DTextEntry:OnValueChange(value) end

--- (client) Builds a [DMenu](https://wiki.facepunch.com/gmod/DMenu) for the DTextEntry based on the input table. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:OpenAutoComplete]
--- @param tab table @ Table containing results from [DTextEntry:GetAutoComplete](https://wiki.facepunch.com/gmod/DTextEntry:GetAutoComplete).
--- @return void
function DTextEntry:OpenAutoComplete(tab) end

--- (client) Sets the cursor's color in  DTextEntry (the blinking line). 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetCursorColor]
--- @param color table @ The color to set the cursor to.
--- @return void
function DTextEntry:SetCursorColor(color) end

--- (client) Disables input on a DTextEntry and greys it out visually. This differs from [DTextEntry:SetEditable](https://wiki.facepunch.com/gmod/DTextEntry:SetEditable) which doesn't visually change the textbox. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetDisabled]
--- @param disabled boolean @ Whether the textbox should be disabled
--- @return void
function DTextEntry:SetDisabled(disabled) end

--- (client) Disables Input on a DTextEntry. This differs from [DTextEntry:SetDisabled](https://wiki.facepunch.com/gmod/DTextEntry:SetDisabled) - SetEditable will not affect the appearance of the textbox. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetEditable]
--- @param enabled boolean @ Whether the DTextEntry should be editable
--- @return void
function DTextEntry:SetEditable(enabled) end

--- (client) Sets whether pressing the Enter key will cause the DTextEntry to lose focus or not, provided it is not multiline. This is true by default. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetEnterAllowed]
--- @param allowEnter boolean @ If set to false, pressing Enter will not cause the panel to lose focus and will never call [DTextEntry:OnEnter](https://wiki.facepunch.com/gmod/DTextEntry:OnEnter).
--- @return void
function DTextEntry:SetEnterAllowed(allowEnter) end

--- (client) Changes the font of the DTextEntry. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetFont]
--- @param font string @ The name of the font to be changed to.
--- @return void
function DTextEntry:SetFont(font) end

--- (client) Enables or disables the multi-line functionality of [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry). 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetMultiline]
--- @param multiline boolean @ Whether to enable multiline or not.
--- @return void
function DTextEntry:SetMultiline(multiline) end

--- (client) Sets whether or not to decline non-numeric characters as input.
--- Numeric characters are 1234567890.- 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetNumeric]
--- @param numericOnly boolean @ Whether to accept only numeric characters.
--- @return void
function DTextEntry:SetNumeric(numericOnly) end

--- (client) Allow you to set placeholder color. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetPlaceholderColor]
--- @param color table @ The color of the placeholder.
--- @return void
function DTextEntry:SetPlaceholderColor(color) end

--- (client) Sets the placeholder text that will be shown while the text entry has no user text. The player will not need to delete the placeholder text if they decide to start typing. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetPlaceholderText]
--- @param text string @ No description provided
--- @return void
function DTextEntry:SetPlaceholderText(text) end

--- (client) Sets whether or not the panel accepts tab key. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetTabbingDisabled]
--- @param enabled boolean @ Whether the DTextEntry should ignore tab
--- @return void
function DTextEntry:SetTabbingDisabled(enabled) end

--- (client) Sets the text color of the [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry). 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetTextColor]
--- @param color table @ The text color. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DTextEntry:SetTextColor(color) end

--- (client) Sets whether we should fire [DTextEntry:OnValueChange](https://wiki.facepunch.com/gmod/DTextEntry:OnValueChange) every time we type or delete a character or only when Enter is pressed. 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetUpdateOnType]
--- @param updateOnType boolean @ No description provided
--- @return void
function DTextEntry:SetUpdateOnType(updateOnType) end

--- (client) Sets the text of the [DTextEntry](https://wiki.facepunch.com/gmod/DTextEntry) and calls [DTextEntry:OnValueChange](https://wiki.facepunch.com/gmod/DTextEntry:OnValueChange). 
--- [https://wiki.facepunch.com/gmod/DTextEntry:SetValue]
--- @param text string @ The value to set.
--- @return void
function DTextEntry:SetValue(text) end

