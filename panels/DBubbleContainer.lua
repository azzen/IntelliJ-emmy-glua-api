--- @class DBubbleContainer : DPanel
DBubbleContainer = {}

--- (client) Sets the speech bubble position and size along with the dialog point position. 
--- [https://wiki.facepunch.com/gmod/DBubbleContainer:OpenForPos]
--- @param x number @ The x position of the dialog point. If this is set to a value greater than half of the set width, the entire bubble container will be moved in addition to the dialog point.
--- @param y number @ The y position of the bubble container. Has no effect unless set to a value greater than the set height + 64 pixels.
--- @param w number @ The width of the bubble container.
--- @param h number @ The height of the bubble container.
--- @return void
function DBubbleContainer:OpenForPos(x, y, w, h) end

