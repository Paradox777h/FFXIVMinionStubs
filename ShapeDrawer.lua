---@meta

---@diagnostic disable: missing-fields, duplicate-doc-field, duplicate-doc-alias

Argus2 = Argus2 or {}
Argus2.ShapeDrawer = Argus2.ShapeDrawer or {}

---@class ShapeDrawer
---@field colorStart u32color?
---@field colorMid u32color?
---@field colorEnd u32color
---@field colorOutline u32color?
---@field outlineThickness number
---@field segments integer
---@field occlusionChannel integer? Zero-based channel index used by ShapeDrawer methods; valid range is 0..31.
---@field renderFlags ArgusRenderFlags? Default = Argus2.RenderFlags.FLAG_WARP_TERRAIN. Base render flags used by ShapeDrawer methods.
---@field gradientIntensity integer?
---@field gradientMinOpacity number?
ShapeDrawer = ShapeDrawer or {}

function Argus2.ShapeDrawer:new(colorStart, colorMid, colorEnd, colorOutline, outlineThickness) end

---Create a new shape drawer object. It will use the color values specified. You can also freely edit the color values at any point in time.
---@param colorStart? u32color If not using timed draws, this can be nil; only colorEnd will be used for frame draws.
---@param colorMid? u32color If not specified, colorMid is ignored in timed draws and goes colorStart -> colorEnd. Frame draws only use colorEnd.
---@param colorEnd u32color Required for timed draws and frame draws.
---@param colorOutline u32color
---@param outlineThickness? number Default 1.5.
---@return ShapeDrawer
function ShapeDrawer:new(colorStart, colorMid, colorEnd, colorOutline, outlineThickness) end

---Create a new shape drawer object.
---@param colorStart? u32color
---@param colorMid? u32color
---@param colorEnd u32color
---@param colorOutline u32color
---@param outlineThickness? number
---@return ShapeDrawer
function Argus2.ShapeDrawer:new(colorStart, colorMid, colorEnd, colorOutline, outlineThickness) end

---Draw an arrow on the ground for this frame.
---@param x number
---@param y number
---@param z number
---@param heading number Heading in radians.
---@param baseLength number
---@param baseWidth number
---@param tipLength number? If unspecified, it will be the same as tipWidth.
---@param tipWidth number? If unspecified, it will be 2x baseWidth.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addArrow(x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, oldDraw, renderFlags) end

---Draw a chevron on the ground for this frame.
---@param x number
---@param y number
---@param z number
---@param length number
---@param thickness number Width of the base rectangle of the arrow.
---@param heading number Heading in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addChevron(x, y, z, length, thickness, heading, oldDraw, renderFlags) end

---Draw a filled circle on the ground at world coordinates for this frame.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCircle(x, y, z, radius, oldDraw, renderFlags) end

---Draw a cone on the ground at world coordinates for this frame.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param angle number Angle in radians.
---@param heading number Heading in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCone(x, y, z, radius, angle, heading, oldDraw, renderFlags) end

---Draw a cross on the ground at world coordinates for this frame.
---The cross will be centered around xyz and rotated towards heading. One rectangle will point at heading, the others 90 and 180 degrees rotated.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCross(x, y, z, length, width, heading, oldDraw, renderFlags) end

---Draw a donut on the ground at world coordinates for this frame.
---@param x number
---@param y number
---@param z number
---@param radiusInner number
---@param radiusOuter number
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addDonut(x, y, z, radiusInner, radiusOuter, oldDraw, renderFlags) end

---Draw a line between two points on the ground for this frame.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param thickness number?
---@param endpointThickness number?
function ShapeDrawer:addLine(x1, y1, z1, x2, y2, z2, thickness, endpointThickness) end

---Draw a filled rectangle on the ground at world coordinates for this frame.
---XYZ pos is the bottom center of the rectangle. The rectangle will be created outwards in length, and then rotated to the heading.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addRect(x, y, z, length, width, heading, oldDraw, renderFlags) end

---Draw an arrow on the ground for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param heading number Heading in radians.
---@param baseLength number
---@param baseWidth number
---@param tipLength number? If unspecified, it will be the same as tipWidth.
---@param tipWidth number? If unspecified, it will be 2x baseWidth.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedArrow(timeout, x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, delay, oldDraw, renderFlags) end

---Draw an arrow on the ground for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the arrow on.
---@param baseLength number
---@param baseWidth number
---@param tipLength number? If unspecified, it will be the same as tipWidth.
---@param tipWidth number? If unspecified, it will be 2x baseWidth.
---@param targetID ArgusEntityRef? Entity ID to draw the arrow towards. Length will be automatically extended.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param headingOffset number? Default = 0.
---@param offsetIsAbsolute boolean? Default = false.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedArrowOnEnt(timeout, entID, baseLength, baseWidth, tipLength, tipWidth, targetID, delay, oldDraw, headingOffset, offsetIsAbsolute, renderFlags) end

---Draw a chevron on the ground for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param length number
---@param thickness number Width of the base rectangle of the arrow.
---@param heading number Heading in radians.
---@param delay number? Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedChevron(timeout, x, y, z, length, thickness, heading, delay, oldDraw, renderFlags) end

---Draw a chevron on an entity for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the arrow on.
---@param length number
---@param thickness number Width of the base rectangle of the arrow.
---@param targetID number? Entity ID to draw the chevron towards. Length will be automatically extended.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param headingOffset number? Default = 0.
---@param offsetIsAbsolute boolean? Default = false.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedChevronOnEnt(timeout, entID, length, thickness, targetID, delay, oldDraw, headingOffset, offsetIsAbsolute, renderFlags) end

---Draw a filled circle on the ground at world coordinates for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCircle(timeout, x, y, z, radius, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a filled circle on an entity for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the circle on.
---@param radius number
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCircleOnEnt(timeout, entID, radius, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a cone on the ground at world coordinates for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param angle number Angle in radians.
---@param heading number Heading in radians.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCone(timeout, x, y, z, radius, angle, heading, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a cone on an entity for timeout milliseconds.
---The cone's origin position will be set to XYZ, and then rotated to the entity's heading, unless targetID is specified.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the cone on.
---@param radius number How far out the cone will go. This is the radius of the full circle that would be drawn by this cone if it was extended to 360 degrees.
---@param angle number Angle in radians. Basically how wide the cone is.
---@param targetID ArgusEntityRef? Target ID or target table to draw the cone to. It will go from ent -> target. This parameter is optional.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param headingOffset number? Default = 0.
---@param offsetIsAbsolute boolean? Default = false.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedConeOnEnt(timeout, entID, radius, angle, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---Draw a cross on the ground at world coordinates for timeout milliseconds.
---The cross will be centered around xyz and rotated towards heading. One rectangle will point at heading, the others 90 and 180 degrees rotated.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCross(timeout, x, y, z, length, width, heading, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a cross on an entity for timeout milliseconds.
---The cross will be centered around the entity, and rotated towards the entity's heading, unless targetID is specified.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the cross on.
---@param length number
---@param width number
---@param targetID ArgusEntityRef? Entity ID to draw the cross towards. Length will be automatically extended.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param headingOffset number? Default = 0.
---@param offsetIsAbsolute boolean? Default = false.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCrossOnEnt(timeout, entID, length, width, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---Draw a donut on the ground at world coordinates for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param radiusInner number
---@param radiusOuter number
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedDonut(timeout, x, y, z, radiusInner, radiusOuter, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a donut on an entity for timeout milliseconds.
---The donut will be centered around the entity.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the donut on.
---@param radiusInner number Inner radius of the donut.
---@param radiusOuter number Outer radius of the donut. This also includes the inner radius.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedDonutOnEnt(timeout, entID, radiusInner, radiusOuter, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a line between two points on the ground for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param thickness number?
---@param endpointThickness number?
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@return string? uuid
function ShapeDrawer:addTimedLine(timeout, x1, y1, z1, x2, y2, z2, thickness, endpointThickness, delay) end

---Draw a filled rectangle on the ground at world coordinates for timeout milliseconds.
---XYZ pos is the bottom center of the rectangle. The rectangle will be created outwards in length, and then rotated to the heading.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedRect(timeout, x, y, z, length, width, heading, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a filled rectangle on an entity for timeout milliseconds.
---The rectangle's bottom center position will be set to XYZ, and then rotated to the entity's heading, unless targetID is specified.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the rectangle on.
---@param length number
---@param width number
---@param targetID ArgusEntityRef? Target ID or target table to draw the rectangle to. It will go from ent -> target. This parameter is optional.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param keepLength boolean? Default = false. If specified with targetID, then the length won't be adjusted to the target, the length will stay constant, instead only the heading will be updated.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param headingOffset number? Default = 0.
---@param offsetIsAbsolute boolean? Default = false.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedRectOnEnt(timeout, entID, length, width, targetID, delay, keepLength, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param intensity integer?
---@param minOpacity number?
function ShapeDrawer:setGradient(intensity, minOpacity) end

---Draw a filled rectangle on the ground at world coordinates for this frame.
---XYZ pos is the center of the rectangle. The rectangle will be created outwards in length / 2, extended in width / 2, and then rotated to the heading.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCenteredRect(x, y, z, length, width, heading, oldDraw, renderFlags) end

---Draw a donut cone on the ground at world coordinates for this frame.
---@param x number
---@param y number
---@param z number
---@param radiusInner number
---@param radiusOuter number
---@param angle number Angle in radians.
---@param heading number Heading in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addDonutCone(x, y, z, radiusInner, radiusOuter, angle, heading, oldDraw, renderFlags) end

---Draw a filled rectangle on the ground at world coordinates for timeout milliseconds.
---XYZ pos is the center of the rectangle. The rectangle will be created outwards in length / 2, extended in width / 2, and then rotated to the heading.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCenteredRect(timeout, x, y, z, length, width, heading, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a filled rectangle on an entity for timeout milliseconds.
---XYZ pos is the center of the rectangle. The rectangle will be created outwards in length / 2, extended in width / 2, and then rotated to the heading.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the rectangle on.
---@param length number
---@param width number
---@param targetID ArgusEntityRef? Target ID or target table to draw the rectangle to. It will go from ent -> target. This parameter is optional.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param keepLength boolean? Default = false. If specified with targetID, then the length won't be adjusted to the target, the length will stay constant, instead only the heading will be updated.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param headingOffset number? Default = 0.
---@param offsetIsAbsolute boolean? Default = false.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCenteredRectOnEnt(timeout, entID, length, width, targetID, delay, keepLength, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---Draw a donut cone on the ground at world coordinates for timeout milliseconds.
---@param timeout number Milliseconds to draw the shape for.
---@param x number
---@param y number
---@param z number
---@param radiusInner number
---@param radiusOuter number
---@param angle number Angle in radians.
---@param heading number Heading in radians.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedDonutCone(timeout, x, y, z, radiusInner, radiusOuter, angle, heading, delay, oldDraw, doNotDetect, renderFlags) end

---Draw a donut cone on an entity for timeout milliseconds.
---The donut cone will be centered around the entity.
---@param timeout number Milliseconds to draw the shape for.
---@param entID ArgusEntityRef Entity ID or Entity Table to draw the donut cone on.
---@param radiusInner number Inner radius of the donut cone.
---@param radiusOuter number Outer radius of the donut cone. This also includes the inner radius.
---@param angle number Angle in radians. Basically how wide the donut cone is.
---@param targetID ArgusEntityRef? Target ID or target table to draw the donut cone to. It will go from ent -> target. This parameter is optional.
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param oldDraw boolean?
---@param doNotDetect boolean? Default = false. If true, this custom draw will not be used for aoe detection (i.e. safe jump)
---@param headingOffset number? Default = 0.
---@param offsetIsAbsolute boolean? Default = false.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedDonutConeOnEnt(timeout, entID, radiusInner, radiusOuter, angle, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param heading number?
---@param baseLength number?
---@param baseWidth number?
---@param tipLength number?
---@param tipWidth number?
---@param delay integer?
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedArrow(uuid, timeout, x, y, z, heading, baseLength, baseWidth, tipLength, tipWidth, delay, oldDraw, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param baseLength number?
---@param baseWidth number?
---@param tipLength number?
---@param tipWidth number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedArrowOnEnt(uuid, timeout, entID, baseLength, baseWidth, tipLength, tipWidth, targetID, delay, oldDraw, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param length number?
---@param width number?
---@param heading number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCenteredRect(uuid, timeout, x, y, z, length, width, heading, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param length number?
---@param width number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param keepLength boolean?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCenteredRectOnEnt(uuid, timeout, entID, length, width, targetID, delay, keepLength, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param length number?
---@param thickness number?
---@param heading number?
---@param delay integer?
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedChevron(uuid, timeout, x, y, z, length, thickness, heading, delay, oldDraw, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param length number?
---@param thickness number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedChevronOnEnt(uuid, timeout, entID, length, thickness, targetID, delay, oldDraw, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param radius number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCircle(uuid, timeout, x, y, z, radius, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param radius number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCircleOnEnt(uuid, timeout, entID, radius, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param radius number?
---@param angle number?
---@param heading number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCone(uuid, timeout, x, y, z, radius, angle, heading, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param radius number?
---@param angle number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedConeOnEnt(uuid, timeout, entID, radius, angle, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param length number?
---@param width number?
---@param heading number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCross(uuid, timeout, x, y, z, length, width, heading, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param length number?
---@param width number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCrossOnEnt(uuid, timeout, entID, length, width, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param radiusInner number?
---@param radiusOuter number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedDonut(uuid, timeout, x, y, z, radiusInner, radiusOuter, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param radiusInner number?
---@param radiusOuter number?
---@param angle number?
---@param heading number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedDonutCone(uuid, timeout, x, y, z, radiusInner, radiusOuter, angle, heading, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param radiusInner number?
---@param radiusOuter number?
---@param angle number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedDonutConeOnEnt(uuid, timeout, entID, radiusInner, radiusOuter, angle, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param radiusInner number?
---@param radiusOuter number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedDonutOnEnt(uuid, timeout, entID, radiusInner, radiusOuter, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x1 number?
---@param y1 number?
---@param z1 number?
---@param x2 number?
---@param y2 number?
---@param z2 number?
---@param thickness number?
---@param endpointThickness number?
---@param delay integer?
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedLine(uuid, timeout, x1, y1, z1, x2, y2, z2, thickness, endpointThickness, delay) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param length number?
---@param width number?
---@param heading number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedRect(uuid, timeout, x, y, z, length, width, heading, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param length number?
---@param width number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param keepLength boolean?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedRectOnEnt(uuid, timeout, entID, length, width, targetID, delay, keepLength, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param x number
---@param y number
---@param z number
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param baseLength number
---@param baseWidth number
---@param tipLength number?
---@param tipWidth number?
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addArrow3D(x, y, z, heading, pitch, roll, baseLength, baseWidth, tipLength, tipWidth, oldDraw, renderFlags) end

---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCenteredRect3D(x, y, z, length, width, heading, pitch, roll, oldDraw, renderFlags) end

---@param x number
---@param y number
---@param z number
---@param length number
---@param thickness number
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addChevron3D(x, y, z, length, thickness, heading, pitch, roll, oldDraw, renderFlags) end

---Draw a 3D circle for this frame. Full circles do not take heading.
---@param x number
---@param y number
---@param z number
---@param radius number
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCircle3D(x, y, z, radius, pitch, roll, oldDraw, renderFlags) end

---@param x number
---@param y number
---@param z number
---@param radius number
---@param angle number Angle in radians.
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCone3D(x, y, z, radius, angle, heading, pitch, roll, oldDraw, renderFlags) end

---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCross3D(x, y, z, length, width, heading, pitch, roll, oldDraw, renderFlags) end

---Draw a 3D donut for this frame. Full donuts do not take heading.
---@param x number
---@param y number
---@param z number
---@param radiusInner number
---@param radiusOuter number
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addDonut3D(x, y, z, radiusInner, radiusOuter, pitch, roll, oldDraw, renderFlags) end

---@param x number
---@param y number
---@param z number
---@param radiusInner number
---@param radiusOuter number
---@param angle number Angle in radians.
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addDonutCone3D(x, y, z, radiusInner, radiusOuter, angle, heading, pitch, roll, oldDraw, renderFlags) end

---Draw a textured rectangle on the ground centered at world coordinates for this frame. Uses the drawer's colorEnd as the texture tint and the drawer's occlusionChannel.
---@param x number
---@param y number
---@param z number
---@param heading number Heading in radians.
---@param filename string
---@param imageSizeX number Image resize width. Use 0 to keep the source width.
---@param imageSizeY number Image resize height. Use 0 to keep the source height.
---@param sizeX number
---@param sizeY number
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addTexture(x, y, z, heading, filename, imageSizeX, imageSizeY, sizeX, sizeY, renderFlags) end

---Draw a textured rectangle centered at world coordinates for this frame.
---@param x number
---@param y number
---@param z number
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param filename string
---@param imageSizeX number Image resize width. Use 0 to keep the source width.
---@param imageSizeY number Image resize height. Use 0 to keep the source height.
---@param sizeX number
---@param sizeY number
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addTexture3D(x, y, z, heading, pitch, roll, filename, imageSizeX, imageSizeY, sizeX, sizeY, renderFlags) end

---Draw a textured rectangle centered at world coordinates for this frame, facing the camera position. Uses the drawer's colorEnd as the texture tint and the drawer's occlusionChannel.
---@param x number
---@param y number
---@param z number
---@param heading number Image rotation in radians.
---@param filename string
---@param imageSizeX number Image resize width. Use 0 to keep the source width.
---@param imageSizeY number Image resize height. Use 0 to keep the source height.
---@param sizeX number
---@param sizeY number
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addCameraFacingTexture(x, y, z, heading, filename, imageSizeX, imageSizeY, sizeX, sizeY, renderFlags) end

---Draw a textured rectangle centered at world coordinates for this frame, facing the screen. Uses the drawer's colorEnd as the texture tint and the drawer's occlusionChannel.
---@param x number
---@param y number
---@param z number
---@param heading number Image rotation in radians.
---@param filename string
---@param imageSizeX number Image resize width. Use 0 to keep the source width.
---@param imageSizeY number Image resize height. Use 0 to keep the source height.
---@param sizeX number
---@param sizeY number
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addScreenFacingTexture(x, y, z, heading, filename, imageSizeX, imageSizeY, sizeX, sizeY, renderFlags) end

---Draw a textured rectangle centered at world coordinates for timeout milliseconds. Uses the drawer's color gradient and occlusionChannel.
---@param timeout number Milliseconds to draw the texture for.
---@param x number
---@param y number
---@param z number
---@param heading number Heading in radians.
---@param filename string
---@param imageSizeX number Image resize width. Use 0 to keep the source width.
---@param imageSizeY number Image resize height. Use 0 to keep the source height.
---@param sizeX number
---@param sizeY number
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedTexture(timeout, x, y, z, heading, filename, imageSizeX, imageSizeY, sizeX, sizeY, delay, renderFlags) end

---Draw a textured rectangle centered at world coordinates for timeout milliseconds, facing the camera. Uses the drawer's color gradient and occlusionChannel.
---@param timeout number Milliseconds to draw the texture for.
---@param x number
---@param y number
---@param z number
---@param heading number Image rotation in radians.
---@param filename string
---@param imageSizeX number Image resize width. Use 0 to keep the source width.
---@param imageSizeY number Image resize height. Use 0 to keep the source height.
---@param sizeX number
---@param sizeY number
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCameraFacingTexture(timeout, x, y, z, heading, filename, imageSizeX, imageSizeY, sizeX, sizeY, delay, renderFlags) end

---Draw a textured rectangle centered at world coordinates for timeout milliseconds. Uses the drawer's color gradient and occlusionChannel.
---@param timeout number Milliseconds to draw the texture for.
---@param x number
---@param y number
---@param z number
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param filename string
---@param imageSizeX number Image resize width. Use 0 to keep the source width.
---@param imageSizeY number Image resize height. Use 0 to keep the source height.
---@param sizeX number
---@param sizeY number
---@param delay number? Default = 0.0. Milliseconds to delay the start of the draw.
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedTexture3D(timeout, x, y, z, heading, pitch, roll, filename, imageSizeX, imageSizeY, sizeX, sizeY, delay, renderFlags) end

---@param uuid string
---@param timeout number?
---@param x number?
---@param y number?
---@param z number?
---@param heading number?
---@param filename string?
---@param imageSizeX number?
---@param imageSizeY number?
---@param sizeX number?
---@param sizeY number?
---@param delay number?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedTexture(uuid, timeout, x, y, z, heading, filename, imageSizeX, imageSizeY, sizeX, sizeY, delay, renderFlags) end

---@param uuid string
---@param timeout number?
---@param x number?
---@param y number?
---@param z number?
---@param heading number? Image rotation in radians.
---@param filename string?
---@param imageSizeX number?
---@param imageSizeY number?
---@param sizeX number?
---@param sizeY number?
---@param delay number?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCameraFacingTexture(uuid, timeout, x, y, z, heading, filename, imageSizeX, imageSizeY, sizeX, sizeY, delay, renderFlags) end

---@param uuid string
---@param timeout number?
---@param x number?
---@param y number?
---@param z number?
---@param heading number?
---@param pitch number? Pitch in radians. 0 = ground facing.
---@param roll number? Roll in radians.
---@param filename string?
---@param imageSizeX number?
---@param imageSizeY number?
---@param sizeX number?
---@param sizeY number?
---@param delay number?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedTexture3D(uuid, timeout, x, y, z, heading, pitch, roll, filename, imageSizeX, imageSizeY, sizeX, sizeY, delay, renderFlags) end

---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number Heading in radians.
---@param pitch number Pitch in radians. 0 = ground facing.
---@param roll number Roll in radians.
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
function ShapeDrawer:addRect3D(x, y, z, length, width, heading, pitch, roll, oldDraw, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param heading number
---@param pitch number 0 = ground facing.
---@param roll number
---@param baseLength number
---@param baseWidth number
---@param tipLength number?
---@param tipWidth number?
---@param delay number?
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedArrow3D(timeout, x, y, z, heading, pitch, roll, baseLength, baseWidth, tipLength, tipWidth, delay, oldDraw, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param baseLength number
---@param baseWidth number
---@param pitch number 0 = ground facing.
---@param roll number
---@param tipLength number?
---@param tipWidth number?
---@param targetID ArgusEntityRef?
---@param delay number?
---@param oldDraw boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedArrowOnEnt3D(timeout, entID, baseLength, baseWidth, pitch, roll, tipLength, tipWidth, targetID, delay, oldDraw, headingOffset, offsetIsAbsolute, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCenteredRect3D(timeout, x, y, z, length, width, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param length number
---@param width number
---@param pitch number 0 = ground facing.
---@param roll number
---@param targetID ArgusEntityRef?
---@param delay number?
---@param keepLength boolean?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCenteredRectOnEnt3D(timeout, entID, length, width, pitch, roll, targetID, delay, keepLength, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param length number
---@param thickness number
---@param heading number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedChevron3D(timeout, x, y, z, length, thickness, heading, pitch, roll, delay, oldDraw, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param length number
---@param thickness number
---@param pitch number 0 = ground facing.
---@param roll number
---@param targetID ArgusEntityRef?
---@param delay number?
---@param oldDraw boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedChevronOnEnt3D(timeout, entID, length, thickness, pitch, roll, targetID, delay, oldDraw, headingOffset, offsetIsAbsolute, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param radius number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCircle3D(timeout, x, y, z, radius, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param radius number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCircleOnEnt3D(timeout, entID, radius, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param radius number
---@param angle number
---@param heading number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCone3D(timeout, x, y, z, radius, angle, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param radius number
---@param angle number
---@param pitch number 0 = ground facing.
---@param roll number
---@param targetID ArgusEntityRef?
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedConeOnEnt3D(timeout, entID, radius, angle, pitch, roll, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCross3D(timeout, x, y, z, length, width, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param length number
---@param width number
---@param pitch number 0 = ground facing.
---@param roll number
---@param targetID ArgusEntityRef?
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedCrossOnEnt3D(timeout, entID, length, width, pitch, roll, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param radiusInner number
---@param radiusOuter number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedDonut3D(timeout, x, y, z, radiusInner, radiusOuter, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param radiusInner number
---@param radiusOuter number
---@param angle number
---@param heading number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedDonutCone3D(timeout, x, y, z, radiusInner, radiusOuter, angle, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param radiusInner number
---@param radiusOuter number
---@param angle number
---@param pitch number 0 = ground facing.
---@param roll number
---@param targetID ArgusEntityRef?
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedDonutConeOnEnt3D(timeout, entID, radiusInner, radiusOuter, angle, pitch, roll, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param radiusInner number
---@param radiusOuter number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedDonutOnEnt3D(timeout, entID, radiusInner, radiusOuter, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param x number
---@param y number
---@param z number
---@param length number
---@param width number
---@param heading number
---@param pitch number 0 = ground facing.
---@param roll number
---@param delay number?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedRect3D(timeout, x, y, z, length, width, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param timeout number
---@param entID ArgusEntityRef
---@param length number
---@param width number
---@param pitch number 0 = ground facing.
---@param roll number
---@param targetID ArgusEntityRef?
---@param delay number?
---@param keepLength boolean?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return string? uuid
function ShapeDrawer:addTimedRectOnEnt3D(timeout, entID, length, width, pitch, roll, targetID, delay, keepLength, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param occlusionChannel integer? Default = 0. Raw zero-based channel index; valid range is 0..31.
function ShapeDrawer:setOcclusionChannel(occlusionChannel) end

---Sets the base render flags used by this drawer.
---@param renderFlags ArgusRenderFlags? Default = Argus2.RenderFlags.FLAG_WARP_TERRAIN. Base render flags used by ShapeDrawer methods.
function ShapeDrawer:setRenderFlags(renderFlags) end

---Restores this drawer to the values it was created with.
function ShapeDrawer:Reset() end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param heading number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param baseLength number?
---@param baseWidth number?
---@param tipLength number?
---@param tipWidth number?
---@param delay integer?
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedArrow3D(uuid, timeout, x, y, z, heading, pitch, roll, baseLength, baseWidth, tipLength, tipWidth, delay, oldDraw, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param baseLength number?
---@param baseWidth number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param tipLength number?
---@param tipWidth number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedArrowOnEnt3D(uuid, timeout, entID, baseLength, baseWidth, pitch, roll, tipLength, tipWidth, targetID, delay, oldDraw, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param length number?
---@param width number?
---@param heading number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCenteredRect3D(uuid, timeout, x, y, z, length, width, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param length number?
---@param width number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param keepLength boolean?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCenteredRectOnEnt3D(uuid, timeout, entID, length, width, pitch, roll, targetID, delay, keepLength, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param length number?
---@param thickness number?
---@param heading number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedChevron3D(uuid, timeout, x, y, z, length, thickness, heading, pitch, roll, delay, oldDraw, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param length number?
---@param thickness number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedChevronOnEnt3D(uuid, timeout, entID, length, thickness, pitch, roll, targetID, delay, oldDraw, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param radius number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCircle3D(uuid, timeout, x, y, z, radius, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param radius number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCircleOnEnt3D(uuid, timeout, entID, radius, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param radius number?
---@param angle number?
---@param heading number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCone3D(uuid, timeout, x, y, z, radius, angle, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param radius number?
---@param angle number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedConeOnEnt3D(uuid, timeout, entID, radius, angle, pitch, roll, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param length number?
---@param width number?
---@param heading number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCross3D(uuid, timeout, x, y, z, length, width, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param length number?
---@param width number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedCrossOnEnt3D(uuid, timeout, entID, length, width, pitch, roll, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param radiusInner number?
---@param radiusOuter number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedDonut3D(uuid, timeout, x, y, z, radiusInner, radiusOuter, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param radiusInner number?
---@param radiusOuter number?
---@param angle number?
---@param heading number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedDonutCone3D(uuid, timeout, x, y, z, radiusInner, radiusOuter, angle, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param radiusInner number?
---@param radiusOuter number?
---@param angle number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedDonutConeOnEnt3D(uuid, timeout, entID, radiusInner, radiusOuter, angle, pitch, roll, targetID, delay, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param radiusInner number?
---@param radiusOuter number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedDonutOnEnt3D(uuid, timeout, entID, radiusInner, radiusOuter, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param x number?
---@param y number?
---@param z number?
---@param length number?
---@param width number?
---@param heading number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param delay integer?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedRect3D(uuid, timeout, x, y, z, length, width, heading, pitch, roll, delay, oldDraw, doNotDetect, renderFlags) end

---@param uuid string
---@param timeout integer?
---@param entID ArgusEntityRef?
---@param length number?
---@param width number?
---@param pitch number? 0 = ground facing.
---@param roll number?
---@param targetID ArgusEntityRef?
---@param delay integer?
---@param keepLength boolean?
---@param oldDraw boolean?
---@param doNotDetect boolean?
---@param headingOffset number?
---@param offsetIsAbsolute boolean?
---@param renderFlags ArgusRenderFlags? Overrides this drawer's renderFlags for this call.
---@return boolean success True if update succeeded.
function ShapeDrawer:updateTimedRectOnEnt3D(uuid, timeout, entID, length, width, pitch, roll, targetID, delay, keepLength, oldDraw, doNotDetect, headingOffset, offsetIsAbsolute, renderFlags) end
