---@meta

---@class AnyoneCore
AnyoneCore = AnyoneCore or {}

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

---Renders text labels on world objects or NPCs. World Text caps at 100y distance, distance scaling caps at 60y.
---Persistent render that shows every frame.
---@param text string The text to render on a world object or NPC.
---@param position table World position table {x, y, z} where the text should appear.
---@param color? integer RGB U32 value. Use GUI:ColorConvertFloat4ToU32 to obtain.
---@param background? boolean If true, adds transparent black box behind text.
---@param sizeMultiplier? number Text size multiplier, e.g. 1.5 = 50% larger.
---@param uniqueId? string|number Unique identifier to prevent combining strings into one window.
function AnyoneCore.renderWorldText(text, position, color, background, sizeMultiplier, uniqueId) end

---Core toggle function for controlling AnyoneCore behaviors.
---Known toggles: 'jumps', 'burn', 'garuda first', 'titan first', 'MovementHeavy', and more.
---The 'burn' toggle disables potions if they won't come up within 25s.
---@param toggleName string Name of the toggle to control.
---@param value boolean true to enable, false to disable.
---@param duration? number Optional duration in ms after which toggle reverts on wipe or timeout.
function AnyoneCore.Toggle(toggleName, value, duration) end

---Draws a job icon from the game's icon texture sheets.
---@param job integer|string ClassJob row id, or a job name present in AnyoneCore.jobToID.
---@param x number? Width of the icon.
---@param y number? Height of the icon.
---@param styleOffset integer? Icon style offset. Defaults to 62100 (framed colored job-stone icons).
---@param highRes boolean? Whether to use the _hr1 high-res texture. Defaults to true.
---@return boolean success
function AnyoneCore.API.DrawJobIcon(job, x, y, styleOffset, highRes) end

---Draws a status effect icon from the game's icon texture sheets.
---@param status integer|table Status row id, or a status row/table containing iconID/iconid/Icon.
---@param x number? Width of the icon.
---@param y number? Height of the icon.
---@param stackOffset integer? Optional direct offset added to the base icon for stacked status art.
---@param highRes boolean? Whether to use the _hr1 high-res texture. Defaults to true.
---@return boolean success
function AnyoneCore.API.DrawStatus(status, x, y, stackOffset, highRes) end

---Draws an item icon from the game's icon texture sheets.
---@param item integer|table Item row id, or an item row/table containing iconID/iconid/Icon.
---@param x number? Width of the icon.
---@param y number? Height of the icon.
---@param hq boolean? Whether to draw the generic HQ overlay.
---@param highRes boolean? Whether to use the _hr1 high-res texture. Defaults to true.
---@return boolean success
function AnyoneCore.API.DrawItem(item, x, y, hq, highRes) end

---Draws an action icon from the game's icon texture sheets.
---@param action integer|table Action row id, or an Action/table containing iconID/iconid/Icon.
---@param x number? Width of the icon.
---@param y number? Height of the icon.
---@param rounding number|boolean? Legacy numeric parameter kept for compatibility. If boolean and highRes is nil, treated as highRes.
---@param highRes boolean? Whether to use the _hr1 high-res texture. Defaults to true.
---@return boolean success
function AnyoneCore.API.DrawAction(action, x, y, rounding, highRes) end

---Draws a priority selection GUI window.
---@param priority table The priority table generated by GetPriorityList.
---@return table
function AnyoneCore.GUI.DrawPriorityList(priority) end

---@class AnyoneCore.Navigation
AnyoneCore.Navigation = {}

---Visits the specified world.
---@param worldName string
function AnyoneCore.Navigation.visitWorld(worldName) end

---@class AnyoneCore.API
AnyoneCore.API = AnyoneCore.API or {}

---Returns the agnostic party list, works in instances and replays
---@param filter string Filter criteria, eg. "Party"
---@return Entity[]|Entity
function AnyoneCore.API.getAgnosticPartyList(filter) end

---Changes to the specified instance.
---@param instanceNumber integer
function AnyoneCore.API.changeInstance(instanceNumber) end