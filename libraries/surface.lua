--- @class surface
surface = {}

--- (client/menu) Creates a new font.
--- To prevent the font from displaying incorrectly when using the `outline` setting, set `antialias` to false. This will ensure the text properly fills out the entire outline.
--- Be sure to check the [List of Default Fonts](https://wiki.facepunch.com/gmod/Default_Fonts) first! Those fonts can be used without using this function.
--- See Also: [Finding the Font Name](https://wiki.facepunch.com/gmod/Finding%20the%20Font%20Name). 
--- [https://wiki.facepunch.com/gmod/surface.CreateFont]
--- @param fontName string @ The new font name.
--- @param fontData table @ The font properties. See the [FontData](https://wiki.facepunch.com/gmod/Structures/FontData).
--- @return void
function surface.CreateFont(fontName, fontData) end

--- (client/menu) Enables or disables the clipping used by the VGUI that limits the drawing operations to a panels bounds.
--- Identical to [DisableClipping](https://wiki.facepunch.com/gmod/Global.DisableClipping). See also [Panel:NoClipping](https://wiki.facepunch.com/gmod/Panel:NoClipping). 
--- [https://wiki.facepunch.com/gmod/surface.DisableClipping]
--- @param disable boolean @ True to disable, false to enable the clipping
--- @return void
function surface.DisableClipping(disable) end

--- (client/menu) Draws a hollow circle, made of lines. For a filled circle, see examples for [surface.DrawPoly](https://wiki.facepunch.com/gmod/surface.DrawPoly). 
--- [https://wiki.facepunch.com/gmod/surface.DrawCircle]
--- @param originX number @ The center x integer coordinate.
--- @param originY number @ The center y integer coordinate.
--- @param radius number @ The radius of the circle.
--- @param r number @ The red value of the color to draw the circle with, or a [Color](https://wiki.facepunch.com/gmod/Color).
--- @param g number @ The green value of the color to draw the circle with. Unused if a [Color](https://wiki.facepunch.com/gmod/Color) was given.
--- @param b number @ The blue value of the color to draw the circle with. Unused if a [Color](https://wiki.facepunch.com/gmod/Color) was given.
--- @param a number @ The alpha value of the color to draw the circle with. Unused if a [Color](https://wiki.facepunch.com/gmod/Color) was given.
--- @return void
function surface.DrawCircle(originX, originY, radius, r, g, b, a) end

--- (client/menu) Draws a line from one point to another. 
--- [https://wiki.facepunch.com/gmod/surface.DrawLine]
--- @param startX number @ The start x integer coordinate.
--- @param startY number @ The start y integer coordinate.
--- @param endX number @ The end x integer coordinate.
--- @param endY number @ The end y integer coordinate.
--- @return void
function surface.DrawLine(startX, startY, endX, endY) end

--- (client/menu) Draws a hollow box with a given border width. 
--- [https://wiki.facepunch.com/gmod/surface.DrawOutlinedRect]
--- @param x number @ The start x integer coordinate.
--- @param y number @ The start y integer coordinate.
--- @param w number @ The integer width.
--- @param h number @ The integer height.
--- @param thickness number @ The thickness of the outlined box border.
--- @return void
function surface.DrawOutlinedRect(x, y, w, h, thickness) end

--- (client/menu) Draws a textured polygon (secretly a triangle fan) with a maximum of 4096 vertices.
--- Only works properly with convex polygons. You may try to render concave polygons, but there is no guarantee that things wont get messed up.
--- Unlike most surface library functions, non-integer coordinates are not rounded. 
--- [https://wiki.facepunch.com/gmod/surface.DrawPoly]
--- @param vertices table @ A table containing integer vertices. See the [PolygonVertex](https://wiki.facepunch.com/gmod/Structures/PolygonVertex). The vertices must be in clockwise order.
--- @return void
function surface.DrawPoly(vertices) end

--- (client/menu) Draws a solid rectangle on the screen. 
--- [https://wiki.facepunch.com/gmod/surface.DrawRect]
--- @param x number @ The X integer co-ordinate.
--- @param y number @ The Y integer co-ordinate.
--- @param width number @ The integer width of the rectangle.
--- @param height number @ The integer height of the rectangle.
--- @return void
function surface.DrawRect(x, y, width, height) end

--- (client/menu) Draw the specified text on the screen, using the previously set position, font and color. 
--- [https://wiki.facepunch.com/gmod/surface.DrawText]
--- @param text string @ The text to be rendered.
--- @param forceAdditive boolean @ `true` to force text to render additive, `false` to force not additive, `nil` to use font's value.
--- @return void
function surface.DrawText(text, forceAdditive) end

--- (client/menu) Draw a textured rectangle with the given position and dimensions on the screen, using the current active texture set with [surface.SetMaterial](https://wiki.facepunch.com/gmod/surface.SetMaterial). It is also affected by [surface.SetDrawColor](https://wiki.facepunch.com/gmod/surface.SetDrawColor).
--- See also [render.SetMaterial](https://wiki.facepunch.com/gmod/render.SetMaterial) and [render.DrawScreenQuadEx](https://wiki.facepunch.com/gmod/render.DrawScreenQuadEx).
--- See also [surface.DrawTexturedRectUV](https://wiki.facepunch.com/gmod/surface.DrawTexturedRectUV). 
--- [https://wiki.facepunch.com/gmod/surface.DrawTexturedRect]
--- @param x number @ The X integer co-ordinate.
--- @param y number @ The Y integer co-ordinate.
--- @param width number @ The integer width of the rectangle.
--- @param height number @ The integer height of the rectangle.
--- @return void
function surface.DrawTexturedRect(x, y, width, height) end

--- (client/menu) Draw a textured rotated rectangle with the given position and dimensions and angle on the screen, using the current active texture. 
--- [https://wiki.facepunch.com/gmod/surface.DrawTexturedRectRotated]
--- @param x number @ The X integer co-ordinate, representing the center of the rectangle.
--- @param y number @ The Y integer co-ordinate, representing the center of the rectangle.
--- @param width number @ The integer width of the rectangle.
--- @param height number @ The integer height of the rectangle.
--- @param rotation number @ The rotation of the rectangle, in degrees.
--- @return void
function surface.DrawTexturedRectRotated(x, y, width, height, rotation) end

--- (client/menu) Draws a textured rectangle with a repeated or partial texture.
--- u and v refer to texture coordinates.
--- * (u, v) = (0, 0) is the top left
--- * (u, v) = (1, 0) is the top right
--- * (u, v) = (1, 1) is the bottom right
--- * (u, v) = (0, 1) is the bottom left
--- Using a start point of (1, 0) and an end point to (0, 1), you can draw an image flipped horizontally, same goes with other directions. Going above 1 will tile the texture. Negative values are allowed as well.
--- Here's a helper image: 
--- [https://wiki.facepunch.com/gmod/surface.DrawTexturedRectUV]
--- @param x number @ The X integer coordinate.
--- @param y number @ The Y integer coordinate.
--- @param width number @ The integer width of the rectangle.
--- @param height number @ The integer height of the rectangle.
--- @param startU number @ The U texture mapping of the rectangle origin.
--- @param startV number @ The V texture mapping of the rectangle origin.
--- @param endU number @ The U texture mapping of the rectangle end.
--- @param endV number @ The V texture mapping of the rectangle end.
--- @return void
function surface.DrawTexturedRectUV(x, y, width, height, startU, startV, endU, endV) end

--- (client/menu) Returns the current alpha multiplier affecting drawing operations. This is set by [surface.SetAlphaMultiplier](https://wiki.facepunch.com/gmod/surface.SetAlphaMultiplier) or by the game engine in certain other cases. 
--- [https://wiki.facepunch.com/gmod/surface.GetAlphaMultiplier]
--- @return number
function surface.GetAlphaMultiplier() end

--- (client/menu) Returns the current color affecting draw operations. 
--- [https://wiki.facepunch.com/gmod/surface.GetDrawColor]
--- @return table
function surface.GetDrawColor() end

--- (client) Gets the [HUD icon](https://github.com/Facepunch/garrysmod/blob/master/garrysmod/scripts/hud_textures.txt) TextureID with the specified name. 
--- [https://wiki.facepunch.com/gmod/surface.GetHUDTexture]
--- @param name string @ The name of the texture.
--- @return number
function surface.GetHUDTexture(name) end

--- (client/menu) Returns the current color affecting text draw operations. 
--- [https://wiki.facepunch.com/gmod/surface.GetTextColor]
--- @return table
function surface.GetTextColor() end

--- (client/menu) Returns the width and height (in pixels) of the given text, but only if the font has been set with [surface.SetFont](https://wiki.facepunch.com/gmod/surface.SetFont). 
--- [https://wiki.facepunch.com/gmod/surface.GetTextSize]
--- @param text string @ The string to check the size of.
--- @return number|number
function surface.GetTextSize(text) end

--- (client/menu) Returns the texture id of the material with the given name/path. 
--- [https://wiki.facepunch.com/gmod/surface.GetTextureID]
--- @param name/path string @ Name or path of the texture.
--- @return number
function surface.GetTextureID(name/path) end

--- (client/menu) Returns the size of the texture with the associated texture ID.
--- For `.png/.jpg` textures loaded with [Material](https://wiki.facepunch.com/gmod/Global.Material) you can use the `$realheight` and `$realwidth` material parameters ([IMaterial:GetInt](https://wiki.facepunch.com/gmod/IMaterial:GetInt)) to get the size of the image. 
--- [https://wiki.facepunch.com/gmod/surface.GetTextureSize]
--- @param textureID number @ The texture ID, returned by [surface.GetTextureID](https://wiki.facepunch.com/gmod/surface.GetTextureID).
--- @return number|number
function surface.GetTextureSize(textureID) end

--- (client/menu) Play a sound file directly on the client (such as UI sounds, etc). 
--- [https://wiki.facepunch.com/gmod/surface.PlaySound]
--- @param soundfile string @ The path to the sound file, which must be relative to the sound/ folder.
--- @return void
function surface.PlaySound(soundfile) end

--- (client/menu) Returns the height of the current client's screen. 
--- [https://wiki.facepunch.com/gmod/surface.ScreenHeight]
--- @return number
function surface.ScreenHeight() end

--- (client/menu) Returns the width of the current client's screen. 
--- [https://wiki.facepunch.com/gmod/surface.ScreenWidth]
--- @return number
function surface.ScreenWidth() end

--- (client/menu) Sets the alpha multiplier that will influence all upcoming drawing operations.
--- See also [render.SetBlend](https://wiki.facepunch.com/gmod/render.SetBlend). 
--- [https://wiki.facepunch.com/gmod/surface.SetAlphaMultiplier]
--- @param multiplier number @ The multiplier ranging from 0 to 1.
--- @return void
function surface.SetAlphaMultiplier(multiplier) end

--- (client/menu) Set the color of any future shapes to be drawn, can be set by either using R, G, B, A as separate values or by a [Color](https://wiki.facepunch.com/gmod/Color). Using a color structure is not recommended to be created procedurally. 
--- [https://wiki.facepunch.com/gmod/surface.SetDrawColor]
--- @param r number @ The red value of color, or a [Color](https://wiki.facepunch.com/gmod/Color).
--- @param g number @ The green value of color. Unused if a [Color](https://wiki.facepunch.com/gmod/Color) was given.
--- @param b number @ The blue value of color. Unused if a [Color](https://wiki.facepunch.com/gmod/Color) was given.
--- @param a number @ The alpha value of color. Unused if a [Color](https://wiki.facepunch.com/gmod/Color) was given.
--- @return void
function surface.SetDrawColor(r, g, b, a) end

--- (client/menu) Set the current font to be used for text operations later.
--- The fonts must first be created with [surface.CreateFont](https://wiki.facepunch.com/gmod/surface.CreateFont) or be one of the [Default Fonts](https://wiki.facepunch.com/gmod/Default%20Fonts). 
--- [https://wiki.facepunch.com/gmod/surface.SetFont]
--- @param fontName string @ The name of the font to use.
--- @return void
function surface.SetFont(fontName) end

--- (client/menu) Sets the material to be used in all upcoming draw operations using the surface library.
--- Not to be confused with [render.SetMaterial](https://wiki.facepunch.com/gmod/render.SetMaterial).
--- See also [surface.SetTexture](https://wiki.facepunch.com/gmod/surface.SetTexture).
--- If you need to unset the texture, use the [draw.NoTexture](https://wiki.facepunch.com/gmod/draw.NoTexture) convenience function. 
--- [https://wiki.facepunch.com/gmod/surface.SetMaterial]
--- @param material IMaterial @ The material to be used.
--- @return void
function surface.SetMaterial(material) end

--- (client/menu) Set the color of any future text to be drawn, can be set by either using R, G, B, A as separate numbers or by a [Color](https://wiki.facepunch.com/gmod/Color).
--- Using a color structure is not recommended to be created procedurally. 
--- [https://wiki.facepunch.com/gmod/surface.SetTextColor]
--- @param r number @ The red value of color, or a [Color](https://wiki.facepunch.com/gmod/Color).
--- @param g number @ The green value of color
--- @param b number @ The blue value of color
--- @param a number @ The alpha value of color
--- @return void
function surface.SetTextColor(r, g, b, a) end

--- (client/menu) Set the top-left position to draw any future text at. 
--- [https://wiki.facepunch.com/gmod/surface.SetTextPos]
--- @param x number @ The X integer co-ordinate.
--- @param y number @ The Y integer co-ordinate.
--- @return void
function surface.SetTextPos(x, y) end

--- (client/menu) Sets the texture to be used in all upcoming draw operations using the surface library.
--- See also [surface.SetMaterial](https://wiki.facepunch.com/gmod/surface.SetMaterial) for an [IMaterial](https://wiki.facepunch.com/gmod/IMaterial) alternative. 
--- [https://wiki.facepunch.com/gmod/surface.SetTexture]
--- @param textureID number @ The ID of the texture to draw with returned by [surface.GetTextureID](https://wiki.facepunch.com/gmod/surface.GetTextureID).
--- @return void
function surface.SetTexture(textureID) end

