---@meta

---@class ChatLine
---@field line string Formatted chat message.
---@field rawline string Raw chat payload including control characters.
---@field timestamp integer Unix timestamp.
---@field code integer Chat channel/type code.
---@field subcode integer Chat subtype code.

---@class AOECreateEventArgs
---@field aoe GroundAOE|DirectionalAOE

---@class EntityCastEventArgs
---@field entityID integer
---@field entityContentID integer
---@field actionID integer
---@field castPosX number|nil
---@field castPosY number|nil
---@field castPosZ number|nil
---@field heading number
---@field mainTargetID number
---@field mainTargetContentID integer
---@field targets table

---@class EntityChannelEventArgs
---@field entityID integer
---@field entityContentID integer
---@field channelID integer
---@field targetID integer
---@field targetContentID integer
---@field channelTimeMax number

---@class EventObjectScriptEventArgs
---@field entityID integer
---@field entityContentID integer
---@field a2 integer
---@field a3 integer
---@field a4 integer

---@class EventObjectScript2EventArgs
---@field entityID integer
---@field entityContentID integer
---@field a2 integer
---@field a3 integer

---@class FloorChangeEventArgs
---@field a1 integer
---@field a2 integer
---@field a3 integer

---@class MapEffectEventArgs
---@field a1 integer
---@field a2 integer
---@field a3 integer

---@class EntityMarkerAddEventArgs
---@field entityID integer
---@field entityContentID integer
---@field markerID integer

---@class TetherChangeEventArgs
---@field sourceEntityID integer
---@field sourceEntityContentID integer
---@field oldTetherID integer
---@field oldTetherFlags integer
---@field oldTargetID integer
---@field oldTargetContentID integer
---@field newTetherID integer
---@field newTetherFlags integer
---@field newTargetID integer
---@field newTargetContentID integer

---@class EntityAddEventArgs
---@field entityID integer
---@field entityContentID integer
---@field entityName string

---@class EntityRemoveEventArgs
---@field entityID integer
---@field entityContentID integer
---@field entityName string

---@class NewChatLineEventArgs
---@field line ChatLine

---@class CountdownEventArgs
---@field entityID integer Entity that started the countdown.
---@field time number Countdown duration in seconds.
---@field timeQueued integer Timestamp when the countdown started.

---@class VisibilityChangeEventArgs
---@field entityID integer
---@field entityContentID integer
---@field wasVisible boolean
---@field isVisible boolean

---@class AnimationChangeEventArgs
---@field entityID integer
---@field entityContentID integer
---@field index integer Animation slot index, 1 through Argus.GetMaxEntityAnimations().
---@field oldAnimID integer
---@field newAnimID integer

---@class TransformChangeEventArgs
---@field entityID integer
---@field entityContentID integer
---@field oldTransformID integer
---@field oldTransformFlags integer
---@field newTransformID integer
---@field newTransformFlags integer

---@class AuraChangeEventArgs
---@field entityID integer
---@field entityContentID integer
---@field oldActiveAura1 integer
---@field oldActiveAura2 integer
---@field oldPersistentAura integer
---@field newActiveAura1 integer
---@field newActiveAura2 integer
---@field newPersistentAura integer

---@class TargetableChangeEventArgs
---@field entityID integer
---@field entityContentID integer
---@field wasTargetable boolean
---@field isTargetable boolean

---Triggered when an entity-attached VFX is created.
---This can detect many VFX that are not associated with casts or channels.
---Not all VFX are currently exposed by Argus.
---@class AddEntityVFXEventArgs
---@field vfxID integer
---@field vfxName string
---@field primaryEntityID integer
---@field primaryEntityContentID integer
---@field secondaryEntityID integer
---@field secondaryEntityContentID integer
---@field time number Usually -1 or 1; generally not useful.
---@field a5 boolean Unknown.
---@field a6 integer Unknown.

---Triggered when a ground/world VFX is created.
---Not all VFX are currently exposed by Argus.
---@class AddGroundVFXEventArgs
---@field vfxID integer
---@field vfxName string
---@field x number
---@field y number
---@field z number
---@field ownerEntID integer
---@field time number Usually -1 or 1; generally not useful.
---@field scale number Usually -1 or 1; generally not useful.
---@field a9 integer Unknown.