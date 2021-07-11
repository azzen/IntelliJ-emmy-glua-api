--- @class system
system = {}

--- (client/menu/server) Returns the total uptime of the current application as reported by Steam.
--- This will return a similar value to [SysTime](https://wiki.facepunch.com/gmod/Global.SysTime). 
--- [https://wiki.facepunch.com/gmod/system.AppTime]
--- @return number
function system.AppTime() end

--- (client/menu/server) Returns the current battery power. 
--- [https://wiki.facepunch.com/gmod/system.BatteryPower]
--- @return number
function system.BatteryPower() end

--- (client/menu) Flashes the window, turning the border to white briefly 
--- [https://wiki.facepunch.com/gmod/system.FlashWindow]
--- @return void
function system.FlashWindow() end

--- (client/menu/server) Returns the country code of this computer, determined by the localisation settings of the OS. 
--- [https://wiki.facepunch.com/gmod/system.GetCountry]
--- @return string
function system.GetCountry() end

--- (client/menu/server) Returns whether or not the game window has focus. 
--- [https://wiki.facepunch.com/gmod/system.HasFocus]
--- @return boolean
function system.HasFocus() end

--- (client/menu/server) Returns whether the current OS is Linux. 
--- [https://wiki.facepunch.com/gmod/system.IsLinux]
--- @return boolean
function system.IsLinux() end

--- (client/menu/server) Returns whether the current OS is OSX. 
--- [https://wiki.facepunch.com/gmod/system.IsOSX]
--- @return boolean
function system.IsOSX() end

--- (client/menu) Returns whether the game is being run in a window or in fullscreen (you can change this by opening the menu, clicking 'Options', then clicking the 'Video' tab, and changing the Display Mode using the dropdown menu): 
--- [https://wiki.facepunch.com/gmod/system.IsWindowed]
--- @return boolean
function system.IsWindowed() end

--- (client/menu/server) Returns whether the current OS is Windows. 
--- [https://wiki.facepunch.com/gmod/system.IsWindows]
--- @return boolean
function system.IsWindows() end

--- (client/menu/server) Returns the synchronized Steam time. This is the number of seconds since the [Unix epoch](http://en.wikipedia.org/wiki/Unix_time). 
--- [https://wiki.facepunch.com/gmod/system.SteamTime]
--- @return number
function system.SteamTime() end

--- (client/menu/server) Returns the amount of seconds since the Steam user last moved their mouse.
--- This is a direct binding to ISteamUtils->GetSecondsSinceComputerActive, and is most likely related to Steam's automatic "Away" online status. 
--- [https://wiki.facepunch.com/gmod/system.UpTime]
--- @return number
function system.UpTime() end

