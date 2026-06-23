---@meta

---@class MoogleTelegraphBlacklistEntry
---@field label string
---@field source string|nil

---@class MoogleTelegraphDonutOverride
---@field name string
---@field radius number
---@field source string|nil

---@class MoogleTelegraphConeOverride
---@field name string
---@field angle number
---@field source string|nil

---@class MoogleTelegraphsSettings
---@field aoeIDUserBlacklist table<integer, string|MoogleTelegraphBlacklistEntry>
---@field aoeIDUserSetDonuts table<integer, MoogleTelegraphDonutOverride>
---@field aoeIDUserSetCones table<integer, MoogleTelegraphConeOverride>

---@class MoogleTelegraphs
---@field Settings MoogleTelegraphsSettings
MoogleTelegraphs = MoogleTelegraphs or {}

---@type MoogleTelegraphsSettings
MoogleTelegraphs.Settings = MoogleTelegraphs.Settings or {}

--- add     - MoogleTelegraphs.Settings.aoeIDUserBlacklist[<id>] = "label"
--- add     - MoogleTelegraphs.Settings.aoeIDUserBlacklist[<id>] = { label = "label", source = "source" }
--- remove  - MoogleTelegraphs.Settings.aoeIDUserBlacklist[<id>] = nil
MoogleTelegraphs.Settings.aoeIDUserBlacklist = MoogleTelegraphs.Settings.aoeIDUserBlacklist or {}

--- add     - MoogleTelegraphs.Settings.aoeIDUserSetDonuts[<id>] = { name = "label", radius = <new radius>, source = "source" }
--- remove  - MoogleTelegraphs.Settings.aoeIDUserSetDonuts[<id>] = nil
MoogleTelegraphs.Settings.aoeIDUserSetDonuts = MoogleTelegraphs.Settings.aoeIDUserSetDonuts or {}

--- add     - MoogleTelegraphs.Settings.aoeIDUserSetCones[<id>] = { name = "label", angle = <new angle>, source = "source" }
--- remove  - MoogleTelegraphs.Settings.aoeIDUserSetCones[<id>] = nil
MoogleTelegraphs.Settings.aoeIDUserSetCones = MoogleTelegraphs.Settings.aoeIDUserSetCones or {}
