--- @class draw
draw = {}

--- (client/menu) Simple draw text at position, but this will expand newlines and tabs.See also [MarkupObject](https://wiki.facepunch.com/gmod/MarkupObject) for limited width and markup support. 
--- [https://wiki.facepunch.com/gmod/draw.DrawText]
--- @param text string @ Text to be drawn.
--- @param font string @ Name of font to draw the text in. See [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont) to create your own, or [Default Fonts](https://wiki.facepunch.com/gmod/Default%20Fonts) for a list of default fonts.
--- @param x number @ The X Coordinate.
--- @param y number @ The Y Coordinate.
--- @param color table @ Color to draw the text in. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param xAlign number @ Where to align the text horizontally. Uses the [TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN).
--- @return void
function draw.DrawText(text, font, x, y, color, xAlign) end

--- (client/menu) Returns the height of the specified font in pixels. This is equivalent to the height of the character `W`. See [surface.GetTextSize](https://wiki.facepunch.com/gmod/surface.GetTextSize). 
--- [https://wiki.facepunch.com/gmod/draw.GetFontHeight]
--- @param font string @ Name of the font to get the height of.
--- @return number
function draw.GetFontHeight(font) end

--- (client/menu) Sets drawing texture to a default white texture (vgui/white) via [surface.SetMaterial](https://wiki.facepunch.com/gmod/surface.SetMaterial). Useful for resetting the drawing texture. 
--- [https://wiki.facepunch.com/gmod/draw.NoTexture]
--- @return void
function draw.NoTexture() end

--- (client/menu) Draws a rounded rectangle. 
--- [https://wiki.facepunch.com/gmod/draw.RoundedBox]
--- @param cornerRadius number @ Radius of the rounded corners, works best with a multiple of 2.
--- @param x number @ The x coordinate of the top left of the rectangle.
--- @param y number @ The y coordinate of the top left of the rectangle.
--- @param width number @ The width of the rectangle.
--- @param height number @ The height of the rectangle.
--- @param color table @ The color to fill the rectangle with. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return void
function draw.RoundedBox(cornerRadius, x, y, width, height, color) end

--- (client/menu) Draws a rounded rectangle. This function also lets you specify which corners are drawn rounded. 
--- [https://wiki.facepunch.com/gmod/draw.RoundedBoxEx]
--- @param cornerRadius number @ Radius of the rounded corners, works best with a power of 2 number.
--- @param x number @ The x coordinate of the top left of the rectangle.
--- @param y number @ The y coordinate of the top left of the rectangle.
--- @param width number @ The width of the rectangle.
--- @param height number @ The height of the rectangle.
--- @param color table @ The color to fill the rectangle with. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param roundTopLeft boolean @ Whether the top left corner should be rounded.
--- @param roundTopRight boolean @ Whether the top right corner should be rounded.
--- @param roundBottomLeft boolean @ Whether the bottom left corner should be rounded.
--- @param roundBottomRight boolean @ Whether the bottom right corner should be rounded.
--- @return void
function draw.RoundedBoxEx(cornerRadius, x, y, width, height, color, roundTopLeft, roundTopRight, roundBottomLeft, roundBottomRight) end

--- (client/menu) Draws text on the screen. 
--- [https://wiki.facepunch.com/gmod/draw.SimpleText]
--- @param text string @ The text to be drawn.
--- @param font string @ The font. See [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont) to create your own, or see [Default Fonts](https://wiki.facepunch.com/gmod/Default%20Fonts) for a list of default fonts.
--- @param x number @ The X Coordinate.
--- @param y number @ The Y Coordinate.
--- @param color table @ The color of the text. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param xAlign number @ The alignment of the X coordinate using [TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN).
--- @param yAlign number @ The alignment of the Y coordinate using [TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN).
--- @return number|number
function draw.SimpleText(text, font, x, y, color, xAlign, yAlign) end

--- (client/menu) Creates a simple line of text that is outlined. 
--- [https://wiki.facepunch.com/gmod/draw.SimpleTextOutlined]
--- @param Text string @ The text to draw.
--- @param font string @ The font name to draw with. See [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont) to create your own, or [here](https://wiki.facepunch.com/gmod/Default_Fonts) for a list of default fonts.
--- @param x number @ The X Coordinate.
--- @param y number @ The Y Coordinate.
--- @param color table @ The color of the text. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param xAlign number @ The alignment of the X Coordinate using [TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN).
--- @param yAlign number @ The alignment of the Y Coordinate using [TEXT_ALIGN](https://wiki.facepunch.com/gmod/Enums/TEXT_ALIGN).
--- @param outlinewidth number @ Width of the outline.
--- @param outlinecolor table @ Color of the outline. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return number|number
function draw.SimpleTextOutlined(Text, font, x, y, color, xAlign, yAlign, outlinewidth, outlinecolor) end

--- (client/menu) Works like [draw.SimpleText](https://wiki.facepunch.com/gmod/draw.SimpleText) but uses a table structure instead. 
--- [https://wiki.facepunch.com/gmod/draw.Text]
--- @param textdata table @ The text properties. See the [TextData](https://wiki.facepunch.com/gmod/Structures/TextData)
--- @return number|number
function draw.Text(textdata) end

--- (client/menu) Works like [draw.Text](https://wiki.facepunch.com/gmod/draw.Text), but draws the text as a shadow. 
--- [https://wiki.facepunch.com/gmod/draw.TextShadow]
--- @param textdata table @ The text properties. See [TextData](https://wiki.facepunch.com/gmod/Structures/TextData)
--- @param distance number @ How far away the shadow appears.
--- @param alpha number @ How visible the shadow is (0-255).
--- @return void
function draw.TextShadow(textdata, distance, alpha) end

--- (client/menu) Draws a texture with a table structure. 
--- [https://wiki.facepunch.com/gmod/draw.TexturedQuad]
--- @param texturedata table @ The texture properties. See [TextureData](https://wiki.facepunch.com/gmod/Structures/TextureData).
--- @return void
function draw.TexturedQuad(texturedata) end

--- (client/menu) Draws a rounded box with text in it. 
--- [https://wiki.facepunch.com/gmod/draw.WordBox]
--- @param bordersize number @ Size of border, should be multiple of 2. Ideally this will be 8 or 16.
--- @param x number @ The X Coordinate.
--- @param y number @ The Y Coordinate.
--- @param text string @ Text to draw.
--- @param font string @ Font to draw in. See [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont) to create your own, or [here](https://wiki.facepunch.com/gmod/Default_Fonts) for a list of default fonts.
--- @param boxcolor table @ The box color. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @param textcolor table @ The text color. Uses the [Color](https://wiki.facepunch.com/gmod/Color).
--- @return number|number
function draw.WordBox(bordersize, x, y, text, font, boxcolor, textcolor) end

