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
