--- @class DProperty_VectorColor : DProperty_Generic
DProperty_VectorColor = {}

--- (client) Called by a property row to setup a color selection control. 
--- [https://wiki.facepunch.com/gmod/DProperty_VectorColor:Setup]
--- @param prop string @ No description provided
--- @param settings table @ A table of settings. None of the values are used for this property. See [Editable Entities](https://wiki.facepunch.com/gmod/Editable%20Entities).
--- @return void
function DProperty_VectorColor:Setup(prop, settings) end

--- (client) Sets the color value of the property. 
--- [https://wiki.facepunch.com/gmod/DProperty_VectorColor:SetValue]
--- @param color Vector @ Sets the color to use in a [DProperty_VectorColor](https://wiki.facepunch.com/gmod/DProperty_VectorColor).
--- @return void
function DProperty_VectorColor:SetValue(color) end

