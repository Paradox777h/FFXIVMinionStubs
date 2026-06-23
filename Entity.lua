---@meta

---@class Vector3
---@field x number
---@field y number
---@field z number
---@field h? number Heading/rotation, present on object position data.

---@class ResourceBar
---@field current number
---@field max number
---@field percent number
---@field extra? number Present on HP data.

---@class MeshPosition
---@field x number
---@field y number
---@field z number
---@field distance number Distance from mesh position to player.
---@field meshdistance number Distance to mesh position.

---@alias CubePosition MeshPosition

---@class CastingInfo
---@field ptr integer
---@field castingid integer
---@field casttime number
---@field castingtargetcount integer
---@field castinginterruptible boolean
---@field castingtargets table<integer, integer>
---@field lastcastid integer
---@field timesincecast number
---@field channelingid integer
---@field channeltargetid integer
---@field channeltime number

---@class EurekaInfo
---@field level integer
---@field element integer # 0=self, 1=fire, 2=ice, 3=wind, 4=earth, 5=lightning, 6=water

---@class Buff
---@field ptr integer
---@field ptr2 integer
---@field id integer
---@field duration number
---@field name string
---@field ownerid integer
---@field isbuff boolean
---@field isdebuff boolean
---@field stacks integer
---@field slot integer
---@field dispellable boolean

---@class GameObject
---@field ptr integer
---@field id integer
---@field name string
---@field contentid integer
---@field type integer
---@field status integer
---@field chocobostate integer
---@field chartype integer
---@field targetid integer
---@field ownerid integer
---@field claimedbyid integer
---@field fateid integer
---@field iconid integer
---
---@field hp ResourceBar
---@field mp ResourceBar
---@field cp ResourceBar
---@field gp ResourceBar
---@field tp integer
---
---@field pos Vector3
---@field hitradius number
---@field distance number
---@field distance2d number
---@field pathdistance number
---@field los boolean
---@field los2 boolean
---@field onmesh boolean
---@field isreachable boolean
---@field meshpos MeshPosition?
---@field cubepos CubePosition?
---
---@field ismounted boolean
---@field job integer
---@field level integer
---@field pvpteam integer
---@field grandcompany integer
---@field grandcompanyrank integer
---@field aggro boolean
---@field aggropercentage number
---@field attackable boolean
---@field aggressive boolean
---@field friendly boolean
---@field incombat boolean
---@field interactable boolean
---@field targetable boolean
---@field alive boolean
---@field cangather boolean
---@field gatherattempts integer
---@field gatherattemptsmax integer
---@field spearfishstate integer # -1=not fish node, 0=none, 1=begin, 2=bubbles, 4=success, 5=missed, 6=unknown, 7=got away, 9=not available
---@field marker integer
---@field onlinestatus integer
---@field currentworld integer
---@field homeworld integer
---
---@field action integer
---@field lastaction integer
---@field castinginfo CastingInfo
---@field eurekainfo EurekaInfo
---@field buffs table<integer, Buff>

---@class Entity : GameObject
Entity = Entity or {}

---@class Pet : GameObject
---@field pettype integer
---@field petstate integer[]

---@class PlayerSettings
---@field autoface boolean
---@field movemode integer # 0=Standard, 1=Legacy

---@class PlayerGearSet
---@field name string
---@field job string|integer

---@class Player : GameObject
---@field localmapid integer
---@field gauge table<string|integer, boolean|number|string>
---@field gaugetest table<string|integer, boolean|number|string>
---@field levels table<string|integer, integer> Job ID/name -> level.
---@field stats table<string|integer, number>
---@field settings PlayerSettings
---@field hasaggro boolean
---@field revivestate integer
---@field role integer
---@field combotimeremain number
---@field lastcomboid integer
Player = Player or {}

---@class EntityList
EntityList = EntityList or {}

---@param id integer
---@return Entity|nil
function EntityList:Get(id) end