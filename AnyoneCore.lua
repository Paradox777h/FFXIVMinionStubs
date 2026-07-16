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