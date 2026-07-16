---@meta

---@type boolean
FFXIV_Common_BotRunning = FFXIV_Common_BotRunning or false

---@type integer
gBotModeIndex = gBotModeIndex or 0

---@type string
gBotMode = gBotMode or ""

---@type table
gBotModeList = gBotModeList or {}

---@type boolean
gQTEHelper = gQTEHelper or false

---@type boolean
gStartCombat = gStartCombat or false

---@type boolean
gSkipTalk = gSkipTalk or false

---@type boolean
gSkipCutscene = gSkipCutscene or false

---@type boolean
gSkipUnsafeCutscene = gSkipUnsafeCutscene or false

---Executes a text command as if it were entered into the in-game chat.
---Examples include slash commands such as /e, /p, etc
---@param command string Text command to execute.
function SendTextCommand(command) end

---Returns true if player is currently inside an instance
---@return boolean value
function InInstance() end

---Returns a localized string by key.
---@param key string
---@return string value
function GetString(key) end

---Returns the key associated with the specified value in a table.
---@generic K, V
---@param value V
---@param tbl table<K, V>
---@return K|nil key
function GetKeyByValue(value, tbl) end

---@class FFXIVMinionMainGUI
---@field name string
---@field open boolean
---@field visible boolean
---@field x number
---@field y number
---@field width number
---@field height number

---@class FFXIVMinionGUI
---@field main FFXIVMinionMainGUI

---@class FFXIVMinion
---@field GUI FFXIVMinionGUI

ffxivminion = ffxivminion or {}

---@type FFXIVMinionGUI
ffxivminion.GUI = ffxivminion.GUI or {}

---@type FFXIVMinionMainGUI
ffxivminion.GUI.main = ffxivminion.GUI.main or {}

---Switches the current bot mode.
---@param mode string Bot mode name.
function ffxivminion.SwitchMode(mode) end

---@class MLGlobalInformation
ml_global_information = ml_global_information or {}

---Toggles current bot mode on / off.
function ml_global_information.ToggleRun() end

---@class FFXIVMinion
---@field classes table<integer, string>
ffxivminion = ffxivminion or {}

---@type table<integer, string>
ffxivminion.classes = {
	[FFXIV.JOBS.ARCANIST] = "ACN",
	[FFXIV.JOBS.SCHOLAR] = "SCH",
	[FFXIV.JOBS.SUMMONER] = "SMN",
	[FFXIV.JOBS.THAUMATURGE] = "THM",
	[FFXIV.JOBS.BLACKMAGE] = "BLM",
	[FFXIV.JOBS.ARCHER] = "ARC",
	[FFXIV.JOBS.BARD] = "BRD",
	[FFXIV.JOBS.CONJURER] = "CNJ",
	[FFXIV.JOBS.WHITEMAGE] = "WHM",
	[FFXIV.JOBS.LANCER] = "LNC",
	[FFXIV.JOBS.DRAGOON] = "DRG",
	[FFXIV.JOBS.GLADIATOR] = "GLD",
	[FFXIV.JOBS.PALADIN] = "PLD",
	[FFXIV.JOBS.MARAUDER] = "MRD",
	[FFXIV.JOBS.WARRIOR] = "WAR",
	[FFXIV.JOBS.PUGILIST] = "PUG",
	[FFXIV.JOBS.MONK] = "MNK",
	[FFXIV.JOBS.ROGUE] = "ROG",
	[FFXIV.JOBS.NINJA] = "NIN",
	[FFXIV.JOBS.MACHINIST] = "MCH",
	[FFXIV.JOBS.DARKKNIGHT] = "DRK",
	[FFXIV.JOBS.ASTROLOGIAN] = "AST",
	[FFXIV.JOBS.REDMAGE] = "RDM",
	[FFXIV.JOBS.SAMURAI] = "SAM",
	[FFXIV.JOBS.BOTANIST] = "BTN",
	[FFXIV.JOBS.FISHER] = "FSH",
	[FFXIV.JOBS.MINER] = "MIN",
	[FFXIV.JOBS.CARPENTER] = "CRP",
	[FFXIV.JOBS.BLACKSMITH] = "BSM",
	[FFXIV.JOBS.ARMORER] = "ARM",
	[FFXIV.JOBS.GOLDSMITH] = "GSM",
	[FFXIV.JOBS.LEATHERWORKER] = "LTW",
	[FFXIV.JOBS.WEAVER] = "WVR",
	[FFXIV.JOBS.ALCHEMIST] = "ALC",
	[FFXIV.JOBS.CULINARIAN] = "CUL",
	[FFXIV.JOBS.BLUEMAGE] = "BLU",
	[FFXIV.JOBS.DANCER] = "DNC",
	[FFXIV.JOBS.GUNBREAKER] = "GNB",
	[FFXIV.JOBS.REAPER] = "RPR",
	[FFXIV.JOBS.SAGE] = "SGE",
	[FFXIV.JOBS.VIPER] = "VPR",
	[FFXIV.JOBS.PICTOMANCER] = "PCT",
}


---Host Environment Globals

---@type Player
Player = Player or {}

---Returns the local player entity.
---@return Player player
function Player:Get() end

---Returns the player's current target.
---@return Entity|nil target
function Player:GetTarget() end

---@class Inventory
Inventory = Inventory or {}

---Returns an inventory item by bag and slot.
---@param bag integer Bag ID.
---@param slot integer Slot index.
---@return table|nil item
function Inventory:Get(bag, slot) end

---Returns the number of occupied slots in a bag.
---@param bag integer Bag ID.
---@return integer count
function Inventory:GetCount(bag) end

---@class Party
Party = Party or {}

---Returns the player entity at the given party index (0-based).
---@param index integer Party member index.
---@return Entity|nil member
function Party:Get(index) end

---Returns the number of party members (including self).
---@return integer count
function Party:GetCount() end

---@class World
World = World or {}

---Returns whether the player is mounted.
---@return boolean mounted
function World:IsMounted() end

---Returns the current zone/map name.
---@return string zoneName
function World:GetZoneName() end

---Returns the current map ID.
---@return integer mapID
function World:GetMapID() end

---@class Task
Task = Task or {}

---Creates a memoized function result (caches the call).
---@param fn function Function to memoize.
---@return function memoized
function Task:Memoize(fn) end

---Returns the MinionApp settings table for the given key.
---@param key string Settings key.
---@return any value
function GetSettings(key) end

---Saves a value to the MinionApp settings table.
---@param key string Settings key.
---@param value any Value to store.
function SaveSettings(key, value) end

---Returns true if the entity is in the player's line of sight.
---@param entityID integer
---@return boolean inLOS
function CanSee(entityID) end

---Returns true if the entity is alive.
---@param entityID integer
---@return boolean alive
function IsAlive(entityID) end

---Returns true if the entity is targetable.
---@param entityID integer
---@return boolean targetable
function IsTargetable(entityID) end