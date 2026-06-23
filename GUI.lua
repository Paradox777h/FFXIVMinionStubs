---@meta

---@class GUI
GUI = GUI or {}

---@type integer
GUI.WindowFlags_NoTitleBar = GUI.WindowFlags_NoTitleBar or 0

---@type integer
GUI.WindowFlags_NoResize = GUI.WindowFlags_NoResize or 0

---@type integer
GUI.WindowFlags_NoMove = GUI.WindowFlags_NoMove or 0

---@type integer
GUI.WindowFlags_NoScrollbar = GUI.WindowFlags_NoScrollbar or 0

---@type integer
GUI.WindowFlags_NoScrollWithMouse = GUI.WindowFlags_NoScrollWithMouse or 0

---@type integer
GUI.WindowFlags_NoCollapse = GUI.WindowFlags_NoCollapse or 0

---@type integer
GUI.WindowFlags_AlwaysAutoResize = GUI.WindowFlags_AlwaysAutoResize or 0

---@type integer
GUI.WindowFlags_NoSavedSettings = GUI.WindowFlags_NoSavedSettings or 0

---@type integer
GUI.WindowFlags_NoInputs = GUI.WindowFlags_NoInputs or 0

---@type integer
GUI.WindowFlags_MenuBar = GUI.WindowFlags_MenuBar or 0

---@type integer
GUI.WindowFlags_HorizontalScrollbar = GUI.WindowFlags_HorizontalScrollbar or 0

---@type integer
GUI.WindowFlags_NoFocusOnAppearing = GUI.WindowFlags_NoFocusOnAppearing or 0

---@type integer
GUI.WindowFlags_NoBringToFrontOnFocus = GUI.WindowFlags_NoBringToFrontOnFocus or 0

---@type integer
GUI.WindowFlags_ForceVerticalScrollbar = GUI.WindowFlags_ForceVerticalScrollbar or 0

---@type integer
GUI.WindowFlags_ForceHorizontalScrollbar = GUI.WindowFlags_ForceHorizontalScrollbar or 0

---@type integer
GUI.WindowFlags_AlwaysUseWindowPadding = GUI.WindowFlags_AlwaysUseWindowPadding or 0

---@type integer
GUI.InputTextFlags_CharsDecimal = GUI.InputTextFlags_CharsDecimal or 0

---@type integer
GUI.InputTextFlags_CharsHexadecimal = GUI.InputTextFlags_CharsHexadecimal or 0

---@type integer
GUI.InputTextFlags_CharsUppercase = GUI.InputTextFlags_CharsUppercase or 0

---@type integer
GUI.InputTextFlags_CharsNoBlank = GUI.InputTextFlags_CharsNoBlank or 0

---@type integer
GUI.InputTextFlags_AutoSelectAll = GUI.InputTextFlags_AutoSelectAll or 0

---@type integer
GUI.InputTextFlags_EnterReturnsTrue = GUI.InputTextFlags_EnterReturnsTrue or 0

---@type integer
GUI.InputTextFlags_CallbackCompletion = GUI.InputTextFlags_CallbackCompletion or 0

---@type integer
GUI.InputTextFlags_CallbackHistory = GUI.InputTextFlags_CallbackHistory or 0

---@type integer
GUI.InputTextFlags_CallbackAlways = GUI.InputTextFlags_CallbackAlways or 0

---@type integer
GUI.InputTextFlags_CallbackCharFilter = GUI.InputTextFlags_CallbackCharFilter or 0

---@type integer
GUI.InputTextFlags_AllowTabInput = GUI.InputTextFlags_AllowTabInput or 0

---@type integer
GUI.InputTextFlags_CtrlEnterForNewLine = GUI.InputTextFlags_CtrlEnterForNewLine or 0

---@type integer
GUI.InputTextFlags_NoHorizontalScroll = GUI.InputTextFlags_NoHorizontalScroll or 0

---@type integer
GUI.InputTextFlags_AlwaysInsertMode = GUI.InputTextFlags_AlwaysInsertMode or 0

---@type integer
GUI.InputTextFlags_ReadOnly = GUI.InputTextFlags_ReadOnly or 0

---@type integer
GUI.InputTextFlags_NoUndoRedo = GUI.InputTextFlags_NoUndoRedo or 0

---@type integer
GUI.InputTextFlags_CharsScientific = GUI.InputTextFlags_CharsScientific or 0

---@type integer
GUI.InputTextFlags_Password = GUI.InputTextFlags_Password or 0

---@type integer
GUI.SelectableFlags_DontClosePopups = GUI.SelectableFlags_DontClosePopups or 0

---@type integer
GUI.SelectableFlags_SpanAllColumns = GUI.SelectableFlags_SpanAllColumns or 0

---@type integer
GUI.SelectableFlags_AllowDoubleClick = GUI.SelectableFlags_AllowDoubleClick or 0

---@type integer
GUI.ComboFlags_PopupAlignLeft = GUI.ComboFlags_PopupAlignLeft or 0

---@type integer
GUI.ComboFlags_HeightSmall = GUI.ComboFlags_HeightSmall or 0

---@type integer
GUI.ComboFlags_HeightRegular = GUI.ComboFlags_HeightRegular or 0

---@type integer
GUI.ComboFlags_HeightLarge = GUI.ComboFlags_HeightLarge or 0

---@type integer
GUI.ComboFlags_HeightLargest = GUI.ComboFlags_HeightLargest or 0

---@type integer
GUI.ComboFlags_NoArrowButton = GUI.ComboFlags_NoArrowButton or 0

---@type integer
GUI.ComboFlags_NoPreview = GUI.ComboFlags_NoPreview or 0

---@type integer
GUI.Col_Text = GUI.Col_Text or 0

---@type integer
GUI.Col_TextDisabled = GUI.Col_TextDisabled or 0

---@type integer
GUI.Col_WindowBg = GUI.Col_WindowBg or 0

---@type integer
GUI.Col_ChildWindowBg = GUI.Col_ChildWindowBg or 0

---@type integer
GUI.Col_Border = GUI.Col_Border or 0

---@type integer
GUI.Col_BorderShadow = GUI.Col_BorderShadow or 0

---@type integer
GUI.Col_FrameBg = GUI.Col_FrameBg or 0

---@type integer
GUI.Col_FrameBgHovered = GUI.Col_FrameBgHovered or 0

---@type integer
GUI.Col_FrameBgActive = GUI.Col_FrameBgActive or 0

---@type integer
GUI.Col_TitleBg = GUI.Col_TitleBg or 0

---@type integer
GUI.Col_TitleBgCollapsed = GUI.Col_TitleBgCollapsed or 0

---@type integer
GUI.Col_TitleBgActive = GUI.Col_TitleBgActive or 0

---@type integer
GUI.Col_MenuBarBg = GUI.Col_MenuBarBg or 0

---@type integer
GUI.Col_ScrollbarBg = GUI.Col_ScrollbarBg or 0

---@type integer
GUI.Col_ScrollbarGrab = GUI.Col_ScrollbarGrab or 0

---@type integer
GUI.Col_ScrollbarGrabHovered = GUI.Col_ScrollbarGrabHovered or 0

---@type integer
GUI.Col_ScrollbarGrabActive = GUI.Col_ScrollbarGrabActive or 0

---@type integer
GUI.Col_CheckMark = GUI.Col_CheckMark or 0

---@type integer
GUI.Col_SliderGrab = GUI.Col_SliderGrab or 0

---@type integer
GUI.Col_SliderGrabActive = GUI.Col_SliderGrabActive or 0

---@type integer
GUI.Col_Button = GUI.Col_Button or 0

---@type integer
GUI.Col_ButtonHovered = GUI.Col_ButtonHovered or 0

---@type integer
GUI.Col_ButtonActive = GUI.Col_ButtonActive or 0

---@type integer
GUI.Col_Header = GUI.Col_Header or 0

---@type integer
GUI.Col_HeaderHovered = GUI.Col_HeaderHovered or 0

---@type integer
GUI.Col_HeaderActive = GUI.Col_HeaderActive or 0

---@type integer
GUI.Col_Column = GUI.Col_Column or 0

---@type integer
GUI.Col_ColumnHovered = GUI.Col_ColumnHovered or 0

---@type integer
GUI.Col_ColumnActive = GUI.Col_ColumnActive or 0

---@type integer
GUI.Col_ResizeGrip = GUI.Col_ResizeGrip or 0

---@type integer
GUI.Col_ResizeGripHovered = GUI.Col_ResizeGripHovered or 0

---@type integer
GUI.Col_ResizeGripActive = GUI.Col_ResizeGripActive or 0

---@type integer
GUI.Col_PlotLines = GUI.Col_PlotLines or 0

---@type integer
GUI.Col_PlotLinesHovered = GUI.Col_PlotLinesHovered or 0

---@type integer
GUI.Col_PlotHistogram = GUI.Col_PlotHistogram or 0

---@type integer
GUI.Col_PlotHistogramHovered = GUI.Col_PlotHistogramHovered or 0

---@type integer
GUI.Col_TextSelectedBg = GUI.Col_TextSelectedBg or 0

---@type integer
GUI.Col_TooltipBg = GUI.Col_TooltipBg or 0

---@type integer
GUI.Col_ModalWindowDarkening = GUI.Col_ModalWindowDarkening or 0

---@type integer
GUI.Col_DragDropTarget = GUI.Col_DragDropTarget or 0

---@type integer
GUI.Col_NavHighlight = GUI.Col_NavHighlight or 0

---@type integer
GUI.Col_NavWindowingHighlight = GUI.Col_NavWindowingHighlight or 0

---@type integer
GUI.StyleVar_Alpha = GUI.StyleVar_Alpha or 0

---@type integer
GUI.StyleVar_WindowPadding = GUI.StyleVar_WindowPadding or 0

---@type integer
GUI.StyleVar_WindowRounding = GUI.StyleVar_WindowRounding or 0

---@type integer
GUI.StyleVar_WindowBorderSize = GUI.StyleVar_WindowBorderSize or 0

---@type integer
GUI.StyleVar_WindowMinSize = GUI.StyleVar_WindowMinSize or 0

---@type integer
GUI.StyleVar_ChildWindowRounding = GUI.StyleVar_ChildWindowRounding or 0

---@type integer
GUI.StyleVar_ChildBorderSize = GUI.StyleVar_ChildBorderSize or 0

---@type integer
GUI.StyleVar_PopupRounding = GUI.StyleVar_PopupRounding or 0

---@type integer
GUI.StyleVar_PopupBorderSize = GUI.StyleVar_PopupBorderSize or 0

---@type integer
GUI.StyleVar_FramePadding = GUI.StyleVar_FramePadding or 0

---@type integer
GUI.StyleVar_FrameRounding = GUI.StyleVar_FrameRounding or 0

---@type integer
GUI.StyleVar_FrameBorderSize = GUI.StyleVar_FrameBorderSize or 0

---@type integer
GUI.StyleVar_ItemSpacing = GUI.StyleVar_ItemSpacing or 0

---@type integer
GUI.StyleVar_ItemInnerSpacing = GUI.StyleVar_ItemInnerSpacing or 0

---@type integer
GUI.StyleVar_IndentSpacing = GUI.StyleVar_IndentSpacing or 0

---@type integer
GUI.StyleVar_ScrollbarSize = GUI.StyleVar_ScrollbarSize or 0

---@type integer
GUI.StyleVar_ScrollbarRounding = GUI.StyleVar_ScrollbarRounding or 0

---@type integer
GUI.StyleVar_GrabMinSize = GUI.StyleVar_GrabMinSize or 0

---@type integer
GUI.StyleVar_GrabRounding = GUI.StyleVar_GrabRounding or 0

---@type integer
GUI.StyleVar_ButtonTextAlign = GUI.StyleVar_ButtonTextAlign or 0

---@type integer
GUI.ColorEditMode_NoAlpha = GUI.ColorEditMode_NoAlpha or 0

---@type integer
GUI.ColorEditMode_NoOptions = GUI.ColorEditMode_NoOptions or 0

---@type integer
GUI.ColorEditMode_NoSmallPreview = GUI.ColorEditMode_NoSmallPreview or 0

---@type integer
GUI.ColorEditMode_NoInputs = GUI.ColorEditMode_NoInputs or 0

---@type integer
GUI.ColorEditMode_NoTooltip = GUI.ColorEditMode_NoTooltip or 0

---@type integer
GUI.ColorEditMode_NoLabel = GUI.ColorEditMode_NoLabel or 0

---@type integer
GUI.ColorEditMode_NoSidePreview = GUI.ColorEditMode_NoSidePreview or 0

---@type integer
GUI.ColorEditMode_AlphaBar = GUI.ColorEditMode_AlphaBar or 0

---@type integer
GUI.ColorEditMode_AlphaPreview = GUI.ColorEditMode_AlphaPreview or 0

---@type integer
GUI.ColorEditMode_AlphaPreviewHalf = GUI.ColorEditMode_AlphaPreviewHalf or 0

---@type integer
GUI.ColorEditMode_HDR = GUI.ColorEditMode_HDR or 0

---@type integer
GUI.ColorEditMode_Uint8 = GUI.ColorEditMode_Uint8 or 0

---@type integer
GUI.ColorEditMode_Float = GUI.ColorEditMode_Float or 0

---@type integer
GUI.ColorEditMode_PickerHueBar = GUI.ColorEditMode_PickerHueBar or 0

---@type integer
GUI.ColorEditMode_PickerHueWheel = GUI.ColorEditMode_PickerHueWheel or 0

---@type integer
GUI.ColorEditMode_RGB = GUI.ColorEditMode_RGB or 0

---@type integer
GUI.ColorEditMode_HSV = GUI.ColorEditMode_HSV or 0

---@type integer
GUI.ColorEditMode_HEX = GUI.ColorEditMode_HEX or 0

---@type integer
GUI.SetCond_Always = GUI.SetCond_Always or 0

---@type integer
GUI.SetCond_Once = GUI.SetCond_Once or 0

---@type integer
GUI.SetCond_FirstUseEver = GUI.SetCond_FirstUseEver or 0

---@type integer
GUI.SetCond_Appearing = GUI.SetCond_Appearing or 0

---@type integer
GUI.DrawCornerFlag_TopLeft = GUI.DrawCornerFlag_TopLeft or 0

---@type integer
GUI.DrawCornerFlag_TopRight = GUI.DrawCornerFlag_TopRight or 0

---@type integer
GUI.DrawCornerFlag_BottomLeft = GUI.DrawCornerFlag_BottomLeft or 0

---@type integer
GUI.DrawCornerFlag_BottomRight = GUI.DrawCornerFlag_BottomRight or 0

---@type integer
GUI.FocusedFlags_ChildWindows = GUI.FocusedFlags_ChildWindows or 0

---@type integer
GUI.FocusedFlags_RootWindow = GUI.FocusedFlags_RootWindow or 0

---@type integer
GUI.FocusedFlags_AnyWindow = GUI.FocusedFlags_AnyWindow or 0

---@type integer
GUI.HoveredFlags_Default = GUI.HoveredFlags_Default or 0

---@type integer
GUI.HoveredFlags_ChildWindows = GUI.HoveredFlags_ChildWindows or 0

---@type integer
GUI.HoveredFlags_RootWindow = GUI.HoveredFlags_RootWindow or 0

---@type integer
GUI.HoveredFlags_AnyWindow = GUI.HoveredFlags_AnyWindow or 0

---@type integer
GUI.HoveredFlags_AllowWhenBlockedByPopup = GUI.HoveredFlags_AllowWhenBlockedByPopup or 0

---@type integer
GUI.HoveredFlags_AllowWhenBlockedByActiveItem = GUI.HoveredFlags_AllowWhenBlockedByActiveItem or 0

---@type integer
GUI.HoveredFlags_AllowWhenOverlapped = GUI.HoveredFlags_AllowWhenOverlapped or 0

---@type integer
GUI.Dir_Left = GUI.Dir_Left or 0

---@type integer
GUI.Dir_Right = GUI.Dir_Right or 0

---@type integer
GUI.Dir_Up = GUI.Dir_Up or 0

---@type integer
GUI.Dir_Down = GUI.Dir_Down or 0

---@type integer
GUI.TreeNodeFlags_Selected = GUI.TreeNodeFlags_Selected or 0

---@type integer
GUI.TreeNodeFlags_Framed = GUI.TreeNodeFlags_Framed or 0

---@type integer
GUI.TreeNodeFlags_AllowItemOverlap = GUI.TreeNodeFlags_AllowItemOverlap or 0

---@type integer
GUI.TreeNodeFlags_NoTreePushOnOpen = GUI.TreeNodeFlags_NoTreePushOnOpen or 0

---@type integer
GUI.TreeNodeFlags_NoAutoOpenOnLog = GUI.TreeNodeFlags_NoAutoOpenOnLog or 0

---@type integer
GUI.TreeNodeFlags_SDefaultOpen = GUI.TreeNodeFlags_SDefaultOpen or 0

---@type integer
GUI.TreeNodeFlags_OpenOnDoubleClick = GUI.TreeNodeFlags_OpenOnDoubleClick or 0

---@type integer
GUI.TreeNodeFlags_OpenOnArrow = GUI.TreeNodeFlags_OpenOnArrow or 0

---@type integer
GUI.TreeNodeFlags_Leaf = GUI.TreeNodeFlags_Leaf or 0

---@type integer
GUI.TreeNodeFlags_Bullet = GUI.TreeNodeFlags_Bullet or 0

---@type integer
GUI.TreeNodeFlags_FramePadding = GUI.TreeNodeFlags_FramePadding or 0

---@type integer
GUI.TreeNodeFlags_NavLeftJumpsBackHere = GUI.TreeNodeFlags_NavLeftJumpsBackHere or 0

---@type integer
GUI.TreeNodeFlags_CollapsingHeader = GUI.TreeNodeFlags_CollapsingHeader or 0

---Returns: bool isopen
---Test window, demonstrates GUI features
---@param isopen boolean
---@return boolean isopen
function GUI:ShowTestWindow(isopen) end

---Returns: bool isopen
---Metrics window for debuggings
---@param isopen boolean
---@return boolean isopen
function GUI:ShowMetricsWindow(isopen) end

---Returns bool visible, bool open
---visible means “not collapsed”, so can opt out early when window is collapsed. For WindowFlags, check the Enums & Flags further below on this page.
---@param name string
---@param open boolean
---@param flags integer
---@return boolean visible
---@return boolean open
function GUI:Begin(name, open, flags) end

---For every GUI:Begin(..) call, you need to call GUI:End(), independent if the the window is opened/shown or not.
function GUI:End() end

---Begin a scrolling region. size==0.0f: use remaining window size, size<0.0f: use remaining window size minus abs(size). size>0.0f: fixed size. each axis can use a different mode, e.g. sizeX=0 & sizeY=400.
---@param name string
---@param sizeX integer
---@param sizeY integer
---@param border boolean
---@param flags integer
function GUI:BeginChild(name, sizeX, sizeY, border, flags) end

---For every GUI:BeginChild(..) call, you need to call GUI:EndChild().
function GUI:EndChild() end

---Returns: bool
---@return boolean value1
function GUI:IsWindowAppearing() end

---Returns: bool
---@return boolean value1
function GUI:IsWindowCollapsed() end

---Returns: bool
---is current window focused? or its root/child, depending on flags. see flags for options.
---@param flags integer
---@return boolean value1
function GUI:IsWindowFocused(flags) end

---Returns: bool
---is current window hovered (and typically: not blocked by a popup/modal)? see flags for options.
---@param flags integer
---@return boolean value1
function GUI:IsWindowHovered(flags) end

---Returns: number x, number y
---get current window position in screen space
---@return number x
---@return number y
function GUI:GetWindowPos() end

---Returns: number x, number y
---get current window size
---@return number x
---@return number y
function GUI:GetWindowSize() end

---Returns: number width
---@return number width
function GUI:GetWindowWidth() end

---Returns: number height
---@return number height
function GUI:GetWindowHeight() end

---Returns: number x, number y
---current content boundaries (typically window boundaries including scrolling, or current column boundaries), in windows coordinates
---@return number x
---@return number y
function GUI:GetContentRegionMax() end

---Returns: number x, number y
---== GetContentRegionMax() - GetCursorPos()
---@return number x
---@return number y
function GUI:GetContentRegionAvail() end

---Returns: number width
---@return number width
function GUI:GetContentRegionAvailWidth() end

---Returns: number x, number y
---content boundaries min (roughly (0,0)-Scroll), in window coordinates
---@return number x
---@return number y
function GUI:GetWindowContentRegionMin() end

---Returns: number x, number y
---content boundaries max (roughly (0,0)+Size-Scroll) where Size can be override with SetNextWindowContentSize(), in window coordinates
---@return number x
---@return number y
function GUI:GetWindowContentRegionMax() end

---Returns: number width
---@return number width
function GUI:GetWindowContentRegionWidth() end

---set next window position. call before Begin()
---@param X number
---@param Y number
---@param flags integer
---@param pivotX number
---@param pivotY number
function GUI:SetNextWindowPos(X, Y, flags, pivotX, pivotY) end

---set next window size. set axis to 0.0f to force an auto-fit on this axis. call before Begin()
---@param X number
---@param Y number
---@param flags integer
function GUI:SetNextWindowSize(X, Y, flags) end

---set next window content size (enforce the range of scrollbars). set axis to 0.0f to leave it automatic. call before Begin()
---@param X number
---@param Y number
function GUI:SetNextWindowContentSize(X, Y) end

---set next window collapsed state. call before Begin()
---@param collapsed boolean
---@param flags integer
function GUI:SetNextWindowCollapsed(collapsed, flags) end

---set next window to be focused / front-most. call before Begin()
function GUI:SetNextWindowFocus() end

---set current window position - call within Begin()/End().
---@param X number
---@param Y number
---@param flags integer
function GUI:SetWindowPos(X, Y, flags) end

---set current window position - call within Begin()/End(). may incur tearing
---@param name string
---@param X number
---@param Y number
---@param flags integer
function GUI:SetWindowPos(name, X, Y, flags) end

---set current window size. set X,Y to 0 to force an auto-fit.
---@param X number
---@param Y number
---@param flags integer
function GUI:SetWindowSize(X, Y, flags) end

---set named window size. set X,Y to 0 to force an auto-fit on this axis.
---@param name string
---@param X number
---@param Y number
---@param flags integer
function GUI:SetWindowSize(name, X, Y, flags) end

---set current window collapsed state
---@param collapsed boolean
---@param flags integer
function GUI:SetWindowCollapsed(collapsed, flags) end

---set named window collapsed state
---@param name string
---@param collapsed boolean
---@param flags integer
function GUI:SetWindowCollapsed(name, collapsed, flags) end

---set current/named window to be focused / front-most
---@param name string
function GUI:SetWindowFocus(name) end

---Returns: get scrolling amount [0..GetScrollMaxX()]
---@return any scrolling
function GUI:GetScrollX() end

---Returns: get scrolling amount [0..GetScrollMaxY()]
---@return any scrolling
function GUI:GetScrollY() end

---Returns: get maximum scrolling amount ~~ ContentSize.X - WindowSize.X
---@return any maximum
function GUI:GetScrollMaxX() end

---Returns: get maximum scrolling amount ~~ ContentSize.Y - WindowSize.Y
---@return any maximum
function GUI:GetScrollMaxY() end

---set scrolling amount [0..GetScrollMaxX()]
---@param scrollX number
function GUI:SetScrollX(scrollX) end

---set scrolling amount [0..GetScrollMaxY()]
---@param scrollX number
function GUI:SetScrollY(scrollX) end

---adjust scrolling amount to make current cursor position visible. center_y_ratio=0.0: top, 0.5: center, 1.0: bottom.
---@param center_y_ratio number
function GUI:SetScrollHere(center_y_ratio) end

---adjust scrolling amount to make given position valid. use GetCursorPos() or GetCursorStartPos()+offset to get valid positions.
---@param pos_y number
---@param center_y_ratio number
function GUI:SetScrollFromPosY(pos_y, center_y_ratio) end

---focus keyboard on the next widget. Use positive 'offset' to access sub components of a multiple component widget
---@param offset number
function GUI:SetKeyboardFocusHere(offset) end

---sets the color for the following elements
---@param flags integer
---@param R number
---@param G number
---@param B number
---@param A number
function GUI:PushStyleColor(flags, R, G, B, A) end

---removes the last pushed color style(s)
---@param count? number
function GUI:PopStyleColor(count) end

---sets the style for the following elements
---@param flags integer
---@param val number
---@param val2 number
function GUI:PushStyleVar(flags, val, val2) end

---removes the last pushed style var(s)
---@param count number
function GUI:PopStyleVar(count) end

---Returns: number color
---@param r number
---@param g number
---@param b number
---@param a number
---@return number color
function GUI:GetColorU32(r, g, b, a) end

---width of items for the common item+label case, pixels. 0.0f = default to ~2/3 of windows width, >0.0f: width in pixels, <0.0f align xx pixels to the right of window (so -1.0f always align width to the right side))
---@param item_width number
function GUI:PushItemWidth(item_width) end

---removes the last pushed item width
function GUI:PopItemWidth() end

---width of item given pushed settings and current cursor position
function GUI:CalcItemWidth() end

---word-wrapping for Text*() commands. < 0.0f: no wrapping; 0.0f: wrap to end of window (or column); > 0.0f: wrap at 'wrap_pos_x' position in window local space
---@param wrap_pos_x number
function GUI:PushTextWrapPos(wrap_pos_x) end

---removes the last pushed wrap pos
function GUI:PopTextWrapPos() end

---allow focusing using TAB/Shift-TAB, enabled by default but you can disable it for certain widgets
---@param val boolean
function GUI:PushAllowKeyboardFocus(val) end

---removes the last pushed keyboard focus setting
function GUI:PopAllowKeyboardFocus() end

---in 'repeat' mode, Button functions return repeated true in a typematic manner.
---@param repeated boolean
function GUI:PushButtonRepeat(repeated) end

---removes the last pushed button repeat setting
function GUI:PopButtonRepeat() end

---Returns: number size
---size (also height in pixels) of current font with current scale applied
---@return number size
function GUI:GetWindowFontSize() end

---per-window font scale. Adjust IO.FontGlobalScale if you want to scale all windows
---@param scale number
function GUI:SetWindowFontSize(scale) end

---Returns: number size of global font scale
---@return number size
function GUI:GetGlobalFontSize() end

---sets global font scale
---@param scale number
function GUI:SetGlobalFontSize(scale) end

---If a line does not start with text but with an Icon or other GUI Element, call this before drawing the text to align the height correctly.
function GUI:AlignFirstTextHeightToWidgets() end

---horizontal line
function GUI:Separator() end

---call between widgets or groups to layout them horizontally
---@param local_pos_x? number
---@param spacing_w? number
function GUI:SameLine(local_pos_x, spacing_w) end

---undo a SameLine()
function GUI:NewLine() end

---add spacing
function GUI:Spacing() end

---add a dummy item of given size
---@param sizeX number
---@param sizeY number
function GUI:Dummy(sizeX, sizeY) end

---move content position toward the right by style.IndentSpacing pixels
function GUI:Indent() end

---move content position back to the left (cancel Indent)
function GUI:Unindent() end

---lock horizontal starting position. once closing a group it is seen as a single item (so you can use GUI:IsItemHovered() on a group, GUI:SameLine() between groups, etc.
function GUI:BeginGroup() end

---Needs to be called for each GUI:BeginGroup()
function GUI:EndGroup() end

---setup number of columns. use an identifier to distinguish multiple column sets. close with Columns(1).
---@param count number
---@param name? string
---@param border? boolean
function GUI:Columns(count, name, border) end

---next column
function GUI:NextColumn() end

---Returns: number current column index
---@return number current
function GUI:GetColumnIndex() end

---Returns: number get position of column line (in pixels, from the left side of the contents region). pass -1 to use current column, otherwise 0..GUI:GetcolumnsCount() inclusive. column 0 is usually 0.0f and not resizable unless you call this
---@param column_index number
---@return number get
---@return any the
---@return any 0_GUI_GetcolumnsCount
function GUI:GetColumnOffset(column_index) end

---set position of column line (in pixels, from the left side of the contents region). pass -1 to use current column
---@param column_index number
---@param offset_x number
function GUI:SetColumnOffset(column_index, offset_x) end

---Returns: number column width (== GUI:GetColumnOffset(GetColumnIndex()+1) - GUI:GetColumnOffset(GetColumnOffset())
---@param column_index number
---@return number column
function GUI:GetColumnWidth(column_index) end

---set column width (in pixels). pass -1 to use current column
---@param column_index number
---@param width number
function GUI:SetColumnWidth(column_index, width) end

---Returns: number number of columns (what was passed to Columns())
---@return number count
function GUI:GetColumnsCount() end

---Returns: number FontSize
---@return number FontSize
function GUI:GetTextLineHeight() end

---Returns: number FontSize + style.ItemSpacing.y (distance in pixels between 2 consecutive lines of text)
---@return number FontSize
function GUI:GetTextLineHeightWithSpacing() end

---Returns: number FontSize + style.FramePadding.y * 2
---@return number FontSize
function GUI:GetFrameHeight() end

---Returns: number FontSize + style.FramePadding.y * 2 + style.ItemSpacing.y (distance in pixels between 2 consecutive lines of framed widgets)
---@return number FontSize
function GUI:GetFrameHeightWithSpacing() end

---Description: Begins a new table.
function GUI:BeginTable() end

---Description: Ends the current table.
function GUI:EndTable() end

---Description: Moves to the next row in the table.
function GUI:TableNextRow() end

---Description: Moves to the next column in the current row of the table.
function GUI:TableNextColumn() end

---Description: Sets the current column index.
---Parameter:
---column_index: number — The index of the column to set.
---@param column_index number
function GUI:TableSetColumnIndex(column_index) end

---Returns: number — The current column index.
---@return number value1
function GUI:TableGetColumnIndex() end

---Returns: number — The current row index.
---@return number value1
function GUI:TableGetRowIndex() end

---Returns: number — The number of columns in the table.
---@return number value1
function GUI:TableGetColumnCount() end

---Returns: number — The flags of the specified column.
---Parameter:
---column_index: number — The index of the column.
---@param column_index number
---@return number value1
function GUI:TableGetColumnFlags(column_index) end

---Description: Sets the background color for the table.
---Parameter:
---color: number — The color value.
---@param color number
function GUI:TableSetBgColor(color) end

---Description: Sets the width of the specified column.
---Parameters:
---column_index: number — The index of the column.
---width: number — The width to set.
---@param column_index number
---@param width number
function GUI:TableSetColumnWidth(column_index, width) end

---Description: Sets the sort direction for the specified column.
---Parameters:
---column_index: number — The index of the column.
---ascending: boolean — true for ascending, false for descending.
---@param column_index number
---@param ascending boolean
function GUI:TableSetColumnSortDirection(column_index, ascending) end

---Description: Sets up a column with the specified label and parameters.
---Parameters:
---label: string — The label of the column.
---flags: number — The flags for the column.
---init_width_or_weight: number — The initial width or weight of the column.
---@param label string
---@param flags number
---@param init_width_or_weight number
function GUI:TableSetupColumn(label, flags, init_width_or_weight) end

---Description: Adds a row of headers to the table.
function GUI:TableHeadersRow() end

---Description: Adds a header to the table.
---Parameter:
---label: string — The label of the header.
---@param label string
function GUI:TableHeader(label) end

---Description: Freezes the specified number of columns and rows for scrolling.
---Parameters:
---cols: number — The number of columns to freeze.
---rows: number — The number of rows to freeze.
---@param cols number
---@param rows number
function GUI:TableSetupScrollFreeze(cols, rows) end

---Returns: string — The name of the specified column.
---Parameter:
---column_index: number — The index of the column.
---@param column_index number
---@return string value1
function GUI:TableGetColumnName(column_index) end

---Description: Sets the specified column as enabled or disabled.
---Parameters:
---column_index: number — The index of the column.
---enabled: boolean — true to enable, false to disable.
---@param column_index number
---@param enabled boolean
function GUI:TableSetColumnEnabled(column_index, enabled) end

---Description: Begins a new tab bar.
function GUI:BeginTabBar() end

---Description: Ends the current tab bar.
function GUI:EndTabBar() end

---Description: Begins a new tab item with the specified label.
---Parameter:
---label: string — The label of the tab item.
---@param label string
function GUI:BeginTabItem(label) end

---Description: Ends the current tab item.
function GUI:EndTabItem() end

---Description: Adds a button to the tab item with the specified label.
---Parameter:
---label: string — The label of the button.
---@param label string
function GUI:TabItemButton(label) end

---Description: Closes the tab item with the specified label.
---Parameter:
---label: string — The label of the tab item to close.
---@param label string
function GUI:SetTabItemClosed(label) end

---Returns: number x, number y
---cursor position is relative to window position
---@return number x
---@return number y
function GUI:GetCursorPos() end

---Returns: number x
---@return number x
function GUI:GetCursorPosX() end

---Returns: number y
---@return number y
function GUI:GetCursorPosY() end

---sets cursor position is relative to window position
---@param x number
---@param y number
function GUI:SetCursorPos(x, y) end

---sets cursor position x
---@param x number
function GUI:SetCursorPosX(x) end

---sets cursor position y
---@param y number
function GUI:SetCursorPosY(y) end

---Returns: number x, number y
---initial cursor position
---@return number x
---@return number y
function GUI:GetCursorStartPos() end

---Returns: number x, number y
---cursor position in absolute screen coordinates [0..io.DisplaySize]
---@return number x
---@return number y
function GUI:GetCursorScreenPos() end

---cursor position in absolute screen coordinates [0..io.DisplaySize]
---@param x number
---@param y number
function GUI:SetCursorScreenPos(x, y) end

---push identifier into the ID stack.
---@param id string
function GUI:PushID(id) end

---pops the last pushed identifier from the ID stack.
function GUI:PopID() end

---calculate unique ID
---@param id string
function GUI:GetID(id) end

---creates a text element
---@param text string
function GUI:Text(text) end

---creates a colored text element, number range is 0.0 - 1.0
---@param R number
---@param G number
---@param B number
---@param A number
---@param text string
function GUI:TextColored(R, G, B, A, text) end

---creates a disabled text element
---@param text string
function GUI:TextDisabled(text) end

---creates a text element which wraps
---@param text string
function GUI:TextWrapped(text) end

---creates an unformatted text element
---@param text string
function GUI:TextUnformatted(text) end

---display text+label aligned the same way as value+label widgets
---@param label string
---@param text string
function GUI:LabelText(label, text) end

---creates a bullet element
function GUI:Bullet() end

---creates a bullet text element
---@param text string
function GUI:BulletText(text) end

---creates a buttom element
---@param label string
---@param sizeX? number
---@param sizeY? number
function GUI:Button(label, sizeX, sizeY) end

---creates a smaller button element
---@param label string
function GUI:SmallButton(label) end

---creates an arrowbutton
---@param label string
---@param direction integer
function GUI:ArrowButton(label, direction) end

---creates an invisible button element
---@param label string
---@param sizeX number
---@param sizeY number
function GUI:InvisibleButton(label, sizeX, sizeY) end

---Returns: bool pressed
---@param id string
---@param R number
---@param G number
---@param B number
---@param A number
---@param flags integer
---@param sizeX number
---@param sizeY number
---@return boolean pressed
function GUI:ColorButton(id, R, G, B, A, flags, sizeX, sizeY) end

---creates a freely placable buttom element
---@param label string
---@param posX number
---@param posY number
---@param sizeX number
---@param sizeY number
function GUI:FreeButton(label, posX, posY, sizeX, sizeY) end

---creates a freely placable image buttom element
---@param internalid string
---@param filepath string
---@param posX number
---@param posY number
---@param sizeX number
---@param sizeY number
function GUI:FreeImageButton(internalid, filepath, posX, posY, sizeX, sizeY) end

---creates an image button, scary eh ;) ? Simple usage: GUI:ImageButton(string internalid, string filepath, number sizeX, number sizeY).
---< 0 frame_padding uses default frame padding settings. 0 for no padding
---@param internalid string
---@param filepath string
---@param sizeX number
---@param sizeY number
---@param UV0_x number
---@param UV0_y number
---@param UV1_x number
---@param UV1_y number
---@param framepadding number
---@param bg_col_R number
---@param bg_col_G number
---@param bg_col_B number
---@param bg_col_A number
---@param tint_col_R number
---@param tint_col_G number
---@param tint_col_B number
---@param tint_col_A number
function GUI:ImageButton(internalid, filepath, sizeX, sizeY, UV0_x, UV0_y, UV1_x, UV1_y, framepadding, bg_col_R, bg_col_G, bg_col_B, bg_col_A, tint_col_R, tint_col_G, tint_col_B, tint_col_A) end

---Simple Usage: GUI:Image(string filepath, number sizeX, number sizeY)
---@param filepath string
---@param sizeX number
---@param sizeY number
---@param UV0_x? number
---@param UV0_y? number
---@param UV1_x? number
---@param UV1_y? number
---@param bg_col_R? number
---@param bg_col_G? number
---@param bg_col_B? number
---@param bg_col_A? number
---@param tint_col_R? number
---@param tint_col_G? number
---@param tint_col_B? number
---@param tint_col_A? number
function GUI:Image(filepath, sizeX, sizeY, UV0_x, UV0_y, UV1_x, UV1_y, bg_col_R, bg_col_G, bg_col_B, bg_col_A, tint_col_R, tint_col_G, tint_col_B, tint_col_A) end

---Returns: bool checked, bool pressed
---@param label string
---@param checked boolean
---@return boolean checked
---@return boolean pressed
function GUI:Checkbox(label, checked) end

---Returns: number flags, bool pressed
---@param label string
---@param flags number
---@param flags_value number
---@return number flags
---@return boolean pressed
function GUI:CheckboxFlags(label, flags, flags_value) end

---Returns: bool active
---@param label string
---@param active boolean
---@return boolean active
function GUI:RadioButton(label, active) end

---Returns: number val, bool pressed
---@param label string
---@param active boolean
---@param val number
---@return number val
---@return boolean pressed
function GUI:RadioButton(label, active, val) end

---Returns: bool val, BeginCombo()/EndCombo() api allows you to manage your contents and selection state however you want it. Refer to https://github.com/ocornut/imgui/blob/master/imgui_demo.cpp to see how it has to be used.
---@param label string
---@param preview_value string
---@param flags? integer
---@return boolean val
---@return any api
function GUI:BeginCombo(label, preview_value, flags) end

---only call EndCombo() if BeginCombo() returns true!
---@return any value1
function GUI:EndCombo() end

---Returns: number current_item_listindex, bool changed
---@param label string
---@param current_item_listindex number
---@param itemlist table
---@param height_in_items number
---@return number current_item_listindex
---@return boolean changed
function GUI:Combo(label, current_item_listindex, itemlist, height_in_items) end

---Guess what it draws ;)
---@param fraction number
---@param SizeX number
---@param SizeY number
---@param overlay string
function GUI:ProgressBar(fraction, SizeX, SizeY, overlay) end

---Returns: number val, bool changed
---display_format example “%.3f”, If v_min >= v_max we have no bound
---@param label string
---@param val number
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format string
---@param power number
---@return number val
---@return boolean changed
function GUI:DragFloat(label, val, v_speed, v_min, v_max, display_format, power) end

---Returns: number val_min, number val_max, bool changed
---display_format example “%.3f”, If v_min >= v_max we have no bound
---@param label string
---@param v_current_min number
---@param v_current_max number
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format string
---@param display_format_max string
---@param power number
---@return number val_min
---@return number val_max
---@return boolean changed
function GUI:DragFloatRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, display_format, display_format_max, power) end

---Returns: number val, bool changed
---display_format example “%.3f”, If v_min >= v_max we have no bound
---@param label string
---@param val number
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format string
---@return number val
---@return boolean changed
function GUI:DragInt(label, val, v_speed, v_min, v_max, display_format) end

---Returns: number val_min, number val_max, bool changed
---display_format example “%.3f”, If v_min >= v_max we have no bound
---@param label string
---@param v_current_min number
---@param v_current_max number
---@param v_speed number
---@param v_min number
---@param v_max number
---@param display_format string
---@param display_format_max string
---@return number val_min
---@return number val_max
---@return boolean changed
function GUI:DragIntRange2(label, v_current_min, v_current_max, v_speed, v_min, v_max, display_format, display_format_max) end

---Returns: string text, bool changed
---@param label string
---@param text string
---@param flags integer
---@return string text
---@return boolean changed
function GUI:InputText(label, text, flags) end

---Returns: string text, bool changed
---@param label string
---@param text string
---@param sizeX number
---@param sizeY number
---@param flags integer
---@return string text
---@return boolean changed
function GUI:InputTextMultiline(label, text, sizeX, sizeY, flags) end

---Returns: string text, bool changed
---Lua syntax highlighting version of GUI:InputTextMultiline
---@param label string
---@param text string
---@param sizeX number
---@param sizeY number
---@param flags integer
---@return string text
---@return boolean changed
function GUI:InputTextEditor(label, text, sizeX, sizeY, flags) end

---Returns: number val, bool changed
---@param label string
---@param val number
---@param step number
---@param step_fast number
---@param decimal_precision number
---@param flags integer
---@return number val
---@return boolean changed
function GUI:InputFloat(label, val, step, step_fast, decimal_precision, flags) end

---Returns: number val, number val2, bool changed
---Draws 2 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param decimal_precision number
---@param flags integer
---@return number val
---@return number val2
---@return boolean changed
function GUI:InputFloat2(label, val, val2, decimal_precision, flags) end

---Returns: number val, number val2, number val3, bool changed
---Draws 3 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param val3 number
---@param decimal_precision number
---@param flags integer
---@return number val
---@return number val2
---@return number val3
---@return boolean changed
function GUI:InputFloat3(label, val, val2, val3, decimal_precision, flags) end

---Returns: number val, number val2, number val3, number val4, bool changed
---Draws 4 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param val3 number
---@param val4 number
---@param decimal_precision number
---@param flags integer
---@return number val
---@return number val2
---@return number val3
---@return number val4
---@return boolean changed
function GUI:InputFloat4(label, val, val2, val3, val4, decimal_precision, flags) end

---Returns: number val, bool changed
---@param label string
---@param val number
---@param step number
---@param step_fast number
---@param flags integer
---@return number val
---@return boolean changed
function GUI:InputInt(label, val, step, step_fast, flags) end

---Returns: number val, number val2, bool changed
---Draws 2 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param flags integer
---@return number val
---@return number val2
---@return boolean changed
function GUI:InputInt2(label, val, val2, flags) end

---Returns: number val, number val2, number val3, bool changed
---Draws 3 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param val3 number
---@param flags integer
---@return number val
---@return number val2
---@return number val3
---@return boolean changed
function GUI:InputInt3(label, val, val2, val3, flags) end

---Returns: number val, number val2, number val3, number val4, bool changed
---Draws 4 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param val3 number
---@param val4 number
---@param flags integer
---@return number val
---@return number val2
---@return number val3
---@return number val4
---@return boolean changed
function GUI:InputInt4(label, val, val2, val3, val4, flags) end

---Returns: number val, bool changed
---@param label string
---@param val number
---@param v_min number
---@param v_max number
---@param display_format string
---@param power number
---@return number val
---@return boolean changed
function GUI:SliderFloat(label, val, v_min, v_max, display_format, power) end

---Returns: number val, number val2, bool changed
---Draws 2 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param v_min number
---@param v_max number
---@param display_format string
---@param power number
---@return number val
---@return number val2
---@return boolean changed
function GUI:SliderFloat2(label, val, val2, v_min, v_max, display_format, power) end

---Returns: number val, number val2, number val3, bool changed
---Draws 3 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param val3 number
---@param v_min number
---@param v_max number
---@param display_format string
---@param power number
---@return number val
---@return number val2
---@return number val3
---@return boolean changed
function GUI:SliderFloat3(label, val, val2, val3, v_min, v_max, display_format, power) end

---Returns: number val, number val2, number val3, number val4, bool changed
---Draws 4 Input fields behind each other in the same line
---@param label string
---@param val number
---@param val2 number
---@param val3 number
---@param val4 number
---@param v_min number
---@param v_max number
---@param display_format string
---@param power number
---@return number val
---@return number val2
---@return number val3
---@return number val4
---@return boolean changed
function GUI:SliderFloat4(label, val, val2, val3, val4, v_min, v_max, display_format, power) end

---Returns: number val, bool changed
---@param label string
---@param v_rad number
---@param v_degrees_min number
---@param v_degrees_max number
---@return number val
---@return boolean changed
function GUI:SliderAngle(label, v_rad, v_degrees_min, v_degrees_max) end

---Returns: number val, bool changed
---@param label string
---@param val number
---@param v_min number
---@param v_max number
---@param display_format string
---@return number val
---@return boolean changed
function GUI:SliderInt(label, val, v_min, v_max, display_format) end

---Returns: number val, number val2, bool changed
---@param label string
---@param val number
---@param val2 number
---@param v_min number
---@param v_max number
---@param display_format string
---@return number val
---@return number val2
---@return boolean changed
function GUI:SliderInt2(label, val, val2, v_min, v_max, display_format) end

---Returns: number val, number val2, number val3, bool changed
---@param label string
---@param val number
---@param val2 number
---@param val3 number
---@param v_min number
---@param v_max number
---@param display_format string
---@return number val
---@return number val2
---@return number val3
---@return boolean changed
function GUI:SliderInt3(label, val, val2, val3, v_min, v_max, display_format) end

---Returns: number val, number val2, number val3, number val4, bool changed
---@param label string
---@param val number
---@param val2 number
---@param val3 number
---@param val4 number
---@param v_min number
---@param v_max number
---@param display_format string
---@return number val
---@return number val2
---@return number val3
---@return number val4
---@return boolean changed
function GUI:SliderInt4(label, val, val2, val3, val4, v_min, v_max, display_format) end

---Returns: number val, bool changed
---@param label string
---@param sizeX number
---@param sizeY number
---@param val number
---@param v_min number
---@param v_max number
---@param display_format string
---@param power number
---@return number val
---@return boolean changed
function GUI:VSliderFloat(label, sizeX, sizeY, val, v_min, v_max, display_format, power) end

---Returns: number val, bool changed
---@param label string
---@param sizeX number
---@param sizeY number
---@param val number
---@param v_min number
---@param v_max number
---@param display_format string
---@return number val
---@return boolean changed
function GUI:VSliderInt(label, sizeX, sizeY, val, v_min, v_max, display_format) end

---Returns: number R, number G, number B, bool changed
---@param label string
---@param R number
---@param G number
---@param B number
---@param flags integer
---@return number R
---@return number G
---@return number B
---@return boolean changed
function GUI:ColorEdit3(label, R, G, B, flags) end

---Returns: number R, number G, number B, number A, bool changed
---@param label string
---@param R number
---@param G number
---@param B number
---@param A number
---@param flags integer
---@return number R
---@return number G
---@return number B
---@return number A
---@return boolean changed
function GUI:ColorEdit4(label, R, G, B, A, flags) end

---Returns: number R, number G, number B, bool changed
---@param label string
---@param R number
---@param G number
---@param B number
---@param flags integer
---@return number R
---@return number G
---@return number B
---@return boolean changed
function GUI:ColorPicker3(label, R, G, B, flags) end

---Returns: number R, number G, number B, number A, bool changed
---@param label string
---@param R number
---@param G number
---@param B number
---@param A number
---@param flags integer
---@return number R
---@return number G
---@return number B
---@return number A
---@return boolean changed
function GUI:ColorPicker4(label, R, G, B, A, flags) end

---sets ColorEditMode
---@param mode integer
function GUI:ColorEditMode(mode) end

---Returns: bool changed , if returning 'true' the node is open and the user is responsible for calling TreePop()
---@param label string
---@return boolean changed
---@return any returning
function GUI:TreeNode(label) end

---Returns: bool changed , if returning 'true' the node is open and the user is responsible for calling TreePop()
---@param label string
---@param args string
---@return boolean changed
---@return any returning
function GUI:TreeNode(label, args) end

---Returns: bool changed , if returning 'true' the node is open and the user is responsible for calling TreePop()
---@param label string
---@param flags integer
---@param args string
---@return boolean changed
---@return any returning
function GUI:TreeNode(label, flags, args) end

---already called by TreeNode(), but you can call Push/Pop yourself for layouting purpose
---@param id string
function GUI:TreePush(id) end

---needs to be callled at the end of TreePush()
function GUI:TreePop() end

---set next tree node to be opened.
---@param opened boolean
---@param flags integer
function GUI:SetNextTreeNodeOpened(opened, flags) end

---Returns: bool collapsed, if returning 'true' the header is open. doesn't indent nor push on ID stack. user doesn't have to call TreePop().
---@param label string
---@param flags? integer
---@return boolean collapsed
---@return any returning
function GUI:CollapsingHeader(label, flags) end

---Returns: bool collapsed, when 'p_open' isn't NULL, display an additional small close button on upper right of the header
---@param label string
---@param p_open boolean
---@param flag integer
---@return boolean collapsed
---@return any p_open
---@return any an
function GUI:CollapsingHeader(label, p_open, flag) end

---Returns: bool selected, bool changed
---size.x==0.0: use remaining width, size.x>0.0: specify width. size.y==0.0: use label height, size.y>0.0: specify height
---@param label string
---@param selected boolean
---@param flags? integer
---@param sizeX? number
---@param sizeY? number
---@return boolean selected
---@return boolean changed
function GUI:Selectable(label, selected, flags, sizeX, sizeY) end

---Returns: number current_item_index, bool changed
---@param label string
---@param current_listitem_index number
---@param itemlist table
---@param height_in_items number
---@return number current_item_index
---@return boolean changed
function GUI:ListBox(label, current_listitem_index, itemlist, height_in_items) end

---Returns: bool
---use if you want to reimplement ListBox() will custom data or interactions. make sure to call ListBoxFooter() afterwards.
---@param label string
---@param items_count number
---@param height_in_items number
---@return boolean value1
function GUI:ListBoxHeader(label, items_count, height_in_items) end

---terminate the scrolling region
function GUI:ListBoxFooter() end

---set tooltip under mouse-cursor, typically use with GUI:IsItemHovered. last call wins
---@param label string
function GUI:SetTooltip(label) end

---use to create full-featured tooltip windows that aren't just text
function GUI:BeginTooltip() end

---use to create full-featured tooltip windows that aren't just text
function GUI:EndTooltip() end

---Returns: bool opened
---create and append to a full screen menu-bar. only call EndMainMenuBar() if this returns true!
---@return boolean opened
function GUI:BeginMainMenuBar() end

---End Menubar drawing
function GUI:EndMainMenuBar() end

---Returns: bool opened
---append to menu-bar of current window (requires ImGuiWindowFlags_MenuBar flag set). only call EndMenuBar() if this returns true!
---@return boolean opened
function GUI:BeginMenuBar() end

---End Menubar drawing
function GUI:EndMenuBar() end

---Returns: bool opened
---create a sub-menu entry. only call EndMenu() if this returns true!
---@param label string
---@param enabled boolean
---@return boolean opened
function GUI:BeginMenu(label, enabled) end

---End Menubar drawing
function GUI:EndMenu() end

---Returns: bool activated, bool selected
---Shortcuts are currently only visual, aka not working, you need to add that yourself
---@param label string
---@param shortcut? string
---@param selected? boolean
---@param enabled? boolean
---@return boolean activated
---@return boolean selected
function GUI:MenuItem(label, shortcut, selected, enabled) end

---mark popup as open. popups are closed when user click outside, or activate a pressable item, or CloseCurrentPopup() is called within a BeginPopup()/EndPopup() block. popup identifiers are relative to the current ID-stack (so OpenPopup and BeginPopup needs to be at the same level).
---@param id string
function GUI:OpenPopup(id) end

---Returns: bool open
---return true if popup if opened and start outputting to it. only call EndPopup() if BeginPopup() returned true!
---@param id string
---@param flags integer
---@return boolean open
function GUI:BeginPopup(id, flags) end

---Returns bool visible, bool open
---modal dialog (can't close them by clicking outside)
---@param name string
---@param opened boolean
---@param flags integer
---@return boolean visible
---@return boolean open
function GUI:BeginPopupModal(name, opened, flags) end

---Returns bool open
---helper to open and begin popup when clicked on last item
---@param id string
---@param mouse_button number
---@return boolean open
function GUI:BeginPopupContextItem(id, mouse_button) end

---Returns bool open
---helper to open and begin popup when clicked on current window
---@param id string
---@param mouse_button number
---@param also_over_items boolean
---@return boolean open
function GUI:BeginPopupContextWindow(id, mouse_button, also_over_items) end

---Returns bool open
---helper to open and begin popup when clicked in void (no window)
---@param id string
---@param mouse_button number
---@return boolean open
function GUI:BeginPopupContextVoid(id, mouse_button) end

---needs to be called on opened popups
function GUI:EndPopup() end

---Returns bool open
---@param id string
---@return boolean open
function GUI:IsPopupOpen(id) end

---close the popup we have begin-ed into. clicking on a MenuItem or Selectable automatically close the current popup.
function GUI:CloseCurrentPopup() end

---Results: bool
---is the last item hovered? (and usable, aka not blocked by a popup, etc.).
---@param flags integer
---@return boolean value1
function GUI:IsItemHovered(flags) end

---Results: bool
---is the last item active? (e.g. button being held, text field being edited- items that don't interact will always return false)
---@return boolean value1
function GUI:IsItemActive() end

---Results: bool
---is the last item focused for keyboard/gamepad navigation?
---@return boolean value1
function GUI:IsItemFocused() end

---Results: bool
---was the last item clicked? (e.g. button/node just clicked on)
---@param mousebutton? integer
---@return boolean value1
function GUI:IsItemClicked(mousebutton) end

---Results: bool
---was the last item visible? (aka not out of sight due to clipping/scrolling.)
---@return boolean value1
function GUI:IsItemVisible() end

---Results: bool
---@return boolean value1
function GUI:IsAnyItemHovered() end

---Results: bool
---@return boolean value1
function GUI:IsAnyItemActive() end

---Results: bool
---is the any item focused for keyboard/gamepad navigation?
---@return boolean value1
function GUI:IsAnyItemFocused() end

---Results: number x, number y
---get bounding rect of last item in screen space
---@return number x
---@return number y
function GUI:GetItemRectMin() end

---Results: number x, number y
---get bounding rect of last item in screen space
---@return number x
---@return number y
function GUI:GetItemRectMax() end

---Results: number x, number y
---@return number x
---@return number y
function GUI:GetItemRectSize() end

---Allow last item to be overlapped by a subsequent item. sometimes useful with invisible buttons, selectables, etc. to catch unused area.
function GUI:SetItemAllowOverlap() end

---Results: bool
---test if rectangle of given size starting from cursor pos is visible (not clipped). to perform coarse clipping on user's side
---@param x number
---@param y number
---@return boolean value1
function GUI:IsRectVisible(x, y) end

---Results: number
---@return number value1
function GUI:GetTime() end

---Results: number
---@return number value1
function GUI:GetFrameCount() end

---Results: number sizex, number sizey
---@param text string
---@return number sizex
---@return number sizey
function GUI:CalcTextSize(text) end

---Results: number out1, number out2
---calculate coarse clipping for large list of evenly sized items. Prefer using the ImGuiListClipper higher-level helper if you can.
---@param items_count number
---@param items_height number
---@param out_items_display_start number
---@param out_items_display_end number
---@return number out1
---@return number out2
function GUI:CalcListClipping(items_count, items_height, out_items_display_start, out_items_display_end) end

---Results: bool
---helper to create a child window / scrolling region that looks like a normal widget frame
---@param guiID number
---@param sizex number
---@param sizey number
---@param flags integer
---@return boolean value1
function GUI:BeginChildFrame(guiID, sizex, sizey, flags) end

---needs to be called at the end of BeginChildFrame.
function GUI:EndChildFrame() end

---Returns: number val1,number val2,number val3,number val4
---@param U32val number
---@return number val1
---@return number val2
---@return number val3
---@return number val4
function GUI:ColorConvertU32ToFloat4(U32val) end

---Returns: number U32val
---@param val1 number
---@param val2 number
---@param val3 number
---@param val4 number
---@return number U32val
function GUI:ColorConvertFloat4ToU32(val1, val2, val3, val4) end

---Returns: number h, number s, number v
---@param r number
---@param g number
---@param b number
---@return number h
---@return number s
---@return number v
function GUI:ColorConvertRGBtoHSV(r, g, b) end

---Returns: number r, number g, number b
---@param h number
---@param s number
---@param v number
---@return number r
---@return number g
---@return number b
function GUI:ColorConvertHSVtoRGB(h, s, v) end

---Returns: number x, number y
---@return number x
---@return number y
function GUI:GetScreenSize() end

---Returns: bool
---https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731%28v=vs.85%29.aspx for all values, convert the hex to decimal values
---@param virtualkey number
---@return boolean value1
function GUI:IsKeyDown(virtualkey) end

---Returns: bool
---https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731%28v=vs.85%29.aspx for all values, convert the hex to decimal values
---@param virtualkey number
---@param repeated boolean
---@return boolean value1
function GUI:IsKeyPressed(virtualkey, repeated) end

---Returns: bool
---https://msdn.microsoft.com/en-us/library/windows/desktop/dd375731%28v=vs.85%29.aspx to for values, convert the hex to decimal values
---@param virtualkey number
---@return boolean value1
function GUI:IsKeyReleased(virtualkey) end

---Returns: bool
---@param button number
---@return boolean value1
function GUI:IsMouseDown(button) end

---Returns: bool
---@param button number
---@param repeated boolean
---@return boolean value1
function GUI:IsMouseClicked(button, repeated) end

---Returns: bool
---@param button number
---@return boolean value1
function GUI:IsMouseDoubleClicked(button) end

---Returns: bool
---@param button number
---@return boolean value1
function GUI:IsMouseReleased(button) end

---Returns: bool
---is mouse hovering current window (“window” in API names always refer to current window). disregarding of any consideration of being blocked by a popup. (unlike IsWindowHovered() this will return true even if the window is blocked because of a popup)
---@param button number
---@return boolean value1
function GUI:IsMouseHoveringWindow(button) end

---Returns: bool
---@param button number
---@return boolean value1
function GUI:IsMouseHoveringAnyWindow(button) end

---Returns: bool
---is mouse hovering given bounding rect (in screen space). clipped by current clipping settings. disregarding of consideration of focus/window ordering/blocked by a popup.
---@param pos_minX number
---@param pos_minY number
---@param pos_maxX number
---@param pos_maxY number
---@param clip boolean
---@return boolean value1
function GUI:IsMouseHoveringAnyWindow(pos_minX, pos_minY, pos_maxX, pos_maxY, clip) end

---Returns: bool
---@param button number
---@param lock_threshold number
---@return boolean value1
function GUI:IsMouseDragging(button, lock_threshold) end

---Returns: number x, number y
---@return number x
---@return number y
function GUI:GetMousePos() end

---Returns: number x, number y
---retrieve backup of mouse positioning at the time of opening popup we have BeginPopup() into
---@return number x
---@return number y
function GUI:GetMousePosOnOpeningCurrentPopup() end

---Returns: number x, number y
---dragging amount since clicking.
---@param button number
---@param lock_threshold number
---@return number x
---@return number y
function GUI:GetMouseDragDelta(button, lock_threshold) end

---Banana ;)
---@param button number
function GUI:ResetMouseDragDelta(button) end

---Returns: number scrollV, number scrollH
---@param button number
---@return number scrollV
---@return number scrollH
function GUI:GetMouseScroll(button) end

---get text data from the clipboard
function GUI:GetClipboardText() end

---set text data to the clipboard
---@param input string
function GUI:SetClipboardText(input) end

---Returns: boolean — true if the item was edited.
---@return boolean value1
function GUI:IsItemEdited() end

---Returns: boolean — true if the item was activated.
---@return boolean value1
function GUI:IsItemActivated() end

---Returns: boolean — true if the item was deactivated.
---@return boolean value1
function GUI:IsItemDeactivated() end

---Returns: boolean — true if the item was deactivated after an edit.
---@return boolean value1
function GUI:IsItemDeactivatedAfterEdit() end

---Returns: boolean — true if the item was toggled open.
---@return boolean value1
function GUI:IsItemToggledOpen() end

---Returns: number — The ID of the item.
---@return number value1
function GUI:GetItemID() end

---Returns: number — The number of times the specified mouse button was clicked.
---Parameter:
---button: number — The mouse button.
---@param button number
---@return number value1
function GUI:GetMouseClickedCount(button) end

---Returns: boolean — true if the mouse position is valid.
---@return boolean value1
function GUI:IsMousePosValid() end

---Returns: boolean — true if any mouse button is down.
---@return boolean value1
function GUI:IsAnyMouseDown() end

---Returns: number virtualKey, string keyName, boolean changed
---Clicking the widget will start a listener for the next key press event
---@param label string
---@param virtualKey number
---@param width number
---@return number virtualKey
---@return string keyName
---@return boolean changed
function GUI:Keybind(label, virtualKey, width) end

---Usage: GUI:AddCircleFilled(300, 300, 475, GUI:ColorConvertFloat4ToU32(0.9,0.1,0.12,0.5)) IMPORTANT: Use GUI:ColorConvertFloat4ToU32() to calculate the required number color argument!!
---@param X1 number
---@param Y1 number
---@param X2 number
---@param Y2 number
---@param color number
---@param thickness number
function GUI:AddLine(X1, Y1, X2, Y2, color, thickness) end

---@param X1 number
---@param Y1 number
---@param X2 number
---@param Y2 number
---@param color number
---@param rounding number
---@param rounding_corners number
function GUI:AddRect(X1, Y1, X2, Y2, color, rounding, rounding_corners) end

---@param X1 number
---@param Y1 number
---@param X2 number
---@param Y2 number
---@param color number
---@param rounding number
---@param rounding_corners number
function GUI:AddRectFilled(X1, Y1, X2, Y2, color, rounding, rounding_corners) end

---@param X1 number
---@param Y1 number
---@param X2 number
---@param Y2 number
---@param X3 number
---@param Y3 number
---@param X4 number
---@param Y4 number
---@param color number
function GUI:AddQuadFilled(X1, Y1, X2, Y2, X3, Y3, X4, Y4, color) end

---@param X1 number
---@param Y1 number
---@param X2 number
---@param Y2 number
---@param X3 number
---@param Y3 number
---@param color number
function GUI:AddTriangleFilled(X1, Y1, X2, Y2, X3, Y3, color) end

---@param X1 number
---@param Y1 number
---@param radius number
---@param color number
---@param num_segments number
function GUI:AddCircle(X1, Y1, radius, color, num_segments) end

---@param X1 number
---@param Y1 number
---@param radius number
---@param color number
---@param num_segments number
function GUI:AddCircleFilled(X1, Y1, radius, color, num_segments) end

---@param X1 number
---@param Y1 number
---@param color number
---@param text string
function GUI:AddText(X1, Y1, color, text) end

---@param texturepath string
---@param X1 number
---@param Y1 number
---@param X2 number
---@param Y2 number
function GUI:AddImage(texturepath, X1, Y1, X2, Y2) end
