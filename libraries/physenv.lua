--- @class physenv
physenv = {}

--- (client/server) Adds surface properties to the game's physics environment. 
--- [https://wiki.facepunch.com/gmod/physenv.AddSurfaceData]
--- @param properties string @ The properties to add. Each one should include "base" or the game will crash due to some values being missing.
--- @return void
function physenv.AddSurfaceData(properties) end

--- (client/server) Returns the air density. 
--- [https://wiki.facepunch.com/gmod/physenv.GetAirDensity]
--- @return number
function physenv.GetAirDensity() end

--- (client/server) Gets the global gravity. 
--- [https://wiki.facepunch.com/gmod/physenv.GetGravity]
--- @return Vector
function physenv.GetGravity() end

--- (client/server) Gets the current performance settings in table form. 
--- [https://wiki.facepunch.com/gmod/physenv.GetPerformanceSettings]
--- @return table
function physenv.GetPerformanceSettings() end

--- (client/server) Sets the air density. 
--- [https://wiki.facepunch.com/gmod/physenv.SetAirDensity]
--- @param airDensity number @ The new air density.
--- @return void
function physenv.SetAirDensity(airDensity) end

--- (client/server) Sets the directional gravity, does not work on players. 
--- [https://wiki.facepunch.com/gmod/physenv.SetGravity]
--- @param gravity Vector @ The new gravity.
--- @return void
function physenv.SetGravity(gravity) end

--- (client/server) Sets the performance settings. 
--- [https://wiki.facepunch.com/gmod/physenv.SetPerformanceSettings]
--- @param performanceSettings table @ The new performance settings. See [PhysEnvPerformanceSettings](https://wiki.facepunch.com/gmod/Structures/PhysEnvPerformanceSettings)
--- @return void
function physenv.SetPerformanceSettings(performanceSettings) end

