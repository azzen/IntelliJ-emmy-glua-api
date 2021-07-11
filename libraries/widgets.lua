--- @class widgets
widgets = {}

--- (client/server) Automatically called to update all widgets. 
--- [https://wiki.facepunch.com/gmod/widgets.PlayerTick]
--- @param ply Player @ The player
--- @param mv CMoveData @ Player move data
--- @return void
function widgets.PlayerTick(ply, mv) end

--- (client) Renders a widget. Normally you won't need to call this. 
--- [https://wiki.facepunch.com/gmod/widgets.RenderMe]
--- @param ent Entity @ Widget entity to render
--- @return void
function widgets.RenderMe(ent) end

