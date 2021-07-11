--- @class notification
notification = {}

--- (client/menu) Adds a standard notification to your screen. 
--- [https://wiki.facepunch.com/gmod/notification.AddLegacy]
--- @param text string @ The text to display.
--- @param type number @ Determines the notification method (e.g. icon) for displaying the notification. See the [NOTIFY](https://wiki.facepunch.com/gmod/Enums/NOTIFY).
--- @param length number @ The number of seconds to display the notification for.
--- @return void
function notification.AddLegacy(text, type, length) end

--- (client/menu) Adds a notification with an animated progress bar. 
--- [https://wiki.facepunch.com/gmod/notification.AddProgress]
--- @param id any @ Can be any type. It's used as an index.
--- @param strText string @ The text to show
--- @param frac number @ If set, overrides the progress bar animation with given percentage. Range is 0 to 1.
--- @return void
function notification.AddProgress(id, strText, frac) end

--- (client/menu) Removes the notification after 0.8 seconds. 
--- [https://wiki.facepunch.com/gmod/notification.Kill]
--- @param uid any @ The unique ID of the notification
--- @return void
function notification.Kill(uid) end

