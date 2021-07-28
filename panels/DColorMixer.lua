--- @class DColorMixer : DPanel
DColorMixer = {}

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DColorMixer:ConVarThink]
--- @return void
function DColorMixer:ConVarThink() end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DColorMixer:DoConVarThink]
--- @param cvar string @ No description provided
--- @return void
function DColorMixer:DoConVarThink(cvar) end

--- (client) Return true if alpha bar is shown, false if not. 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetAlphaBar]
--- @return boolean
function DColorMixer:GetAlphaBar() end

--- (client) Returns the current selected color. 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetColor]
--- @return table
function DColorMixer:GetColor() end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the alpha channel of the color.
--- See also:
--- * [DColorMixer:GetConVarR](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarR) - For the red channel
--- * [DColorMixer:GetConVarG](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarG) - For the green channel
--- * [DColorMixer:GetConVarB](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarB) - For the blue channel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetConVarA]
--- @return string
function DColorMixer:GetConVarA() end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the blue channel of the color.
--- See also:
--- * [DColorMixer:GetConVarR](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarR) - For the red channel
--- * [DColorMixer:GetConVarG](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarG) - For the green channel
--- * [DColorMixer:GetConVarA](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetConVarB]
--- @return string
function DColorMixer:GetConVarB() end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the green channel of the color.
--- See also:
--- * [DColorMixer:GetConVarR](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarR) - For the red channel
--- * [DColorMixer:GetConVarB](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarB) - For the blue channel
--- * [DColorMixer:GetConVarA](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetConVarG]
--- @return string
function DColorMixer:GetConVarG() end

--- (client) Returns the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the red channel of the color.
--- See also:
--- * [DColorMixer:GetConVarG](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarG) - For the green channel
--- * [DColorMixer:GetConVarB](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarB) - For the blue channel
--- * [DColorMixer:GetConVarA](https://wiki.facepunch.com/gmod/DColorMixer:GetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetConVarR]
--- @return string
function DColorMixer:GetConVarR() end

--- (client) Return true if palette is shown, false if not. 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetPalette]
--- @return boolean
function DColorMixer:GetPalette() end

--- (client) Returns the color as a normalized [Vector](https://wiki.facepunch.com/gmod/Vector). 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetVector]
--- @return Vector
function DColorMixer:GetVector() end

--- (client) Return true if the wangs are shown, false if not. 
--- [https://wiki.facepunch.com/gmod/DColorMixer:GetWangs]
--- @return boolean
function DColorMixer:GetWangs() end

--- (client) Show/Hide the alpha bar in DColorMixer 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetAlphaBar]
--- @param show boolean @ Show / Hide the alpha bar
--- @return void
function DColorMixer:SetAlphaBar(show) end

--- (client) Sets the base color of the [DColorCube](https://wiki.facepunch.com/gmod/DColorCube) part of the [DColorMixer](https://wiki.facepunch.com/gmod/DColorMixer).
--- See also [DColorCube:SetBaseRGB](https://wiki.facepunch.com/gmod/DColorCube:SetBaseRGB) 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetBaseColor]
--- @param clr table @ [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DColorMixer:SetBaseColor(clr) end

--- (client) Sets the color of the [DColorMixer](https://wiki.facepunch.com/gmod/DColorMixer) 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetColor]
--- @param color table @ The color to set. See [Color](https://wiki.facepunch.com/gmod/Global.Color)
--- @return void
function DColorMixer:SetColor(color) end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the alpha channel of the color.
--- See also:
--- * [DColorMixer:SetConVarR](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarR) - For the red channel
--- * [DColorMixer:SetConVarG](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarG) - For the green channel
--- * [DColorMixer:SetConVarB](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarB) - For the blue channel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetConVarA]
--- @param convar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the alpha channel of the color
--- @return void
function DColorMixer:SetConVarA(convar) end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the blue channel of the color.
--- See also:
--- * [DColorMixer:SetConVarR](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarR) - For the red channel
--- * [DColorMixer:SetConVarG](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarG) - For the green channel
--- * [DColorMixer:SetConVarA](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetConVarB]
--- @param convar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the blue channel of the color
--- @return void
function DColorMixer:SetConVarB(convar) end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the green channel of the color.
--- See also:
--- * [DColorMixer:SetConVarR](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarR) - For the red channel
--- * [DColorMixer:SetConVarB](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarB) - For the blue channel
--- * [DColorMixer:SetConVarA](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetConVarG]
--- @param convar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the green channel of the color
--- @return void
function DColorMixer:SetConVarG(convar) end

--- (client) Sets the [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the red channel of the color.
--- See also:
--- * [DColorMixer:SetConVarG](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarG) - For the green channel
--- * [DColorMixer:SetConVarB](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarB) - For the blue channel
--- * [DColorMixer:SetConVarA](https://wiki.facepunch.com/gmod/DColorMixer:SetConVarA) - For the alpha channel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetConVarR]
--- @param convar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name for the red channel of the color
--- @return void
function DColorMixer:SetConVarR(convar) end

--- (client) Sets the label's text to show. 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetLabel]
--- @param text string @ Set to non empty string to show the label and its text. Give it an empty string or nothing and the label will be hidden.
--- @return void
function DColorMixer:SetLabel(text) end

--- (client) Show or hide the palette panel 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetPalette]
--- @param enabled boolean @ Show or hide the palette panel?
--- @return void
function DColorMixer:SetPalette(enabled) end

--- (client) Sets the color of [DColorMixer](https://wiki.facepunch.com/gmod/DColorMixer) from a [Vector](https://wiki.facepunch.com/gmod/Vector). Alpha is not included. 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetVector]
--- @param vec Vector @ The color to set. It is expected that the vector will have values be from 0 to 1. (i.e. be normalized)
--- @return void
function DColorMixer:SetVector(vec) end

--- (client) Show / Hide the colors indicators in DColorMixer 
--- [https://wiki.facepunch.com/gmod/DColorMixer:SetWangs]
--- @param show boolean @ Show / Hide the colors indicators
--- @return void
function DColorMixer:SetWangs(show) end

--- (client) Does nothing. 
--- [https://wiki.facepunch.com/gmod/DColorMixer:TranslateValues]
--- @return void
function DColorMixer:TranslateValues() end

--- (client) Use [DColorMixer:SetColor](https://wiki.facepunch.com/gmod/DColorMixer:SetColor) instead! 
--- [https://wiki.facepunch.com/gmod/DColorMixer:UpdateColor]
--- @param clr table @ No description provided
--- @return void
function DColorMixer:UpdateColor(clr) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DColorMixer:UpdateConVar]
--- @param cvar string @ The [ConVar](https://wiki.facepunch.com/gmod/ConVar) name
--- @param part string @ The color part to set the cvar to. "r", "g", "b" or "a".
--- @param clr table @ The [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DColorMixer:UpdateConVar(cvar, part, clr) end

--- (client) No description provided 
--- [https://wiki.facepunch.com/gmod/DColorMixer:UpdateConVars]
--- @param clr table @ The [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DColorMixer:UpdateConVars(clr) end

--- (client) Called when the player changes the color of the [DColorMixer](https://wiki.facepunch.com/gmod/DColorMixer). 
--- [https://wiki.facepunch.com/gmod/DColorMixer:ValueChanged]
--- @param col table @ The new color. See [Color](https://wiki.facepunch.com/gmod/Color)
--- @return void
function DColorMixer:ValueChanged(col) end

