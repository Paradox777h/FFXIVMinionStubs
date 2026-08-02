---@meta

---@diagnostic disable: missing-fields, duplicate-doc-field, duplicate-doc-alias

---@alias u32color integer Integer color value used in Argus functions. Use GUI:ColorConvertFloat4ToU32(r, g, b, a) where r/g/b/a are [0,1].
---@alias EntityRef integer|table Entity ID or Entity table/object.

---@class rgbFill Structure used for old Argus timed draws.
---@field r number [0,1]
---@field g number [0,1]
---@field b number [0,1]
---@field a number [0,1]

---@class aoeAnimationInfo Structure that contains information about an aoe's animation. Useful in case there is additional info that can be grabbed to determine cone width/donut inner radius.
---@field aoeAnimationTypeStart integer
---@field aoeAnimationTypeEnd integer
---@field aoeAnimationTimelineHit integer
---@field aoeCastVFX integer

---@class aoeEffectInfo Structure that contains information about an omen/telegraph. Useful for identifying cone width and donut inner radius for telegraphed aoes.
---@field aoeEffectName string Name of omen.
---@field aoeEffectCastType integer If non-zero, the game overrides the original aoeCastType with this castType value internally. Argus already updates the original aoeCastType value correctly, so this field can generally be ignored.
---@field aoeEffectRestrictYScale boolean If true, the aoe will be 10% of its original size. Argus already adjusts the original aoe size values correctly, so this field can generally be ignored.
---@field aoeEffectLargeScale integer Some value that changes internal orientation for drawing telegraph effects. Argus already handles this internally, so it can generally be ignored.

---@class GroundAOE Structure for Ground AOEs that are not usually attached to any entity.
---@field x number X position of aoe.
---@field y number Y position of aoe.
---@field z number Z position of aoe.
---@field aoeType integer Animation/omen type of aoe.
---@field aoeLength integer Length/radius in yalms of aoe.
---@field aoeWidth integer Width in yalms of aoe; 0 for circles and cones.
---@field aoeName string Name of aoe.
---@field aoeID integer Cast/Spell ID of aoe.
---@field aoeCastType integer Cast type/shape of AOE. See castType for known values.
---@field targetAttach integer|nil ID of entity that current aoe is attached to, if found. Value is nil otherwise.
---@field aoeAnimationInfo aoeAnimationInfo Contains information about the animation that will play when the aoe completes and gets casted.
---@field aoeEffectInfo aoeEffectInfo Contains information about the aoe's omen/telegraph.
---@field isAreaTarget boolean If the spell is a free target ability or not; useful for identifying aoes that will attach to target or not.

---@class DirectionalAOE : GroundAOE Structure for directional AOEs that are usually originating from an entity.
---@field heading number Direction the AOE is facing.

---@class TetherInfo
---@field type integer Tether type/id.
---@field targetID integer Target entity ID.
---@field targetid integer Target entity ID; docs usage uses lowercase.
---@field partnerid integer Partner entity ID.

---@alias onAOECreateFunc fun(aoe: GroundAOE|DirectionalAOE)
---@alias onEntityCastFunc fun(entityID: integer, actionID: integer, castPosX: number|nil, castPosY: number|nil, castPosZ: number|nil, heading: number, mainTargetID: number, targets: table)
---@alias onEntityChannelFunc fun(entityID: integer, channelID: integer, targetID: integer, channelTimeMax: number)
---@alias onEventObjectScript2Func fun(entityID: integer, a2: integer, a3: integer)
---@alias onEventObjectScriptFunc fun(entityID: integer, a2: integer, a3: integer, a4: integer)
---@alias onFloorChangeFunc fun(a1: integer, a2: integer, a3: integer)
---@alias onMapEffectFunc fun(a1: integer, a2: integer, a3: integer)
---@alias onMarkerAddFunc fun(entityID: integer, markerType: integer)
---@alias onTetherChangeFunc fun(sourceEntityID: integer, oldTetherID: integer, oldTetherFlags: integer, oldTargetID: integer, newTetherID: integer, newTetherFlags: integer, newTargetID: integer)
---@alias onAddGroundEffectFunc fun(entityID: integer, type: integer, flags: integer, type2: integer, keyID: integer, a1: integer, a2: integer, a4: integer, ownerID: integer, a3: integer, radius: number, heading: number, flags2: integer, type3: integer, state: integer, a5: integer, x: number, y: number, z: number)

---Known castType values: [2,5,7] Circle AOE; [3,13] Directional Cone/arc AOE; [4,12] Directional Line AOE; [6] Meteor mechanic; [8] Line AOE targeted to a position or entity; [10] Donut AOE; [11] Cross AOE.
castType = {}

---@class Argus
Argus = Argus or {}

---Draw a filled arrow on the ground at world coordinates for this frame. The arrow base/bottom is centered on x,y,z, and then rotated such that there is an arrow facing the specified heading.
---@param x number
---@param y number
---@param z number
---@param length number Length of the base rectangle of the arrow.
---@param baseWidth number Width of the base rectangle of the arrow.
---@param tipLength number Length of the tip triangle of the arrow.
---@param tipWidth number Width of the tip triangle of the arrow.
---@param heading number The direction the arrow will point towards in radians.
---@param colorFill u32color Fill color. If nil, no fill will be drawn.
---@param colorOutline? u32color U32 color for outline. If unspecified, an outline is not drawn.
---@param outlineThickness? number Default 1.0.
---@param gradientIntensity? integer Default 3.
---@param gradientMinOpacity? number Default 0.05.
---@param oldDraw? boolean If true, use the old draw method.
function Argus.addArrowFilled(x, y, z, length, baseWidth, tipLength, tipWidth, heading, colorFill, colorOutline, outlineThickness, gradientIntensity, gradientMinOpacity, oldDraw) end

---Draw a filled chevron on the ground at world coordinates for this frame. The chevron base/bottom is centered on x,y,z, and then rotated such that it is pointing towards specified heading.
---@param x number
---@param y number
---@param z number
---@param length number
---@param thickness number Width of the base rectangle of the arrow.
---@param heading number The direction the chevron will point towards in radians.
---@param colorFill u32color Fill color. If nil, no fill will be drawn.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@param gradientIntensity? integer Default 3.
---@param gradientMinOpacity? number Default 0.05.
---@param oldDraw? boolean If true, use the old draw method.
function Argus.addChevronFilled(x, y, z, length, thickness, heading, colorFill, colorOutline, outlineThickness, gradientIntensity, gradientMinOpacity, oldDraw) end

---Draw a filled circle on the ground at world coordinates for this frame.
---@param x number
---@param y number
---@param z number
---@param radius number Radius of the circle in yalms.
---@param segments integer Number of segments for the circle. Generally only 50 segments is needed; not recommended above 50 for performance.
---@param colorFill u32color Fill color. If nil, no fill will be drawn.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@param gradientIntensity? integer Default 3.
---@param gradientMinOpacity? number Default 0.05.
---@param oldDraw? boolean If true, use the old draw method.
function Argus.addCircleFilled(x, y, z, radius, segments, colorFill, colorOutline, outlineThickness, gradientIntensity, gradientMinOpacity, oldDraw) end

---Draw a timed cone on the ground at world coordinates for this frame. The cone originates from x,y,z, and will go in the direction of heading.
---@param x number
---@param y number
---@param z number
---@param radius number If the cone was a circle instead, this gives the radius of that circle; basically the length of the cone.
---@param angle number Arc angle of the cone in radians.
---@param heading number The direction the cone will face in radians.
---@param segments integer Generally only 30 segments is needed; not recommended above 30 for performance.
---@param colorFill u32color Fill color. If nil, no fill will be drawn.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@param gradientIntensity? integer Default 4.
---@param gradientMinOpacity? number Default 0.05.
---@param oldDraw? boolean If true, use the old draw method.
function Argus.addConeFilled(x, y, z, radius, angle, heading, segments, colorFill, colorOutline, outlineThickness, gradientIntensity, gradientMinOpacity, oldDraw) end

---Draw a filled cross on the ground at world coordinates for this frame. The cross is centered on x,y,z, and then rotated such that there is a rectangle facing the specified heading.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number The direction the cross will face in radians.
---@param colorFill u32color Fill color. If nil, no fill will be drawn.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@param gradientIntensity? integer Default 4.
---@param gradientMinOpacity? number Default 0.05.
---@param oldDraw? boolean If true, use the old draw method.
function Argus.addCrossFilled(x, y, z, length, width, heading, colorFill, colorOutline, outlineThickness, gradientIntensity, gradientMinOpacity, oldDraw) end

---Draw a filled donut (torus) on the ground at world coordinates for this frame.
---@param x number
---@param y number
---@param z number
---@param radiusInner number Inner radius of the donut.
---@param radiusOuter number Outer radius of the donut.
---@param segments integer Number of segments for the circle. Generally only 50 segments is needed.
---@param colorFill u32color Fill color. If nil, no fill will be drawn.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@param gradientIntensity? integer Default 2.
---@param gradientMinOpacity? number Default 0.15.
---@param oldDraw? boolean If true, use the old draw method.
function Argus.addDonutFilled(x, y, z, radiusInner, radiusOuter, segments, colorFill, colorOutline, outlineThickness, gradientIntensity, gradientMinOpacity, oldDraw) end

---Draw a timed line between two world coordinate positions for this frame.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param colorFill u32color
---@param outlineThickness number
---@param endpointThickness number
function Argus.addLineFilled(x1, y1, z1, x2, y2, z2, colorFill, outlineThickness, endpointThickness) end

---Draw a filled rectangle on the ground at world coordinates for this frame. The rectangle originates from x,y,z, and goes width/2 yalms out in each direction, then length yalms in the direction of heading.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number The direction the rectangle will face in radians.
---@param colorFill u32color Fill color. If nil, no fill will be drawn.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Optional.
---@param ignoreBase? boolean If true, Argus will not draw the outline connecting the base of the rectangle. Default false.
---@param gradientIntensity? integer Default 4.
---@param gradientMinOpacity? number Default 0.05.
---@param oldDraw? boolean If true, use the old draw method.
function Argus.addRectFilled(x, y, z, length, width, heading, colorFill, colorOutline, outlineThickness, ignoreBase, gradientIntensity, gradientMinOpacity, oldDraw) end

---THIS FUNCTION IS DEPRECATED. Use Argus2.addTimedCircleFilled instead. Draw a filled circle on the ground at world coordinates for a specified duration.
---@param timeout integer Duration of the draw.
---@param x number
---@param y number
---@param z number
---@param radius number Radius of the circle in yalms.
---@param segments integer Number of segments for the circle.
---@param rgbFill rgbFill
---@param alphaMin number Starting alpha value [0,1].
---@param alphaMax number Ending alpha value [0,1].
---@param delay? integer Time in milliseconds to wait before the draw is shown. Default 0.
---@param entityAttachID? integer Attach to specified entity ID.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@return string uuid See Argus.deleteTimedShape.
function Argus.addTimedCircleFilled(timeout, x, y, z, radius, segments, rgbFill, alphaMin, alphaMax, delay, entityAttachID, colorOutline, outlineThickness) end

---THIS FUNCTION IS DEPRECATED. Use Argus2.addTimedConeFilled instead. Draw a filled cone on the ground at world coordinates for a specified duration.
---@param timeout integer Duration of the draw.
---@param x number
---@param y number
---@param z number
---@param radius number Length/radius of the cone.
---@param angle number Arc angle of the cone in radians.
---@param heading number The direction the cone will face in radians.
---@param segments integer Number of segments.
---@param rgbFill rgbFill
---@param alphaMin number Starting alpha value [0,1].
---@param alphaMax number Ending alpha value [0,1].
---@param delay? integer Default 0.
---@param entityAttachID? integer Attach to specified entity ID.
---@param targetAttachID? integer If specified, the cone stops at targetAttach entity.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@return string uuid See Argus.deleteTimedShape.
function Argus.addTimedConeFilled(timeout, x, y, z, radius, angle, heading, segments, rgbFill, alphaMin, alphaMax, delay, entityAttachID, targetAttachID, colorOutline, outlineThickness) end

---THIS FUNCTION IS DEPRECATED. Use Argus2.addTimedCrossFilled instead. Draw a filled cross on the ground at world coordinates for a specified duration.
---@param timeout integer Duration of the draw.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number The direction the cross will face in radians.
---@param rgbFill rgbFill
---@param alphaMin number Starting alpha value [0,1].
---@param alphaMax number Ending alpha value [0,1].
---@param delay? integer Default 0.
---@param entityAttachID? integer Attach to specified entity ID.
---@param targetAttachID? integer If specified, drawn to targetAttach entity.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@return string uuid See Argus.deleteTimedShape.
function Argus.addTimedCrossFilled(timeout, x, y, z, length, width, heading, rgbFill, alphaMin, alphaMax, delay, entityAttachID, targetAttachID, colorOutline, outlineThickness) end

---THIS FUNCTION IS DEPRECATED. Use Argus2.addTimedDonutFilled instead. Draw a filled donut on the ground at world coordinates for a specified duration.
---@param timeout integer Duration of the draw.
---@param x number
---@param y number
---@param z number
---@param radiusInner number Inner radius of the donut.
---@param radiusOuter number Outer radius of the donut.
---@param segments integer Number of segments.
---@param rgbFill rgbFill
---@param alphaMin number Starting alpha value [0,1].
---@param alphaMax number Ending alpha value [0,1].
---@param delay? integer Default 0.
---@param entityAttachID? integer Attach to specified entity ID.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@return string uuid See Argus.deleteTimedShape.
function Argus.addTimedDonutFilled(timeout, x, y, z, radiusInner, radiusOuter, segments, rgbFill, alphaMin, alphaMax, delay, entityAttachID, colorOutline, outlineThickness) end

---THIS FUNCTION IS DEPRECATED. Use Argus2.addTimedLineFilled instead. Draw a filled line between two world coordinate positions for a specified duration.
---@param timeout integer Duration of the draw.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param delay? integer Default 0.
---@param rgbFill rgbFill Color of line.
---@param outlineThickness number
---@param endpointThickness number
---@return string uuid See Argus.deleteTimedShape.
function Argus.addTimedLineFilled(timeout, x1, y1, z1, x2, y2, z2, delay, rgbFill, outlineThickness, endpointThickness) end

---THIS FUNCTION IS DEPRECATED. Use Argus2.addTimedRectFilled instead. Draws a filled rectangle on the ground for a specified duration.
---@param timeout integer Duration of the draw.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number The direction the rectangle will face in radians.
---@param rgbFill rgbFill
---@param alphaMin number Starting alpha value [0,1].
---@param alphaMax number Ending alpha value [0,1].
---@param delay? integer Default 0.
---@param entityAttachID? integer Attach to specified entity ID.
---@param targetAttachID? integer If specified, rectangle stops at targetAttach entity.
---@param keepLength? boolean If specified with targetAttach, length stays constant. Default false.
---@param colorOutline? u32color U32 color for outline.
---@param outlineThickness? number Default 1.0.
---@return string uuid See Argus.deleteTimedShape.
function Argus.addTimedRectFilled(timeout, x, y, z, length, width, heading, rgbFill, alphaMin, alphaMax, delay, entityAttachID, targetAttachID, keepLength, colorOutline, outlineThickness) end

---Deletes a timed draw given a uuid.
---@param uuid? string If nil, all timed draws will be deleted.
function Argus.deleteTimedShape(uuid) end

---Returns the current animation ID for an entity.
---@param entityID integer
---@param index integer Animation slot index (1-Argus.GetMaxEntityAnimations()).
---@return integer animationID
function Argus.getEntityAnimation(entityID, index) end

---Returns the maximum number of animation slots per entity.
---Currently returns 14.
---@return integer maxEntityAnimations
function Argus.GetMaxEntityAnimations() end

---Returns information about an animation.
---Currently only the animation name is exposed.
---@param animationID integer
---@return string? name
function Argus.getAnimationInfo(animationID) end

---Normal movement options in minion will not move the player when under misdirection. This allows you to start/stop movement while under misdirection.
---@param value boolean true to start movement, false or nil to stop movement.
---@return boolean|nil value Returns the value set if successful, nil if not.
function Argus.forceMisdirectionMovement(value) end

---Returns a merged list of GroundAOEs and DirectionalAOEs. Due to the nature of this function, this list is always in order.
---@return (GroundAOE|DirectionalAOE)[] aoes Merged list of GroundAOEs and DirectionalAOEs.
function Argus.getCurrentAOEs() end

---Returns list of current AOEs that are cast on the ground where each key is the entityID source, and value is the DirectionalAOE structure.
---@param inOrder? boolean If true, returns in order of appearance instead of entityID keys. Default false.
---@return table<integer, DirectionalAOE>|DirectionalAOE[] aoes List of DirectionalAOE, keys based on inOrder.
function Argus.getCurrentDirectionalAOEs(inOrder) end

---Returns list of current AOEs that are on the ground where each key is the entityID source, and value is the DirectionalAOE.
---@param inOrder? boolean If true, returns in order of appearance instead of entityID keys. Default false.
---@return table<integer, GroundAOE>|GroundAOE[] aoes List of GroundAOE, keys based on inOrder.
function Argus.getCurrentGroundAOEs(inOrder) end

---Returns table where each key is number entityID and each value is table tethers.
---@return table<integer, TetherInfo[]> tethers List where each key is entityID and each value is table of tethers.
function Argus.getCurrentTethers() end

---Returns the current auras on the target entity. This function returns 3 values: persistentAura, activeAura1, activeAura2.
---@param ent EntityRef Entity Object or entity ID to check.
---@return integer persistentAura
---@return integer activeAura1
---@return integer activeAura2
function Argus.getEntityAuras(ent) end

---Sometimes contentid isn't enough to distinguish an entity, in which case this function provides a subcontentid.
---@param ent EntityRef Entity Object or entity ID to check.
---@return integer modelID
function Argus.getEntityModel(ent) end

---Get misdirection heading. For buffs where the finger points above the player's head and the player is forced to go in that direction.
---@return number heading Heading in radians, between -pi and +pi, same format as the game.
function Argus.getMisdirectionHeading() end

---Returns a structure similar to DirectionalAOE or GroundAOE but without instance specific data.
---@param id any
---@return table info
function Argus.getSpellAOEInfo(id) end

---Returns a list of tethers that are attached to entity. Each tether object has .type and .partnerid.
---@param entityID integer ID of the entity to get tethers for.
---@return TetherInfo[] tethers List of tethers attached to entity.
function Argus.getTethersOnEnt(entityID) end

---Returns information about the marker.
---@param markerID integer Same spell ID from ActionList type 15.
---@return number x
---@return number y
---@return number z
---@return boolean isActive
---@return integer timeLastModify
function Argus.getWaymarkInfo(markerID) end

---Returns whether or not the entity is visible to the player.
---@param ent EntityRef Entity Object or entity ID to check.
---@return boolean visible True if entity is visible to the player, false if not.
function Argus.isEntityVisible(ent) end

---Registers func into on aoe create func list. Called whenever a directional or ground aoe is created. Must be called in your Module.Initialize handler, not when your file loads.
---@param func onAOECreateFunc
function Argus.registerOnAOECreateFunc(func) end

---Registers func into entity cast func list. Called any time the server sends a successful entity cast packet to the client. Must be called in your Module.Initialize handler.
---@param func onEntityCastFunc
function Argus.registerOnEntityCast(func) end

---Registers func into entity channel func list. Called any time the server sends a packet that an entity has begun channeling. Must be called in your Module.Initialize handler.
---@param func onEntityChannelFunc
function Argus.registerOnEntityChannel(func) end

---Registers func into on event object script2 func list. Called when event entities perform certain scripted events. Must be called in your Module.Initialize handler.
---@param func onEventObjectScript2Func
function Argus.registerOnEventObjectScript2Func(func) end

---Registers func into on event object script func list. Called when event entities perform certain scripted events. Must be called in your Module.Initialize handler.
---@param func onEventObjectScriptFunc
function Argus.registerOnEventObjectScriptFunc(func) end

---Registers func into on floor change func list. Called whenever the ground floor itself changes texture. Must be called in your Module.Initialize handler.
---@param func onFloorChangeFunc
function Argus.registerOnFloorChangeFunc(func) end

---Registers func into on map effect func list. Called any time a visual map effect happens. Must be called in your Module.Initialize handler.
---@param func onMapEffectFunc
function Argus.registerOnMapEffect(func) end

---Registers func into marker func list; called any time an overhead marker is added to an entity. Must be called in your Module.Initialize handler.
---@param func onMarkerAddFunc
function Argus.registerOnMarkerAdd(func) end

---Registers func into on tether change func list. Called any time tether id, tether flags, or tether target id changes for a given entity. Must be called in your Module.Initialize handler.
---@param func onTetherChangeFunc
function Argus.registerOnTetherChange(func) end

---Registers func into the ground effect callback list. Called whenever the client receives a ground effect creation packet. Must be called in your Module.Initialize handler.
---@param func onAddGroundEffectFunc
function Argus.registerOnAddGroundEffectFunc(func) end

---Set misdirection heading. For buffs where the finger points above the player's head and can be adjusted with movement.
---@param value number Heading in radians, between -pi and +pi, same format as the game.
function Argus.setMisdirectionHeading(value) end

---@param markerID integer Same markerid that you see in the event for onMarkerAdd
function Argus.addPlayerMarker(markerID) end

---@param spellID integer
---@param typeIndex integer # 0 for aoeType0, 1 for aoeType1
---@return integer? aoeType
function Argus.getActionAOEType(spellID, typeIndex) end

---Setting both type index 0 and type index 1 to 0 disables the in-game omen VFX for this spell.
---@param spellID integer
---@param typeIndex integer # 0 for aoeType0, 1 for aoeType1
---@param newType integer
---@return boolean success
function Argus.setActionAOEType(spellID, typeIndex, newType) end

---@alias ArgusTimedDrawShapeType
---| "circle"
---| "rect"
---| "centeredrect"
---| "cone"
---| "donut"
---| "donutcone"
---| "cross"
---| "texture"
---| "linesegment"
---| "arrow"
---| "chevron"

---Returns the number of active timed draws.
---@return integer count
function Argus.getNumTimedDraws() end

---@param index integer
---@return number? length
---@return number? baseWidth
---@return number? tipLength
---@return number? tipWidth
---@return number? heading
function Argus.getTimedArrowInfo(index) end

---@param index integer
---@return number? length
---@return number? width
---@return number? heading
function Argus.getTimedCenteredRectInfo(index) end

---@param index integer
---@return number? length
---@return number? thickness
---@return number? heading
function Argus.getTimedChevronInfo(index) end

---@param index integer
---@return number? radius
---@return integer? segments
function Argus.getTimedCircleInfo(index) end

---@param index integer
---@return number? radius
---@return number? angle
---@return number? heading
---@return integer? segments
function Argus.getTimedConeInfo(index) end

---@param index integer
---@return number? length
---@return number? width
---@return number? heading
function Argus.getTimedCrossInfo(index) end

---@param index integer
---@return number? radiusInner
---@return number? radiusOuter
---@return number? angle
---@return number? heading
---@return integer? segments
function Argus.getTimedDonutConeInfo(index) end

---@param index integer
---@return number? radiusInner
---@return number? radiusOuter
---@return integer? segments
function Argus.getTimedDonutInfo(index) end

---Returns base fields for the active timed draw at index.
---If the draw is attached to a valid entity, x/y/z are the current entity position.
---@param index integer
---@return ArgusTimedDrawShapeType? shapeType
---@return number? x
---@return number? y
---@return number? z
---@return integer? startTime
---@return number? duration
---@return number? delay
---@return string? uuid
---@return u32color? colorStart
---@return u32color? colorEnd
function Argus.getTimedDrawBaseInfo(index) end
---@param index integer
---@return integer? entityAttach
---@return integer? targetAttach
---@return boolean? keepLength
---@return boolean? keepHeading
---@return number? headingOffset
---@return u32color? colorMid
---@return u32color? colorOutline
---@return number? outlineThickness
---@return number? gradientDistance
---@return number? gradientMinOpacity
---@return number? gradientIntensity
---@return boolean? oldDraw
---@return boolean? doNotDetect
---@return ArgusRenderFlags? renderFlags
---@return integer? occlusionChannel
---@return number? pitch
---@return number? roll
---@return number? heightOffset
function Argus.getTimedDrawOptArgs(index) end

---@param index integer
---@return number? x2
---@return number? y2
---@return number? z2
---@return number? endpointThickness
function Argus.getTimedLineSegmentInfo(index) end

---@param index integer
---@return number? length
---@return number? width
---@return number? heading
function Argus.getTimedRectInfo(index) end

---@param index integer
---@return number? heading
---@return string? filename
---@return number? imageSizeX
---@return number? imageSizeY
---@return number? sizeX
---@return number? sizeY
---@return boolean? cameraFacing
function Argus.getTimedTextureInfo(index) end
