--- @class DLabel : Label
DLabel = {}

--- (client) Called when the label is left clicked (on key release) by the player.
--- This will be called after [DLabel:OnDepressed](https://wiki.facepunch.com/gmod/DLabel:OnDepressed) and [DLabel:OnReleased](https://wiki.facepunch.com/gmod/DLabel:OnReleased).
--- This can be overridden; by default, it calls [DLabel:Toggle](https://wiki.facepunch.com/gmod/DLabel:Toggle).
--- See also [DLabel:DoRightClick](https://wiki.facepunch.com/gmod/DLabel:DoRightClick), [DLabel:DoMiddleClick](https://wiki.facepunch.com/gmod/DLabel:DoMiddleClick) and [DLabel:DoDoubleClick](https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick). 
--- [https://wiki.facepunch.com/gmod/DLabel:DoClick]
--- @return void
function DLabel:DoClick() end

--- (client) Called when the label is double clicked by the player with left clicks.
--- [DLabel:SetDoubleClickingEnabled](https://wiki.facepunch.com/gmod/DLabel:SetDoubleClickingEnabled) must be set to true for this hook to work, which it is by default.
--- This will be called after [DLabel:OnDepressed](https://wiki.facepunch.com/gmod/DLabel:OnDepressed) and [DLabel:OnReleased](https://wiki.facepunch.com/gmod/DLabel:OnReleased) and [DLabel:DoClick](https://wiki.facepunch.com/gmod/DLabel:DoClick).
--- See also [DLabel:DoRightClick](https://wiki.facepunch.com/gmod/DLabel:DoRightClick) and [DLabel:DoMiddleClick](https://wiki.facepunch.com/gmod/DLabel:DoMiddleClick). 
--- [https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick]
--- @return void
function DLabel:DoDoubleClick() end

--- (client) Called when the label is middle mouse (Mouse wheel, also known as mouse 3) clicked (on key release) by the player.
--- This will be called after [DLabel:OnDepressed](https://wiki.facepunch.com/gmod/DLabel:OnDepressed) and [DLabel:OnReleased](https://wiki.facepunch.com/gmod/DLabel:OnReleased).
--- See also [DLabel:DoClick](https://wiki.facepunch.com/gmod/DLabel:DoClick), [DLabel:DoRightClick](https://wiki.facepunch.com/gmod/DLabel:DoRightClick) and [DLabel:DoDoubleClick](https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick). 
--- [https://wiki.facepunch.com/gmod/DLabel:DoMiddleClick]
--- @return void
function DLabel:DoMiddleClick() end

--- (client) Called when the label is right clicked (on key release) by the player.
--- This will be called after [DLabel:OnDepressed](https://wiki.facepunch.com/gmod/DLabel:OnDepressed) and [DLabel:OnReleased](https://wiki.facepunch.com/gmod/DLabel:OnReleased).
--- See also [DLabel:DoClick](https://wiki.facepunch.com/gmod/DLabel:DoClick), [DLabel:DoMiddleClick](https://wiki.facepunch.com/gmod/DLabel:DoMiddleClick) and [DLabel:DoDoubleClick](https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick). 
--- [https://wiki.facepunch.com/gmod/DLabel:DoRightClick]
--- @return void
function DLabel:DoRightClick() end

--- (client) Called when the player presses the label with any mouse button.
--- This works as an alternative to [PANEL:OnMousePressed](https://wiki.facepunch.com/gmod/PANEL:OnMousePressed) as that hook is used heavily by [DLabel](https://wiki.facepunch.com/gmod/DLabel) and overriding it will break functionality.
--- See also [DLabel:DoClick](https://wiki.facepunch.com/gmod/DLabel:DoClick), [DLabel:DoMiddleClick](https://wiki.facepunch.com/gmod/DLabel:DoMiddleClick), [DLabel:DoRightClick](https://wiki.facepunch.com/gmod/DLabel:DoRightClick), [DLabel:OnReleased](https://wiki.facepunch.com/gmod/DLabel:OnReleased) and [DLabel:DoDoubleClick](https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick). 
--- [https://wiki.facepunch.com/gmod/DLabel:OnDepressed]
--- @return void
function DLabel:OnDepressed() end

--- (client) Called when the player releases any mouse button on the label. This is always called after [DLabel:OnDepressed](https://wiki.facepunch.com/gmod/DLabel:OnDepressed).
--- This works as an alternative to [PANEL:OnMouseReleased](https://wiki.facepunch.com/gmod/PANEL:OnMouseReleased) as that hook is used heavily by [DLabel](https://wiki.facepunch.com/gmod/DLabel) and overriding it will break functionality.
--- See also [DLabel:DoClick](https://wiki.facepunch.com/gmod/DLabel:DoClick), [DLabel:DoMiddleClick](https://wiki.facepunch.com/gmod/DLabel:DoMiddleClick), [DLabel:DoRightClick](https://wiki.facepunch.com/gmod/DLabel:DoRightClick) and [DLabel:DoDoubleClick](https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick). 
--- [https://wiki.facepunch.com/gmod/DLabel:OnReleased]
--- @return void
function DLabel:OnReleased() end

--- (client) Called when the toggle state of the label is changed by [DLabel:Toggle](https://wiki.facepunch.com/gmod/DLabel:Toggle).
--- In order to use toggle functionality, you must first call [DLabel:SetIsToggle](https://wiki.facepunch.com/gmod/DLabel:SetIsToggle) with `true`, as it is disabled by default. 
--- [https://wiki.facepunch.com/gmod/DLabel:OnToggled]
--- @param toggleState boolean @ The new toggle state.
--- @return void
function DLabel:OnToggled(toggleState) end

--- (client) Called just before [DLabel:DoClick](https://wiki.facepunch.com/gmod/DLabel:DoClick).
--- In [DLabel](https://wiki.facepunch.com/gmod/DLabel) does nothing and is safe to override. Used by [DMenuOption](https://wiki.facepunch.com/gmod/DMenuOption) and [DCollapsibleCategory](https://wiki.facepunch.com/gmod/DCollapsibleCategory)'s tabs. 
--- [https://wiki.facepunch.com/gmod/DLabel:DoClickInternal]
--- @return void
function DLabel:DoClickInternal() end

--- (client) Called just before [DLabel:DoDoubleClick](https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick). In [DLabel](https://wiki.facepunch.com/gmod/DLabel) does nothing and is safe to override. 
--- [https://wiki.facepunch.com/gmod/DLabel:DoDoubleClickInternal]
--- @return void
function DLabel:DoDoubleClickInternal() end

--- (client) Returns whether the label stretches vertically or not.
--- Set by [DLabel:SetAutoStretchVertical](https://wiki.facepunch.com/gmod/DLabel:SetAutoStretchVertical). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetAutoStretchVertical]
--- @return boolean
function DLabel:GetAutoStretchVertical() end

--- (client) Returns whether the [DLabel](https://wiki.facepunch.com/gmod/DLabel) should set its text color to the current skin's bright text color.
--- See [DLabel:SetBright](https://wiki.facepunch.com/gmod/DLabel:SetBright). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetBright]
--- @return boolean
function DLabel:GetBright() end

--- (client) Returns the actual color of the text.
--- See also [DLabel:GetTextColor](https://wiki.facepunch.com/gmod/DLabel:GetTextColor) and [DLabel:GetTextStyleColor](https://wiki.facepunch.com/gmod/DLabel:GetTextStyleColor). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetColor]
--- @return table
function DLabel:GetColor() end

--- (client) Returns whether the [DLabel](https://wiki.facepunch.com/gmod/DLabel) should set its text color to the current skin's dark text color.
--- See [DLabel:SetDark](https://wiki.facepunch.com/gmod/DLabel:SetDark). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetDark]
--- @return boolean
function DLabel:GetDark() end

--- (client) Gets the disabled state of the [DLabel](https://wiki.facepunch.com/gmod/DLabel). This is set with [DLabel:SetDisabled](https://wiki.facepunch.com/gmod/DLabel:SetDisabled). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetDisabled]
--- @return boolean
function DLabel:GetDisabled() end

--- (client) Returns whether or not double clicking will call [DLabel:DoDoubleClick](https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick).
--- See [DLabel:SetDoubleClickingEnabled](https://wiki.facepunch.com/gmod/DLabel:SetDoubleClickingEnabled). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetDoubleClickingEnabled]
--- @return boolean
function DLabel:GetDoubleClickingEnabled() end

--- (client) Returns the current font of the DLabel. This is set with [DLabel:SetFont](https://wiki.facepunch.com/gmod/DLabel:SetFont). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetFont]
--- @return string
function DLabel:GetFont() end

--- (client) Returns whether the [DLabel](https://wiki.facepunch.com/gmod/DLabel) should set its text color to the current skin's highlighted text color.
--- See [DLabel:SetHighlight](https://wiki.facepunch.com/gmod/DLabel:SetHighlight). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetHighlight]
--- @return boolean
function DLabel:GetHighlight() end

--- (client) Returns whether the toggle functionality is enabled for a label. Set with [DLabel:SetIsToggle](https://wiki.facepunch.com/gmod/DLabel:SetIsToggle). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetIsToggle]
--- @return boolean
function DLabel:GetIsToggle() end

--- (client) Returns the "override" text color, set by [DLabel:SetTextColor](https://wiki.facepunch.com/gmod/DLabel:SetTextColor). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetTextColor]
--- @return table
function DLabel:GetTextColor() end

--- (client) Returns the "internal" or fallback color of the text.
--- See also [DLabel:GetTextColor](https://wiki.facepunch.com/gmod/DLabel:GetTextColor) and [DLabel:SetTextStyleColor](https://wiki.facepunch.com/gmod/DLabel:SetTextStyleColor). 
--- [https://wiki.facepunch.com/gmod/DLabel:GetTextStyleColor]
--- @return table
function DLabel:GetTextStyleColor() end

--- (client) Returns the current toggle state of the label. This can be set with [DLabel:SetToggle](https://wiki.facepunch.com/gmod/DLabel:SetToggle) and toggled with [DLabel:Toggle](https://wiki.facepunch.com/gmod/DLabel:Toggle).
--- In order to use toggle functionality, you must first call [DLabel:SetIsToggle](https://wiki.facepunch.com/gmod/DLabel:SetIsToggle) with `true`, as it is disabled by default. 
--- [https://wiki.facepunch.com/gmod/DLabel:GetToggle]
--- @return boolean
function DLabel:GetToggle() end

--- (client) Automatically adjusts the height of the label dependent of the height of the text inside of it. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetAutoStretchVertical]
--- @param stretch boolean @ Whenever to stretch the label vertically or not.
--- @return void
function DLabel:SetAutoStretchVertical(stretch) end

--- (client) Sets the color of the text to the bright text color defined in the skin.
--- See also [DLabel:SetDark](https://wiki.facepunch.com/gmod/DLabel:SetDark) and [DLabel:SetHighlight](https://wiki.facepunch.com/gmod/DLabel:SetHighlight).
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetBright]
--- @param bright boolean @ Whenever to set the text to bright or not.
--- @return void
function DLabel:SetBright(bright) end

--- (client) Changes color of label. Alias of [DLabel:SetTextColor](https://wiki.facepunch.com/gmod/DLabel:SetTextColor). 
--- [https://wiki.facepunch.com/gmod/DLabel:SetColor]
--- @param color table @ The color to set. Uses the Color structure.
--- @return void
function DLabel:SetColor(color) end

--- (client) Sets the color of the text to the dark text color defined in the skin.
--- See also [DLabel:SetBright](https://wiki.facepunch.com/gmod/DLabel:SetBright) and [DLabel:SetHighlight](https://wiki.facepunch.com/gmod/DLabel:SetHighlight).
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetDark]
--- @param dark boolean @ Whenever to set the text to dark or not.
--- @return void
function DLabel:SetDark(dark) end

--- (client) Sets the disabled state of the [DLabel](https://wiki.facepunch.com/gmod/DLabel).
--- When disabled, the label does not respond to click, toggle or drag & drop actions. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetDisabled]
--- @param disable boolean @ `true` to disable the DLabel, `false` to enable it.
--- @return void
function DLabel:SetDisabled(disable) end

--- (client) Sets whether or not double clicking should call [DLabel:DoDoubleClick](https://wiki.facepunch.com/gmod/DLabel:DoDoubleClick).
--- This is enabled by default. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetDoubleClickingEnabled]
--- @param enable boolean @ true to enable, false to disable
--- @return void
function DLabel:SetDoubleClickingEnabled(enable) end

--- (client) Sets the font of the label. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetFont]
--- @param fontName string @ The name of the font. See [here](https://wiki.facepunch.com/gmod/Default_Fonts) for a list of existing fonts. Alternatively, use [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont) to create your own custom font.
--- @return void
function DLabel:SetFont(fontName) end

--- (client) Sets the color of the text to the highlight text color defined in the skin.
--- For the default Derma skin this makes the label red.
--- See also [DLabel:SetBright](https://wiki.facepunch.com/gmod/DLabel:SetBright) and [DLabel:SetDark](https://wiki.facepunch.com/gmod/DLabel:SetDark).
--- You should only consider using this if you are using background elements that are not manually painted and are using the skin colors. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetHighlight]
--- @param highlight boolean @ true to set the label's color to skins's text highlight color, false otherwise.
--- @return void
function DLabel:SetHighlight(highlight) end

--- (client) Enables or disables toggle functionality for a label. Retrieved with [DLabel:GetIsToggle](https://wiki.facepunch.com/gmod/DLabel:GetIsToggle).
--- You must call this before using [DLabel:SetToggle](https://wiki.facepunch.com/gmod/DLabel:SetToggle), [DLabel:GetToggle](https://wiki.facepunch.com/gmod/DLabel:GetToggle) or [DLabel:Toggle](https://wiki.facepunch.com/gmod/DLabel:Toggle). 
--- [https://wiki.facepunch.com/gmod/DLabel:SetIsToggle]
--- @param allowToggle boolean @ Whether or not to enable toggle functionality.
--- @return void
function DLabel:SetIsToggle(allowToggle) end

--- (client) Sets the text color of the [DLabel](https://wiki.facepunch.com/gmod/DLabel). This will take precedence over [DLabel:SetTextStyleColor](https://wiki.facepunch.com/gmod/DLabel:SetTextStyleColor). 
--- [https://wiki.facepunch.com/gmod/DLabel:SetTextColor]
--- @param color table @ The text color. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DLabel:SetTextColor(color) end

--- (client) Used by [DLabel:SetDark](https://wiki.facepunch.com/gmod/DLabel:SetDark), [DLabel:SetBright](https://wiki.facepunch.com/gmod/DLabel:SetBright) and [DLabel:SetHighlight](https://wiki.facepunch.com/gmod/DLabel:SetHighlight) to set the text color without affecting [DLabel:SetTextColor](https://wiki.facepunch.com/gmod/DLabel:SetTextColor) calls. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetTextStyleColor]
--- @param color table @ The text color. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function DLabel:SetTextStyleColor(color) end

--- (client) Sets the toggle state of the label. This can be retrieved with [DLabel:GetToggle](https://wiki.facepunch.com/gmod/DLabel:GetToggle) and toggled with [DLabel:Toggle](https://wiki.facepunch.com/gmod/DLabel:Toggle).
--- In order to use toggle functionality, you must first call [DLabel:SetIsToggle](https://wiki.facepunch.com/gmod/DLabel:SetIsToggle) with `true`, as it is disabled by default. 
--- [https://wiki.facepunch.com/gmod/DLabel:SetToggle]
--- @param toggleState boolean @ The toggle state to be set.
--- @return void
function DLabel:SetToggle(toggleState) end

--- (client) Toggles the label's state. This can be set and retrieved with [DLabel:SetToggle](https://wiki.facepunch.com/gmod/DLabel:SetToggle) and [DLabel:GetToggle](https://wiki.facepunch.com/gmod/DLabel:GetToggle).
--- In order to use toggle functionality, you must first call [DLabel:SetIsToggle](https://wiki.facepunch.com/gmod/DLabel:SetIsToggle) with `true`, as it is disabled by default. 
--- [https://wiki.facepunch.com/gmod/DLabel:Toggle]
--- @return void
function DLabel:Toggle() end

--- (client) A hook called from within [PANEL:ApplySchemeSettings](https://wiki.facepunch.com/gmod/PANEL:ApplySchemeSettings) to determine the color of the text on display. 
--- [https://wiki.facepunch.com/gmod/DLabel:UpdateColours]
--- @param skin table @ A table supposed to contain the color values listed above.
--- @return void
function DLabel:UpdateColours(skin) end

--- (client) Called internally to update the color of the text. 
--- [https://wiki.facepunch.com/gmod/DLabel:UpdateFGColor]
--- @return void
function DLabel:UpdateFGColor() end

