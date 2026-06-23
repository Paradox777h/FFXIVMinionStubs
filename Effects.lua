---@meta

---@diagnostic disable: missing-fields, duplicate-doc-field, duplicate-doc-alias

---@class Argus
Argus = Argus or {}

---@class EffectResource : lightuserdata
---@class EffectScriptResource : lightuserdata

---@alias ResourceType
---| 2 # Model
---| 4 # VFX (often time vfx will be at the center of the map/somewhere not directly related to the visual. you can think of the vfx as a "video" being played on the map)
---| 6 # Script (has subresources which can be any type, but often also VFX; you should iterate the subresources for more info on vfx/positions)
---| 7 # Sound (often times will actually match directly with the visual, because that is where the sound effect is coming from. this can be used to grab the position of the visual if the visual's position is not accurate)

---@alias RenderType
---| 2 # Model
---| 4 # VFX (often time vfx will be at the center of the map/somewhere not directly related to the visual. you can think of the vfx as a "video" being played on the map)
---| 6 # Script (has subresources which can be any type, but often also VFX; you should iterate the subresources for more info on vfx/positions)
---| 7 # Sound (often times will actually match directly with the visual, because that is where the sound effect is coming from. this can be used to grab the position of the visual if the visual's position is not accurate)

---@class EffectScriptSubresourceInfo
---@field resource_info EffectResourceInfo
---@field index integer

---@class EffectScriptInfo
---@field name string
---@field flag integer
---@field is_running boolean
---@field resources EffectScriptSubresourceInfo[]

---@class EffectResourceInfo
---@field id integer
---@field path string
---@field type ResourceType
---@field is_active boolean
---@field position { x: number, y: number, z: number }
---@field render_type RenderType
---@field render_state integer
---@field scripts EffectScriptInfo[]?
---@field subresources EffectScriptSubresourceInfo[]?

---@class CurrentMapEffectInfo
---@field resource_info EffectResourceInfo
---@field index integer

---@return CurrentMapEffectInfo[]
function Argus.getCurrentMapEffects() end

---@return integer
function Argus.getNumCurrentMapEffects() end

---@param effect_index integer
---@return EffectResource?
function Argus.getMapEffectResource(effect_index) end

---@param effect_resource EffectResource
---@return integer? resource_id
---@return string? resource_path
---@return ResourceType? resource_type
---@return boolean? is_active
function Argus.getEffectResourceInfo(effect_resource) end

---@param effect_resource EffectResource
---@return number? x
---@return number? y
---@return number? z
function Argus.getEffectResourcePosition(effect_resource) end

---@param effect_resource EffectResource
---@param x number
---@param y number
---@param z number
---@return boolean
function Argus.setEffectResourcePosition(effect_resource, x, y, z) end

---@param effect_resource EffectResource
---@return number? direction_x
---@return number? direction_y
---@return number? direction_z
---@return number? up_x
---@return number? up_y
---@return number? up_z
function Argus.getEffectResourceOrientation(effect_resource) end

---@param effect_resource EffectResource
---@param direction_x number
---@param direction_y number
---@param direction_z number
---@param up_x number? default 0.0
---@param up_y number? default 1.0
---@param up_z number? default 0.0
---@return boolean
function Argus.setEffectResourceOrientation(effect_resource, direction_x, direction_y, direction_z, up_x, up_y, up_z) end

---@param effect_resource EffectResource
---@return number? x
---@return number? y
---@return number? z
function Argus.getEffectResourceScale(effect_resource) end

---@param effect_resource EffectResource
---@param x number
---@param y number
---@param z number
---@return boolean
function Argus.setEffectResourceScale(effect_resource, x, y, z) end

---@param effect_resource EffectResource
---@return RenderType? render_type
---@return integer? render_state
function Argus.getEffectResourceRenderInfo(effect_resource) end

---@param effect_index integer
---@return integer
function Argus.getEffectResourceScriptFlagForIndex(effect_index) end

---@param flag integer
---@return integer
function Argus.getEffectResourceScriptIndexForFlag(flag) end

--- ONLY VALID FOR SCRIPT RESOURCES (type 6)
---@param effect_resource EffectResource
---@return integer
function Argus.getNumEffectResourceScripts(effect_resource) end

--- ONLY VALID FOR SCRIPT RESOURCES (type 6)
---@param effect_resource EffectResource
---@param index integer
---@return string? script_name
---@return integer num_subresources
---@return EffectScriptResource? script_resource
---@return boolean is_running
function Argus.getEffectResourceScriptInfo(effect_resource, index) end

--- ONLY VALID FOR SCRIPT RESOURCES (type 6)
---@param effect_resource EffectResource
---@param index integer
---@param time integer? Default 0
---@return boolean
function Argus.startEffectResourceScript(effect_resource, index, time) end

--- ONLY VALID FOR SCRIPT RESOURCES (type 6)
---@param effect_resource EffectResource
---@param index integer
---@return boolean
function Argus.stopEffectResourceScript(effect_resource, index) end

--- ONLY VALID FOR SCRIPT RESOURCES (type 6)
--- This is the list of subresources (from the full list) that this script accesses
--- Useful to know what this script interacts with
---@param script_resource EffectScriptResource Script resource from Argus.getEffectResourceScriptInfo(), NOT effect resource!
---@param subresource_index integer
---@return EffectResource? effectResource Effect resource, that can use all the api that requires effect_resource. This can also be another script type, which will have its own subresources.
function Argus.getEffectResourceScriptSubresource(script_resource, subresource_index) end

--- ONLY VALID FOR SCRIPT RESOURCES (type 6)
--- This is the "full" list of subresources. The scripts will pull from this list, but may not use all of them.
--- This list, however, contains all of the subresources available. Some script types may have no scripts, but have subresources that are automatically used from a default/external script.
---@param effect_resource EffectResource
---@return integer
function Argus.getNumEffectSubresources(effect_resource) end

--- ONLY VALID FOR SCRIPT RESOURCES (type 6)
--- This is the "full" list of subresources. The scripts will pull from this list, but may not use all of them.
--- This list, however, contains all of the subresources available. Some script types may have no scripts, but have subresources that are automatically used from a default/external script.
---@param effect_resource EffectResource
---@param subresource_index integer
---@return EffectResource?
function Argus.getEffectSubresource(effect_resource, subresource_index) end

--- You can also just get the effect resource and run the script directly
---@param index integer Index from 0 -> Argus.getNumCurrentMapEffects() - 1
---@param a2 integer Unused, doesn't matter what this is
---@param flags integer This is the flag that you can also get from Argus.getEffectResourceScriptFlagForIndex(), which will also work to start the script. You can also convert flags to indices with Argus.getEffectResourceScriptIndexForFlag(). This function runs the event captured by onMapEffect
function Argus.runMapEffect(index, a2, flags) end
