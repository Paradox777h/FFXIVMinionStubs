---@meta

---@alias AnyoneCorePriorityRole
---| '"R"' # Physical ranged or caster DPS
---| '"M"' # Melee DPS
---| '"T"' # Tank
---| '"H"' # Healer
---| '"C"' # Caster DPS
---| '"P"' # Physical ranged DPS
---| '"D"' # Any DPS
---| '"S"' # Any support: tank or healer

---@class AnyoneCorePriorityEntry
---@field id integer|nil
---@field name string|nil
---@field job integer|nil
---@field role string|nil
---@field [string] any

---@alias AnyoneCorePriorityList AnyoneCorePriorityEntry[]

---@class AnyoneCore
AnyoneCore = AnyoneCore or {}

---Changes an AnyoneCore reaction toggle.
---Some temporary toggles restore their previous value after a wipe or after the specified duration expires.
---@param name string Toggle name.
---@param enabled boolean Whether the toggle should be enabled.
---@param duration? integer Duration in milliseconds before restoring the previous value.
function AnyoneCore.Toggle(name, enabled, duration) end

---Renders a text label at a world position for the current frame.
---@param text string Text to display.
---@param position table World position.
---@param color? integer RGB U32 text color. Use GUI:ColorConvertFloat4ToU32.
---@param background? boolean Adds a transparent black background behind the text.
---@param sizeMultiplier? number Text-size multiplier. For example, 1.5 renders at 150% size.
---@param identifier? string Identifier used to distinguish this text draw from others.
function AnyoneCore.renderWorldText(text, position, color, background, sizeMultiplier, identifier) end

---Adds floating text into the game for a certain amount of time.
---@param time number Milliseconds to render the text for.
---@param text string Text of the render.
---@param position table Position of the render.
---@param color? integer RGB U32 color of the text.
---@param background? boolean Whether the text should have a transparent black box to help make it pop out.
---@param sizeMultiplier? number Makes text size larger. ie; 1.5 would be 1.5x or 50% larger than default.
---@return string uuid UUID of world text.
function AnyoneCore.addTimedWorldText(time, text, position, color, background, sizeMultiplier) end

---Adds floating text into the game tied to a given entity's position.
---@param timer integer Milliseconds to render the text for.
---@param str string Text to display.
---@param entID number ID of the entity to draw on.
---@param color? number U32 value of a color.
---@param bg? boolean Whether to add a dark background to make the text more visible.
---@param sizeMultiplier? number Multiplies the scale of the text.
---@param heightAddition? number Adds extra height to the y value of entity position if needed to make the text more visible.
---@return string uuid UUID of world text.
function AnyoneCore.addTimedWorldTextOnEnt(timer, str, entID, color, bg, sizeMultiplier, heightAddition) end

---Adds a countdown world text at a world position.
---The displayed value counts down from the given timer until it reaches zero.
---@param timer integer Milliseconds to count down from.
---@param position table Position to display the countdown at.
---@param color? integer U32 value of a color.
---@param background? boolean Whether to add a dark background to make the text more visible.
---@param sizeMultiplier? number Multiplies the scale of the text.
---@param delay? integer Delay in milliseconds before the countdown begins.
---@param prefix? string Text prepended to the countdown value.
---@return string uuid UUID of the world text.
---@return table entry Countdown entry object.
function AnyoneCore.addWorldTextCountdown(timer, position, color, background, sizeMultiplier, delay, prefix) end

---Adds a countdown world text tied to an entity's position.
---The displayed value counts down from the given timer until it reaches zero.
---@param timer integer Milliseconds to count down from.
---@param id number ID of the entity to draw on.
---@param color? integer U32 value of a color.
---@param background? boolean Whether to add a dark background to make the text more visible.
---@param sizeMultiplier? number Multiplies the scale of the text.
---@param heightAddition? number Adds extra height to the entity position if needed.
---@param delay? integer Delay in milliseconds before the countdown begins.
---@param prefix? string Text prepended to the countdown value.
---@return string uuid UUID of the world text.
---@return table entry Countdown entry object.
function AnyoneCore.addWorldTextCountdownOnEnt(timer, id, color, background, sizeMultiplier, heightAddition, delay, prefix) end

---Removes a world text entry created by AnyoneCore world text functions.
---@param uuid string UUID returned by a world text creation function.
function AnyoneCore.removeTimedWorldText(uuid) end

---@class AnyoneCore.API
AnyoneCore.API = AnyoneCore.API or {}

---Draws a job icon.
---@param job integer|string ClassJob row ID, or a job name present in AnyoneCore.jobToID.
---@param x? number Width of the icon.
---@param y? number Height of the icon.
---@param styleOffset? integer Icon style offset. Defaults to 62100. Known blocks include 62000, 62100, 62400, 62500, 62800, and 62900.
---@param highRes? boolean Whether to use the `_hr1` high-resolution texture. Defaults to true.
---@return boolean drawn True when a job icon path was drawn; false when the blank fallback was used.
function AnyoneCore.API.DrawJobIcon(job, x, y, styleOffset, highRes) end

---Draws a status icon.
---@param status integer|table Status row ID, or a status row/table containing `iconID`, `iconid`, or `Icon`.
---@param x? number Width of the icon.
---@param y? number Height of the icon.
---@param stackOffset? integer Optional direct offset added to the base icon for stacked status art. Pass 0 when the base icon is already the displayed stack.
---@param highRes? boolean Whether to use the `_hr1` high-resolution texture. Defaults to true.
---@return boolean drawn True when a status icon path was drawn; false when the blank fallback was used.
function AnyoneCore.API.DrawStatus(status, x, y, stackOffset, highRes) end

---Draws an item icon.
---@param item integer|table Item row ID, or an item row/table containing `iconID`, `iconid`, or `Icon`.
---@param x? number Width of the icon.
---@param y? number Height of the icon.
---@param hq? boolean Whether to draw the generic HQ overlay over the base item icon.
---@param highRes? boolean Whether to use the `_hr1` high-resolution texture. Defaults to true.
---@return boolean drawn True when an item icon path was drawn; false when the blank fallback was used.
function AnyoneCore.API.DrawItem(item, x, y, hq, highRes) end

---Draws an action icon.
---@param action integer|table Action row ID, or an Action/table containing `iconID`, `iconid`, or `Icon`.
---@param x? number Width of the icon.
---@param y? number Height of the icon.
---@param rounding? number|boolean Legacy numeric parameter retained for compatibility. If boolean and highRes is nil, it is treated as highRes.
---@param highRes? boolean Whether to use the `_hr1` high-resolution texture. Defaults to true.
---@return boolean drawn True when an action icon path was drawn; false when the blank fallback was used.
function AnyoneCore.API.DrawAction(action, x, y, rounding, highRes) end

---Creates a party priority list using the supplied role-order string.
---Passing an existing priority-list-shaped table forces that list instead of sorting the current party.
---@param sortType string|AnyoneCorePriorityList Role priority such as `"HRMTTMRH"`, or a prebuilt fake party list.
---@return AnyoneCorePriorityList priority
function AnyoneCore.API.GetPriorityList(sortType) end

---Returns the agnostic party list, works in instances and replays
---@param filter string Filter criteria, eg. "Party"
---@return Entity[]|Entity
function AnyoneCore.API.getAgnosticPartyList(filter) end

---Changes to the specified instance.
---@param instanceNumber integer
function AnyoneCore.API.changeInstance(instanceNumber) end

---@class AnyoneCore.GUI
AnyoneCore.GUI = AnyoneCore.GUI or {}

---Draws an editor for a generated party priority list.
---@param priority AnyoneCorePriorityList Priority list returned by AnyoneCore.API.GetPriorityList.
---@return AnyoneCorePriorityList priority Updated priority list after GUI edits.
function AnyoneCore.GUI.DrawPriorityList(priority) end

---@class AnyoneCore.Navigation
AnyoneCore.Navigation = {}

---Visits the specified world.
---@param worldName string
function AnyoneCore.Navigation.visitWorld(worldName) end