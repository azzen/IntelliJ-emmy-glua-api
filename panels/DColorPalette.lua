--- @class DColorPalette : DIconLayout
DColorPalette = {}

--- (client) Basically the same functionality as [DColorPalette:OnValueChanged](https://wiki.facepunch.com/gmod/DColorPalette:OnValueChanged), you should use that instead! 
--- [https://wiki.facepunch.com/gmod/DColorPalette:DoClick]
--- @param clr table @ The new color via the [Color](https://wiki.facepunch.com/gmod/Color)
--- @param btn Panel @ The [DColorButton](https://wiki.facepunch.com/gmod/DColorButton) that was pressed.
--- @return void
function DColorPalette:DoClick(clr, btn) end

--- (client) Returns the size of each palette button. Set by [DColorPalette:SetButtonSize](https://wiki.facepunch.com/gmod/DColorPalette:SetButtonSize). 
--- [https://wiki.facepunch.com/gmod/DColorPalette:GetButtonSize]
--- @return number
function DColorPalette:GetButtonSize() end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the alpha channel of the color.
--- See also:
--- * [DColorPalette:GetConVarR](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarR) - For the red channel
--- * [DColorPalette:GetConVarG](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarG) - For the green channel
--- * [DColorPalette:GetConVarB](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarB) - For the blue channel 
--- [https://wiki.facepunch.com/gmod/DColorPalette:GetConVarA]
--- @return string
function DColorPalette:GetConVarA() end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the blue channel of the color.
--- See also:
--- * [DColorPalette:GetConVarR](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarR) - For the red channel
--- * [DColorPalette:GetConVarG](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarG) - For the green channel
--- * [DColorPalette:GetConVarA](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorPalette:GetConVarB]
--- @return string
function DColorPalette:GetConVarB() end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the green channel of the color.
--- See also:
--- * [DColorPalette:GetConVarR](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarR) - For the red channel
--- * [DColorPalette:GetConVarB](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarB) - For the blue channel
--- * [DColorPalette:GetConVarA](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorPalette:GetConVarG]
--- @return string
function DColorPalette:GetConVarG() end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the red channel of the color.
--- See also:
--- * [DColorPalette:GetConVarG](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarG) - For the green channel
--- * [DColorPalette:GetConVarB](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarB) - For the blue channel
--- * [DColorPalette:GetConVarA](https://wiki.facepunch.com/gmod/DColorPalette:GetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorPalette:GetConVarR]
--- @return string
function DColorPalette:GetConVarR() end

--- (client) Returns the number of rows of the palette, provided 6 colors fill each row. This value is equal to the number of colors in the DColorPalette divided by 6. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:GetNumRows]
--- @return number
function DColorPalette:GetNumRows() end

--- (client) Used internally to make sure changes on one palette affect other palettes with same name. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:NetworkColorChange]
--- @return void
function DColorPalette:NetworkColorChange() end

--- (client) Called when a palette button has been pressed 
--- [https://wiki.facepunch.com/gmod/DColorPalette:OnRightClickButton]
--- @param pnl Panel @ The [DColorButton](https://wiki.facepunch.com/gmod/DColorButton) that was pressed.
--- @return void
function DColorPalette:OnRightClickButton(pnl) end

--- (client) Called when the color is changed after clicking a new value. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:OnValueChanged]
--- @param newcol table @ The new color of the [DColorPalette](https://wiki.facepunch.com/gmod/DColorPalette)
--- @return void
function DColorPalette:OnValueChanged(newcol) end

--- (client) Resets this entire color palette to a default preset one, without saving.
--- See [DColorPalette:ResetSavedColors](https://wiki.facepunch.com/gmod/DColorPalette:ResetSavedColors) for version that also saves the changes. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:Reset]
--- @return void
function DColorPalette:Reset() end

--- (client) Resets this entire color palette to a default preset one and saves the changes.
--- See [DColorPalette:Reset](https://wiki.facepunch.com/gmod/DColorPalette:Reset) for version that does not save the changes. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:ResetSavedColors]
--- @return void
function DColorPalette:ResetSavedColors() end

--- (client) Saves the color of given button across sessions.
--- The color is saved as a panel cookie, see [Panel:SetCookie](https://wiki.facepunch.com/gmod/Panel:SetCookie) and [Panel:SetCookieName](https://wiki.facepunch.com/gmod/Panel:SetCookieName).
--- ```
---  
--- ```
--- It is expected that the amount of colors per palette ([Panel:SetCookieName](https://wiki.facepunch.com/gmod/Panel:SetCookieName)) is the same every time. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SaveColor]
--- @param btn Panel @ The button to save the color of. Used to get the ID of the button.
--- @param clr table @ The color to save to this button's index
--- @return void
function DColorPalette:SaveColor(btn, clr) end

--- (client) Sets the size of each palette button.
--- This is best kept to such a number, where this equation would return a whole number:
--- `WidthOfColorPalette / ButtonSize= WholeNumber`
--- If not, there will be ugly whitespace on the right side of the panel. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SetButtonSize]
--- @param size number @ Sets the new size
--- @return void
function DColorPalette:SetButtonSize(size) end

--- (client) Currently does nothing. Intended to "select" the color. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SetColor]
--- @param clr table @ No description provided
--- @return void
function DColorPalette:SetColor(clr) end

--- (client) Clears the palette and adds new buttons with given colors. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SetColorButtons]
--- @param tab table @ A number indexed table where each value is a [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DColorPalette:SetColorButtons(tab) end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the alpha channel of the color.
--- See also:
--- * [DColorPalette:SetConVarR](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarR) - For the red channel
--- * [DColorPalette:SetConVarG](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarG) - For the green channel
--- * [DColorPalette:SetConVarB](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarB) - For the blue channel 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SetConVarA]
--- @param convar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the alpha channel of the color
--- @return void
function DColorPalette:SetConVarA(convar) end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the blue channel of the color.
--- See also:
--- * [DColorPalette:SetConVarR](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarR) - For the red channel
--- * [DColorPalette:SetConVarG](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarG) - For the green channel
--- * [DColorPalette:SetConVarA](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SetConVarB]
--- @param convar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the blue channel of the color
--- @return void
function DColorPalette:SetConVarB(convar) end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the green channel of the color.
--- See also:
--- * [DColorPalette:SetConVarR](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarR) - For the red channel
--- * [DColorPalette:SetConVarB](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarB) - For the blue channel
--- * [DColorPalette:SetConVarA](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SetConVarG]
--- @param convar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the green channel of the color
--- @return void
function DColorPalette:SetConVarG(convar) end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the red channel of the color.
--- See also:
--- * [DColorPalette:SetConVarG](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarG) - For the green channel
--- * [DColorPalette:SetConVarB](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarB) - For the blue channel
--- * [DColorPalette:SetConVarA](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SetConVarR]
--- @param convar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the red channel of the color
--- @return void
function DColorPalette:SetConVarR(convar) end

--- (client) Roughly sets the number of colors that can be picked by the user. If the DColorPalette is exactly 6 rows tall, this function will set the number of colors shown per row in the palette. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:SetNumRows]
--- @param rows number @ Scale for the range of colors that the user can pick. Default is 8.
--- @return void
function DColorPalette:SetNumRows(rows) end

--- (client) Internal helper function for [DColorPalette:UpdateConVars](https://wiki.facepunch.com/gmod/DColorPalette:UpdateConVars). 
--- [https://wiki.facepunch.com/gmod/DColorPalette:UpdateConVar]
--- @param name string @ The name of the console variable to set
--- @param key string @ The key of the 3rd argument to set the convar to Possible values: "r", "g", "b", "a"
--- @param clr table @ The [Color](https://wiki.facepunch.com/gmod/Color) to retrieve the info from.
--- @return void
function DColorPalette:UpdateConVar(name, key, clr) end

--- (client) Updates all the console variables set by [DColorPalette:SetConVarR](https://wiki.facepunch.com/gmod/DColorPalette:SetConVarR) and so on with given color.
--- Called internally when a palette color is clicked. 
--- [https://wiki.facepunch.com/gmod/DColorPalette:UpdateConVars]
--- @param clr table @ A [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DColorPalette:UpdateConVars(clr) end

