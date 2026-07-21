---@meta

---@diagnostic disable: missing-fields, duplicate-doc-field, duplicate-doc-alias

---Copy of the internal reaction timer.
TensorReactions_CurrentTimer = 0.0

---Copy of the internal current combat timer.
TensorReactions_CurrentCombatTimer = 0.0

---@class TensorCore
TensorCore = TensorCore or {}

---Returns local player table.
---@return Player player
function TensorCore.mGetPlayer() end

---Returns target player table.
---@return Entity target
function TensorCore.mGetTarget() end

---Returns entity table by id.
---@param id number
---@return Entity entity
function TensorCore.mGetEntity(id) end

---Returns entity tables based on filter criteria.
---@param filter string
---@return Entity[] entities
function TensorCore.entityList(filter) end

---Returns entity tables based on group filter criteria, eg. Party.
---@param filter string
---@return Entity[] entities
function TensorCore.getEntityGroupList(filter) end

---Returns bool if any entity is channeling action castid, and table entity that is channeling castid.
---Optionally, elistFilters can be specified to check a more narrow list of entities.
---@param castid number
---@param elistFilters string|nil
---@return boolean isCasting
---@return table|nil entity
function TensorCore.isAnyEntityCasting(castid, elistFilters) end

---Returns bool if entity with contentid is alive, and table entity that matches contentid and is alive.
---Optionally, elistFilters can be specified to check a more narrow list of entities.
---@param contentid number
---@param elistFilters string|nil
---@return boolean isAlive
---@return table|nil entity
function TensorCore.isEntityAlive(contentid, elistFilters) end

---@param id integer The id of the entity to check.
---@return number speed
function TensorCore.getEntitySpeed(id) end

---Returns the buff object for a given entity.
---@param entityID number
---@param buffID number
---@return table buff
function TensorCore.getBuff(entityID, buffID) end

---Indicates if an entity has a certain buff.
---@param entityID number|table
---@param buffID number
---@param owner? any Optional.
---@param stacks? any Optional.
---@param minDuration? any Optional.
---@return boolean hasBuff
function TensorCore.hasBuff(entityID, buffID, owner, stacks, minDuration) end

---Returns table entity of specified group and subgroup.
---If strGroup is “Named Target” or “ContentID” then subgroup must be a table that contains keys “name”, “subgroup”, and “contentid”.
---Example: {name = “Striking Dummy”, subgroup = “Nearest”, contentid = 541}.
---Important note: you don't need contentid if strGroup is “Named Target”, and you don't need name if strGroup is “ContentID”.
---Subgroup will default to nearest in all cases.
---Full list of strGroups that require a subgroup: {“Named Target”, “Enemy”, “Party”, “Tank”, “ContentID”, “Melee DPS”, “Ranged DPS”, “Ranged Physical DPS”, “Ranged Caster DPS”, “Healer”, “Target Spell of Current Target”}
---@param strGroup string Full list of strGroups: {“All”, “Self”, “Named Target”, “ContentID”, “Current Target”, “Enemy”, “Target of Current Target”, “Target Spell of Current Target”, “Most Clustered Ally”, “Most Clustered Enemy”, “Party”, “Main Tank”, “Off Tank”, “Tank”, “Melee DPS”, “Ranged DPS”, “Ranged Physical DPS”, “Ranged Caster DPS”, “Healer”}
---@param subGroup? string|table Full list of subGroups: {“Nearest”, “Lowest HP”, “Highest HP”, “Number”}. Important Note: Number will simply return the list of strGroup targets back to you.
---@param inParty? boolean
---@param range? number
---@param szCluster? number
---@return Entity|Entity[] entity
function TensorCore.getEntityByGroup(strGroup, subGroup, inParty, range, szCluster) end

---Calculates the heading between 2 positions.
---@param src table
---@param dst table
---@return number heading
function TensorCore.getHeadingToTarget(src, dst) end

---Extends a vector by a given distance towards a given direction.
---@param src table
---@param dir number Heading + math.pi.
---@param dist number
---@return table position
function TensorCore.getPosInDirection(src, dir, dist) end

---Returns 2d distance between 2 vectors.
---@param a table
---@param b table
---@return number distance
function TensorCore.getDistance2d(a, b) end

---Returns 3d distance between 2 vectors.
---@param a table
---@param b table
---@return number distance
function TensorCore.getDistance3d(a, b) end

---Returns current limit break charge.
---Each bar is worth 10000.
---Full gauge = 30000.
---@return integer gauge
function TensorCore.getLBGauge() end

---This function accepts a variable number of arguments.
---Given an id, it will reset all time to kill data on that entity.
---Useful for Living Liquid / Living hand split in TEA p1 that throws off TTK.
---Example Usage: TensorCore.resetTTKTargets(123, 456).
---This will reset ttk info on entities with id 123 and 456.
---@param ... number
function TensorCore.resetTTKTargets(...) end

---Send parsed chat message with placeholders.
---{color:r,g,b}
---{resetcolor}
---@param msg string eg. "/e {color:255,0,0}a {resetcolor} b {color:0, 255, 0} c{resetcolor}"
function TensorCore.sendParsedChatMessage(msg) end

---Send a shotcaller alert text.
---@param duration integer Display duration in ms.
---@param text string
---@param scale number
---@param priority integer|table Priority 1 = green, 2 = yellow, 3 = red; color may be a table like {r = 255, g = 255, b = 255}.
---@param tts boolean
function TensorCore.addAlertText(duration, text, scale, priority, tts) end

---Displays an in-game raid warning, similar to the game's built-in raid alerts.
---@param text string Text to display.
---@param warningType integer Raid warning type. 0 = Danger, 1 = Info.
---@param duration number Duration in seconds.
function TensorCore.showRaidWarning(text, warningType, duration) end

---Returns a cached drawer for the given drawing settings. The returned drawer may be modified freely.
---@param colorStart u32color? If not using timed draws, this can be left nil, only colorEnd will be used for frame draws
---@param colorMid u32color? If not specified, colorMid is ignored in timed draws and goes colorStart -> colorEnd. Frame draws only use colorEnd
---@param colorEnd u32color Required for timed draws and frame draws.
---@param colorOutline u32color?
---@param outlineThickness number? Default = 1.5.
---@param occlusionChannel integer? Default = 0. Raw zero-based channel index; valid range is 0..31.
---@param renderFlags ArgusRenderFlags? Default = Argus2.RenderFlags.FLAG_WARP_TERRAIN. Render flags used by the returned drawer.
---@return ShapeDrawer
function TensorCore.getCachedDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness, occlusionChannel, renderFlags) end

---Returns a cached enemy-colored drawer using current Moogle Telegraphs settings, including TerrainWarpHeightOffset.
---@param occlusionChannel integer? Default = 0. Raw zero-based channel index; valid range is 0..31.
---@param renderFlags ArgusRenderFlags? If nil, uses the current Moogle Telegraphs enemy render flags. Render flags used by the returned drawer.
---@return ShapeDrawer
function TensorCore.getMoogleDrawer(occlusionChannel, renderFlags) end

---Returns a cached flat enemy-colored drawer using current Moogle Telegraphs settings, including TerrainWarpHeightOffset.
---@param occlusionChannel integer? Default = 0. Raw zero-based channel index; valid range is 0..31.
---@param renderFlags ArgusRenderFlags? If nil, uses the current Moogle Telegraphs enemy render flags. Render flags used by the returned drawer.
---@return ShapeDrawer
function TensorCore.getMoogleFlatDrawer(occlusionChannel, renderFlags) end

---Returns a drawer that simply contains 1 static color.
---@param color u32color
---@param outlineThickness number?
---@param occlusionChannel integer? Default = 0. Raw zero-based channel index; valid range is 0..31.
---@param renderFlags ArgusRenderFlags? Default = Argus2.RenderFlags.FLAG_WARP_TERRAIN. Render flags used by the returned drawer.
---@return ShapeDrawer
function TensorCore.getStaticDrawer(color, outlineThickness, occlusionChannel, renderFlags) end

---Returns a flat drawer that simply contains 1 static color.
---@param color u32color
---@param outlineThickness number?
---@param occlusionChannel integer? Default = 0. Raw zero-based channel index; valid range is 0..31.
---@param renderFlags ArgusRenderFlags? Default = Argus2.RenderFlags.FLAG_WARP_TERRAIN. Render flags used by the returned drawer.
---@return ShapeDrawer
function TensorCore.getStaticFlatDrawer(color, outlineThickness, occlusionChannel, renderFlags) end

---Returns a cached flat drawer for the given drawing settings. The returned drawer may be modified freely.
---@param colorStart u32color? If not using timed draws, this can be left nil, only colorEnd will be used for frame draws
---@param colorMid u32color? If not specified, colorMid is ignored in timed draws and goes colorStart -> colorEnd. Frame draws only use colorEnd
---@param colorEnd u32color Required for timed draws and frame draws.
---@param colorOutline u32color?
---@param outlineThickness number? Default = 1.5.
---@param occlusionChannel integer? Default = 0. Raw zero-based channel index; valid range is 0..31.
---@param renderFlags ArgusRenderFlags? Default = Argus2.RenderFlags.FLAG_WARP_TERRAIN. Render flags used by the returned drawer.
---@return ShapeDrawer
function TensorCore.getCachedFlatDrawer(colorStart, colorMid, colorEnd, colorOutline, outlineThickness, occlusionChannel, renderFlags) end

---@class TensorCoreAPI
TensorCore.API = TensorCore.API or {}

---@class TensorReactions
TensorCore.API.TensorReactions = TensorCore.API.TensorReactions or {}

---Returns list of current inherited profiles for the active timeline profile.
---@return table names
function TensorCore.API.TensorReactions.getTimelineReactionProfileInheritedProfiles() end

---Returns list of current inherited profiles for the active general profile.
---@return table names
function TensorCore.API.TensorReactions.getGeneralReactionProfileInheritedProfiles() end

---Returns the name of the current timeline reaction profile.
---@return string name
function TensorCore.API.TensorReactions.getTimelineReactionProfileName() end

---Returns the name of the current general reaction profile.
---@return string name
function TensorCore.API.TensorReactions.getGeneralReactionProfileName() end

---Reloads the general reaction profiles.
function TensorCore.API.TensorReactions.reloadGeneralReactions() end

---Reloads the timeline reaction profiles.
function TensorCore.API.TensorReactions.reloadTimelineReactions() end

---@class TensorACR
TensorCore.API.TensorACR = TensorCore.API.TensorACR or {}

---Specifies the heading for lock face.
---@param radians number The heading in radians.
function TensorCore.API.TensorACR.setLockFaceHeading(radians) end

---@param enabled boolean Sets the value of lock face to be this.
function TensorCore.API.TensorACR.setHardLockFace(enabled) end

---Toggles the lock face option for the current acr.
---@param toggle boolean
function TensorCore.API.TensorACR.toggleLockFace(toggle) end

---Changes tank stance to specified state.
---@param stance string mt or ot are possible values.
function TensorCore.API.TensorACR.toggleTankStance(stance) end

---If id is 846, it will hold pot.
---Note: time is in ms, not s.
---Holds until a specific time, numCharges specifies how many charges to hold.
---For example, holding 2 charges of Gauss Round will let the ACR dump the 3rd charge but won't use the remaining 2 charges until your specified time.
---@param id integer
---@param time integer
---@param numCharges? integer|nil
function TensorCore.API.TensorACR.holdActionUntil(id, time, numCharges) end

---Holds for x seconds + however long the cd is.
---@param id integer
---@param seconds number
---@param numCharges? integer|nil
function TensorCore.API.TensorACR.holdActionFor(id, seconds, numCharges) end

---Adjusts the effective cast range of an action.
---The specified value is added to the action's original range.
---Pass 0 to restore the default range.
---@param spellID integer Action ID.
---@param value number Range adjustment in yalms.
function TensorCore.API.TensorACR.setActionRangeAdjustByID(spellID, value) end

---Gets the next positional requirement and the absolute time it should be reached.
---@return "none"|"flank"|"rear" position
---@return number time Absolute Now()-based timestamp for the next positional.
function TensorCore.API.TensorACR.getNextPositional() end

---@param spellID integer
---@param enabled boolean If true, blacklists the spell from Ignore Dash Movement. If false, removes it from the blacklist.
function TensorCore.API.TensorACR.setIgnoreDashSpellBlacklist(spellID, enabled) end

---ACR toggle manipulation.
---Example usage: TensorCore.API.TensorACR.setHotbarEnabled("ACR_TensorMagnum3_Hotbar_DutyAction1", false)
---@param var string
---@param enabled boolean
function TensorCore.API.TensorACR.setQTEnabled(var, enabled) end

---@param var string
---@param enabled boolean
function TensorCore.API.TensorACR.setHotbarEnabled(var, enabled) end

---@param var string
---@param enabled boolean
function TensorCore.API.TensorACR.setTankbarEnabled(var, enabled) end

---@param var string
---@param enabled boolean
function TensorCore.API.TensorACR.setHealbarEnabled(var, enabled) end

---@class blacklistEntry
---@field enabled boolean
---@field allowIfTarget boolean
---@field allowSmartDoT boolean
---@field name string

---@class TensorACR
TensorCore.API.TensorACR = TensorCore.API.TensorACR or {}

---Returns the blacklist entry for the specified ContentID.
---@param contentid number
---@return blacklistEntry|nil entry
function TensorCore.API.TensorACR.getBlacklistEntry(contentid) end

---Adds ContentID to the blacklist and returns the created blacklist entry.
---@param contentid number
---@return blacklistEntry entry
function TensorCore.API.TensorACR.addBlacklistEntry(contentid) end

---Deletes ContentID from the blacklist if it exists.
---@param contentid number
function TensorCore.API.TensorACR.deleteBlacklistEntry(contentid) end

---@class aoeBlacklistEntry
---@field enabled boolean
---@field name string

---Adds ContentID to the AoE blacklist and returns the created blacklist entry.
---@param contentid number
---@return aoeBlacklistEntry entry
function TensorCore.API.TensorACR.addAOEBlacklistEntry(contentid) end

---Loads the AoE blacklist from disk.
function TensorCore.API.TensorACR.loadAOEBlacklist() end

---Deletes ContentID from the AoE blacklist if it exists.
---@param contentid number
function TensorCore.API.TensorACR.deleteAOEBlacklistEntry(contentid) end

---Returns true if ContentID is in the AoE blacklist and enabled.
---@param contentid number
---@return boolean blacklisted
function TensorCore.API.TensorACR.isAOEBlacklisted(contentid) end

---Saves the AoE blacklist to disk.
function TensorCore.API.TensorACR.saveAOEBlacklist() end

---NOTE: Tankbar/Healbar funcs only exist if they are on that respective job.
---Hotbar funcs should exist on all jobs.
---TensorCore.API.TensorACR resolves to the currently active CR automatically.

---Returns the current hover-target entity ID for a hotbar variable.
---@param var string
---@return integer? entityID
function TensorCore.API.TensorACR.getHotbarHoverTarget(var) end

---Returns the current hover-target entity ID for a tankbar variable.
---@param var string
---@return integer? entityID
function TensorCore.API.TensorACR.getTankbarHoverTarget(var) end

---Returns the current hover-target entity ID for a healbar variable.
---@param var string
---@return integer? entityID
function TensorCore.API.TensorACR.getHealbarHoverTarget(var) end

---Sets the hover-target entity ID for a hotbar variable.
---@param var string
---@param targetID integer?
function TensorCore.API.TensorACR.setHotbarHoverTarget(var, targetID) end

---Sets the hover-target entity ID for a tankbar variable.
---@param var string
---@param targetID integer?
function TensorCore.API.TensorACR.setTankbarHoverTarget(var, targetID) end

---Sets the hover-target entity ID for a healbar variable.
---@param var string
---@param targetID integer?
function TensorCore.API.TensorACR.setHealbarHoverTarget(var, targetID) end

---Returns the current mouse world position for a hotbar variable.
---@param var string
---@return number? x
---@return number? y
---@return number? z
function TensorCore.API.TensorACR.getHotbarMouseWorldPos(var) end

---Returns the current mouse world position for a tankbar variable.
---@param var string
---@return number? x
---@return number? y
---@return number? z
function TensorCore.API.TensorACR.getTankbarMouseWorldPos(var) end

---Returns the current mouse world position for a healbar variable.
---@param var string
---@return number? x
---@return number? y
---@return number? z
function TensorCore.API.TensorACR.getHealbarMouseWorldPos(var) end

---Sets the mouse world position for a hotbar variable.
---@param var string
---@param x number
---@param y number
---@param z number
function TensorCore.API.TensorACR.setHotbarMouseWorldPos(var, x, y, z) end

---Sets the mouse world position for a tankbar variable.
---@param var string
---@param x number
---@param y number
---@param z number
function TensorCore.API.TensorACR.setTankbarMouseWorldPos(var, x, y, z) end

---Sets the mouse world position for a healbar variable.
---@param var string
---@param x number
---@param y number
---@param z number
function TensorCore.API.TensorACR.setHealbarMouseWorldPos(var, x, y, z) end

---Returns whether the currently drawn Minor Arcana is Lord of Crowns.
---This function resolves to the currently loaded ACR module (for example, RikuAST3 when playing Astrologian).
---@return boolean drawn
function TensorCore.API.TensorACR.isLordOfCrownsDrawn() end

---Returns whether the currently drawn Minor Arcana is Lady of Crowns.
---This function resolves to the currently loaded ACR module (for example, RikuAST3 when playing Astrologian).
---@return boolean drawn
function TensorCore.API.TensorACR.isLadyOfCrownsDrawn() end

---Returns whether the active Red Mage ACR is currently in a melee combo.
---When `meleeOnly` is true, only the melee weaponskill combo is considered.
---Verflare, Verholy, Scorch, and Resolution do not count.
---@param meleeOnly? boolean
---@return boolean inCombo
function TensorCore.API.TensorACR.inMeleeCombo(meleeOnly) end

---Prevents Arcane Crest from being automatically used in response to the specified enemy action.
---@param spellID integer Action ID to blacklist.
function TensorCore.API.TensorACR.addArcaneCrestBlacklistEntry(spellID) end

---Removes an enemy action from the Arcane Crest blacklist.
---@param spellID integer Action ID to remove.
function TensorCore.API.TensorACR.removeArcaneCrestBlacklistEntry(spellID) end

---Prevents Third Eye from being automatically used in response to the specified enemy action.
---@param spellID integer Action ID to blacklist.
function TensorCore.API.TensorACR.addThirdEyeBlacklistEntry(spellID) end

---Removes an enemy action from the Third Eye blacklist.
---@param spellID integer Action ID to remove.
function TensorCore.API.TensorACR.removeThirdEyeBlacklistEntry(spellID) end

---@class Avoidance
TensorCore.Avoidance = TensorCore.Avoidance or {}

---Returns whether the specified target can be safely dashed to without intersecting avoidable AOEs.
---@param target Entity|integer Target entity or entity ID. !! THIS NEEDS CHECKING
---@param checkReturn? boolean Also verify that the return path is safe.
---@return boolean safe
function TensorCore.Avoidance.canSafeDash(target, checkReturn) end

---@param x number
---@param y number
---@param z number
---@return boolean inAoe
function TensorCore.Avoidance.inAnyAOE(x, y, z) end

---@param id integer The id of the entity to check.
---@return boolean inUnavoidableAoe
function TensorCore.Avoidance.inUnavoidableAOE(id) end

---@param c_x number Current x position.
---@param c_y number Current y position.
---@param c_z number Current z position.
---@param origin_x number Origin x position.
---@param origin_y number Origin y position.
---@param origin_z number Origin z position.
---@param speed number Linear instantaneous speed, TensorCore.getEntitySpeed(entid).
---@param dir_x number Linear direction x component.
---@param dir_y number Linear direction y component.
---@param dir_z number Linear direction z component.
---@param time number
---@return number x
---@return number y
---@return number z
function TensorCore.Avoidance.predictOrbitPosition(c_x, c_y, c_z, origin_x, origin_y, origin_z, speed, dir_x, dir_y, dir_z, time) end
