--- @class halo
halo = {}

--- (client) Applies a [halo](https://wiki.facepunch.com/gmod/halo) glow effect to one or multiple entities. 
--- [https://wiki.facepunch.com/gmod/halo.Add]
--- @param entities table @ A table of entities to add the halo effect to.
--- @param color table @ The desired color of the halo. See [Color](https://wiki.facepunch.com/gmod/Color).
--- @param blurX number @ The strength of the halo's blur on the x axis.
--- @param blurY number @ The strength of the halo's blur on the y axis.
--- @param passes number @ The number of times the halo should be drawn per frame. Increasing this may hinder player FPS.
--- @param additive boolean @ Sets the render mode of the halo to additive.
--- @param ignoreZ boolean @ Renders the halo through anything when set to `true`.
--- @return void
function halo.Add(entities, color, blurX, blurY, passes, additive, ignoreZ) end

--- (client) Renders a halo according to the specified table, only used internally, called from a [GM:PostDrawEffects](https://wiki.facepunch.com/gmod/GM:PostDrawEffects) hook added by the halo library. 
--- [https://wiki.facepunch.com/gmod/halo.Render]
--- @param entry table @ Table with info about the halo to draw.
--- @return void
function halo.Render(entry) end

--- (client) Returns the entity the halo library is currently rendering the halo for.
--- The main purpose of this function is to be used in [ENTITY:Draw](https://wiki.facepunch.com/gmod/ENTITY:Draw) in order not to draw certain parts of the entity when the halo is being rendered, so there's no halo around unwanted entity parts, such as lasers, 3D2D displays, etc. 
--- [https://wiki.facepunch.com/gmod/halo.RenderedEntity]
--- @return Entity
function halo.RenderedEntity() end

