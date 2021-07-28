--- @class DButton : DLabel
DButton = {}

--- (client) Returns value set by [DButton:SetDrawBorder](https://wiki.facepunch.com/gmod/DButton:SetDrawBorder). See that page for more info. 
--- [https://wiki.facepunch.com/gmod/DButton:GetDrawBorder]
--- @return boolean
function DButton:GetDrawBorder() end

--- (client) Returns true if the DButton is currently depressed (a user is clicking on it). 
--- [https://wiki.facepunch.com/gmod/DButton:IsDown]
--- @return boolean
function DButton:IsDown() end

--- (client) Sets a console command to be called when the button is clicked.
--- This overrides the button's `DoClick` method. 
--- [https://wiki.facepunch.com/gmod/DButton:SetConsoleCommand]
--- @param command string @ The console command to be called.
--- @param args string @ The arguments for the command.
--- @return void
function DButton:SetConsoleCommand(command, args) end

--- (client) Sets whether or not the DButton is disabled.
--- When disabled, the button is `greyed out` and cannot be clicked. 
--- [https://wiki.facepunch.com/gmod/DButton:SetDisabled]
--- @param disable boolean @ When true Enable the button, when false Disable the button.
--- @return void
function DButton:SetDisabled(disable) end

--- (client) Does absolutely nothing at all. Default value is automatically set to true. 
--- [https://wiki.facepunch.com/gmod/DButton:SetDrawBorder]
--- @param draw boolean @ Does nothing.
--- @return void
function DButton:SetDrawBorder(draw) end

--- (client) Sets an image to be displayed as the button's background. Alias of [DButton:SetImage](https://wiki.facepunch.com/gmod/DButton:SetImage) 
--- [https://wiki.facepunch.com/gmod/DButton:SetIcon]
--- @param img string @ The image file to use, relative to `/materials`. If this is nil, the image background is removed.
--- @return void
function DButton:SetIcon(img) end

--- (client) Sets an image to be displayed as the button's background.
--- See [DButton:SetMaterial](https://wiki.facepunch.com/gmod/DButton:SetMaterial) for equivalent function that uses [IMaterial](https://wiki.facepunch.com/gmod/IMaterial) instead.
--- Also see: [DImageButton](https://wiki.facepunch.com/gmod/DImageButton) 
--- [https://wiki.facepunch.com/gmod/DButton:SetImage]
--- @param img string @ The image file to use, relative to `/materials`. If this is nil, the image background is removed.
--- @return void
function DButton:SetImage(img) end

--- (client) Sets an image to be displayed as the button's background.
--- See [DButton:SetImage](https://wiki.facepunch.com/gmod/DButton:SetImage) for equivalent function that uses file paths instead. Also see [DImageButton](https://wiki.facepunch.com/gmod/DImageButton). 
--- [https://wiki.facepunch.com/gmod/DButton:SetMaterial]
--- @param img IMaterial @ The material to use. If this is nil, the image background is removed.
--- @return void
function DButton:SetMaterial(img) end

--- (client) A hook called from within [DLabel](https://wiki.facepunch.com/gmod/DLabel)'s [PANEL:ApplySchemeSettings](https://wiki.facepunch.com/gmod/PANEL:ApplySchemeSettings) to determine the color of the text on display. 
--- [https://wiki.facepunch.com/gmod/DButton:UpdateColours]
--- @param skin table @ A table supposed to contain the color values listed above.
--- @return void
function DButton:UpdateColours(skin) end

