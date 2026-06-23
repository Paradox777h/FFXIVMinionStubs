---@meta

---@class RenderManager
RenderManager = RenderManager or {}

---Returns: number X1, number Y1, screenpos
---USE THIS ONE IF POSSIBLE, it is A LOT FASTER than the one below! Converts a worldposition x,y,z to a screenposition x,y , IF that point is currently visible on the screen
---@param worldpos table
---@param visibleOnly boolean
---@return number X1
---@return number Y1
---@return any value3
function RenderManager:WorldToScreen(worldpos, visibleOnly) end

---Returns: table screenpos
---Converts a worldposition x,y,z to a screenposition x,y , IF that point is currently visible on the screen
---@param worldpos table
---@return table screenpos
function RenderManager:WorldToScreen(worldpos) end
