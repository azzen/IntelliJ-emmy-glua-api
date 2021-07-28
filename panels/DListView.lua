--- @class DListView : DPanel
DListView = {}

--- (client) Called when a line in the DListView is double clicked. 
--- [https://wiki.facepunch.com/gmod/DListView:DoDoubleClick]
--- @param lineID number @ The line number of the double clicked line.
--- @param line Panel @ The double clicked [DListView_Line](https://wiki.facepunch.com/gmod/DListView_Line).
--- @return void
function DListView:DoDoubleClick(lineID, line) end

--- (client) Called internally by [DListView:OnClickLine](https://wiki.facepunch.com/gmod/DListView:OnClickLine) when a line is selected. This is the function you should override to define the behavior when a line is selected. 
--- [https://wiki.facepunch.com/gmod/DListView:OnRowSelected]
--- @param rowIndex number @ The index of the row/line that the user clicked on.
--- @param row Panel @ The [DListView_Line](https://wiki.facepunch.com/gmod/DListView_Line) that the user clicked on.
--- @return void
function DListView:OnRowSelected(rowIndex, row) end

--- (client) Adds a column to the listview. 
--- [https://wiki.facepunch.com/gmod/DListView:AddColumn]
--- @param column string @ The name of the column to add.
--- @param position number @ Sets the ordering of this column compared to other columns.
--- @return Panel
function DListView:AddColumn(column, position) end

--- (client) Adds a line to the list view. 
--- [https://wiki.facepunch.com/gmod/DListView:AddLine]
--- @param text vararg @ Values for a new row in the DListView, If several arguments are supplied, each argument will correspond to a respective column in the DListView.
--- @return Panel
function DListView:AddLine(text) end

--- (client) Removes all lines that have been added to the DListView. 
--- [https://wiki.facepunch.com/gmod/DListView:Clear]
--- @return void
function DListView:Clear() end

--- (client) Clears the current selection in the DListView. 
--- [https://wiki.facepunch.com/gmod/DListView:ClearSelection]
--- @return void
function DListView:ClearSelection() end

--- (client) Gets the width of a column. 
--- [https://wiki.facepunch.com/gmod/DListView:ColumnWidth]
--- @param column number @ The column to get the width of.
--- @return number
function DListView:ColumnWidth(column) end

--- (client) Creates the lines and gets the height of the contents, in a DListView. 
--- [https://wiki.facepunch.com/gmod/DListView:DataLayout]
--- @return number
function DListView:DataLayout() end

--- (client) Removes the scrollbar. 
--- [https://wiki.facepunch.com/gmod/DListView:DisableScrollbar]
--- @return void
function DListView:DisableScrollbar() end

--- (client) Internal helper function called from the [PANEL:PerformLayout](https://wiki.facepunch.com/gmod/PANEL:PerformLayout) of [DListView](https://wiki.facepunch.com/gmod/DListView). 
--- [https://wiki.facepunch.com/gmod/DListView:FixColumnsLayout]
--- @return void
function DListView:FixColumnsLayout() end

--- (client) Gets the canvas. 
--- [https://wiki.facepunch.com/gmod/DListView:GetCanvas]
--- @return Panel
function DListView:GetCanvas() end

--- (client) Returns the height of the data of the [DListView](https://wiki.facepunch.com/gmod/DListView).
--- See also [DListView:SetDataHeight](https://wiki.facepunch.com/gmod/DListView:SetDataHeight). 
--- [https://wiki.facepunch.com/gmod/DListView:GetDataHeight]
--- @return number
function DListView:GetDataHeight() end

--- (client) See [DListView:SetDirty](https://wiki.facepunch.com/gmod/DListView:SetDirty). 
--- [https://wiki.facepunch.com/gmod/DListView:GetDirty]
--- @return boolean
function DListView:GetDirty() end

--- (client) Returns the height of the header of the [DListView](https://wiki.facepunch.com/gmod/DListView).
--- See also [DListView:SetHeaderHeight](https://wiki.facepunch.com/gmod/DListView:SetHeaderHeight). 
--- [https://wiki.facepunch.com/gmod/DListView:GetHeaderHeight]
--- @return number
function DListView:GetHeaderHeight() end

--- (client) Returns whether the header line should be visible on not. 
--- [https://wiki.facepunch.com/gmod/DListView:GetHideHeaders]
--- @return boolean
function DListView:GetHideHeaders() end

--- (client) Returns the height of [DListView:GetCanvas](https://wiki.facepunch.com/gmod/DListView:GetCanvas).
--- Intended to represent the height of all data lines. 
--- [https://wiki.facepunch.com/gmod/DListView:GetInnerTall]
--- @return number
function DListView:GetInnerTall() end

--- (client) Gets the [DListView_Line](https://wiki.facepunch.com/gmod/DListView_Line) at the given index. 
--- [https://wiki.facepunch.com/gmod/DListView:GetLine]
--- @param id number @ The index of the line to get.
--- @return Panel
function DListView:GetLine(id) end

--- (client) Gets all of the lines added to the DListView. 
--- [https://wiki.facepunch.com/gmod/DListView:GetLines]
--- @return table
function DListView:GetLines() end

--- (client) Returns whether multiple lines can be selected or not.
--- See [DListView:SetMultiSelect](https://wiki.facepunch.com/gmod/DListView:SetMultiSelect). 
--- [https://wiki.facepunch.com/gmod/DListView:GetMultiSelect]
--- @return boolean
function DListView:GetMultiSelect() end

--- (client) Gets all of the lines that are currently selected. 
--- [https://wiki.facepunch.com/gmod/DListView:GetSelected]
--- @return table
function DListView:GetSelected() end

--- (client) Gets the currently selected [DListView_Line](https://wiki.facepunch.com/gmod/DListView_Line) index.
--- If [DListView:SetMultiSelect](https://wiki.facepunch.com/gmod/DListView:SetMultiSelect) is set to true, only the first line of all selected lines will be returned. Use [DListView:GetSelected](https://wiki.facepunch.com/gmod/DListView:GetSelected) instead to get all of the selected lines. 
--- [https://wiki.facepunch.com/gmod/DListView:GetSelectedLine]
--- @return number|Panel
function DListView:GetSelectedLine() end

--- (client) Returns whether sorting of columns by clicking their headers is allowed or not.
--- See also [DListView:SetSortable](https://wiki.facepunch.com/gmod/DListView:SetSortable). 
--- [https://wiki.facepunch.com/gmod/DListView:GetSortable]
--- @return boolean
function DListView:GetSortable() end

--- (client) Converts LineID to SortedID 
--- [https://wiki.facepunch.com/gmod/DListView:GetSortedID]
--- @param lineId number @ The [DListView_Line:GetID](https://wiki.facepunch.com/gmod/DListView_Line:GetID) of a line to look up
--- @return number
function DListView:GetSortedID(lineId) end

--- (client) Called whenever a line is clicked. 
--- [https://wiki.facepunch.com/gmod/DListView:OnClickLine]
--- @param line Panel @ The selected line.
--- @param isSelected boolean @ Boolean indicating whether the line is selected.
--- @return void
function DListView:OnClickLine(line, isSelected) end

--- (client) Called from [DListView_Column](https://wiki.facepunch.com/gmod/DListView_Column). 
--- [https://wiki.facepunch.com/gmod/DListView:OnRequestResize]
--- @param column Panel @ The column which initialized the resize
--- @param size number @ No description provided
--- @return void
function DListView:OnRequestResize(column, size) end

--- (client) Called when a row is right-clicked 
--- [https://wiki.facepunch.com/gmod/DListView:OnRowRightClick]
--- @param lineID number @ The line ID of the right clicked line
--- @param line Panel @ The line panel itself, a [DListView_Line](https://wiki.facepunch.com/gmod/DListView_Line).
--- @return void
function DListView:OnRowRightClick(lineID, line) end

--- (client) Removes a line from the list view. 
--- [https://wiki.facepunch.com/gmod/DListView:RemoveLine]
--- @param line number @ Removes the given row, by row id (same number as [DListView:GetLine](https://wiki.facepunch.com/gmod/DListView:GetLine)).
--- @return void
function DListView:RemoveLine(line) end

--- (client) Selects the line at the first index of the DListView if one has been added. 
--- [https://wiki.facepunch.com/gmod/DListView:SelectFirstItem]
--- @return void
function DListView:SelectFirstItem() end

--- (client) Selects a line in the listview. 
--- [https://wiki.facepunch.com/gmod/DListView:SelectItem]
--- @param Line Panel @ The line to select.
--- @return void
function DListView:SelectItem(Line) end

--- (client) Sets the height of all lines of the [DListView](https://wiki.facepunch.com/gmod/DListView) except for the header line.
--- See also [DListView:SetHeaderHeight](https://wiki.facepunch.com/gmod/DListView:SetHeaderHeight). 
--- [https://wiki.facepunch.com/gmod/DListView:SetDataHeight]
--- @param height number @ The new height to set. Default value is 17.
--- @return void
function DListView:SetDataHeight(height) end

--- (client) Used internally to signify if the [DListView](https://wiki.facepunch.com/gmod/DListView) needs a rebuild. 
--- [https://wiki.facepunch.com/gmod/DListView:SetDirty]
--- @param isDirty boolean @ No description provided
--- @return void
function DListView:SetDirty(isDirty) end

--- (client) Sets the height of the header line of the [DListView](https://wiki.facepunch.com/gmod/DListView).
--- See also [DListView:SetDataHeight](https://wiki.facepunch.com/gmod/DListView:SetDataHeight). 
--- [https://wiki.facepunch.com/gmod/DListView:SetHeaderHeight]
--- @param height number @ The new height to set. Default value is 16.
--- @return void
function DListView:SetHeaderHeight(height) end

--- (client) Sets whether the header line should be visible on not. 
--- [https://wiki.facepunch.com/gmod/DListView:SetHideHeaders]
--- @param hide boolean @ Whether the header line should be visible on not.
--- @return void
function DListView:SetHideHeaders(hide) end

--- (client) Sets whether multiple lines can be selected by the user by using the  or  keys. When set to false, only one line can be selected. 
--- [https://wiki.facepunch.com/gmod/DListView:SetMultiSelect]
--- @param allowMultiSelect boolean @ Whether multiple lines can be selected or not
--- @return void
function DListView:SetMultiSelect(allowMultiSelect) end

--- (client) Enables/disables the sorting of columns by clicking. 
--- [https://wiki.facepunch.com/gmod/DListView:SetSortable]
--- @param isSortable boolean @ Whether sorting columns with clicking is allowed or not.
--- @return void
function DListView:SetSortable(isSortable) end

--- (client) Sorts the items in the specified column. 
--- [https://wiki.facepunch.com/gmod/DListView:SortByColumn]
--- @param columnIndex number @ The index of the column that should be sorted.
--- @param descending boolean @ Whether the items should be sorted in descending order or not.
--- @return void
function DListView:SortByColumn(columnIndex, descending) end

--- (client) Sorts the list based on given columns.
--- All arguments are optional 
--- [https://wiki.facepunch.com/gmod/DListView:SortByColumns]
--- @param column1 number @ No description provided
--- @param descrending1 boolean @ No description provided
--- @param column2 number @ No description provided
--- @param descrending2 boolean @ No description provided
--- @param column3 number @ No description provided
--- @param descrending3 boolean @ No description provided
--- @param column4 number @ No description provided
--- @param descrending4 boolean @ No description provided
--- @return void
function DListView:SortByColumns(column1, descrending1, column2, descrending2, column3, descrending3, column4, descrending4) end

