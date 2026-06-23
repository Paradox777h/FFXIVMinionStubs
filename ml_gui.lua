---@meta

---@class MinionMenuComponentHeader
---@field expanded boolean
---@field name string
---@field id string
---@field texture string|nil

---@class MinionMenuComponent
---@field header MinionMenuComponentHeader
---@field members table|nil

---@class MinionMenuMember
---@field name string
---@field id string
---@field texture string|nil
---@field tooltip string|nil
---@field onClick fun()|nil
---@field sort boolean|nil If specified on a parent member, submembers will be sorted alphabetically by name.

---@class MinionMenuSubMember
---@field name string
---@field id string
---@field texture string|nil
---@field tooltip string|nil
---@field onClick fun()|nil

---@class ml_gui_ui_mgr
ml_gui = ml_gui or {}
ml_gui.ui_mgr = ml_gui.ui_mgr or {}

---Adds a component to the Minion Menu.
---All components must have a header and optionally members, which are displayed when the header is clicked and the menu is open.
---@param component MinionMenuComponent
function ml_gui.ui_mgr:AddComponent(component) end

---Adds a member row below a component container.
---@param member MinionMenuMember
---@param componentid string
function ml_gui.ui_mgr:AddMember(member, componentid) end

---Adds a submember displayed to the right, growing vertically downward. Useful to section off a large amount of events.
---@param submember MinionMenuSubMember
---@param componentid string
---@param memberid string
function ml_gui.ui_mgr:AddSubMember(submember, componentid, memberid) end
