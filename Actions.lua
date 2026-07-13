---@meta

---@class Action
---@field ptr integer
---@field id integer
---@field name string
---@field type integer
---@field skilltype integer
---@field cost integer
---@field casttime number
---@field recasttime number
---@field isoncd boolean
---@field cd number
---@field cdmax number
---@field range number
---@field radius number
---@field level integer
---@field job integer
---@field iscasting boolean
---@field combospellid integer
---@field isgroundtargeted boolean
---@field usable boolean
---@field attacktype? integer
---@field cooldowngroup? integer
---@field statusgainedid? integer
---@field secondarycostid? integer
---@field aspect? integer
---@field category? integer
---@field primarycosttype? integer
---@field highlighted? boolean
---@field canfly? boolean

---@class Action
Action = Action or {}

---@param targetId? integer
---@return boolean
function Action:IsReady(targetId) end

---@param targetId? integer
---@return boolean
function Action:IsFacing(targetId) end

---@param targetId? integer
---@return integer|boolean
function Action:CanCastResult(targetId) end

---Casts the action.
---@overload fun(self: Action): boolean|integer
---@overload fun(self: Action, targetID: integer): boolean|integer
---@overload fun(self: Action, x: number, y: number, z: number): boolean|integer
---@return boolean|integer
function Action:Cast(...) end

---@class ActionList
ActionList = ActionList or {}

---@return boolean
function ActionList:IsCasting() end

---@return boolean|integer
function ActionList:StopCasting() end

---@return boolean
function ActionList:IsReady() end

---@return table<integer, string>
function ActionList:GetTypes() end

---@overload fun(actionType: integer): table<integer, Action>
---@overload fun(actionType: integer, actionId: integer): Action|nil
---@param actionType integer
---@param actionId? integer
---@return table<integer, Action>|Action|nil
function ActionList:Get(actionType, actionId) end