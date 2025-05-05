---@meta
---@class Hyperspace
---@field version Hyperspace.HyperspaceVersion (Read-only)
---@field Global_currentSeed uint (Read-only)
---@field metaVariables Hyperspace.playerVariableType
---@field playerVariables Hyperspace.playerVariableType
---@field Animations Hyperspace.AnimationControl (Read-only)
---@field Blueprints Hyperspace.BlueprintManager (Read-only)
---@field FPS Hyperspace.CFPS (Read-only)
---@field CrewFactory Hyperspace.CrewMemberFactory (Read-only)
---@field Event Hyperspace.EventGenerator (Read-only)
---@field Text Hyperspace.TextLibrary (Read-only)
---@field Mouse Hyperspace.MouseControl (Read-only)
---@field Resources Hyperspace.ResourceControl (Read-only)
---@field Score Hyperspace.ScoreKeeper (Read-only)
---@field Settings Hyperspace.SettingValues (Read-only)
---@field Sounds Hyperspace.SoundControl (Read-only)
---@field Tutorial Hyperspace.TutorialManager (Read-only)
---@field CustomAchievementTracker_instance Hyperspace.CustomAchievementTracker (Read-only)
---@field useAugmentReq boolean
---@field TriggeredEventDefinition_defs vector<Hyperspace.TriggeredEventDefinition> (Read-only)
---@field StatBoostDefinition_statBoostDefs vector<Hyperspace.StatBoostDefinition>
---@field StatBoostDefinition_savedStatBoostDefs unordered_map<String, Hyperspace.StatBoostDefinition>
---@field CustomShipUnlocks_instance Hyperspace.CustomShipUnlocks (Read-only)
---@field App Hyperspace.CApp (Read-only)
Hyperspace = {
    CrewExtraCondition_BURNING = 0,
    CrewExtraCondition_SUFFOCATING = 1,
    CrewExtraCondition_MIND_CONTROLLED = 2,
    CrewExtraCondition_STUNNED = 3,
    CrewExtraCondition_REPAIRING = 4,
    CrewExtraCondition_REPAIRING_SYSTEM = 5,
    CrewExtraCondition_REPAIRING_BREACH = 6,
    CrewExtraCondition_FIGHTING = 7,
    CrewExtraCondition_SABOTAGING = 8,
    CrewExtraCondition_SHOOTING = 9,
    CrewExtraCondition_MOVING = 10,
    CrewExtraCondition_IDLE = 11,
    CrewExtraCondition_MANNING = 12,
    CrewExtraCondition_FIREFIGHTING = 13,
    CrewExtraCondition_DYING = 14,
    CrewExtraCondition_TELEPORTING = 15,
    ActivatedPowerRequirements_Type_PLAYER = 0,
    ActivatedPowerRequirements_Type_ENEMY = 1,
    ActivatedPowerRequirements_Type_CHARGE = 2,
    ActivatedPowerRequirements_Type_UNKNOWN = 3,
    CrewStat_MAX_HEALTH = 0,
    CrewStat_STUN_MULTIPLIER = 1,
    CrewStat_MOVE_SPEED_MULTIPLIER = 2,
    CrewStat_REPAIR_SPEED_MULTIPLIER = 3,
    CrewStat_DAMAGE_MULTIPLIER = 4,
    CrewStat_RANGED_DAMAGE_MULTIPLIER = 5,
    CrewStat_DOOR_DAMAGE_MULTIPLIER = 6,
    CrewStat_FIRE_REPAIR_MULTIPLIER = 7,
    CrewStat_SUFFOCATION_MODIFIER = 8,
    CrewStat_FIRE_DAMAGE_MULTIPLIER = 9,
    CrewStat_OXYGEN_CHANGE_SPEED = 10,
    CrewStat_DAMAGE_TAKEN_MULTIPLIER = 11,
    CrewStat_CLONE_SPEED_MULTIPLIER = 12,
    CrewStat_PASSIVE_HEAL_AMOUNT = 13,
    CrewStat_TRUE_PASSIVE_HEAL_AMOUNT = 14,
    CrewStat_TRUE_HEAL_AMOUNT = 15,
    CrewStat_PASSIVE_HEAL_DELAY = 16,
    CrewStat_ACTIVE_HEAL_AMOUNT = 17,
    CrewStat_SABOTAGE_SPEED_MULTIPLIER = 18,
    CrewStat_ALL_DAMAGE_TAKEN_MULTIPLIER = 19,
    CrewStat_HEAL_SPEED_MULTIPLIER = 20,
    CrewStat_HEAL_CREW_AMOUNT = 21,
    CrewStat_DAMAGE_ENEMIES_AMOUNT = 22,
    CrewStat_BONUS_POWER = 23,
    CrewStat_POWER_DRAIN = 24,
    CrewStat_ESSENTIAL = 25,
    CrewStat_CAN_FIGHT = 26,
    CrewStat_CAN_REPAIR = 27,
    CrewStat_CAN_SABOTAGE = 28,
    CrewStat_CAN_MAN = 29,
    CrewStat_CAN_TELEPORT = 30,
    CrewStat_CAN_SUFFOCATE = 31,
    CrewStat_CONTROLLABLE = 32,
    CrewStat_CAN_BURN = 33,
    CrewStat_IS_TELEPATHIC = 34,
    CrewStat_RESISTS_MIND_CONTROL = 35,
    CrewStat_IS_ANAEROBIC = 36,
    CrewStat_CAN_PHASE_THROUGH_DOORS = 37,
    CrewStat_DETECTS_LIFEFORMS = 38,
    CrewStat_CLONE_LOSE_SKILLS = 39,
    CrewStat_POWER_DRAIN_FRIENDLY = 40,
    CrewStat_DEFAULT_SKILL_LEVEL = 41,
    CrewStat_POWER_RECHARGE_MULTIPLIER = 42,
    CrewStat_HACK_DOORS = 43,
    CrewStat_NO_CLONE = 44,
    CrewStat_NO_SLOT = 45,
    CrewStat_NO_AI = 46,
    CrewStat_VALID_TARGET = 47,
    CrewStat_CAN_MOVE = 48,
    CrewStat_TELEPORT_MOVE = 49,
    CrewStat_TELEPORT_MOVE_OTHER_SHIP = 50,
    CrewStat_SILENCED = 51,
    CrewStat_LOW_HEALTH_THRESHOLD = 52,
    CrewStat_NO_WARNING = 53,
    CrewStat_CREW_SLOTS = 54,
    CrewStat_ACTIVATE_WHEN_READY = 55,
    CrewStat_STAT_BOOST = 56,
    CrewStat_DEATH_EFFECT = 57,
    CrewStat_POWER_EFFECT = 58,
    CrewStat_POWER_MAX_CHARGES = 59,
    CrewStat_POWER_CHARGES_PER_JUMP = 60,
    CrewStat_POWER_COOLDOWN = 61,
    CrewStat_TRANSFORM_RACE = 62,
    StatBoostDefinition_BoostType_MULT = 0,
    StatBoostDefinition_BoostType_FLAT = 1,
    StatBoostDefinition_BoostType_ADD = 1,
    StatBoostDefinition_BoostType_SET = 2,
    StatBoostDefinition_BoostType_FLIP = 3,
    StatBoostDefinition_BoostType_SET_VALUE = 4,
    StatBoostDefinition_BoostType_MIN = 5,
    StatBoostDefinition_BoostType_MAX = 6,
    StatBoostDefinition_BoostType_REPLACE_GROUP = 7,
    StatBoostDefinition_BoostType_REPLACE_POWER = 8,
    StatBoostDefinition_BoostSource_CREW = 0,
    StatBoostDefinition_BoostSource_AUGMENT = 1,
    StatBoostDefinition_ShipTarget_PLAYER_SHIP = 0,
    StatBoostDefinition_ShipTarget_ENEMY_SHIP = 1,
    StatBoostDefinition_ShipTarget_CURRENT_ALL = 2,
    StatBoostDefinition_ShipTarget_CURRENT_ROOM = 3,
    StatBoostDefinition_ShipTarget_OTHER_ALL = 4,
    StatBoostDefinition_ShipTarget_ORIGINAL_SHIP = 5,
    StatBoostDefinition_ShipTarget_ORIGINAL_OTHER_SHIP = 6,
    StatBoostDefinition_ShipTarget_CREW_TARGET = 7,
    StatBoostDefinition_ShipTarget_TARGETS_ME = 8,
    StatBoostDefinition_ShipTarget_ALL = 9,
    StatBoostDefinition_SystemRoomTarget_ALL = 0,
    StatBoostDefinition_SystemRoomTarget_NONE = 1,
    StatBoostDefinition_CrewTarget_ALLIES = 0,
    StatBoostDefinition_CrewTarget_ENEMIES = 1,
    StatBoostDefinition_CrewTarget_SELF = 2,
    StatBoostDefinition_CrewTarget_ALL = 3,
    StatBoostDefinition_CrewTarget_CURRENT_ALLIES = 4,
    StatBoostDefinition_CrewTarget_CURRENT_ENEMIES = 5,
    StatBoostDefinition_CrewTarget_ORIGINAL_ALLIES = 6,
    StatBoostDefinition_CrewTarget_ORIGINAL_ENEMIES = 7,
    StatBoostDefinition_DroneTarget_DRONES = 0,
    StatBoostDefinition_DroneTarget_CREW = 1,
    StatBoostDefinition_DroneTarget_ALL = 2,
}

---@param unknown Graphics.freetype.font_data
---@param unknown1 String
---@param unknown2 number
---@return number
function Hyperspace.font_text_width(unknown, unknown1, unknown2) end

---@param unknown integer
---@param unknown1 integer
---@return number
function Hyperspace.getSkillBonus(unknown, unknown1) end

---@return integer
function Hyperspace.random32() end

---@param unknown uint
---@return unknown
function Hyperspace.setRandomSeed(unknown) end

---@return Hyperspace.Global
function Hyperspace.Global_GetInstance() end

---@return boolean
function Hyperspace.Global_IsSeededRun() end

---@param unknown String
---@return unknown
function Hyperspace.ErrorMessage(unknown) end

---@param unknown integer
---@param unknown1 integer
---@param unknown2 boolean
---@return string
function Hyperspace.ShipSystem_GetLevelDescription(unknown, unknown1, unknown2) end

---@param unknown integer
---@return boolean
function Hyperspace.ShipSystem_IsSubsystem(unknown) end

---@param unknown String
---@return integer
function Hyperspace.ShipSystem_NameToSystemId(unknown) end

---@param unknown integer
---@return string
function Hyperspace.ShipSystem_SystemIdToName(unknown) end

---@param unknown integer
---@return Hyperspace.Pointf
function Hyperspace.Projectile_RandomSidePoint(unknown) end

---@param unknown integer
---@return integer
function Hyperspace.CrewMember_GetSkillFromSystem(unknown) end

---@param unknown integer
---@param unknown1 integer
---@return Hyperspace.Point
function Hyperspace.ShipGraph_TranslateFromGrid(unknown, unknown1) end

---@param unknown integer
---@param unknown1 integer
---@return Hyperspace.Point
function Hyperspace.ShipGraph_TranslateToGrid(unknown, unknown1) end

---@param unknown integer
---@return Hyperspace.ShipGraph
function Hyperspace.ShipGraph_GetShipInfo(unknown) end

---@param unknown integer
---@return Hyperspace.PowerManager
function Hyperspace.PowerManager_GetPowerManager(unknown) end

---@param unknown String
---@param unknown1 integer
---@param unknown2 ShipEvent
---@return Hyperspace.ShipManager
function Hyperspace.ShipGenerator_CreateShip(unknown, unknown1, unknown2) end

---@param unknown Hyperspace.ShipBlueprint
---@param unknown1 integer
---@return vector<integer>
function Hyperspace.ShipGenerator_GenerateSystemMaxes(unknown, unknown1) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 String
---@param unknown2 uint
---@return vector<Hyperspace.CrewBlueprint>
function Hyperspace.ShipGenerator_GetPossibleCrewList(unknown, unknown1, unknown2) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 String
---@param unknown2 integer
---@param unknown3 uint
---@param unknown4 boolean
---@return vector<Hyperspace.DroneBlueprint>
function Hyperspace.ShipGenerator_GetPossibleDroneList(unknown, unknown1, unknown2, unknown3, unknown4) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 vector<integer>
---@param unknown2 integer
---@param unknown3 integer
---@return vector<integer>
function Hyperspace.ShipGenerator_GetPossibleSystemUpgrades(unknown, unknown1, unknown2, unknown3) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 String
---@param unknown2 integer
---@param unknown3 uint
---@return vector<Hyperspace.WeaponBlueprint>
function Hyperspace.ShipGenerator_GetPossibleWeaponList(unknown, unknown1, unknown2, unknown3) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 vector<integer>
---@param unknown2 uint
---@return boolean
function Hyperspace.ShipGenerator_UpgradeSystem(unknown, unknown1, unknown2) end

---@param unknown String
---@return unknown
function Hyperspace.setWindowTitle(unknown) end

---@return Hyperspace.CustomAugmentManager
function Hyperspace.CustomAugmentManager_GetInstance() end

---@param unknown String
---@return Hyperspace.ActivatedPowerDefinition
function Hyperspace.ActivatedPowerDefinition_GetPowerByName(unknown) end

---@param unknown String
---@param unknown1 Hyperspace.ActivatedPowerDefinition
---@return Hyperspace.ActivatedPowerDefinition
function Hyperspace.ActivatedPowerDefinition_AddNamedDefinition(unknown, unknown1) end

---@param unknown String
---@return Hyperspace.PowerResourceDefinition
function Hyperspace.PowerResourceDefinition_GetByName(unknown) end

---@param unknown String
---@param unknown1 Hyperspace.PowerResourceDefinition
---@return Hyperspace.PowerResourceDefinition
function Hyperspace.PowerResourceDefinition_AddNamedDefinition(unknown, unknown1) end

---@return Hyperspace.CustomEventsParser
function Hyperspace.CustomEventsParser_GetInstance() end

---@return Hyperspace.CustomShipSelect
function Hyperspace.CustomShipSelect_GetInstance() end

---@param unknown uint
---@return uint
function Hyperspace.GetNextPowerReadyState(unknown) end

---@param unknown Hyperspace.CrewMember
---@return Hyperspace.CrewMember_Extend
function Hyperspace.Get_CrewMember_Extend(unknown) end

---@param unknown Hyperspace.Projectile
---@return Hyperspace.Projectile_Extend
function Hyperspace.Get_Projectile_Extend(unknown) end

---@return Hyperspace.StatBoostManager
function Hyperspace.StatBoostManager_GetInstance() end

---@return Hyperspace.PrintHelper
function Hyperspace.PrintHelper_GetInstance() end

---@param unknown integer
---@return number
function Hyperspace.TemporalSystemParser_GetDilationStrength(unknown) end

---@class Defines.string
Defines.string = {}

---@return String
function Hyperspace.string() end

---@param unknown String
---@return String
function Hyperspace.string(unknown) end

---@return uint
function String:size() end

---@return uint
function String:length() end

---@return boolean
function String:empty() end

---@return string
function String:c_str() end

---@return string
function String:data() end

---@param unknown String
---@return unknown
function String:assign(unknown) end

---@return vector<integer>
function Hyperspace.vector_int() end

---@param unknown uint
---@return vector<integer>
function Hyperspace.vector_int(unknown) end

---@param unknown vector<integer>
---@return vector<integer>
function Hyperspace.vector_int(unknown) end

---@param unknown uint
---@param unknown1 integer
---@return vector<integer>
function Hyperspace.vector_int(unknown, unknown1) end

---@return vector<uint>
function Hyperspace.vector_unsigned_int() end

---@param unknown uint
---@return vector<uint>
function Hyperspace.vector_unsigned_int(unknown) end

---@param unknown vector<uint>
---@return vector<uint>
function Hyperspace.vector_unsigned_int(unknown) end

---@param unknown uint
---@param unknown1 uint
---@return vector<uint>
function Hyperspace.vector_unsigned_int(unknown, unknown1) end

---@return vector<number>
function Hyperspace.vector_float() end

---@param unknown uint
---@return vector<number>
function Hyperspace.vector_float(unknown) end

---@param unknown vector<number>
---@return vector<number>
function Hyperspace.vector_float(unknown) end

---@param unknown uint
---@param unknown1 number
---@return vector<number>
function Hyperspace.vector_float(unknown, unknown1) end

---@return vector<Hyperspace.ArtillerySystem>
function Hyperspace.vector_ArtillerySystem() end

---@param unknown uint
---@return vector<Hyperspace.ArtillerySystem>
function Hyperspace.vector_ArtillerySystem(unknown) end

---@param unknown vector<Hyperspace.ArtillerySystem>
---@return vector<Hyperspace.ArtillerySystem>
function Hyperspace.vector_ArtillerySystem(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.ArtillerySystem
---@return vector<Hyperspace.ArtillerySystem>
function Hyperspace.vector_ArtillerySystem(unknown, unknown1) end

---@return vector<Hyperspace.ProjectileFactory>
function Hyperspace.vector_ProjectileFactory() end

---@param unknown uint
---@return vector<Hyperspace.ProjectileFactory>
function Hyperspace.vector_ProjectileFactory(unknown) end

---@param unknown vector<Hyperspace.ProjectileFactory>
---@return vector<Hyperspace.ProjectileFactory>
function Hyperspace.vector_ProjectileFactory(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.ProjectileFactory
---@return vector<Hyperspace.ProjectileFactory>
function Hyperspace.vector_ProjectileFactory(unknown, unknown1) end

---@return vector<Hyperspace.CrewMember>
function Hyperspace.vector_CrewMember() end

---@param unknown uint
---@return vector<Hyperspace.CrewMember>
function Hyperspace.vector_CrewMember(unknown) end

---@param unknown vector<Hyperspace.CrewMember>
---@return vector<Hyperspace.CrewMember>
function Hyperspace.vector_CrewMember(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.CrewMember
---@return vector<Hyperspace.CrewMember>
function Hyperspace.vector_CrewMember(unknown, unknown1) end

---@return vector<Hyperspace.ShipSystem>
function Hyperspace.vector_ShipSystem() end

---@param unknown uint
---@return vector<Hyperspace.ShipSystem>
function Hyperspace.vector_ShipSystem(unknown) end

---@param unknown vector<Hyperspace.ShipSystem>
---@return vector<Hyperspace.ShipSystem>
function Hyperspace.vector_ShipSystem(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.ShipSystem
---@return vector<Hyperspace.ShipSystem>
function Hyperspace.vector_ShipSystem(unknown, unknown1) end

---@return vector<Hyperspace.Drone>
function Hyperspace.vector_Drone() end

---@param unknown uint
---@return vector<Hyperspace.Drone>
function Hyperspace.vector_Drone(unknown) end

---@param unknown vector<Hyperspace.Drone>
---@return vector<Hyperspace.Drone>
function Hyperspace.vector_Drone(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Drone
---@return vector<Hyperspace.Drone>
function Hyperspace.vector_Drone(unknown, unknown1) end

---@return vector<Hyperspace.SpaceDrone>
function Hyperspace.vector_SpaceDrone() end

---@param unknown uint
---@return vector<Hyperspace.SpaceDrone>
function Hyperspace.vector_SpaceDrone(unknown) end

---@param unknown vector<Hyperspace.SpaceDrone>
---@return vector<Hyperspace.SpaceDrone>
function Hyperspace.vector_SpaceDrone(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.SpaceDrone
---@return vector<Hyperspace.SpaceDrone>
function Hyperspace.vector_SpaceDrone(unknown, unknown1) end

---@return vector<Hyperspace.Room>
function Hyperspace.vector_Room() end

---@param unknown uint
---@return vector<Hyperspace.Room>
function Hyperspace.vector_Room(unknown) end

---@param unknown vector<Hyperspace.Room>
---@return vector<Hyperspace.Room>
function Hyperspace.vector_Room(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Room
---@return vector<Hyperspace.Room>
function Hyperspace.vector_Room(unknown, unknown1) end

---@return unordered_map<integer, Hyperspace.RoomDefinition>
function Hyperspace.unordered_map_int_RoomDefinition() end

---@param unknown unordered_map<integer, Hyperspace.RoomDefinition>
---@return unordered_map<integer, Hyperspace.RoomDefinition>
function Hyperspace.unordered_map_int_RoomDefinition(unknown) end

---@return vector<Hyperspace.Door>
function Hyperspace.vector_Door() end

---@param unknown uint
---@return vector<Hyperspace.Door>
function Hyperspace.vector_Door(unknown) end

---@param unknown vector<Hyperspace.Door>
---@return vector<Hyperspace.Door>
function Hyperspace.vector_Door(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Door
---@return vector<Hyperspace.Door>
function Hyperspace.vector_Door(unknown, unknown1) end

---@return vector<Hyperspace.Repairable>
function Hyperspace.vector_Repairable() end

---@param unknown uint
---@return vector<Hyperspace.Repairable>
function Hyperspace.vector_Repairable(unknown) end

---@param unknown vector<Hyperspace.Repairable>
---@return vector<Hyperspace.Repairable>
function Hyperspace.vector_Repairable(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Repairable
---@return vector<Hyperspace.Repairable>
function Hyperspace.vector_Repairable(unknown, unknown1) end

---@return vector<Hyperspace.OuterHull>
function Hyperspace.vector_OuterHull() end

---@param unknown uint
---@return vector<Hyperspace.OuterHull>
function Hyperspace.vector_OuterHull(unknown) end

---@param unknown vector<Hyperspace.OuterHull>
---@return vector<Hyperspace.OuterHull>
function Hyperspace.vector_OuterHull(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.OuterHull
---@return vector<Hyperspace.OuterHull>
function Hyperspace.vector_OuterHull(unknown, unknown1) end

---@return vector<Hyperspace.WeaponMount>
function Hyperspace.vector_WeaponMount() end

---@param unknown uint
---@return vector<Hyperspace.WeaponMount>
function Hyperspace.vector_WeaponMount(unknown) end

---@param unknown vector<Hyperspace.WeaponMount>
---@return vector<Hyperspace.WeaponMount>
function Hyperspace.vector_WeaponMount(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.WeaponMount
---@return vector<Hyperspace.WeaponMount>
function Hyperspace.vector_WeaponMount(unknown, unknown1) end

---@return vector<DamageMessage>
function Hyperspace.vector_DamageMessage() end

---@param unknown uint
---@return vector<DamageMessage>
function Hyperspace.vector_DamageMessage(unknown) end

---@param unknown vector<DamageMessage>
---@return vector<DamageMessage>
function Hyperspace.vector_DamageMessage(unknown) end

---@param unknown uint
---@param unknown1 DamageMessage
---@return vector<DamageMessage>
function Hyperspace.vector_DamageMessage(unknown, unknown1) end

---@return vector<Hyperspace.Projectile>
function Hyperspace.vector_Projectile() end

---@param unknown uint
---@return vector<Hyperspace.Projectile>
function Hyperspace.vector_Projectile(unknown) end

---@param unknown vector<Hyperspace.Projectile>
---@return vector<Hyperspace.Projectile>
function Hyperspace.vector_Projectile(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Projectile
---@return vector<Hyperspace.Projectile>
function Hyperspace.vector_Projectile(unknown, unknown1) end

---@return vector<Hyperspace.Animation>
function Hyperspace.vector_Animation() end

---@param unknown uint
---@return vector<Hyperspace.Animation>
function Hyperspace.vector_Animation(unknown) end

---@param unknown vector<Hyperspace.Animation>
---@return vector<Hyperspace.Animation>
function Hyperspace.vector_Animation(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Animation
---@return vector<Hyperspace.Animation>
function Hyperspace.vector_Animation(unknown, unknown1) end

---@return vector<Hyperspace.MiniProjectile>
function Hyperspace.vector_MiniProjectile() end

---@param unknown uint
---@return vector<Hyperspace.MiniProjectile>
function Hyperspace.vector_MiniProjectile(unknown) end

---@param unknown vector<Hyperspace.MiniProjectile>
---@return vector<Hyperspace.MiniProjectile>
function Hyperspace.vector_MiniProjectile(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.MiniProjectile
---@return vector<Hyperspace.MiniProjectile>
function Hyperspace.vector_MiniProjectile(unknown, unknown1) end

---@return pair<integer, integer>
function Hyperspace.pair_int_int() end

---@param unknown integer
---@param unknown1 integer
---@return pair<integer, integer>
function Hyperspace.pair_int_int(unknown, unknown1) end

---@param unknown pair<integer, integer>
---@return pair<integer, integer>
function Hyperspace.pair_int_int(unknown) end

---@return pair<number, number>
function Hyperspace.pair_float_float() end

---@param unknown number
---@param unknown1 number
---@return pair<number, number>
function Hyperspace.pair_float_float(unknown, unknown1) end

---@param unknown pair<number, number>
---@return pair<number, number>
function Hyperspace.pair_float_float(unknown) end

---@return vector<Hyperspace.Pointf>
function Hyperspace.vector_Pointf() end

---@param unknown uint
---@return vector<Hyperspace.Pointf>
function Hyperspace.vector_Pointf(unknown) end

---@param unknown vector<Hyperspace.Pointf>
---@return vector<Hyperspace.Pointf>
function Hyperspace.vector_Pointf(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Pointf
---@return vector<Hyperspace.Pointf>
function Hyperspace.vector_Pointf(unknown, unknown1) end

---@return vector<Hyperspace.Point>
function Hyperspace.vector_Point() end

---@param unknown uint
---@return vector<Hyperspace.Point>
function Hyperspace.vector_Point(unknown) end

---@param unknown vector<Hyperspace.Point>
---@return vector<Hyperspace.Point>
function Hyperspace.vector_Point(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Point
---@return vector<Hyperspace.Point>
function Hyperspace.vector_Point(unknown, unknown1) end

---@return map<String, integer>
function Hyperspace.map_string_int() end

---@param unknown map<String, integer>
---@return map<String, integer>
function Hyperspace.map_string_int(unknown) end

---@return map<integer, Hyperspace.SystemTemplate>
function Hyperspace.map_int_SystemTemplate() end

---@param unknown map<integer, Hyperspace.SystemTemplate>
---@return map<integer, Hyperspace.SystemTemplate>
function Hyperspace.map_int_SystemTemplate(unknown) end

---@return unordered_map<String, integer>
function Hyperspace.unordered_map_string_int() end

---@param unknown unordered_map<String, integer>
---@return unordered_map<String, integer>
function Hyperspace.unordered_map_string_int(unknown) end

---@return vector<Hyperspace.ActivatedPower>
function Hyperspace.vector_ActivatedPower() end

---@param unknown uint
---@return vector<Hyperspace.ActivatedPower>
function Hyperspace.vector_ActivatedPower(unknown) end

---@param unknown vector<Hyperspace.ActivatedPower>
---@return vector<Hyperspace.ActivatedPower>
function Hyperspace.vector_ActivatedPower(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.ActivatedPower
---@return vector<Hyperspace.ActivatedPower>
function Hyperspace.vector_ActivatedPower(unknown, unknown1) end

---@return vector<Hyperspace.ActivatedPowerResource>
function Hyperspace.vector_ActivatedPowerResource() end

---@param unknown uint
---@return vector<Hyperspace.ActivatedPowerResource>
function Hyperspace.vector_ActivatedPowerResource(unknown) end

---@param unknown vector<Hyperspace.ActivatedPowerResource>
---@return vector<Hyperspace.ActivatedPowerResource>
function Hyperspace.vector_ActivatedPowerResource(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.ActivatedPowerResource
---@return vector<Hyperspace.ActivatedPowerResource>
function Hyperspace.vector_ActivatedPowerResource(unknown, unknown1) end

---@return unordered_map<uint, Hyperspace.ActivatedPowerResource>
function Hyperspace.unordered_map_unsigned_int_ActivatedPowerResource() end

---@param unknown unordered_map<uint, Hyperspace.ActivatedPowerResource>
---@return unordered_map<uint, Hyperspace.ActivatedPowerResource>
function Hyperspace.unordered_map_unsigned_int_ActivatedPowerResource(unknown) end

---@return pair<Hyperspace.CrewExtraCondition, boolean>
function Hyperspace.pair_CrewExtraCondition_bool() end

---@param unknown Hyperspace.CrewExtraCondition
---@param unknown1 boolean
---@return pair<Hyperspace.CrewExtraCondition, boolean>
function Hyperspace.pair_CrewExtraCondition_bool(unknown, unknown1) end

---@param unknown pair<Hyperspace.CrewExtraCondition, boolean>
---@return pair<Hyperspace.CrewExtraCondition, boolean>
function Hyperspace.pair_CrewExtraCondition_bool(unknown) end

---@return vector<pair<Hyperspace.CrewExtraCondition, boolean>>
function Hyperspace.vector_pair_CrewExtraCondition_bool() end

---@param unknown uint
---@return vector<pair<Hyperspace.CrewExtraCondition, boolean>>
function Hyperspace.vector_pair_CrewExtraCondition_bool(unknown) end

---@param unknown vector<pair<Hyperspace.CrewExtraCondition, boolean>>
---@return vector<pair<Hyperspace.CrewExtraCondition, boolean>>
function Hyperspace.vector_pair_CrewExtraCondition_bool(unknown) end

---@param unknown uint
---@param unknown1 pair<Hyperspace.CrewExtraCondition, boolean>
---@return vector<pair<Hyperspace.CrewExtraCondition, boolean>>
function Hyperspace.vector_pair_CrewExtraCondition_bool(unknown, unknown1) end

---@return vector<Hyperspace.CrewBlueprint>
function Hyperspace.vector_CrewBlueprint() end

---@param unknown uint
---@return vector<Hyperspace.CrewBlueprint>
function Hyperspace.vector_CrewBlueprint(unknown) end

---@param unknown vector<Hyperspace.CrewBlueprint>
---@return vector<Hyperspace.CrewBlueprint>
function Hyperspace.vector_CrewBlueprint(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.CrewBlueprint
---@return vector<Hyperspace.CrewBlueprint>
function Hyperspace.vector_CrewBlueprint(unknown, unknown1) end

---@return vector<Hyperspace.DroneBlueprint>
function Hyperspace.vector_DroneBlueprint() end

---@param unknown uint
---@return vector<Hyperspace.DroneBlueprint>
function Hyperspace.vector_DroneBlueprint(unknown) end

---@param unknown vector<Hyperspace.DroneBlueprint>
---@return vector<Hyperspace.DroneBlueprint>
function Hyperspace.vector_DroneBlueprint(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.DroneBlueprint
---@return vector<Hyperspace.DroneBlueprint>
function Hyperspace.vector_DroneBlueprint(unknown, unknown1) end

---@return vector<Hyperspace.WeaponBlueprint>
function Hyperspace.vector_WeaponBlueprint() end

---@param unknown uint
---@return vector<Hyperspace.WeaponBlueprint>
function Hyperspace.vector_WeaponBlueprint(unknown) end

---@param unknown vector<Hyperspace.WeaponBlueprint>
---@return vector<Hyperspace.WeaponBlueprint>
function Hyperspace.vector_WeaponBlueprint(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.WeaponBlueprint
---@return vector<Hyperspace.WeaponBlueprint>
function Hyperspace.vector_WeaponBlueprint(unknown, unknown1) end

---@return vector<pair<integer, integer>>
function Hyperspace.vector_pair_int_int() end

---@param unknown uint
---@return vector<pair<integer, integer>>
function Hyperspace.vector_pair_int_int(unknown) end

---@param unknown vector<pair<integer, integer>>
---@return vector<pair<integer, integer>>
function Hyperspace.vector_pair_int_int(unknown) end

---@param unknown uint
---@param unknown1 pair<integer, integer>
---@return vector<pair<integer, integer>>
function Hyperspace.vector_pair_int_int(unknown, unknown1) end

---@return vector<Hyperspace.TextString>
function Hyperspace.vector_TextString() end

---@param unknown uint
---@return vector<Hyperspace.TextString>
function Hyperspace.vector_TextString(unknown) end

---@param unknown vector<Hyperspace.TextString>
---@return vector<Hyperspace.TextString>
function Hyperspace.vector_TextString(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.TextString
---@return vector<Hyperspace.TextString>
function Hyperspace.vector_TextString(unknown, unknown1) end

---@return vector<Graphics.GL_Color>
function Hyperspace.vector_GL_Color() end

---@param unknown uint
---@return vector<Graphics.GL_Color>
function Hyperspace.vector_GL_Color(unknown) end

---@param unknown vector<Graphics.GL_Color>
---@return vector<Graphics.GL_Color>
function Hyperspace.vector_GL_Color(unknown) end

---@param unknown uint
---@param unknown1 Graphics.GL_Color
---@return vector<Graphics.GL_Color>
function Hyperspace.vector_GL_Color(unknown, unknown1) end

---@return vector<vector<Graphics.GL_Color>>
function Hyperspace.vector_vector_GL_Color() end

---@param unknown uint
---@return vector<vector<Graphics.GL_Color>>
function Hyperspace.vector_vector_GL_Color(unknown) end

---@param unknown vector<vector<Graphics.GL_Color>>
---@return vector<vector<Graphics.GL_Color>>
function Hyperspace.vector_vector_GL_Color(unknown) end

---@param unknown uint
---@param unknown1 vector<Graphics.GL_Color>
---@return vector<vector<Graphics.GL_Color>>
function Hyperspace.vector_vector_GL_Color(unknown, unknown1) end

---@return vector<Hyperspace.CrewDesc>
function Hyperspace.vector_CrewDesc() end

---@param unknown uint
---@return vector<Hyperspace.CrewDesc>
function Hyperspace.vector_CrewDesc(unknown) end

---@param unknown vector<Hyperspace.CrewDesc>
---@return vector<Hyperspace.CrewDesc>
function Hyperspace.vector_CrewDesc(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.CrewDesc
---@return vector<Hyperspace.CrewDesc>
function Hyperspace.vector_CrewDesc(unknown, unknown1) end

---@return vector<Hyperspace.Fire>
function Hyperspace.vector_Fire() end

---@param unknown uint
---@return vector<Hyperspace.Fire>
function Hyperspace.vector_Fire(unknown) end

---@param unknown vector<Hyperspace.Fire>
---@return vector<Hyperspace.Fire>
function Hyperspace.vector_Fire(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Fire
---@return vector<Hyperspace.Fire>
function Hyperspace.vector_Fire(unknown, unknown1) end

---@return vector<vector<Hyperspace.Fire>>
function Hyperspace.vector_vector_Fire() end

---@param unknown uint
---@return vector<vector<Hyperspace.Fire>>
function Hyperspace.vector_vector_Fire(unknown) end

---@param unknown vector<vector<Hyperspace.Fire>>
---@return vector<vector<Hyperspace.Fire>>
function Hyperspace.vector_vector_Fire(unknown) end

---@param unknown uint
---@param unknown1 vector<Hyperspace.Fire>
---@return vector<vector<Hyperspace.Fire>>
function Hyperspace.vector_vector_Fire(unknown, unknown1) end

---@return vector<Hyperspace.CrewPlacementDefinition>
function Hyperspace.vector_CrewPlacementDefinition() end

---@param unknown uint
---@return vector<Hyperspace.CrewPlacementDefinition>
function Hyperspace.vector_CrewPlacementDefinition(unknown) end

---@param unknown vector<Hyperspace.CrewPlacementDefinition>
---@return vector<Hyperspace.CrewPlacementDefinition>
function Hyperspace.vector_CrewPlacementDefinition(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.CrewPlacementDefinition
---@return vector<Hyperspace.CrewPlacementDefinition>
function Hyperspace.vector_CrewPlacementDefinition(unknown, unknown1) end

---@return vector<String>
function Hyperspace.vector_string() end

---@param unknown uint
---@return vector<String>
function Hyperspace.vector_string(unknown) end

---@param unknown vector<String>
---@return vector<String>
function Hyperspace.vector_string(unknown) end

---@param unknown uint
---@param unknown1 String
---@return vector<String>
function Hyperspace.vector_string(unknown, unknown1) end

---@return vector<Hyperspace.StatBoostDefinition>
function Hyperspace.vector_StatBoostDefinition() end

---@param unknown uint
---@return vector<Hyperspace.StatBoostDefinition>
function Hyperspace.vector_StatBoostDefinition(unknown) end

---@param unknown vector<Hyperspace.StatBoostDefinition>
---@return vector<Hyperspace.StatBoostDefinition>
function Hyperspace.vector_StatBoostDefinition(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.StatBoostDefinition
---@return vector<Hyperspace.StatBoostDefinition>
function Hyperspace.vector_StatBoostDefinition(unknown, unknown1) end

---@return vector<Hyperspace.TriggeredEventDefinition>
function Hyperspace.vector_TriggeredEventDefinition() end

---@param unknown uint
---@return vector<Hyperspace.TriggeredEventDefinition>
function Hyperspace.vector_TriggeredEventDefinition(unknown) end

---@param unknown vector<Hyperspace.TriggeredEventDefinition>
---@return vector<Hyperspace.TriggeredEventDefinition>
function Hyperspace.vector_TriggeredEventDefinition(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.TriggeredEventDefinition
---@return vector<Hyperspace.TriggeredEventDefinition>
function Hyperspace.vector_TriggeredEventDefinition(unknown, unknown1) end

---@return pair<Hyperspace.Animation, integer>
function Hyperspace.pair_Animation_int8_t() end

---@param unknown Hyperspace.Animation
---@param unknown1 integer
---@return pair<Hyperspace.Animation, integer>
function Hyperspace.pair_Animation_int8_t(unknown, unknown1) end

---@param unknown pair<Hyperspace.Animation, integer>
---@return pair<Hyperspace.Animation, integer>
function Hyperspace.pair_Animation_int8_t(unknown) end

---@return vector<pair<Hyperspace.Animation, integer>>
function Hyperspace.vector_pair_Animation_int8_t() end

---@param unknown uint
---@return vector<pair<Hyperspace.Animation, integer>>
function Hyperspace.vector_pair_Animation_int8_t(unknown) end

---@param unknown vector<pair<Hyperspace.Animation, integer>>
---@return vector<pair<Hyperspace.Animation, integer>>
function Hyperspace.vector_pair_Animation_int8_t(unknown) end

---@param unknown uint
---@param unknown1 pair<Hyperspace.Animation, integer>
---@return vector<pair<Hyperspace.Animation, integer>>
function Hyperspace.vector_pair_Animation_int8_t(unknown, unknown1) end

---@return vector<Hyperspace.Location>
function Hyperspace.vector_location() end

---@param unknown uint
---@return vector<Hyperspace.Location>
function Hyperspace.vector_location(unknown) end

---@param unknown vector<Hyperspace.Location>
---@return vector<Hyperspace.Location>
function Hyperspace.vector_location(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Location
---@return vector<Hyperspace.Location>
function Hyperspace.vector_location(unknown, unknown1) end

---@return vector<Hyperspace.Choice>
function Hyperspace.vector_locationEventChoice() end

---@param unknown uint
---@return vector<Hyperspace.Choice>
function Hyperspace.vector_locationEventChoice(unknown) end

---@param unknown vector<Hyperspace.Choice>
---@return vector<Hyperspace.Choice>
function Hyperspace.vector_locationEventChoice(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Choice
---@return vector<Hyperspace.Choice>
function Hyperspace.vector_locationEventChoice(unknown, unknown1) end

---@return vector<Hyperspace.Choice>
function Hyperspace.vector_p_locationEventChoice() end

---@param unknown uint
---@return vector<Hyperspace.Choice>
function Hyperspace.vector_p_locationEventChoice(unknown) end

---@param unknown vector<Hyperspace.Choice>
---@return vector<Hyperspace.Choice>
function Hyperspace.vector_p_locationEventChoice(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Choice
---@return vector<Hyperspace.Choice>
function Hyperspace.vector_p_locationEventChoice(unknown, unknown1) end

---@return vector<Hyperspace.ChoiceText>
function Hyperspace.vector_choiceText() end

---@param unknown uint
---@return vector<Hyperspace.ChoiceText>
function Hyperspace.vector_choiceText(unknown) end

---@param unknown vector<Hyperspace.ChoiceText>
---@return vector<Hyperspace.ChoiceText>
function Hyperspace.vector_choiceText(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.ChoiceText
---@return vector<Hyperspace.ChoiceText>
function Hyperspace.vector_choiceText(unknown, unknown1) end

---@return vector<Hyperspace.ChoiceText>
function Hyperspace.vector_p_choiceText() end

---@param unknown uint
---@return vector<Hyperspace.ChoiceText>
function Hyperspace.vector_p_choiceText(unknown) end

---@param unknown vector<Hyperspace.ChoiceText>
---@return vector<Hyperspace.ChoiceText>
function Hyperspace.vector_p_choiceText(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.ChoiceText
---@return vector<Hyperspace.ChoiceText>
function Hyperspace.vector_p_choiceText(unknown, unknown1) end

---@return vector<Hyperspace.Sector>
function Hyperspace.vector_Sector() end

---@param unknown uint
---@return vector<Hyperspace.Sector>
function Hyperspace.vector_Sector(unknown) end

---@param unknown vector<Hyperspace.Sector>
---@return vector<Hyperspace.Sector>
function Hyperspace.vector_Sector(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.Sector
---@return vector<Hyperspace.Sector>
function Hyperspace.vector_Sector(unknown, unknown1) end

---@return vector<Hyperspace.LockdownShard>
function Hyperspace.vector_LockdownShard() end

---@param unknown uint
---@return vector<Hyperspace.LockdownShard>
function Hyperspace.vector_LockdownShard(unknown) end

---@param unknown vector<Hyperspace.LockdownShard>
---@return vector<Hyperspace.LockdownShard>
function Hyperspace.vector_LockdownShard(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.LockdownShard
---@return vector<Hyperspace.LockdownShard>
function Hyperspace.vector_LockdownShard(unknown, unknown1) end

---@return vector<Hyperspace.LockdownShard>
function Hyperspace.vector_p_LockdownShard() end

---@param unknown uint
---@return vector<Hyperspace.LockdownShard>
function Hyperspace.vector_p_LockdownShard(unknown) end

---@param unknown vector<Hyperspace.LockdownShard>
---@return vector<Hyperspace.LockdownShard>
function Hyperspace.vector_p_LockdownShard(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.LockdownShard
---@return vector<Hyperspace.LockdownShard>
function Hyperspace.vector_p_LockdownShard(unknown, unknown1) end

---@return unordered_multimap<String, Hyperspace.AugmentFunction>
function Hyperspace.unordered_multimap_string_AugmentFunction() end

---@param unknown unordered_multimap<String, Hyperspace.AugmentFunction>
---@return unordered_multimap<String, Hyperspace.AugmentFunction>
function Hyperspace.unordered_multimap_string_AugmentFunction(unknown) end

---@return pair<String, Hyperspace.AugmentFunction>
function Hyperspace.pair_string_AugmentFunction() end

---@param unknown String
---@param unknown1 Hyperspace.AugmentFunction
---@return pair<String, Hyperspace.AugmentFunction>
function Hyperspace.pair_string_AugmentFunction(unknown, unknown1) end

---@param unknown pair<String, Hyperspace.AugmentFunction>
---@return pair<String, Hyperspace.AugmentFunction>
function Hyperspace.pair_string_AugmentFunction(unknown) end

---@return vector<Hyperspace.AugmentCrystalShard>
function Hyperspace.vector_AugmentCrystalShard() end

---@param unknown uint
---@return vector<Hyperspace.AugmentCrystalShard>
function Hyperspace.vector_AugmentCrystalShard(unknown) end

---@param unknown vector<Hyperspace.AugmentCrystalShard>
---@return vector<Hyperspace.AugmentCrystalShard>
function Hyperspace.vector_AugmentCrystalShard(unknown) end

---@param unknown uint
---@param unknown1 Hyperspace.AugmentCrystalShard
---@return vector<Hyperspace.AugmentCrystalShard>
function Hyperspace.vector_AugmentCrystalShard(unknown, unknown1) end

---@class Hyperspace.ToggleValue_int
---@field value integer
---@field enabled boolean
Hyperspace.ToggleValue_int = {}

---@return Hyperspace.ToggleValue_int
function Hyperspace.ToggleValue_int() end

---@param unknown integer
---@return Hyperspace.ToggleValue_int
function Hyperspace.ToggleValue_int(unknown) end

---@class Hyperspace.ToggleValue_float
---@field value number
---@field enabled boolean
Hyperspace.ToggleValue_float = {}

---@return Hyperspace.ToggleValue_float
function Hyperspace.ToggleValue_float() end

---@param unknown number
---@return Hyperspace.ToggleValue_float
function Hyperspace.ToggleValue_float(unknown) end

---@class Hyperspace.ToggleValue_bool
---@field value boolean
---@field enabled boolean
Hyperspace.ToggleValue_bool = {}

---@return Hyperspace.ToggleValue_bool
function Hyperspace.ToggleValue_bool() end

---@param unknown boolean
---@return Hyperspace.ToggleValue_bool
function Hyperspace.ToggleValue_bool(unknown) end

---@class Hyperspace.HyperspaceVersion
---@field major uint (Read-only)
---@field minor uint (Read-only)
---@field patch uint (Read-only)
Hyperspace.HyperspaceVersion = {}

---@return integer
function Hyperspace.HyperspaceVersion:getDeprecatedIntegerVersion() end

---@return boolean
function Hyperspace.HyperspaceVersion:isFeatureBuild() end

---@return string
function Hyperspace.HyperspaceVersion:getFeatureName() end

---@return string
function Hyperspace.HyperspaceVersion:toIdentifierString() end

---@return string
function Hyperspace.HyperspaceVersion:toVersionString() end

---@return string
function Hyperspace.HyperspaceVersion:__tostring() end

---@class Hyperspace.Global
---@field currentSeed uint (Read-only) **Read-only**<br>The seed for the run.
Hyperspace.Global = {}

--- Returns the instance of [`ShipManager`](#ShipManager) associated with the given ID (can be 0 or 1). If a ship does not exist for the given ID, returns `nil`.
---@param iShipId integer
---@return Hyperspace.ShipManager
function Hyperspace.Global:GetShipManager(iShipId) end

--- Returns the main instance of [`CApp`](#CApp). Always use this to access any members and methods belonging to the [`CApp`](#CApp) class, or the shortcut `Hyperspace.App`.
---@return Hyperspace.CApp
function Hyperspace.Global:GetCApp() end

--- Returns [`ShipInfo`](#ShipInfo) for the player ship if `enemy` is `false`, or for the enemy ship if `enemy` is `true`.
---@param enemy? boolean = false
---@return Hyperspace.ShipInfo
function Hyperspace.Global:GetShipInfo(enemy) end

--- Returns the main instance of [`BlueprintManager`](#BlueprintManager). Always use this to access any members and methods belonging to the [`BlueprintManager`](#BlueprintManager) class, or the shortcut `Hyperspace.Blueprints`.
---@return Hyperspace.BlueprintManager
function Hyperspace.Global:GetBlueprints() end

--- Returns the main instance of [`SoundControl`](#SoundControl). Always use this to access any members and methods belonging to the [`SoundControl`](#SoundControl) class, or the shortcut `Hyperspace.Sounds`.
---@return Hyperspace.SoundControl
function Hyperspace.Global:GetSoundControl() end

--- Returns the main instance of [`AnimationControl`](#AnimationControl). Always use this to access any members and methods belonging to the [`AnimationControl`](#AnimationControl) class, or the shortcut `Hyperspace.Animations`.
---@return Hyperspace.AnimationControl
function Hyperspace.Global:GetAnimationControl() end

--- Returns the main instance of [`ScoreKeeper`](#ScoreKeeper). Always use this to access any members and methods belonging to the [`ScoreKeeper`](#ScoreKeeper) class, or the shortcut `Hyperspace.Score`.
---@return Hyperspace.ScoreKeeper
function Hyperspace.Global:GetScoreKeeper() end

--- Returns the main instance of [`CrewMemberFactory`](#CrewMemberFactory). Always use this to access any members and methods belonging to the [`CrewMemberFactory`](#CrewMemberFactory) class, or the shortcut `Hyperspace.CrewFactory`.
---@return Hyperspace.CrewMemberFactory
function Hyperspace.Global:GetCrewFactory() end

--- Returns the main instance of [`TutorialManager`](#TutorialManager). Always use this to access any members and methods belonging to the [`TutorialManager`](#TutorialManager) class, or the shortcut `Hyperspace.Tutorial`.
---@return Hyperspace.TutorialManager
function Hyperspace.Global:GetTutorialManager() end

--- Returns the main instance of [`MouseControl`](#MouseControl). Always use this to access any members and methods belonging to the [`MouseControl`](#MouseControl) class, or the shortcut `Hyperspace.Mouse`.
---@return Hyperspace.MouseControl
function Hyperspace.Global:GetMouseControl() end

--- Returns the main instance of [`TextLibrary`](#TextLibrary). Always use this to access any members and methods belonging to the [`TextLibrary`](#TextLibrary) class, or the shortcut `Hyperspace.Text`.
---@return Hyperspace.TextLibrary
function Hyperspace.Global:GetTextLibrary() end

--- Returns the main instance of [`EventGenerator`](#EventGenerator). Always use this to access any members and methods belonging to the [`EventGenerator`](#EventGenerator) class, or the shortcut `Hyperspace.Event`.
---@return Hyperspace.EventGenerator
function Hyperspace.Global:GetEventGenerator() end

--- Returns the main instance of [`Global`](#Global). Always use this to access any members and methods belonging to this class. `Hyperspace.Global.GetInstance()`
---@return Hyperspace.Global
function Hyperspace.Global.GetInstance() end

---@return boolean
function Hyperspace.Global.IsSeededRun() end

---@class Hyperspace.CFPS
---@field RunningTime number (Read-only)
---@field OldTime number (Read-only)
---@field LastTime number (Read-only)
---@field SpeedFactor number (Read-only)
---@field NumFrames integer (Read-only)
---@field Frames integer (Read-only)
---@field speedLevel integer
---@field speedEnabled boolean
Hyperspace.CFPS = {}

---@class Hyperspace.playerVariableType
Hyperspace.playerVariableType = {}

---@return Hyperspace.playerVariableType
function Hyperspace.playerVariableType() end

---@param unknown Hyperspace.playerVariableType
---@return Hyperspace.playerVariableType
function Hyperspace.playerVariableType(unknown) end

---@return uint
function Hyperspace.playerVariableType:size() end

---@return boolean
function Hyperspace.playerVariableType:empty() end

---@return unknown
function Hyperspace.playerVariableType:clear() end

---@param unknown String
---@return integer
function Hyperspace.playerVariableType:get(unknown) end

---@param unknown String
---@param unknown1 integer
---@return unknown
function Hyperspace.playerVariableType:set(unknown, unknown1) end

---@param unknown String
---@return unknown
function Hyperspace.playerVariableType:del(unknown) end

---@param unknown String
---@return boolean
function Hyperspace.playerVariableType:has_key(unknown) end

---@param unknown String
---@return integer
function Hyperspace.playerVariableType:__getitem(unknown) end

---@param unknown String
---@param unknown1 integer
---@return unknown
function Hyperspace.playerVariableType:__setitem(unknown, unknown1) end

---@class Hyperspace.GL_Texture_Pointer_Array_Size_3_Wrapper
Hyperspace.GL_Texture_Pointer_Array_Size_3_Wrapper = {}

---@param unknown uint
---@return Graphics.GL_Texture
function Hyperspace.GL_Texture_Pointer_Array_Size_3_Wrapper:__getitem(unknown) end

---@param unknown uint
---@param unknown1 Graphics.GL_Texture
---@return unknown
function Hyperspace.GL_Texture_Pointer_Array_Size_3_Wrapper:__setitem(unknown, unknown1) end

---@class Hyperspace.GL_Primitive_Pointer_Array_Size_3_Wrapper
Hyperspace.GL_Primitive_Pointer_Array_Size_3_Wrapper = {}

---@param unknown uint
---@return Graphics.GL_Primitive
function Hyperspace.GL_Primitive_Pointer_Array_Size_3_Wrapper:__getitem(unknown) end

---@param unknown uint
---@param unknown1 Graphics.GL_Primitive
---@return unknown
function Hyperspace.GL_Primitive_Pointer_Array_Size_3_Wrapper:__setitem(unknown, unknown1) end

---@class Hyperspace.Point
---@field x integer
---@field y integer
Hyperspace.Point = {}

---@param xx integer
---@param yy integer
---@return Hyperspace.Point
function Hyperspace.Point(xx, yy) end

---@return Hyperspace.Point
function Hyperspace.Point() end

---@param unknown Hyperspace.Point
---@return Hyperspace.Point
function Hyperspace.Point:__add(unknown) end

---@param unknown Hyperspace.Point
---@return Hyperspace.Point
function Hyperspace.Point:__sub(unknown) end

---@param unknown integer
---@return Hyperspace.Point
function Hyperspace.Point:__div(unknown) end

---@param unknown integer
---@return Hyperspace.Point
function Hyperspace.Point:__mul(unknown) end

---@param other Hyperspace.Point
---@return integer
function Hyperspace.Point:Distance(other) end

---@param other Hyperspace.Point
---@return integer
function Hyperspace.Point:RelativeDistance(other) end

---@class Hyperspace.TextLibrary
Hyperspace.TextLibrary = {}

--- Retrieve the corresponding text string from the `text_` xml files in the current language.
---@param name String
---@return string
function Hyperspace.TextLibrary:GetText(name) end

---@param name String
---@param lang String
---@return string
function Hyperspace.TextLibrary:GetText(name, lang) end

---@class Hyperspace.TextString
---@field data String You can change the text by setting this value.<br>If `.isLiteral` is true, this stores the text itself, otherwise it stores the text id.
---@field isLiteral boolean If true, the game will display the value of `.data`, otherwise it will refer to the text id from the value of `.data`.
Hyperspace.TextString = {}

---@return Hyperspace.TextString
function Hyperspace.TextString() end

---@param str String
---@param literal boolean
---@return Hyperspace.TextString
function Hyperspace.TextString(str, literal) end

--- If `.isLiteral` is true, this gets the value of `.data`, otherwise it gets the text referring to the text id from the value of `.data`.
---@return string
function Hyperspace.TextString:GetText() end

---@class Hyperspace.AnimationTracker
---@field time number
---@field loop boolean
---@field current_time number
---@field running boolean
---@field reverse boolean
---@field done boolean
---@field loopDelay number
---@field currentDelay number
Hyperspace.AnimationTracker = {}

---@return Hyperspace.AnimationTracker
function Hyperspace.AnimationTracker() end

---@param reverse boolean
---@return number
function Hyperspace.AnimationTracker:GetAlphaLevel(reverse) end

---@param speed number
---@return number
function Hyperspace.AnimationTracker:Progress(speed) end

---@param loop boolean
---@param loopDelay number
function Hyperspace.AnimationTracker:SetLoop(loop, loopDelay) end

---@param time number
function Hyperspace.AnimationTracker:SetProgress(time) end

---@param time number
function Hyperspace.AnimationTracker:Start(time) end

---@param time number
function Hyperspace.AnimationTracker:StartReverse(time) end

---@param resetTime boolean
function Hyperspace.AnimationTracker:Stop(resetTime) end

---@class Hyperspace.AnimationDescriptor
---@field numFrames integer
---@field imageWidth integer
---@field imageHeight integer
---@field stripStartY integer
---@field stripStartX integer
---@field frameWidth integer
---@field frameHeight integer
Hyperspace.AnimationDescriptor = {}

---@class Hyperspace.Pointf
---@field x number
---@field y number
Hyperspace.Pointf = {}

---@return Hyperspace.Pointf
function Hyperspace.Pointf() end

---@param _x number
---@param _y number
---@return Hyperspace.Pointf
function Hyperspace.Pointf(_x, _y) end

---@param unknown Hyperspace.Pointf
---@return Hyperspace.Pointf
function Hyperspace.Pointf:__add(unknown) end

---@param unknown Hyperspace.Pointf
---@return Hyperspace.Pointf
function Hyperspace.Pointf:__sub(unknown) end

---@param unknown number
---@return Hyperspace.Pointf
function Hyperspace.Pointf:__div(unknown) end

---@param unknown number
---@return Hyperspace.Pointf
function Hyperspace.Pointf:__mul(unknown) end

---@return Hyperspace.Pointf
function Hyperspace.Pointf:Normalize() end

---@param other Hyperspace.Pointf
---@return number
function Hyperspace.Pointf:RelativeDistance(other) end

---@param x number
---@param y number
function Hyperspace.Pointf:constructor(x, y) end

---@class Hyperspace.Animation
---@field animationStrip Graphics.GL_Texture
---@field info Hyperspace.AnimationDescriptor
---@field tracker Hyperspace.AnimationTracker
---@field position Hyperspace.Pointf
---@field soundForward String
---@field soundReverse String
---@field randomizeFrames boolean
---@field fScale number
---@field fYStretch number
---@field currentFrame integer
---@field bAlwaysMirror boolean
---@field soundQueue vector<vector<String>>
---@field fadeOut number
---@field startFadeOut number
---@field animName String
---@field mask_x_pos integer
---@field mask_x_size integer
---@field mask_y_pos integer
---@field mask_y_size integer
---@field primitive Graphics.GL_Primitive
---@field mirroredPrimitive Graphics.GL_Primitive
Hyperspace.Animation = {}

---@return Hyperspace.Animation
function Hyperspace.Animation() end

---@param _image String
---@param _length integer
---@param _time number
---@param _position Hyperspace.Pointf
---@param _imageWidth integer
---@param _imageHeight integer
---@param _stripStartX integer
---@param _numFrames integer
---@return Hyperspace.Animation
function Hyperspace.Animation(_image, _length, _time, _position, _imageWidth, _imageHeight, _stripStartX, _numFrames) end

---@param frame integer
---@param sound String
function Hyperspace.Animation:AddSoundQueue(frame, sound) end

---@return boolean
function Hyperspace.Animation:Done() end

---@param fd integer
function Hyperspace.Animation:LoadState(fd) end

---@param opacity number
---@param color Graphics.GL_Color
---@param mirror boolean
function Hyperspace.Animation:OnRender(opacity, color, mirror) end

---@return integer
function Hyperspace.Animation:RandomStart() end

---@param fd integer
function Hyperspace.Animation:SaveState(fd) end

---@param tex Graphics.GL_Texture
function Hyperspace.Animation:SetAnimationId(tex) end

---@param frame integer
function Hyperspace.Animation:SetCurrentFrame(frame) end

---@param progress number
function Hyperspace.Animation:SetProgress(progress) end

---@param reset boolean
function Hyperspace.Animation:Start(reset) end

---@param reset boolean
function Hyperspace.Animation:StartReverse(reset) end

function Hyperspace.Animation:Update() end

---@class Hyperspace.WeaponMount
---@field position Hyperspace.Point
---@field mirror boolean
---@field rotate boolean
---@field slide integer
---@field gib integer
Hyperspace.WeaponMount = {}

---@class Hyperspace.WeaponAnimation
---@field anim Hyperspace.Animation
---@field bFireShot boolean
---@field bFiring boolean
---@field fChargeLevel number
---@field iChargedFrame integer
---@field iFireFrame integer
---@field bMirrored boolean
---@field bRotation boolean
---@field fireLocation Hyperspace.Point
---@field bPowered boolean
---@field mountPoint Hyperspace.Point
---@field renderPoint Hyperspace.Point
---@field fireMountVector Hyperspace.Point
---@field slideTracker Hyperspace.AnimationTracker
---@field slideDirection integer
---@field explosionAnim Hyperspace.Animation
---@field mount Hyperspace.WeaponMount
---@field fDelayChargeTime number
---@field boostAnim Hyperspace.Animation
---@field boostLevel integer
---@field bShowCharge boolean
---@field fActualChargeLevel number
---@field iChargeOffset integer
---@field iChargeLevels integer
---@field currentOffset integer
---@field iHackLevel integer
---@field hackSparks Hyperspace.Animation
---@field playerShip boolean
Hyperspace.WeaponAnimation = {}

---@return Hyperspace.Pointf
function Hyperspace.WeaponAnimation:GetSlide() end

---@param time number
function Hyperspace.WeaponAnimation:SetFireTime(time) end

---@class Hyperspace.AnimationControl
Hyperspace.AnimationControl = {}

---@param animName String
---@return Hyperspace.Animation
function Hyperspace.AnimationControl:GetAnimation(animName) end

---@class Hyperspace.Globals
Hyperspace.Globals = {}

---@class Hyperspace.Ellipse
---@field center Hyperspace.Point
---@field a number
---@field b number
Hyperspace.Ellipse = {}

---@return Hyperspace.Ellipse
function Hyperspace.Ellipse() end

---@class Hyperspace.Rect
---@field x integer
---@field y integer
---@field w integer
---@field h integer
Hyperspace.Rect = {}

---@return Hyperspace.Rect
function Hyperspace.Rect() end

---@param unknown integer
---@param unknown1 integer
---@param unknown2 integer
---@param unknown3 integer
---@return Hyperspace.Rect
function Hyperspace.Rect(unknown, unknown1, unknown2, unknown3) end

---@class Hyperspace.SystemBox
---@field location Hyperspace.Point The location of the SystemBox.
---@field pSystem Hyperspace.ShipSystem The ShipSystem managed by this SystemBox.
---@field bPlayerUI boolean
---@field extend Hyperspace.SystemBox_Extend (Read-only) **Read-only**<br>The SystemBox_Extend associated with this SystemBox.
Hyperspace.SystemBox = {
    table = {},
}

---@return Hyperspace.SystemBox
function Hyperspace.SystemBox() end

---@param pos Hyperspace.Point
---@param sys Hyperspace.ShipSystem
---@param playerUI boolean
---@return Hyperspace.SystemBox
function Hyperspace.SystemBox(pos, sys, playerUI) end

---@class Hyperspace.ShipObject
---@field iShipId integer (Read-only)
Hyperspace.ShipObject = {}

--- Adds the specified augment to the ship. Works properly with hidden augments.
---@param augment String
---@return boolean
function Hyperspace.ShipObject:AddAugmentation(augment) end

function Hyperspace.ShipObject:ClearShipInfo() end

--- Returns the number of augments on the ship.
---@return integer
function Hyperspace.ShipObject:GetAugmentationCount() end

--- Returns a `std::vector<std::string>` of augments, in Lua you can handle this as if it was an array of strings.
---@return vector<String>
function Hyperspace.ShipObject:GetAugmentationList() end

--- Returns the value of the augment, this corresponds to the value defined in blueprints.xml. If the ship has multiple, their values are added together.
---@param augment String
---@return number
function Hyperspace.ShipObject:GetAugmentationValue(augment) end

--- Returns the number of the given augment you have, NOT a bool.
---@param augment String
---@return integer
function Hyperspace.ShipObject:HasAugmentation(augment) end

--- Removes the specified augment from the ship. Does nothing if the augment isn't present. Works properly with hidden augments.
---@param augment String
function Hyperspace.ShipObject:RemoveAugmentation(augment) end

--- Returns an int indicating whether you have the blue options for the specified equipment.<br>checkCargo indicates if cargo will be included in the check.
---@param equipmentName String
---@param checkCargo? boolean = false
---@return integer
function Hyperspace.ShipObject:HasEquipment(equipmentName, checkCargo) end

---@param equip String
---@return integer
function Hyperspace.ShipObject:HasEquipment(equip) end

---@class Hyperspace.TimerHelper
---@field maxTime integer
---@field minTime integer
---@field currTime number
---@field currGoal number
---@field loop boolean
---@field running boolean
Hyperspace.TimerHelper = {}

---@param isLoop? boolean = false
---@return Hyperspace.TimerHelper
function Hyperspace.TimerHelper(isLoop) end

---@return Hyperspace.TimerHelper
function Hyperspace.TimerHelper() end

---@param unknown number
---@return unknown
function Hyperspace.TimerHelper:Start_Float(unknown) end

---@return boolean
function Hyperspace.TimerHelper:Done() end

---@param min integer
---@param max integer
function Hyperspace.TimerHelper:ResetMinMax(min, max) end

---@return boolean
function Hyperspace.TimerHelper:Running() end

---@param max number
function Hyperspace.TimerHelper:SetMaxTime(max) end

---@param goal integer
function Hyperspace.TimerHelper:Start(goal) end

function Hyperspace.TimerHelper:Stop() end

function Hyperspace.TimerHelper:Update() end

---@class Hyperspace.ShipSystem
---@field _shipObj Hyperspace.ShipObject
---@field fDamage number
---@field pLoc Hyperspace.Point
---@field fMaxDamage number
---@field name String
---@field roomId integer
---@field iRepairCount integer
---@field iSystemType integer
---@field bNeedsManned boolean If the system requires manning to function.
---@field bManned boolean
---@field iActiveManned integer
---@field bBoostable boolean If the system can be manned by a crewmember.
---@field powerState pair<integer, integer>
---@field iRequiredPower integer
---@field bOnFire boolean
---@field bBreached boolean
---@field healthState pair<integer, integer>
---@field fDamageOverTime number
---@field fRepairOverTime number
---@field damagedLastFrame boolean I don't know if this can be set to true per-frame to hold the damage over time progression counter, it might be able to freeze the graphic so it doesn't count down.
---@field repairedLastFrame boolean I don't know if this can be set to true per-frame to hold the repair over time progression counter, it might be able to freeze the graphic so it doesn't count down.
---@field originalPower integer
---@field bNeedsPower boolean True for regular systems, false for subsystems.
---@field iTempPowerCap integer
---@field iTempPowerLoss integer
---@field iTempDividePower integer
---@field iLockCount integer
---@field lockTimer Hyperspace.TimerHelper
---@field bExploded boolean
---@field bOccupied boolean
---@field bFriendlies boolean
---@field interiorImageName String
---@field interiorImage Graphics.GL_Primitive
---@field interiorImageOn Graphics.GL_Primitive
---@field interiorImageManned Graphics.GL_Primitive
---@field interiorImageMannedFancy Graphics.GL_Primitive
---@field lastUserPower integer
---@field iBonusPower integer
---@field iLastBonusPower integer
---@field location Hyperspace.Pointf
---@field bpCost integer
---@field flashTracker Hyperspace.AnimationTracker
---@field maxLevel integer
---@field iBatteryPower integer
---@field iHackEffect integer
---@field bUnderAttack boolean
---@field bLevelBoostable boolean If the system is given an additional level when manned by a crewmember (e.g. doors, sensors).
---@field bTriggerIon boolean
---@field computerLevel integer
---@field extend Hyperspace.ShipSystem_Extend (Read-only) **Since 1.4.0**
Hyperspace.ShipSystem = {
    table = {},
}

---@return Hyperspace.ShipSystem
function Hyperspace.ShipSystem() end

---@param systemId integer
---@param roomId integer
---@param shipId integer
---@param startingPower integer
---@return Hyperspace.ShipSystem
function Hyperspace.ShipSystem(systemId, roomId, shipId, startingPower) end

---@param selectedState integer
function Hyperspace.ShipSystem:SetSelected(selectedState) end

---@return integer
function Hyperspace.ShipSystem:GetSelected() end

---@return boolean
function Hyperspace.ShipSystem:CompletelyDestroyed() end

---@param name String
function Hyperspace.ShipSystem:SetName(name) end

--- Not sure if this is a function called every tick to cause repairs or what, probably not useful to lua
function Hyperspace.ShipSystem:Repair() end

--- Cause a partial repair of a system (opposite of partialDamage) must be called every tick or else you will not see any change
---@param speed number
---@param autoRepair boolean
---@return boolean
function Hyperspace.ShipSystem:PartialRepair(speed, autoRepair) end

--- Must be called every tick or else you will not see any change
---@param amount number
---@return boolean
function Hyperspace.ShipSystem:PartialDamage(amount) end

---@return boolean
function Hyperspace.ShipSystem:NeedsRepairing() end

---@return boolean
function Hyperspace.ShipSystem:Functioning() end

---@return boolean
function Hyperspace.ShipSystem:CanBeSabotaged() end

---@return number
function Hyperspace.ShipSystem:GetDamage() end

---@param damage number
function Hyperspace.ShipSystem:SetDamage(damage) end

---@param maxDamage number
function Hyperspace.ShipSystem:SetMaxDamage(maxDamage) end

---@param position Hyperspace.Point
function Hyperspace.ShipSystem:SetLocation(position) end

---@return integer
function Hyperspace.ShipSystem:GetId() end

---@return boolean
function Hyperspace.ShipSystem:IsRoomBased() end

---@return integer
function Hyperspace.ShipSystem:GetRoomId() end

function Hyperspace.ShipSystem:SetRoomId() end

---@param hackingLevel integer
function Hyperspace.ShipSystem:SetHackingLevel(hackingLevel) end

---@param power integer
function Hyperspace.ShipSystem:ForceBatteryPower(power) end

function Hyperspace.ShipSystem:RemoveBatteryPower() end

function Hyperspace.ShipSystem:CheckMaxPower() end

---@param amount integer
---@param permanentPower integer
function Hyperspace.ShipSystem:SetBonusPower(amount, permanentPower) end

---@param amount integer
function Hyperspace.ShipSystem:AddDamage(amount) end

---@param powerLoss integer
---@return boolean
function Hyperspace.ShipSystem:ForceDecreasePower(powerLoss) end

---@param power integer
---@return boolean
function Hyperspace.ShipSystem:ForceIncreasePower(power) end

function Hyperspace.ShipSystem:StopHacking() end

---@return boolean
function Hyperspace.ShipSystem:GetNeedsPower() end

---@return boolean
function Hyperspace.ShipSystem:Clickable() end

---@return boolean
function Hyperspace.ShipSystem:Powered() end

---@param lock integer
function Hyperspace.ShipSystem:AddLock(lock) end

function Hyperspace.ShipSystem:CheckForRepower() end

function Hyperspace.ShipSystem:ClearStatus() end

---@param unk number
---@return boolean
function Hyperspace.ShipSystem:DamageOverTime(unk) end

---@param force boolean
---@return boolean
function Hyperspace.ShipSystem:DecreasePower(force) end

---@return integer
function Hyperspace.ShipSystem:GetEffectivePower() end

---@return boolean
function Hyperspace.ShipSystem:GetLocked() end

---@return integer
function Hyperspace.ShipSystem:GetMaxPower() end

---@return integer
function Hyperspace.ShipSystem:GetPowerCap() end

---@param amount integer
---@param force boolean
---@return boolean
function Hyperspace.ShipSystem:IncreasePower(amount, force) end

---@param amount integer
function Hyperspace.ShipSystem:IonDamage(amount) end

---@return boolean
function Hyperspace.ShipSystem:Ioned() end

---@param num integer
---@return boolean
function Hyperspace.ShipSystem:Ioned(num) end

---@return integer
function Hyperspace.ShipSystem:IsMannedBoost() end

---@param lock integer
function Hyperspace.ShipSystem:LockSystem(lock) end

---@param cap integer
function Hyperspace.ShipSystem:SetPowerCap(cap) end

---@param power integer
---@return integer
function Hyperspace.ShipSystem:SetPowerLoss(power) end

--- Upgrading a system is basically the same as changing the max power of a system although I think max power might reset after a jump? Not sure haven't tested.<br>I think negative upgrades (downgrades) are allowed, please report if they are not.
---@param amount integer
---@return boolean
function Hyperspace.ShipSystem:UpgradeSystem(amount) end

---@param systemId integer
---@param level integer
---@param tooltip boolean
---@return string
function Hyperspace.ShipSystem.GetLevelDescription(systemId, level, tooltip) end

---@param systemType integer
---@return boolean
function Hyperspace.ShipSystem.IsSubsystem(systemType) end

---@param name String
---@return integer
function Hyperspace.ShipSystem.NameToSystemId(name) end

---@param systemId integer
---@return string
function Hyperspace.ShipSystem.SystemIdToName(systemId) end

---@class Hyperspace.ArtillerySystem: Hyperspace.ShipSystem
---@field projectileFactory Hyperspace.ProjectileFactory
---@field target Hyperspace.Targetable
---@field bCloaked boolean
Hyperspace.ArtillerySystem = {}

---@class Hyperspace.CollisionResponse
---@field collision_type integer
---@field point Hyperspace.Pointf
---@field damage integer
---@field superDamage integer
Hyperspace.CollisionResponse = {}

---@return Hyperspace.CollisionResponse
function Hyperspace.CollisionResponse() end

---@class Hyperspace.Damage
---@field iDamage integer
---@field iShieldPiercing integer
---@field fireChance integer
---@field breachChance integer
---@field stunChance integer
---@field iIonDamage integer
---@field iSystemDamage integer
---@field iPersDamage integer
---@field bHullBuster boolean
---@field ownerId integer
---@field selfId integer
---@field bLockdown boolean
---@field crystalShard boolean
---@field bFriendlyFire boolean
---@field iStun integer
Hyperspace.Damage = {}

---@return Hyperspace.Damage
function Hyperspace.Damage() end

---@class Hyperspace.Collideable
Hyperspace.Collideable = {}

---@param start Hyperspace.Pointf
---@param finish Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@param raytrace boolean
---@return Hyperspace.CollisionResponse
function Hyperspace.Collideable:CollisionMoving(start, finish, damage, raytrace) end

---@param current Hyperspace.Pointf
---@param last Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@return boolean
function Hyperspace.Collideable:DamageBeam(current, last, damage) end

---@param location Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@param forceHit boolean
---@return boolean
function Hyperspace.Collideable:DamageArea(location, damage, forceHit) end

---@param location Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@param forceHit boolean
---@return boolean
function Hyperspace.Collideable:DamageShield(location, damage, forceHit) end

---@return boolean
function Hyperspace.Collideable:GetDodged() end

---@return Hyperspace.Pointf
function Hyperspace.Collideable:GetSuperShield() end

---@param location Hyperspace.Pointf
function Hyperspace.Collideable:SetTempVision(location) end

---@return integer
function Hyperspace.Collideable:GetSpaceId() end

---@return integer
function Hyperspace.Collideable:GetSelfId() end

---@return integer
function Hyperspace.Collideable:GetOwnerId() end

---@param location Hyperspace.Pointf
---@return boolean
function Hyperspace.Collideable:ValidTargetLocation(location) end

---@class Hyperspace.ShieldPower
---@field first integer
---@field second integer
---@field super pair<integer, integer>
Hyperspace.ShieldPower = {}

---@class Hyperspace.Targetable
---@field type integer
---@field hostile boolean
---@field targeted boolean
Hyperspace.Targetable = {}

---@return Hyperspace.Pointf
function Hyperspace.Targetable:GetWorldCenterPoint() end

---@param unk boolean
---@return Hyperspace.Pointf
function Hyperspace.Targetable:GetRandomTargettingPoint(unk) end

---@return vector<Hyperspace.Pointf>
function Hyperspace.Targetable:GetAllTargettingPoints() end

---@return Hyperspace.Ellipse
function Hyperspace.Targetable:GetShieldShape() end

---@return Hyperspace.ShieldPower
function Hyperspace.Targetable:GetShieldPower() end

---@return integer
function Hyperspace.Targetable:GetSpaceId() end

---@return Hyperspace.Pointf
function Hyperspace.Targetable:GetSpeed() end

---@return integer
function Hyperspace.Targetable:GetOwnerId() end

---@return integer
function Hyperspace.Targetable:GetSelfId() end

---@return boolean
function Hyperspace.Targetable:IsCloaked() end

---@param unknown Hyperspace.Pointf
---@param unknown1 Hyperspace.Damage
function Hyperspace.Targetable:DamageTarget(unknown, unknown1) end

---@return boolean
function Hyperspace.Targetable:GetIsDying() end

---@return boolean
function Hyperspace.Targetable:GetIsJumping() end

---@return boolean
function Hyperspace.Targetable:ValidTarget() end

---@return Hyperspace.Rect
function Hyperspace.Targetable:GetShape() end

---@class Hyperspace.Projectile: Hyperspace.Collideable
---@field _targetable Hyperspace.Targetable
---@field position Hyperspace.Pointf
---@field last_position Hyperspace.Pointf
---@field speed_magnitude number
---@field target Hyperspace.Pointf
---@field heading number
---@field ownerId integer
---@field selfId uint (Read-only) **read-only**
---@field damage Hyperspace.Damage
---@field lifespan number
---@field destinationSpace integer
---@field currentSpace integer
---@field targetId integer
---@field dead boolean
---@field death_animation Hyperspace.Animation
---@field flight_animation Hyperspace.Animation
---@field speed Hyperspace.Pointf
---@field missed boolean
---@field hitTarget boolean
---@field hitSolidSound String
---@field hitShieldSound String
---@field entryAngle number
---@field startedDeath boolean
---@field passedTarget boolean
---@field bBroadcastTarget boolean
---@field flashTracker Hyperspace.AnimationTracker
---@field color Graphics.GL_Color
---@field extend Hyperspace.Projectile_Extend (Read-only) **read-only**
Hyperspace.Projectile = {
    table = {},
}

function Hyperspace.Projectile:OnUpdate() end

---@param other Hyperspace.Collideable
function Hyperspace.Projectile:CollisionCheck(other) end

---@param animation Hyperspace.WeaponAnimation
function Hyperspace.Projectile:SetWeaponAnimation(animation) end

---@param spaceId integer
function Hyperspace.Projectile:OnRenderSpecific(spaceId) end

---@return Hyperspace.Pointf
function Hyperspace.Projectile:GetWorldCenterPoint() end

---@param valuable boolean
---@return Hyperspace.Pointf
function Hyperspace.Projectile:GetRandomTargettingPoint(valuable) end

function Hyperspace.Projectile:ComputeHeading() end

---@param space integer
function Hyperspace.Projectile:SetDestinationSpace(space) end

function Hyperspace.Projectile:EnterDestinationSpace() end

---@return boolean
function Hyperspace.Projectile:Dead() end

---@return boolean
function Hyperspace.Projectile:ValidTarget() end

function Hyperspace.Projectile:Kill() end

---@return Hyperspace.Pointf
function Hyperspace.Projectile:GetSpeed() end

---@param damage Hyperspace.Damage
function Hyperspace.Projectile:SetDamage(damage) end

---@return integer
function Hyperspace.Projectile:ForceRenderLayer() end

---@param spin number
function Hyperspace.Projectile:SetSpin(spin) end

---@param fd integer
function Hyperspace.Projectile:SaveProjectile(fd) end

---@param fd integer
function Hyperspace.Projectile:LoadProjectile(fd) end

---@return integer
function Hyperspace.Projectile:GetType() end

---@param target Hyperspace.Targetable
function Hyperspace.Projectile:SetMovingTarget(target) end

---@param start Hyperspace.Pointf
---@param finish Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@param raytrace boolean
---@return Hyperspace.CollisionResponse
function Hyperspace.Projectile:CollisionMoving(start, finish, damage, raytrace) end

---@param bp Hyperspace.WeaponBlueprint
function Hyperspace.Projectile:Initialize(bp) end

---@param side integer
---@return Hyperspace.Pointf
function Hyperspace.Projectile.RandomSidePoint(side) end

---@class Hyperspace.Asteroid: Hyperspace.Projectile
---@field imageId Graphics.GL_Texture
---@field angle number
Hyperspace.Asteroid = {}

---@param pos Hyperspace.Pointf
---@param destinationSpace integer
---@return Hyperspace.Asteroid
function Hyperspace.Asteroid(pos, destinationSpace) end

---@class Hyperspace.AsteroidGenerator
---@field bRunning boolean (Read-only) **Read-only**
Hyperspace.AsteroidGenerator = {}

---@class Hyperspace.Description
---@field title Hyperspace.TextString
---@field shortTitle Hyperspace.TextString
---@field description Hyperspace.TextString
---@field cost integer
---@field rarity integer
---@field baseRarity integer
---@field bp integer
---@field locked boolean
---@field tooltip Hyperspace.TextString
---@field tip String
Hyperspace.Description = {}

---@class Hyperspace.Blueprint
---@field name String
---@field desc Hyperspace.Description
---@field type integer
Hyperspace.Blueprint = {}

---@return Hyperspace.Blueprint
function Hyperspace.Blueprint() end

---@return string
function Hyperspace.Blueprint:GetNameLong() end

---@return string
function Hyperspace.Blueprint:GetNameShort() end

---@return integer
function Hyperspace.Blueprint:GetType() end

---@class Hyperspace.AugmentBlueprint: Hyperspace.Blueprint
---@field value number
---@field stacking boolean
Hyperspace.AugmentBlueprint = {}

---@class Hyperspace.GenericButton
---@field position Hyperspace.Point (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field hitbox Hyperspace.Rect (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field allowAnyTouch boolean
---@field touchSelectable boolean
---@field bRenderOff boolean
---@field bRenderSelected boolean
---@field bFlashing boolean
---@field flashing Hyperspace.AnimationTracker
---@field bActive boolean
---@field bHover boolean
---@field bActivated boolean
---@field bSelected boolean
---@field activeTouch integer
Hyperspace.GenericButton = {}

function Hyperspace.GenericButton:Reset() end

---@param pos Hyperspace.Point
function Hyperspace.GenericButton:SetLocation(pos) end

---@param rect Hyperspace.Rect
function Hyperspace.GenericButton:SetHitBox(rect) end

---@param active boolean
function Hyperspace.GenericButton:SetActive(active) end

function Hyperspace.GenericButton:OnLoop() end

function Hyperspace.GenericButton:OnRender() end

---@param x integer
---@param y integer
---@param silent boolean
function Hyperspace.GenericButton:MouseMove(x, y, silent) end

function Hyperspace.GenericButton:OnClick() end

function Hyperspace.GenericButton:OnRightClick() end

function Hyperspace.GenericButton:OnTouch() end

function Hyperspace.GenericButton:ResetPrimitives() end

---@class Hyperspace.Button: Hyperspace.GenericButton
---@field images Graphics.GL_Texture[] length=3
---@field primitives Graphics.GL_Primitive[] length=3
---@field imageSize Hyperspace.Point
---@field bMirror boolean
Hyperspace.Button = {}

---@return Hyperspace.Button
function Hyperspace.Button() end

---@param img String
---@param pos Hyperspace.Point
function Hyperspace.Button:OnInit(img, pos) end

function Hyperspace.Button:OnRender() end

---@param texture Graphics.GL_Texture
function Hyperspace.Button:SetActiveImage(texture) end

---@param imageBase String
function Hyperspace.Button:SetImageBase(imageBase) end

---@param texture Graphics.GL_Texture
function Hyperspace.Button:SetInactiveImage(texture) end

---@param pos Hyperspace.Point
function Hyperspace.Button:SetLocation(pos) end

---@class Hyperspace.BatterySystem: Hyperspace.ShipSystem
---@field bTurnedOn boolean
---@field soundeffect String
Hyperspace.BatterySystem = {}

---@class Hyperspace.CrewAnimation
---@field iShipId integer
---@field anims vector<vector<Hyperspace.Animation>>
---@field baseStrip Graphics.GL_Texture
---@field colorStrip Graphics.GL_Texture
---@field layerStrips vector<Graphics.GL_Texture>
---@field lastPosition Hyperspace.Pointf
---@field direction integer
---@field sub_direction integer
---@field status integer
---@field moveDirection integer
---@field smokeEmitter ParticleEmitter
---@field bSharedSpot boolean
---@field shootTimer Hyperspace.TimerHelper
---@field punchTimer Hyperspace.TimerHelper
---@field target Hyperspace.Pointf
---@field fDamageDone number
---@field bPlayer boolean
---@field bFrozen boolean
---@field bDrone boolean
---@field bGhost boolean
---@field bExactShooting boolean
---@field projectile Hyperspace.Animation
---@field bTyping boolean
---@field race String
---@field currentShip integer
---@field bMale boolean
---@field colorblind boolean
---@field layerColors vector<Graphics.GL_Color>
---@field forcedAnimation integer
---@field forcedDirection integer
---@field projectileColor Graphics.GL_Color
---@field bStunned boolean
---@field bDoorTarget boolean
---@field uniqueBool1 boolean
---@field uniqueBool2 boolean
Hyperspace.CrewAnimation = {}

---@return Hyperspace.CrewAnimation
function Hyperspace.CrewAnimation() end

---@param _shipId integer
---@param _race String
---@param _unk Hyperspace.Pointf
---@param _hostile integer
---@return Hyperspace.CrewAnimation
function Hyperspace.CrewAnimation(_shipId, _race, _unk, _hostile) end

---@param scale number
---@param selectedState integer
---@param outlineOnly boolean
function Hyperspace.CrewAnimation:OnRender(scale, selectedState, outlineOnly) end

function Hyperspace.CrewAnimation:OnRenderProps() end

function Hyperspace.CrewAnimation:OnUpdateEffects() end

function Hyperspace.CrewAnimation:UpdateFiring() end

function Hyperspace.CrewAnimation:UpdateShooting() end

---@return boolean
function Hyperspace.CrewAnimation:FireShot() end

---@return integer
function Hyperspace.CrewAnimation:GetFiringFrame() end

---@return string
function Hyperspace.CrewAnimation:GetShootingSound() end

---@return string
function Hyperspace.CrewAnimation:GetDeathSound() end

function Hyperspace.CrewAnimation:Restart() end

---@return boolean
function Hyperspace.CrewAnimation:CustomDeath() end

---@param name String
---@param position Hyperspace.Pointf
---@param enemy boolean
function Hyperspace.CrewAnimation:OnInit(name, position, enemy) end

---@param position Hyperspace.Pointf
---@param moving boolean
---@param fighting boolean
---@param repairing boolean
---@param dying boolean
---@param onFire boolean
function Hyperspace.CrewAnimation:OnUpdate(position, moving, fighting, repairing, dying, onFire) end

---@param border boolean
function Hyperspace.CrewAnimation:RenderIcon(border) end

function Hyperspace.CrewAnimation:SetupStrips() end

---@class Hyperspace.CrewBlueprint: Hyperspace.Blueprint
---@field crewNameLong Hyperspace.TextString
---@field powers vector<Hyperspace.TextString>
---@field male boolean
---@field skillLevel vector<std_pair_int_int>
---@field colorLayers vector<vector<Graphics.GL_Color>>
---@field colorChoices vector<integer>
Hyperspace.CrewBlueprint = {}

---@return Hyperspace.CrewBlueprint
function Hyperspace.CrewBlueprint() end

---@param unknown Hyperspace.CrewBlueprint
---@return Hyperspace.CrewBlueprint
function Hyperspace.CrewBlueprint(unknown) end

---@param skill integer
---@return Graphics.GL_Color
function Hyperspace.CrewBlueprint:GetCurrentSkillColor(skill) end

---@return string
function Hyperspace.CrewBlueprint:GetNameShort() end

---@param worldLevel integer
function Hyperspace.CrewBlueprint:RandomSkills(worldLevel) end

---@param opacity number
function Hyperspace.CrewBlueprint:RenderIcon(opacity) end

---@param x integer
---@param y integer
---@param length integer
---@param height integer
---@param skill integer
function Hyperspace.CrewBlueprint:RenderSkill(x, y, length, height, skill) end

---@class Hyperspace.SCrewStats
---@field stat vector<integer> Has 5 values. `[0]` is the number of repairs, `[1]` is the number of crew combat kills, `[2]` is piloted evasions, `[3]` is jumps survived, `[4]` is skills mastered.
---@field species String
---@field name String
---@field male boolean
Hyperspace.SCrewStats = {}

---@return Hyperspace.SCrewStats
function Hyperspace.SCrewStats() end

---@class Hyperspace.Slot
---@field roomId integer (Read-only) **Read-only**
---@field slotId integer (Read-only) **Read-only**
---@field worldLocation Hyperspace.Point (Read-only) Field is **read-only** but fields under this object may still be mutable.
Hyperspace.Slot = {}

---@class Hyperspace.CrewMember
---@field iShipId integer
---@field x number (Read-only) **read-only**
---@field y number (Read-only) **read-only**
---@field size number
---@field scale number
---@field goal_x number
---@field goal_y number
---@field width integer
---@field height integer
---@field health pair<number, number>
---@field speed_x number
---@field speed_y number
---@field path Path
---@field new_path boolean
---@field x_destination number
---@field y_destination number
---@field last_door Hyperspace.Door
---@field currentRepair Hyperspace.Repairable
---@field bSuffocating boolean
---@field moveGoal integer
---@field selectionState integer
---@field iRoomId integer
---@field iManningId integer
---@field iRepairId integer
---@field iStackId integer
---@field currentSlot Hyperspace.Slot
---@field intruder boolean
---@field bFighting boolean
---@field bSharedSpot boolean
---@field crewAnim Hyperspace.CrewAnimation
---@field selectionImage Graphics.GL_Texture
---@field healthBox CachedImage
---@field healthBoxRed CachedImage
---@field healthBar CachedRect
---@field fMedbay number
---@field lastDamageTimer number
---@field lastHealthChange number
---@field currentShipId integer
---@field flashHealthTracker Hyperspace.AnimationTracker
---@field currentTarget Hyperspace.Pointf
---@field crewTarget Hyperspace.StatBoostDefinition.CrewTarget
---@field boardingGoal BoardingGoal
---@field bFrozen boolean
---@field bFrozenLocation boolean
---@field task CrewTask
---@field type String
---@field ship Hyperspace.Ship
---@field finalGoal Hyperspace.Slot
---@field blockingDoor Hyperspace.Door
---@field bOutOfGame boolean
---@field species String
---@field bDead boolean
---@field iOnFire integer
---@field bActiveManning boolean
---@field currentSystem Hyperspace.ShipSystem
---@field usingSkill integer
---@field blueprint Hyperspace.CrewBlueprint
---@field healing Hyperspace.Animation
---@field stunned Hyperspace.Animation
---@field levelUp Hyperspace.AnimationTracker
---@field lastLevelUp integer
---@field stats Hyperspace.SCrewStats
---@field skillsEarned vector<vector<boolean>>
---@field clone_ready boolean
---@field bMindControlled boolean
---@field iDeathNumber integer
---@field mindControlled Hyperspace.Animation
---@field stunIcon Hyperspace.Animation
---@field skillUp vector<vector<Hyperspace.AnimationTracker>>
---@field healthBoost integer
---@field fMindDamageBoost number
---@field fCloneDying number
---@field bResisted boolean
---@field savedPosition Hyperspace.Slot
---@field fStunTime number
---@field movementTarget CachedImage
---@field bCloned boolean
---@field extend Hyperspace.CrewMember_Extend (Read-only)
Hyperspace.CrewMember = {
    table = {},
}

---@return Hyperspace.CrewMember
function Hyperspace.CrewMember() end

---@param bp Hyperspace.CrewBlueprint
---@param shipId integer
---@param enemy boolean
---@param animation Hyperspace.CrewAnimation
---@return Hyperspace.CrewMember
function Hyperspace.CrewMember(bp, shipId, enemy, animation) end

---@return Hyperspace.Point
function Hyperspace.CrewMember:GetPosition() end

---@return number
function Hyperspace.CrewMember:PositionShift() end

---@param roomId integer
---@return boolean
function Hyperspace.CrewMember:InsideRoom(roomId) end

---@param damage number
---@return boolean
function Hyperspace.CrewMember:ApplyDamage(damage) end

---@return integer
function Hyperspace.CrewMember:GetPriority() end

---@param unk integer
---@return boolean
function Hyperspace.CrewMember:ValidTarget(unk) end

---@return boolean
function Hyperspace.CrewMember:MultiShots() end

---@return boolean
function Hyperspace.CrewMember:ExactTarget() end

---@return boolean
function Hyperspace.CrewMember:IsCrew() end

---@return boolean
function Hyperspace.CrewMember:IsCloned() end

---@return boolean
function Hyperspace.CrewMember:IsDrone() end

function Hyperspace.CrewMember:Jump() end

---@return boolean
function Hyperspace.CrewMember:GetIntruder() end

---@param fileHelper integer
function Hyperspace.CrewMember:SaveState(fileHelper) end

---@param fileHelper integer
function Hyperspace.CrewMember:LoadState(fileHelper) end

function Hyperspace.CrewMember:OnLoop() end

---@param outlineOnly boolean
function Hyperspace.CrewMember:OnRender(outlineOnly) end

---@return boolean
function Hyperspace.CrewMember:OutOfGame() end

function Hyperspace.CrewMember:SetOutOfGame() end

---@return boolean
function Hyperspace.CrewMember:Functional() end

---@return boolean
function Hyperspace.CrewMember:CountForVictory() end

---@return boolean
function Hyperspace.CrewMember:GetControllable() end

---@return boolean
function Hyperspace.CrewMember:ReadyToFight() end

---@return boolean
function Hyperspace.CrewMember:CanFight() end

---@return boolean
function Hyperspace.CrewMember:CanRepair() end

---@return boolean
function Hyperspace.CrewMember:CanSabotage() end

---@return boolean
function Hyperspace.CrewMember:CanMan() end

---@return boolean
function Hyperspace.CrewMember:CanTeleport() end

---@return boolean
function Hyperspace.CrewMember:CanHeal() end

---@return boolean
function Hyperspace.CrewMember:CanSuffocate() end

---@return boolean
function Hyperspace.CrewMember:CanBurn() end

---@return integer
function Hyperspace.CrewMember:GetMaxHealth() end

---@return boolean
function Hyperspace.CrewMember:IsDead() end

---@return boolean
function Hyperspace.CrewMember:PermanentDeath() end

---@param damage number
---@return boolean
function Hyperspace.CrewMember:ShipDamage(damage) end

---@return boolean
function Hyperspace.CrewMember:FireFightingSoundEffect() end

---@return string
function Hyperspace.CrewMember:GetUniqueRepairing() end

---@return boolean
function Hyperspace.CrewMember:ProvidesVision() end

---@return number
function Hyperspace.CrewMember:GetMoveSpeedMultiplier() end

---@return number
function Hyperspace.CrewMember:GetRepairSpeed() end

---@return number
function Hyperspace.CrewMember:GetDamageMultiplier() end

---@return boolean
function Hyperspace.CrewMember:ProvidesPower() end

---@return string
function Hyperspace.CrewMember:GetSpecies() end

---@return number
function Hyperspace.CrewMember:GetFireRepairMultiplier() end

---@return boolean
function Hyperspace.CrewMember:IsTelepathic() end

---@return pair<number, number>
function Hyperspace.CrewMember:GetPowerCooldown() end

---@return boolean
function Hyperspace.CrewMember:PowerReady() end

function Hyperspace.CrewMember:ActivatePower() end

---@return boolean
function Hyperspace.CrewMember:HasSpecialPower() end

function Hyperspace.CrewMember:ResetPower() end

---@return number
function Hyperspace.CrewMember:GetSuffocationMultiplier() end

---@return integer
function Hyperspace.CrewMember:BlockRoom() end

---@return Hyperspace.Damage
function Hyperspace.CrewMember:GetRoomDamage() end

---@return boolean
function Hyperspace.CrewMember:IsAnaerobic() end

function Hyperspace.CrewMember:UpdateRepair() end

---@return boolean
function Hyperspace.CrewMember:CanStim() end

---@return boolean
function Hyperspace.CrewMember:AtFinalGoal() end

---@return boolean
function Hyperspace.CrewMember:AtGoal() end

---@return boolean
function Hyperspace.CrewMember:BadAtCombat() end

function Hyperspace.CrewMember:CheckFighting() end

function Hyperspace.CrewMember:CheckForTeleport() end

---@param roomId integer
---@return boolean
function Hyperspace.CrewMember:CheckRoomPath(roomId) end

function Hyperspace.CrewMember:CheckSkills() end

function Hyperspace.CrewMember:Cleanup() end

function Hyperspace.CrewMember:ClearPath() end

function Hyperspace.CrewMember:ClearPosition() end

function Hyperspace.CrewMember:ClearTask() end

function Hyperspace.CrewMember:Clone() end

---@param door Hyperspace.Door
function Hyperspace.CrewMember:CloseDoorBehind(door) end

---@param x integer
---@param y integer
---@return boolean
function Hyperspace.CrewMember:ContainsPoint(x, y) end

---@param unk integer
function Hyperspace.CrewMember:CycleColorLayer(unk) end

---@param health number
---@return boolean
function Hyperspace.CrewMember:DirectModifyHealth(health) end

function Hyperspace.CrewMember:EmptySlot() end

---@param roomId integer
---@param slotId integer
---@param closeEnough boolean
---@return Hyperspace.Slot
function Hyperspace.CrewMember:FindSlot(roomId, slotId, closeEnough) end

---@param force boolean
function Hyperspace.CrewMember:ForceMindControl(force) end

---@return Hyperspace.Point
function Hyperspace.CrewMember:GetFinalGoal() end

---@return integer
function Hyperspace.CrewMember:GetIntegerHealth() end

---@return Hyperspace.Point
function Hyperspace.CrewMember:GetLocation() end

---@return string
function Hyperspace.CrewMember:GetLongName() end

---@return number
function Hyperspace.CrewMember:GetMoveSpeed() end

---@return string
function Hyperspace.CrewMember:GetName() end

---@return boolean
function Hyperspace.CrewMember:GetNewGoal() end

---@return Hyperspace.Point
function Hyperspace.CrewMember:GetNextGoal() end

---@return integer
function Hyperspace.CrewMember:GetRepairingId() end

---@return boolean
function Hyperspace.CrewMember:GetResisted() end

---@return Hyperspace.Slot
function Hyperspace.CrewMember:GetSavedPosition() end

---@param skillId integer
---@return integer
function Hyperspace.CrewMember:GetSkillLevel(skillId) end

---@param skillId integer
---@return number
function Hyperspace.CrewMember:GetSkillModifier(skillId) end

---@param skillId integer
---@return pair<integer, integer>
function Hyperspace.CrewMember:GetSkillProgress(skillId) end

---@return string
function Hyperspace.CrewMember:GetTooltip() end

---@param skillId integer
function Hyperspace.CrewMember:IncreaseSkill(skillId) end

function Hyperspace.CrewMember:InitializeSkills() end

---@return boolean
function Hyperspace.CrewMember:IsBusy() end

---@return boolean
function Hyperspace.CrewMember:IsManningArtillery() end

---@param noClone boolean
function Hyperspace.CrewMember:Kill(noClone) end

---@param skillId integer
function Hyperspace.CrewMember:MasterSkill(skillId) end

---@param health number
function Hyperspace.CrewMember:ModifyHealth(health) end

---@param roomId integer
---@param slotId integer
---@param forceMove boolean
---@return boolean
function Hyperspace.CrewMember:MoveToRoom(roomId, slotId, forceMove) end

---@return boolean
function Hyperspace.CrewMember:NeedFrozenLocation() end

---@return boolean
function Hyperspace.CrewMember:NeedsSlot() end

---@return boolean
function Hyperspace.CrewMember:OnInit() end

function Hyperspace.CrewMember:OnRenderHealth() end

function Hyperspace.CrewMember:OnRenderPath() end

---@param pos Hyperspace.Point
function Hyperspace.CrewMember:RenderSkillUpAnimation(pos) end

---@return boolean
function Hyperspace.CrewMember:Repairing() end

---@return boolean
function Hyperspace.CrewMember:RepairingFire() end

---@return boolean
function Hyperspace.CrewMember:RepairingSystem() end

function Hyperspace.CrewMember:Restart() end

---@return boolean
function Hyperspace.CrewMember:RestorePosition() end

---@return boolean
function Hyperspace.CrewMember:Sabotaging() end

function Hyperspace.CrewMember:SavePosition() end

---@return Hyperspace.Pointf
function Hyperspace.CrewMember:SelectSabotageTarget() end

---@param cloneReady boolean
function Hyperspace.CrewMember:SetCloneReady(cloneReady) end

---@param shipId integer
function Hyperspace.CrewMember:SetCurrentShip(shipId) end

---@param sys Hyperspace.ShipSystem
function Hyperspace.CrewMember:SetCurrentSystem(sys) end

---@param target Hyperspace.StatBoostDefinition.CrewTarget
---@param unk boolean
function Hyperspace.CrewMember:SetCurrentTarget(target, unk) end

---@param damageBoost number
function Hyperspace.CrewMember:SetDamageBoost(damageBoost) end

---@param deathNum integer
function Hyperspace.CrewMember:SetDeathNumber(deathNum) end

---@param frozen boolean
function Hyperspace.CrewMember:SetFrozen(frozen) end

---@param frozenLocation boolean
function Hyperspace.CrewMember:SetFrozenLocation(frozenLocation) end

---@param healthBoost integer
function Hyperspace.CrewMember:SetHealthBoost(healthBoost) end

---@param health number
function Hyperspace.CrewMember:SetMedbay(health) end

---@param controlled boolean
function Hyperspace.CrewMember:SetMindControl(controlled) end

---@param name Hyperspace.TextString
---@param force boolean
function Hyperspace.CrewMember:SetName(name, force) end

---@param path Path
---@return boolean
function Hyperspace.CrewMember:SetPath(path) end

---@param pos Hyperspace.Point
function Hyperspace.CrewMember:SetPosition(pos) end

---@param resisted boolean
function Hyperspace.CrewMember:SetResisted(resisted) end

---@param roomId integer
function Hyperspace.CrewMember:SetRoom(roomId) end

---@param slotId integer
---@param roomId integer
function Hyperspace.CrewMember:SetRoomPath(slotId, roomId) end

---@param position Hyperspace.Slot
function Hyperspace.CrewMember:SetSavePosition(position) end

---@param male boolean
function Hyperspace.CrewMember:SetSex(male) end

---@param skillId integer
---@param skillLevel integer
function Hyperspace.CrewMember:SetSkillProgress(skillId, skillLevel) end

---@param task CrewTask
function Hyperspace.CrewMember:SetTask(task) end

---@param toRepair Hyperspace.Repairable
function Hyperspace.CrewMember:StartRepair(toRepair) end

function Hyperspace.CrewMember:StartTeleport() end

function Hyperspace.CrewMember:StartTeleportArrive() end

function Hyperspace.CrewMember:StopRepairing() end

function Hyperspace.CrewMember:UpdateHealth() end

function Hyperspace.CrewMember:UpdateMovement() end

---@param x integer
---@param y integer
---@param w integer
---@param h integer
---@return boolean
function Hyperspace.CrewMember:WithinRect(x, y, w, h) end

---@param systemId integer
---@return integer
function Hyperspace.CrewMember.GetSkillFromSystem(systemId) end

---@class Hyperspace.Drone
---@field iShipId integer **Read-only**
---@field selfId integer (Read-only)
---@field powered boolean
---@field powerRequired integer
---@field deployed boolean
---@field type integer
---@field blueprint Hyperspace.DroneBlueprint (Read-only) **Read-only**
---@field bDead boolean
---@field iBonusPower integer
---@field poweredAtLocation boolean
---@field destroyedTimer number
---@field iHackLevel integer
---@field hackTime number
Hyperspace.Drone = {}

function Hyperspace.Drone:OnInit() end

function Hyperspace.Drone:OnLoop() end

function Hyperspace.Drone:OnDestroy() end

---@param _powered boolean
function Hyperspace.Drone:SetPowered(_powered) end

function Hyperspace.Drone:SetInstantPowered() end

---@return boolean
function Hyperspace.Drone:GetPowered() end

---@param shipId integer
function Hyperspace.Drone:SetCurrentShip(shipId) end

---@param _deployed boolean
function Hyperspace.Drone:SetDeployed(_deployed) end

---@param dead boolean
---@param setTimer boolean
function Hyperspace.Drone:SetDestroyed(dead, setTimer) end

---@param level integer
function Hyperspace.Drone:SetHacked(level) end

---@return boolean
function Hyperspace.Drone:GetDeployed() end

---@return boolean
function Hyperspace.Drone:NeedsRoom() end

---@param room integer
---@param slot integer
function Hyperspace.Drone:SetSlot(room, slot) end

---@return boolean
function Hyperspace.Drone:Destroyed() end

---@return Hyperspace.Point
function Hyperspace.Drone:GetWorldLocation() end

---@param point Hyperspace.Point
function Hyperspace.Drone:SetWorldLocation(point) end

---@param drone Hyperspace.Drone
---@return Hyperspace.Slot
function Hyperspace.Drone:GetDroneSlot(drone) end

---@return integer
function Hyperspace.Drone:GetDroneHealth() end

---@return integer
function Hyperspace.Drone:GetRequiredPower() end

function Hyperspace.Drone:RenderIcon() end

---@param drone Hyperspace.Drone
---@return string
function Hyperspace.Drone:GetName(drone) end

---@return boolean
function Hyperspace.Drone:CanBeDeployed() end

---@return boolean
function Hyperspace.Drone:RecallOnJump() end

---@return boolean
function Hyperspace.Drone:CanBeRecovered() end

---@param fh integer
function Hyperspace.Drone:SaveState(fh) end

---@param fh integer
function Hyperspace.Drone:LoadState(fh) end

---@param silent boolean
function Hyperspace.Drone:BlowUp(silent) end

---@return boolean
function Hyperspace.Drone:GetStunned() end

---@class Hyperspace.DroneBlueprint: Hyperspace.Blueprint
---@field typeName String (Read-only)
---@field level integer (Read-only)
---@field targetType integer (Read-only)
---@field power integer (Read-only)
---@field cooldown number (Read-only)
---@field speed integer (Read-only)
---@field dodge integer (Read-only)
---@field weaponBlueprint String (Read-only)
---@field droneImage String (Read-only)
---@field combatIcon String (Read-only)
Hyperspace.DroneBlueprint = {}

---@class Hyperspace.BeamWeapon: Hyperspace.Projectile
---@field sub_end Hyperspace.Pointf
---@field sub_start Hyperspace.Pointf
---@field shield_end Hyperspace.Pointf
---@field final_end Hyperspace.Pointf
---@field target2 Hyperspace.Pointf
---@field target1 Hyperspace.Pointf
---@field lifespan number
---@field length number
---@field dh number
---@field last_collision Hyperspace.CollisionResponse
---@field soundChannel integer
---@field contactAnimations vector<Hyperspace.Animation>
---@field animationTimer number
---@field lastDamage integer
---@field movingTarget Hyperspace.Targetable
---@field start_heading number
---@field timer number
---@field weapAnimation Hyperspace.WeaponAnimation
---@field piercedShield boolean
---@field oneSpace boolean
---@field bDamageSuperShield boolean
---@field movingTargetId integer
---@field checkedCollision boolean
---@field smokeAnims vector<Hyperspace.Animation>
---@field lastSmokeAnim Hyperspace.Pointf
Hyperspace.BeamWeapon = {}

---@param _position Hyperspace.Pointf
---@param _ownerId integer
---@param _targetId integer
---@param _target Hyperspace.Pointf
---@param _target2 Hyperspace.Pointf
---@param _length integer
---@param _targetable Hyperspace.Targetable
---@param _heading? number = 0.0f
---@return Hyperspace.BeamWeapon
function Hyperspace.BeamWeapon(_position, _ownerId, _targetId, _target, _target2, _length, _targetable, _heading) end

---@param unknown Hyperspace.Pointf
---@param unknown1 integer
---@param unknown2 integer
---@param unknown3 Hyperspace.Pointf
---@param unknown4 Hyperspace.Pointf
---@param unknown5 integer
---@param unknown6 Hyperspace.Targetable
---@return Hyperspace.BeamWeapon
function Hyperspace.BeamWeapon(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6) end

---@param spaceId integer
function Hyperspace.BeamWeapon:OnRenderSpecific(spaceId) end

---@class Hyperspace.EffectsBlueprint
---@field launchSounds vector<String>
---@field hitShipSounds vector<String>
---@field hitShieldSounds vector<String>
---@field missSounds vector<String>
---@field image String
Hyperspace.EffectsBlueprint = {}

---@class Hyperspace.ShipBlueprint: Hyperspace.Blueprint
---@field desc Hyperspace.Description
---@field blueprintName String
---@field name Hyperspace.TextString
---@field shipClass Hyperspace.TextString
---@field layoutFile String
---@field imgFile String
---@field cloakFile String
---@field shieldFile String
---@field floorFile String
---@field systemInfo map<integer, Hyperspace.SystemTemplate>
---@field systems vector<integer>
---@field droneCount integer
---@field originalDroneCount integer
---@field droneSlots integer
---@field loadDrones String
---@field drones vector<String>
---@field augments vector<String>
---@field weaponCount integer
---@field originalWeaponCount integer
---@field weaponSlots integer
---@field loadWeapons String
---@field weapons vector<String>
---@field missiles integer
---@field drone_count integer
---@field health integer
---@field originalCrewCount integer
---@field defaultCrew vector<String>
---@field customCrew vector<Hyperspace.CrewBlueprint>
---@field maxPower integer
---@field boardingAI integer
---@field bp_count integer
---@field maxCrew integer
---@field maxSector integer
---@field minSector integer
---@field unlock Hyperspace.TextString
Hyperspace.ShipBlueprint = {}

---@return Hyperspace.ShipBlueprint
function Hyperspace.ShipBlueprint() end

---@param unknown Hyperspace.ShipBlueprint
---@return Hyperspace.ShipBlueprint
function Hyperspace.ShipBlueprint(unknown) end

---@class Hyperspace.SystemTemplate
---@field systemId integer
---@field powerLevel integer
---@field location vector<integer>
---@field bp integer
---@field maxPower integer
---@field image String
---@field slot integer
---@field direction integer
---@field weapon vector<String>
Hyperspace.SystemTemplate = {}

---@class Hyperspace.WeaponBlueprint: Hyperspace.Blueprint
---@field typeName String
---@field damage Hyperspace.Damage
---@field shots integer
---@field missiles integer
---@field cooldown number
---@field power integer
---@field length integer
---@field speed number
---@field miniCount integer
---@field effects Hyperspace.EffectsBlueprint
---@field weaponArt String
---@field combatIcon String
---@field explosion String
---@field radius integer
---@field miniProjectiles vector<Hyperspace.MiniProjectile>
---@field boostPower Hyperspace.BoostPower
---@field drone_targetable integer
---@field spin integer
---@field chargeLevels integer
---@field flavorType Hyperspace.TextString
---@field color Graphics.GL_Color
Hyperspace.WeaponBlueprint = {}

---@return Hyperspace.WeaponBlueprint
function Hyperspace.WeaponBlueprint() end

---@class Hyperspace.BoostPower
---@field type integer
---@field amount number
---@field count integer
Hyperspace.BoostPower = {}

---@class Hyperspace.MiniProjectile
---@field image String
---@field fake boolean
Hyperspace.MiniProjectile = {}

---@class Hyperspace.BlueprintManager
Hyperspace.BlueprintManager = {}

---@param name String
---@return Hyperspace.AugmentBlueprint
function Hyperspace.BlueprintManager:GetAugmentBlueprint(name) end

---@param name String
---@return vector<String>
function Hyperspace.BlueprintManager:GetBlueprintList(name) end

---@param name String
---@return Hyperspace.CrewBlueprint
function Hyperspace.BlueprintManager:GetCrewBlueprint(name) end

---@param name String
---@return Hyperspace.DroneBlueprint
function Hyperspace.BlueprintManager:GetDroneBlueprint(name) end

---@param name String
---@param sector integer
---@return Hyperspace.ShipBlueprint
function Hyperspace.BlueprintManager:GetShipBlueprint(name, sector) end

---@param name String
---@return Hyperspace.WeaponBlueprint
function Hyperspace.BlueprintManager:GetWeaponBlueprint(name) end

---@class Hyperspace.SpaceDrone: Hyperspace.Drone
---@field _targetable Hyperspace.Targetable
---@field _collideable Hyperspace.Collideable
---@field currentSpace integer
---@field destinationSpace integer
---@field currentLocation Hyperspace.Pointf
---@field lastLocation Hyperspace.Pointf
---@field destinationLocation Hyperspace.Pointf
---@field pointTarget Hyperspace.Pointf
---@field explosion Hyperspace.Animation
---@field weaponTarget Hyperspace.Targetable
---@field targetLocation Hyperspace.Pointf
---@field targetSpeed Hyperspace.Pointf
---@field movementTarget Hyperspace.Targetable
---@field speedVector Hyperspace.Pointf
---@field poweredLastFrame boolean
---@field deployedLastFrame boolean
---@field bFire boolean
---@field pause number
---@field additionalPause number
---@field weaponCooldown number
---@field current_angle number
---@field aimingAngle number
---@field lastAimingAngle number
---@field desiredAimingAngle number
---@field message DamageMessage
---@field weapon_animation Hyperspace.Animation
---@field weaponBlueprint Hyperspace.WeaponBlueprint (Read-only) **Read-only**
---@field lifespan integer
---@field bLoadedPosition boolean
---@field bDisrupted boolean
---@field hackAngle number
---@field ionStun number
---@field beamCurrentTarget Hyperspace.Pointf
---@field beamFinalTarget Hyperspace.Pointf
---@field beamSpeed number
---@field hackSparks Hyperspace.Animation
Hyperspace.SpaceDrone = {
    table = {},
}

function Hyperspace.SpaceDrone:PickDestination() end

function Hyperspace.SpaceDrone:PickTarget() end

---@return boolean
function Hyperspace.SpaceDrone:HasTarget() end

---@return boolean
function Hyperspace.SpaceDrone:ValidTarget() end

---@return number
function Hyperspace.SpaceDrone:GetWeaponCooldown() end

function Hyperspace.SpaceDrone:RandomizeStartingPosition() end

---@return boolean
function Hyperspace.SpaceDrone:HideUnderOwner() end

---@return Hyperspace.Projectile
function Hyperspace.SpaceDrone:GetNextProjectile() end

---@param target Hyperspace.Targetable
function Hyperspace.SpaceDrone:SetMovementTarget(target) end

---@param target Hyperspace.Targetable
function Hyperspace.SpaceDrone:SetWeaponTarget(target) end

---@param target Hyperspace.Targetable
---@return boolean
function Hyperspace.SpaceDrone:ValidTargetObject(target) end

---@param space integer
function Hyperspace.SpaceDrone:OnRender(space) end

function Hyperspace.SpaceDrone:RenderDrone() end

---@param drone Hyperspace.SpaceDrone
---@return string
function Hyperspace.SpaceDrone:GetTooltip(drone) end

---@return Hyperspace.Pointf
function Hyperspace.SpaceDrone:GetWorldCenterPoint() end

---@param pos Hyperspace.Pointf
function Hyperspace.SpaceDrone:SetCurrentLocation(pos) end

---@param mX integer
---@param mY integer
function Hyperspace.SpaceDrone:MouseMove(mX, mY) end

---@param unk boolean
---@return Hyperspace.Pointf
function Hyperspace.SpaceDrone:GetRandomTargettingPoint(unk) end

---@param drone Hyperspace.SpaceDrone
---@return Hyperspace.Ellipse
function Hyperspace.SpaceDrone:GetShieldShape(drone) end

---@return integer
function Hyperspace.SpaceDrone:GetSpaceId() end

---@return Hyperspace.Pointf
function Hyperspace.SpaceDrone:GetSpeed() end

---@return integer
function Hyperspace.SpaceDrone:GetOwnerId() end

---@return integer
function Hyperspace.SpaceDrone:GetSelfId() end

---@param start Hyperspace.Pointf
---@param finish Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@param raytrace boolean
---@return Hyperspace.CollisionResponse
function Hyperspace.SpaceDrone:CollisionMoving(start, finish, damage, raytrace) end

---@param pos1 Hyperspace.Pointf
---@param pos2 Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@return boolean
function Hyperspace.SpaceDrone:DamageBeam(pos1, pos2, damage) end

---@param pos Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@param unk boolean
---@return boolean
function Hyperspace.SpaceDrone:DamageArea(pos, damage, unk) end

---@return BoarderDrone
function Hyperspace.SpaceDrone:GetBoardingDrone() end

---@param deployed boolean
function Hyperspace.SpaceDrone:SetDeployed(deployed) end

---@param location Hyperspace.Pointf
---@param percentage number
---@param forceDesired number
---@return number
function Hyperspace.SpaceDrone:UpdateAimingAngle(location, percentage, forceDesired) end

---@class Hyperspace.BoarderPodDrone: Hyperspace.SpaceDrone
---@field baseSheet Graphics.GL_Texture
---@field colorSheet Graphics.GL_Texture
---@field startingPosition Hyperspace.Pointf
---@field droneImage Hyperspace.Animation
---@field flame CachedImage
---@field boarderDrone BoarderDrone
---@field bDeliveredDrone boolean
---@field diedInSpace boolean
Hyperspace.BoarderPodDrone = {}

---@param _iShipId integer
---@param _selfId integer
---@param _bp Hyperspace.DroneBlueprint
---@return Hyperspace.BoarderPodDrone
function Hyperspace.BoarderPodDrone(_iShipId, _selfId, _bp) end

---@return boolean
function Hyperspace.BoarderPodDrone:CanBeDeployed() end

---@param start Hyperspace.Pointf
---@param finish Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@param raytrace boolean
---@return Hyperspace.CollisionResponse
function Hyperspace.BoarderPodDrone:CollisionMoving(start, finish, damage, raytrace) end

function Hyperspace.BoarderPodDrone:OnLoop() end

---@param _deployed boolean
function Hyperspace.BoarderPodDrone:SetDeployed(_deployed) end

---@param target Hyperspace.Targetable
function Hyperspace.BoarderPodDrone:SetMovementTarget(target) end

---@class Hyperspace.BoardingEvent
---@field type String
---@field min integer
---@field max integer
---@field amount integer
---@field breach boolean
Hyperspace.BoardingEvent = {}

---@return Hyperspace.BoardingEvent
function Hyperspace.BoardingEvent() end

---@class Hyperspace.BombProjectile: Hyperspace.Projectile
---@field bMissed boolean
---@field missMessage DamageMessage
---@field explosiveDelay number
---@field bSuperShield boolean
---@field superShieldBypass boolean
Hyperspace.BombProjectile = {}

---@param _position Hyperspace.Pointf
---@param _ownerId integer
---@param _targetId integer
---@param _target Hyperspace.Pointf
---@return Hyperspace.BombProjectile
function Hyperspace.BombProjectile(_position, _ownerId, _targetId, _target) end

---@class Hyperspace.FocusWindow
---@field bOpen boolean
---@field bFullFocus boolean
---@field bCloseButtonSelected boolean
Hyperspace.FocusWindow = {}

---@return Hyperspace.FocusWindow
function Hyperspace.FocusWindow() end

---@class Hyperspace.ResourceEvent
---@field missiles integer
---@field fuel integer
---@field drones integer
---@field scrap integer
---@field crew integer
---@field traitor boolean
---@field cloneable boolean
---@field cloneText Hyperspace.TextString
---@field crewType String
---@field weapon Hyperspace.WeaponBlueprint
---@field drone Hyperspace.DroneBlueprint
---@field augment Hyperspace.AugmentBlueprint
---@field crewBlue Hyperspace.CrewBlueprint
---@field systemId integer
---@field weaponCount integer
---@field droneCount integer
---@field steal boolean
---@field intruders boolean
---@field fleetDelay integer
---@field hullDamage integer
---@field upgradeAmount integer
---@field upgradeId integer
---@field upgradeSuccessFlag integer
---@field removeItem String
Hyperspace.ResourceEvent = {}

---@return Hyperspace.ResourceEvent
function Hyperspace.ResourceEvent() end

---@class Hyperspace.ChoiceText
---@field type integer
---@field text String
---@field rewards Hyperspace.ResourceEvent
Hyperspace.ChoiceText = {}

---@return Hyperspace.ChoiceText
function Hyperspace.ChoiceText() end

---@param unknown integer
---@param unknown1 String
---@param unknown2 Hyperspace.ResourceEvent
---@return Hyperspace.ChoiceText
function Hyperspace.ChoiceText(unknown, unknown1, unknown2) end

---@class Hyperspace.ChoiceBox: Hyperspace.FocusWindow
---@field mainText String
---@field choices vector<Hyperspace.ChoiceText> If you want to modify the current `ChoiceText` values please refer to `:GetChoices()` instead
---@field columnSize uint
---@field choiceBoxes vector<Hyperspace.Rect>
---@field potentialChoice integer
---@field selectedChoice integer
---@field fontSize integer
---@field centered boolean
---@field gap_size integer
---@field openTime number
---@field rewards Hyperspace.ResourceEvent
---@field currentTextColor Graphics.GL_Color
---@field lastChoice Hyperspace.Pointf
Hyperspace.ChoiceBox = {}

---@return Hyperspace.ChoiceBox
function Hyperspace.ChoiceBox() end

---@return vector<Hyperspace.ChoiceText>
function Hyperspace.ChoiceBox:GetChoices() end

---@class Hyperspace.TextButton: Hyperspace.GenericButton
Hyperspace.TextButton = {}

---@return Hyperspace.TextButton
function Hyperspace.TextButton() end

---@param pos Hyperspace.Point
---@param size Hyperspace.Point
---@param cornerInset integer
---@param buttonLabel Hyperspace.TextString
---@param font integer
function Hyperspace.TextButton:OnInit(pos, size, cornerInset, buttonLabel, font) end

function Hyperspace.TextButton:OnRender() end

function Hyperspace.TextButton:ResetPrimitives() end

---@class Hyperspace.ShipBuilder
---@field bOpen boolean (Read-only) **read-only**
Hyperspace.ShipBuilder = {}

---@class Hyperspace.MainMenu
---@field bOpen boolean (Read-only) **read-only**
---@field shipBuilder Hyperspace.ShipBuilder (Read-only) **read-only**
Hyperspace.MainMenu = {}

---@class Hyperspace.CApp
---@field gui Hyperspace.CommandGui
---@field world Hyperspace.WorldManager
---@field menu Hyperspace.MainMenu (Read-only) **Read-only**
Hyperspace.CApp = {}

--- Close game, autosave profile and settings but not current run (current run will be on previous autosave).
function Hyperspace.CApp:OnExit() end

--- Close game, autosave run, profile, and settings.
function Hyperspace.CApp:OnRequestExit() end

---@class Hyperspace.ChoiceReq
---@field object String
---@field min_level integer
---@field max_level integer
---@field max_group integer
---@field blue boolean
Hyperspace.ChoiceReq = {}

---@return Hyperspace.ChoiceReq
function Hyperspace.ChoiceReq() end

---@class Hyperspace.CloakingSystem: Hyperspace.ShipSystem
---@field bTurnedOn boolean
---@field timer Hyperspace.TimerHelper
---@field soundeffect String
Hyperspace.CloakingSystem = {}

---@class Hyperspace.CloneSystem: Hyperspace.ShipSystem
---@field fTimeToClone number
---@field clone Hyperspace.CrewMember
---@field fTimeGoal number
---@field fDeathTime number
---@field bottom Graphics.GL_Texture
---@field top Graphics.GL_Texture
---@field gas Graphics.GL_Texture
---@field slot integer
Hyperspace.CloneSystem = {}

---@class Hyperspace.WeaponControl
---@field armedWeapon Hyperspace.ProjectileFactory
---@field autoFiring boolean (Read-only) **Read-only**
---@field armedSlot integer
Hyperspace.WeaponControl = {}

---@param points vector<Hyperspace.Pointf>
---@param target integer
---@param autoFire boolean
function Hyperspace.WeaponControl:Fire(points, target, autoFire) end

---@class Hyperspace.CombatControl
---@field playerShipPosition Hyperspace.Point
---@field weapControl Hyperspace.WeaponControl
---@field position Hyperspace.Point
---@field selectedRoom integer
---@field selectedSelfRoom integer
---@field targetPosition Hyperspace.Point
---@field open boolean
---@field potentialAiming Hyperspace.Pointf
---@field aimingPoints vector<Hyperspace.Pointf>
---@field mouseDown boolean
---@field isAimingTouch boolean
---@field movingBeam boolean
---@field beamMoveLast Hyperspace.Point
---@field invalidBeamTouch boolean
---@field boss_visual boolean (Read-only) **Read-only**
Hyperspace.CombatControl = {}

---@class Hyperspace.CombatDrone: Hyperspace.SpaceDrone
---@field lastDestination Hyperspace.Pointf
---@field progressToDestination number
---@field heading number
---@field oldHeading number
---@field drone_image_off CachedImage
---@field drone_image_charging CachedImage
---@field drone_image_on CachedImage
---@field engine_image CachedImage
Hyperspace.CombatDrone = {}

---@param shipId integer
---@param self integer
---@param bp Hyperspace.DroneBlueprint
---@return Hyperspace.CombatDrone
function Hyperspace.CombatDrone(shipId, self, bp) end

function Hyperspace.CombatDrone:PickTarget() end

---@param target Hyperspace.Targetable
function Hyperspace.CombatDrone:SetWeaponTarget(target) end

---@class Hyperspace.CrewControl
---@field selectedCrew vector<Hyperspace.CrewMember>
---@field potentialSelectedCrew vector<Hyperspace.CrewMember> Crew hovered by the selection box
---@field firstMouse Hyperspace.Point Affect the visual portion of the selection box
---@field currentMouse Hyperspace.Point Affect the visual portion of the selection box
---@field worldFirstMouse Hyperspace.Point Affect the logic portion of the selection box, fills `.potentialSelectedCrew`
---@field worldCurrentMouse Hyperspace.Point Affect the logic portion of the selection box, fills `.potentialSelectedCrew`
Hyperspace.CrewControl = {}

---@class Hyperspace.Equipment: Hyperspace.FocusWindow
Hyperspace.Equipment = {}

---@param bp Hyperspace.AugmentBlueprint
---@param free boolean
---@param forceCargo boolean
function Hyperspace.Equipment:AddAugment(bp, free, forceCargo) end

---@param bp Hyperspace.DroneBlueprint
---@param free boolean
---@param forceCargo boolean
function Hyperspace.Equipment:AddDrone(bp, free, forceCargo) end

---@param name String
function Hyperspace.Equipment:AddToCargo(name) end

---@param bp Hyperspace.WeaponBlueprint
---@param free boolean
---@param forceCargo boolean
function Hyperspace.Equipment:AddWeapon(bp, free, forceCargo) end

---@return vector<String>
function Hyperspace.Equipment:GetCargoHold() end

---@class Hyperspace.TextButton0: Hyperspace.GenericButton
Hyperspace.TextButton0 = {}

---@class Hyperspace.FTLButton: Hyperspace.TextButton0
Hyperspace.FTLButton = {}

---@param mX integer
---@param mY integer
---@param silent boolean
function Hyperspace.FTLButton:MouseMove(mX, mY, silent) end

function Hyperspace.FTLButton:OnRender() end

---@class Hyperspace.SpaceStatus
Hyperspace.SpaceStatus = {}

---@param effect integer
---@param textOffset integer
function Hyperspace.SpaceStatus:RenderWarningText(effect, textOffset) end

---@class Hyperspace.TabbedWindow: Hyperspace.FocusWindow
---@field bBlockClose boolean
---@field bTutorialMode boolean If true, player cannot access anything other than Upgrades screen.
---@field bWindowLock boolean
Hyperspace.TabbedWindow = {}

---@class Hyperspace.CommandGui
---@field shipStatus ShipStatus
---@field crewControl Hyperspace.CrewControl
---@field sysControl SystemControl
---@field combatControl Hyperspace.CombatControl
---@field ftlButton Hyperspace.FTLButton
---@field spaceStatus Hyperspace.SpaceStatus
---@field pauseTextLoc Hyperspace.Point
---@field shipPosition Hyperspace.Point
---@field choiceBox Hyperspace.ChoiceBox (Read-only)
---@field outOfFuel boolean (Read-only) **Read-only**
---@field bPaused boolean Only true for spacebar pauses, NOT event pauses or ESC menu pauses.<br>Modifying this variable during event pauses and ESC menu pauses does not unfreeze the game; it will only change whether or not the game remains paused when the event or ESC menu closes.
---@field bAutoPaused boolean (Read-only) **Read-only**<br>Maybe true for event pauses and ESC menu pauses? Not sure.
---@field menu_pause boolean (Read-only) **Read-only**<br>Probably true for ESC menu pauses.
---@field event_pause boolean (Read-only) **Read-only**<br>True for event pauses.
---@field equipScreen Hyperspace.Equipment (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field upgradeButton Hyperspace.Button (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field bHideUI boolean
---@field dangerLocation boolean (Read-only) **Read-only**
---@field jumpComplete boolean (Read-only) **Read-only**
---@field mapId integer (Read-only) **Read-only**
---@field secretSector boolean (Read-only) **Read-only**
---@field choiceBoxOpen boolean (Read-only) **Read-only**
Hyperspace.CommandGui = {}

---@class Hyperspace.CrewDesc
---@field type String
---@field prop number
---@field amount integer
Hyperspace.CrewDesc = {}

---@return Hyperspace.CrewDesc
function Hyperspace.CrewDesc() end

---@class Hyperspace.CrewMemberFactory
---@field crewMembers vector<Hyperspace.CrewMember> (Read-only)
Hyperspace.CrewMemberFactory = {}

---@param vec vector<Hyperspace.CrewMember>
---@param player boolean
function Hyperspace.CrewMemberFactory:GetCloneReadyList(vec, player) end

---@param player boolean
function Hyperspace.CrewMemberFactory:GetCloneReadyList(player) end

---@class Hyperspace.DefenseDrone: Hyperspace.SpaceDrone
---@field currentTargetId integer
---@field shotAtTargetId integer
---@field currentSpeed number
---@field drone_image CachedImage
---@field gun_image_off CachedImage
---@field gun_image_charging CachedImage
---@field gun_image_on CachedImage
---@field engine_image CachedImage
---@field currentTargetType integer
Hyperspace.DefenseDrone = {}

---@return Hyperspace.DefenseDrone
function Hyperspace.DefenseDrone() end

---@return string
function Hyperspace.DefenseDrone:GetTooltip() end

function Hyperspace.DefenseDrone:OnLoop() end

function Hyperspace.DefenseDrone:PickTarget() end

---@param target Hyperspace.Targetable
function Hyperspace.DefenseDrone:SetWeaponTarget(target) end

---@param target Hyperspace.Targetable
---@return boolean
function Hyperspace.DefenseDrone:ValidTargetObject(target) end

---@class Hyperspace.Selectable
---@field selectedState integer
Hyperspace.Selectable = {}

---@class Hyperspace.Room: Hyperspace.Selectable
---@field rect Hyperspace.Rect (Read-only) **Read-only**
---@field iRoomId integer (Read-only) **Read-only**
---@field bBlackedOut boolean
---@field highlightPrimitive Graphics.GL_Primitive
---@field highlightPrimitive2 Graphics.GL_Primitive
---@field extend Hyperspace.Room_Extend (Read-only) **Read-only**
Hyperspace.Room = {
    table = {},
}

--- Set the slot to occupied. To empty the slot, use `Ship:EmptySlots`.
---@param slot integer
---@param intruder boolean
function Hyperspace.Room:FillSlot(slot, intruder) end

---@class Hyperspace.ShipGraph
---@field rooms vector<Hyperspace.Room>
---@field doors vector<Hyperspace.Door>
---@field doorCounts vector<integer>
---@field center Hyperspace.Point
---@field worldPosition Hyperspace.Pointf
---@field worldHeading number
---@field lastWorldPosition Hyperspace.Pointf
---@field lastWorldHeading number
---@field shipBox Hyperspace.Rect
---@field shipName String
Hyperspace.ShipGraph = {}

---@param roomId integer
---@param pos Hyperspace.Point
---@return Hyperspace.Point
function Hyperspace.ShipGraph:GetIntoRoom(roomId, pos) end

---@param roomId integer
---@return Hyperspace.Pointf
function Hyperspace.ShipGraph:GetRoomCenter(roomId) end

---@param room integer
---@return Hyperspace.Rect
function Hyperspace.ShipGraph:GetRoomShape(room) end

function Hyperspace.ShipGraph:ComputeCenter() end

---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@return integer
function Hyperspace.ShipGraph:ConnectedGridSquares(x1, y1, x2, y2) end

---@param p1 Hyperspace.Point
---@param p2 Hyperspace.Point
---@return integer
function Hyperspace.ShipGraph:ConnectedGridSquaresPoint(p1, p2) end

---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@return Hyperspace.Door
function Hyperspace.ShipGraph:ConnectingDoor(x1, y1, x2, y2) end

---@param p1 Hyperspace.Point
---@param p2 Hyperspace.Point
---@return Hyperspace.Door
function Hyperspace.ShipGraph:ConnectingDoor(p1, p2) end

---@param roomId integer
---@return vector<integer>
function Hyperspace.ShipGraph:ConnectivityDFS(roomId) end

---@param x integer
---@param y integer
---@return boolean
function Hyperspace.ShipGraph:ContainsPoint(x, y) end

---@param ang number
---@return number
function Hyperspace.ShipGraph:ConvertToLocalAngle(ang) end

---@param world Hyperspace.Pointf
---@param past boolean
---@return Hyperspace.Pointf
function Hyperspace.ShipGraph:ConvertToLocalPosition(world, past) end

---@param ang number
---@return number
function Hyperspace.ShipGraph:ConvertToWorldAngle(ang) end

---@param local_ Hyperspace.Pointf
---@return Hyperspace.Pointf
function Hyperspace.ShipGraph:ConvertToWorldPosition(local_) end

---@param start Hyperspace.Point
---@param goal Hyperspace.Point
---@param shipId integer
---@return Path
function Hyperspace.ShipGraph:Dijkstra(start, goal, shipId) end

---@param roomId integer
---@return integer
function Hyperspace.ShipGraph:DoorCount(roomId) end

---@param p1 Hyperspace.Point
---@param p2 Hyperspace.Point
---@param shipId integer
---@return Path
function Hyperspace.ShipGraph:FindPath(p1, p2, shipId) end

---@param pos Hyperspace.Point
---@param shipId integer
---@param intruder boolean
---@return Hyperspace.Slot
function Hyperspace.ShipGraph:GetClosestSlot(pos, shipId, intruder) end

---@param roomId integer
---@return vector<Hyperspace.Door>
function Hyperspace.ShipGraph:GetDoors(roomId) end

---@param room integer
---@return integer
function Hyperspace.ShipGraph:GetNumSlots(room) end

---@param room integer
---@return boolean
function Hyperspace.ShipGraph:GetRoomBlackedOut(room) end

---@param room integer
---@return number
function Hyperspace.ShipGraph:GetRoomOxygen(room) end

---@param x integer
---@param y integer
---@param unk boolean
---@return integer
function Hyperspace.ShipGraph:GetSelectedRoom(x, y, unk) end

---@param slotId integer
---@param roomId integer
---@param intruder boolean
---@return Hyperspace.Point
function Hyperspace.ShipGraph:GetSlotRenderPosition(slotId, roomId, intruder) end

---@param slotId integer
---@param roomId integer
---@return Hyperspace.Point
function Hyperspace.ShipGraph:GetSlotWorldPosition(slotId, roomId) end

---@param room1 integer
---@param room2 integer
---@return boolean
function Hyperspace.ShipGraph:IsRoomConnected(room1, room2) end

---@param doors vector<integer>
---@param distances vector<number>
---@return integer
function Hyperspace.ShipGraph:PopClosestDoor(doors, distances) end

---@return integer
function Hyperspace.ShipGraph:RoomCount() end

---@param xx integer
---@param yy integer
---@return Hyperspace.Point
function Hyperspace.ShipGraph.TranslateFromGrid(xx, yy) end

---@param xx integer
---@param yy integer
---@return Hyperspace.Point
function Hyperspace.ShipGraph.TranslateToGrid(xx, yy) end

---@param shipId integer
---@return Hyperspace.ShipGraph
function Hyperspace.ShipGraph.GetShipInfo(shipId) end

---@class Hyperspace.Door
---@field iRoom1 integer (Read-only)
---@field iRoom2 integer (Read-only)
---@field bOpen boolean
---@field iBlast integer
---@field bFakeOpen boolean
---@field width integer (Read-only) **read-only**
---@field height integer (Read-only) **read-only**
---@field outlinePrimitive Graphics.GL_Primitive
---@field highlightPrimitive Graphics.GL_Primitive
---@field doorAnim Hyperspace.Animation
---@field doorAnimLarge Hyperspace.Animation
---@field iDoorId integer (Read-only) **read-only**
---@field baseHealth integer
---@field health integer
---@field forcedOpen Hyperspace.AnimationTracker
---@field gotHit Hyperspace.AnimationTracker
---@field doorLevel integer
---@field bIoned boolean
---@field fakeOpenTimer number
---@field lockedDown Hyperspace.AnimationTracker
---@field lastbase number
---@field iHacked integer
---@field x integer (Read-only) **read-only**
---@field y integer (Read-only) **read-only**
---@field bVertical boolean (Read-only) **read-only**
Hyperspace.Door = {}

---@param amount number
---@return boolean
function Hyperspace.Door:ApplyDamage(amount) end

---@class Hyperspace.DroneSystem: Hyperspace.ShipSystem
---@field drones vector<Hyperspace.Drone> Vector starts at index 0 not 1.
---@field drone_count integer
---@field drone_start integer
---@field targetShip Hyperspace.Targetable
---@field userPowered vector<boolean> Vector starts at index 0 not 1.
---@field slot_count integer
---@field iStartingBatteryPower integer
---@field repowerList vector<boolean> Vector starts at index 0 not 1.
Hyperspace.DroneSystem = {}

---@param drone Hyperspace.Drone
---@param unk boolean
---@return boolean
function Hyperspace.DroneSystem:DePowerDrone(drone, unk) end

---@param slot integer
---@return Hyperspace.Drone
function Hyperspace.DroneSystem:RemoveDrone(slot) end

---@param amount integer
---@param permanentPower integer
function Hyperspace.DroneSystem:SetBonusPower(amount, permanentPower) end

---@class Hyperspace.EngineSystem
Hyperspace.EngineSystem = {}

---@class Hyperspace.LocationEvent
---@field text Hyperspace.TextString
---@field stuff Hyperspace.ResourceEvent
---@field environment integer
---@field environmentTarget integer
---@field store boolean
---@field gap_ex_cleared boolean
---@field fleetPosition integer
---@field beacon boolean
---@field reveal_map boolean
---@field distressBeacon boolean
---@field repair boolean
---@field modifyPursuit integer
---@field quest String
---@field spaceImage String
---@field planetImage String
---@field eventName String
---@field reward Hyperspace.ResourceEvent
---@field boarders Hyperspace.BoardingEvent
---@field choices vector<Hyperspace.Choice> If you want to modify the current `Choice` values please refer to `:GetChoices()` instead
---@field unlockShip integer
---@field unlockShipText Hyperspace.TextString
---@field secretSector boolean
Hyperspace.LocationEvent = {}

---@return Hyperspace.LocationEvent
function Hyperspace.LocationEvent() end

---@return vector<Hyperspace.Choice>
function Hyperspace.LocationEvent:GetChoices() end

---@param newEvent Hyperspace.LocationEvent
---@param text String
---@param requirement Hyperspace.ChoiceReq
---@param hiddenReward boolean
function Hyperspace.LocationEvent:AddChoice(newEvent, text, requirement, hiddenReward) end

---@param index integer
---@return boolean
function Hyperspace.LocationEvent:RemoveChoice(index) end

---@class Hyperspace.Choice
---@field event Hyperspace.LocationEvent
---@field text Hyperspace.TextString
---@field requirement Hyperspace.ChoiceReq
---@field hiddenReward boolean
Hyperspace.Choice = {}

---@class Hyperspace.SectorDescription
---@field type String
---@field name Hyperspace.TextString
---@field shortName Hyperspace.TextString
Hyperspace.SectorDescription = {}

---@class Hyperspace.Sector
---@field visited boolean
---@field level integer (Read-only)
---@field description Hyperspace.SectorDescription (Read-only) Field is **read-only** but fields under this object may still be mutable.
Hyperspace.Sector = {}

---@class Hyperspace.EventGenerator
Hyperspace.EventGenerator = {}

---@return Hyperspace.EventGenerator
function Hyperspace.EventGenerator() end

---@param name String
---@param worldLevel integer
---@param ignoreUnique boolean
---@return Hyperspace.LocationEvent
function Hyperspace.EventGenerator:CreateEvent(name, worldLevel, ignoreUnique) end

---@param name String
---@param worldLevel integer
---@param ignoreUnique boolean
---@param seed integer
---@return Hyperspace.LocationEvent
function Hyperspace.EventGenerator:GetBaseEvent(name, worldLevel, ignoreUnique, seed) end

---@class Hyperspace.ImageDesc
---@field tex Graphics.GL_Texture
---@field resId integer
---@field w integer
---@field h integer
---@field x integer
---@field y integer
---@field rot integer
Hyperspace.ImageDesc = {}

---@class Hyperspace.Repairable: Hyperspace.Selectable
---@field shipObj Hyperspace.ShipObject
---@field fDamage number
---@field pLoc Hyperspace.Point
---@field fMaxDamage number
---@field name String
---@field roomId integer
---@field iRepairCount integer
Hyperspace.Repairable = {}

---@class Hyperspace.Spreadable: Hyperspace.Repairable
---@field soundName String
Hyperspace.Spreadable = {}

---@class Hyperspace.Fire: Hyperspace.Spreadable
---@field fDeathTimer number
---@field fStartTimer number
---@field fOxygen number
---@field fireAnimation Hyperspace.Animation
---@field smokeAnimation Hyperspace.Animation
---@field bWasOnFire boolean
Hyperspace.Fire = {}

function Hyperspace.Fire:OnLoop() end

---@param connectedFires integer
function Hyperspace.Fire:UpdateDeathTimer(connectedFires) end

---@param doorLevel integer
function Hyperspace.Fire:UpdateStartTimer(doorLevel) end

---@class Hyperspace.HackingDrone: Hyperspace.SpaceDrone
---@field startingPosition Hyperspace.Pointf
---@field droneImage_on Graphics.GL_Texture
---@field droneImage_off Graphics.GL_Texture
---@field lightImage Graphics.GL_Texture
---@field finalDestination Hyperspace.Pointf
---@field arrived boolean
---@field finishedSetup boolean
---@field flashTracker Hyperspace.AnimationTracker
---@field flying Hyperspace.Animation
---@field extending Hyperspace.Animation
---@field explosion Hyperspace.Animation
---@field prefRoom integer
Hyperspace.HackingDrone = {}

---@return Hyperspace.HackingDrone
function Hyperspace.HackingDrone() end

---@param start Hyperspace.Pointf
---@param finish Hyperspace.Pointf
---@param damage Hyperspace.Damage
---@param raytrace boolean
---@return Hyperspace.CollisionResponse
function Hyperspace.HackingDrone:CollisionMoving(start, finish, damage, raytrace) end

function Hyperspace.HackingDrone:OnLoop() end

---@param target Hyperspace.Targetable
function Hyperspace.HackingDrone:SetMovementTarget(target) end

---@class Hyperspace.HackingSystem: Hyperspace.ShipSystem
---@field bHacking boolean
---@field drone Hyperspace.HackingDrone
---@field bBlocked boolean
---@field bArmed boolean
---@field currentSystem Hyperspace.ShipSystem The current system it is targeting
---@field effectTimer pair<number, number>
---@field bCanHack boolean
---@field queuedSystem Hyperspace.ShipSystem
---@field spendDrone integer
Hyperspace.HackingSystem = {}

function Hyperspace.HackingSystem:BlowHackingDrone() end

---@class Hyperspace.LaserBlast: Hyperspace.Projectile
---@field movingTarget Hyperspace.Targetable
---@field spinAngle number
---@field spinSpeed number
Hyperspace.LaserBlast = {}

---@param _position Hyperspace.Pointf
---@param _ownerId integer
---@param _targetId integer
---@param _target Hyperspace.Pointf
---@return Hyperspace.LaserBlast
function Hyperspace.LaserBlast(_position, _ownerId, _targetId, _target) end

---@class Hyperspace.Location
---@field loc Hyperspace.Pointf
---@field connectedLocations vector<Hyperspace.Location>
---@field beacon boolean
---@field known boolean
---@field visited integer
---@field dangerZone boolean
---@field nebula boolean Grant the fleet delay of nebula, no changes to the event itself
---@field boss boolean Final boss event overrides the beacon, no visual indication.
---@field event Hyperspace.LocationEvent
---@field planet Hyperspace.ImageDesc
---@field space Hyperspace.ImageDesc
---@field fleetChanging boolean
---@field planetImage String
---@field spaceImage String
Hyperspace.Location = {}

---@class Hyperspace.LockdownShard
---@field shard Hyperspace.Animation
---@field position Hyperspace.Pointf
---@field goal Hyperspace.Pointf
---@field speed number
---@field bArrived boolean
---@field bDone boolean
---@field lifeTime number
---@field superFreeze boolean
---@field lockingRoom integer
Hyperspace.LockdownShard = {}

function Hyperspace.LockdownShard:Update() end

---@class Hyperspace.MedbaySystem: Hyperspace.ShipSystem
Hyperspace.MedbaySystem = {}

---@class Hyperspace.MindSystem: Hyperspace.ShipSystem
---@field controlTimer pair<number, number>
---@field bCanUse boolean
---@field iArmed integer
---@field controlledCrew vector<Hyperspace.CrewMember>
---@field bSuperShields boolean
---@field bBlocked boolean
---@field iQueuedTarget integer
---@field iQueuedShip integer
---@field queuedCrew vector<Hyperspace.CrewMember>
Hyperspace.MindSystem = {}

---@param armed integer
function Hyperspace.MindSystem:SetArmed(armed) end

---@param hackingLevel integer
function Hyperspace.MindSystem:SetHackingLevel(hackingLevel) end

---@class Hyperspace.Missile: Hyperspace.Projectile
Hyperspace.Missile = {}

---@param _position Hyperspace.Pointf
---@param _ownerId integer
---@param _targetId integer
---@param _target Hyperspace.Pointf
---@param _heading number
---@return Hyperspace.Missile
function Hyperspace.Missile(_position, _ownerId, _targetId, _target, _heading) end

---@class Hyperspace.MouseControl
---@field position Hyperspace.Point
---@field lastPosition Hyperspace.Point
---@field aiming_required integer
---@field iTeleporting integer
---@field iMindControlling integer
---@field bSellingStuff boolean
---@field valid boolean
---@field newHover boolean
---@field lastValid boolean
---@field animateDoor integer
---@field validPointer Graphics.GL_Texture
---@field invalidPointer Graphics.GL_Texture
---@field selling Graphics.GL_Texture
---@field openDoor Hyperspace.Animation
---@field tooltip String
---@field tooltipTimer number
---@field bMoving boolean
---@field bHideMouse boolean
---@field lastIcon Graphics.GL_Texture
---@field lastAddition Graphics.GL_Texture
---@field bForceTooltip boolean
---@field tooltipTitle String
---@field lastTooltipText String
---@field iHacking integer
---@field overrideTooltipWidth integer
---@field staticTooltip Hyperspace.Point
Hyperspace.MouseControl = {}

function Hyperspace.MouseControl:InstantTooltip() end

--- `tooltipName` should be an id of the text without prefix `tooltip_`.
---@param tooltipName String
function Hyperspace.MouseControl:LoadTooltip(tooltipName) end

---@param unk integer
---@return Hyperspace.Point
function Hyperspace.MouseControl:MeasureTooltip(unk) end

function Hyperspace.MouseControl:OnLoop() end

function Hyperspace.MouseControl:OnRender() end

---@param pos Hyperspace.Point
function Hyperspace.MouseControl:QueueStaticTooltip(pos) end

---@param tooltipPoint Hyperspace.Point
---@param staticPos boolean
function Hyperspace.MouseControl:RenderTooltip(tooltipPoint, staticPos) end

function Hyperspace.MouseControl:Reset() end

function Hyperspace.MouseControl:ResetArmed() end

---@param state integer
function Hyperspace.MouseControl:SetDoor(state) end

---@param tooltip String
function Hyperspace.MouseControl:SetTooltip(tooltip) end

---@param tooltip String
function Hyperspace.MouseControl:SetTooltipTitle(tooltip) end

---@class Hyperspace.OuterHull: Hyperspace.Repairable
---@field breach Hyperspace.Animation
---@field heal Hyperspace.Animation
Hyperspace.OuterHull = {}

---@class Hyperspace.OxygenSystem: Hyperspace.ShipSystem
---@field max_oxygen number
---@field oxygenLevels vector<number>
---@field fTotalOxygen number
---@field bLeakingO2 boolean (Read-only)
---@field leakModifier number (Read-only) **Read-only**<br>A multiplier to the rate at which airlocks and breaches drain oxygen.<br>Can be changed with `CALCULATE_LEAK_MODIFIER` callback.
Hyperspace.OxygenSystem = {}

---@param numRooms integer
---@param roomId integer
---@param shipId integer
---@param startingPower integer
---@return Hyperspace.OxygenSystem
function Hyperspace.OxygenSystem(numRooms, roomId, shipId, startingPower) end

---@param roomId integer
function Hyperspace.OxygenSystem:EmptyOxygen(roomId) end

---@return number
function Hyperspace.OxygenSystem:GetRefillSpeed() end

---@param roomId integer
---@param value number
function Hyperspace.OxygenSystem:ModifyRoomOxygen(roomId, value) end

---@class Hyperspace.PDSFire: Hyperspace.LaserBlast
---@field startPoint Hyperspace.Pointf
---@field passedTarget boolean
---@field currentScale number
---@field missed boolean
---@field explosionAnimation Hyperspace.Animation
Hyperspace.PDSFire = {}

---@param pos Hyperspace.Point
---@param destinationSpace integer
---@param destination Hyperspace.Pointf
---@return Hyperspace.PDSFire
function Hyperspace.PDSFire(pos, destinationSpace, destination) end

---@class Hyperspace.PowerManager
---@field currentPower pair<integer, integer>
---@field over_powered integer
---@field fFuel number
---@field failedPowerup boolean
---@field iTempPowerCap integer
---@field iTempPowerLoss integer
---@field iTempDividePower integer
---@field iHacked integer
---@field batteryPower pair<integer, integer>
Hyperspace.PowerManager = {}

---@return integer
function Hyperspace.PowerManager:GetAvailablePower() end

---@return integer
function Hyperspace.PowerManager:GetMaxPower() end

---@param iShipId integer
---@return Hyperspace.PowerManager
function Hyperspace.PowerManager.GetPowerManager(iShipId) end

---@class Hyperspace.ProjectileFactory: Hyperspace.ShipObject
---@field cooldown pair<number, number>
---@field subCooldown pair<number, number>
---@field baseCooldown number
---@field blueprint Hyperspace.WeaponBlueprint
---@field localPosition Hyperspace.Point
---@field flight_animation Hyperspace.Animation
---@field autoFiring boolean
---@field fireWhenReady boolean
---@field powered boolean
---@field requiredPower integer
---@field targets vector<Hyperspace.Pointf>
---@field lastTargets vector<Hyperspace.Pointf>
---@field targetId integer
---@field iAmmo integer
---@field name String
---@field numShots integer
---@field currentFiringAngle number
---@field currentEntryAngle number
---@field currentShipTarget Hyperspace.Targetable
---@field weaponVisual Hyperspace.WeaponAnimation
---@field mount Hyperspace.WeaponMount
---@field queuedProjectiles vector<Hyperspace.Projectile>
---@field iBonusPower integer
---@field bFiredOnce boolean
---@field iSpendMissile integer
---@field cooldownModifier number
---@field shotsFiredAtTarget integer
---@field radius integer
---@field boostLevel integer
---@field lastProjectileId integer
---@field chargeLevel integer
---@field iHackLevel integer
---@field goalChargeLevel integer
---@field isArtillery boolean
Hyperspace.ProjectileFactory = {
    table = {},
}

---@param bp Hyperspace.WeaponBlueprint
---@param shipId integer
---@return Hyperspace.ProjectileFactory
function Hyperspace.ProjectileFactory(bp, shipId) end

---@param points vector<Hyperspace.Pointf>
---@param target integer
function Hyperspace.ProjectileFactory:Fire(points, target) end

---@return boolean
function Hyperspace.ProjectileFactory:FireNextShot() end

function Hyperspace.ProjectileFactory:ForceCoolup() end

---@return Hyperspace.Projectile
function Hyperspace.ProjectileFactory:GetProjectile() end

---@return boolean
function Hyperspace.ProjectileFactory:IsChargedGoal() end

---@return integer
function Hyperspace.ProjectileFactory:NumTargetsRequired() end

---@param mod number
function Hyperspace.ProjectileFactory:SetCooldownModifier(mod) end

---@param ship Hyperspace.Targetable
function Hyperspace.ProjectileFactory:SetCurrentShip(ship) end

---@param hacked integer
function Hyperspace.ProjectileFactory:SetHacked(hacked) end

---@class Hyperspace.ResourceControl
Hyperspace.ResourceControl = {}

---@param tex Graphics.GL_Texture
---@param unk1 integer
---@param unk2 integer
---@param unk3 integer
---@param color Graphics.GL_Color
---@param alpha number
---@param mirror boolean
---@return Graphics.GL_Primitive
function Hyperspace.ResourceControl:CreateImagePrimitive(tex, unk1, unk2, unk3, color, alpha, mirror) end

---@param tex String
---@param x integer
---@param y integer
---@param rotation integer
---@param color Graphics.GL_Color
---@param alpha number
---@param mirror boolean
---@return Graphics.GL_Primitive
function Hyperspace.ResourceControl:CreateImagePrimitiveString(tex, x, y, rotation, color, alpha, mirror) end

---@param size integer
---@param ignoreLanguage boolean
---@return Graphics.freetype.font_data
function Hyperspace.ResourceControl:GetFontData(size, ignoreLanguage) end

---@param dir String
---@return Graphics.GL_Texture
function Hyperspace.ResourceControl:GetImageId(dir) end

---@param name String
---@return boolean
function Hyperspace.ResourceControl:ImageExists(name) end

---@param fileName String
---@return string
function Hyperspace.ResourceControl:LoadFile(fileName) end

---@param tex Graphics.GL_Texture
---@param x integer
---@param y integer
---@param rotation integer
---@param color Graphics.GL_Color
---@param opacity number
---@param mirror boolean
---@return integer
function Hyperspace.ResourceControl:RenderImage(tex, x, y, rotation, color, opacity, mirror) end

---@param tex String
---@param x integer
---@param y integer
---@param rotation integer
---@param color Graphics.GL_Color
---@param opacity number
---@param mirror boolean
---@return integer
function Hyperspace.ResourceControl:RenderImageString(tex, x, y, rotation, color, opacity, mirror) end

---@class Hyperspace.TopScore
---@field sector integer
---@field score integer
Hyperspace.TopScore = {}

---@return Hyperspace.TopScore
function Hyperspace.TopScore() end

---@class Hyperspace.ScoreKeeper
---@field currentScore Hyperspace.TopScore (Read-only) Field is **read-only** but fields under this object may still be mutable.
Hyperspace.ScoreKeeper = {}

---@class Hyperspace.SettingValues
---@field fullscreen integer (Read-only)
---@field currentFullscreen integer (Read-only)
---@field lastFullscreen integer (Read-only)
---@field sound integer (Read-only)
---@field music integer (Read-only)
---@field difficulty integer (Read-only)
---@field commandConsole boolean (Read-only)
---@field altPause boolean (Read-only)
---@field touchAutoPause boolean (Read-only)
---@field lowend boolean (Read-only)
---@field fbError boolean (Read-only)
---@field language String (Read-only)
---@field languageSet boolean (Read-only)
---@field screenResolution Hyperspace.Point (Read-only)
---@field dialogKeys integer (Read-only)
---@field logging boolean (Read-only)
---@field bShowChangelog boolean (Read-only)
---@field loadingSaveVersion integer (Read-only)
---@field achPopups boolean (Read-only)
---@field vsync boolean (Read-only)
---@field frameLimit boolean (Read-only)
---@field manualResolution boolean (Read-only)
---@field manualWindowed boolean (Read-only)
---@field manualStretched boolean (Read-only)
---@field showPaths boolean (Read-only)
---@field swapTextureType boolean (Read-only)
---@field colorblind boolean (Read-only)
---@field holdingModifier boolean (Read-only)
---@field bDlcEnabled boolean (Read-only)
---@field openedList integer (Read-only)
---@field beamTutorial boolean (Read-only)
Hyperspace.SettingValues = {}

---@class Hyperspace.Shields: Hyperspace.ShipSystem
---@field ellipseRatio number
---@field center Hyperspace.Point
---@field baseShield Hyperspace.Ellipse
---@field iHighlightedSide integer
---@field shields Hyperspace.Shield
---@field shields_shutdown boolean
---@field shieldHits vector<Hyperspace.Shields.ShieldAnimation>
---@field shieldsDown Hyperspace.AnimationTracker
---@field superShieldDown boolean
---@field shieldsDownPoint Hyperspace.Pointf
---@field shieldsUp Hyperspace.AnimationTracker
---@field shieldImage Graphics.GL_Texture
---@field shieldPrimitive Graphics.GL_Primitive
---@field shieldImageName String
---@field bEnemyPresent boolean
---@field bBarrierMode boolean
---@field lastHitTimer number
---@field chargeTime number
---@field lastHitShieldLevel integer
---@field superShieldUp Hyperspace.AnimationTracker
---@field superUpLoc Hyperspace.Point
---@field bExcessChargeHack boolean
Hyperspace.Shields = {}

---@param roomId integer
---@param shipId integer
---@param startingPower integer
---@param shieldFile String
---@return Hyperspace.Shields
function Hyperspace.Shields(roomId, shipId, startingPower, shieldFile) end

---@param pos Hyperspace.Point
function Hyperspace.Shields:AddSuperShield(pos) end

---@param x number
---@param y number
---@param damage Hyperspace.Damage
---@param force boolean
---@return Hyperspace.CollisionResponse
function Hyperspace.Shields:CollisionReal(x, y, damage, force) end

function Hyperspace.Shields:InstantCharge() end

---@param ellipse Hyperspace.Ellipse
function Hyperspace.Shields:SetBaseEllipse(ellipse) end

---@param hackingLevel integer
function Hyperspace.Shields:SetHackingLevel(hackingLevel) end

---@class Hyperspace.Shield
---@field charger number
---@field power Hyperspace.ShieldPower
---@field superTimer number
Hyperspace.Shield = {}

---@class Hyperspace.Ship: Hyperspace.ShipObject
---@field vRoomList vector<Hyperspace.Room>
---@field vDoorList vector<Hyperspace.Door>
---@field vOuterWalls vector<Hyperspace.OuterHull>
---@field vOuterAirlocks vector<Hyperspace.Door>
---@field hullIntegrity pair<integer, integer>
---@field weaponMounts vector<Hyperspace.WeaponMount>
---@field floorImageName String
---@field shipFloor Hyperspace.ImageDesc
---@field floorPrimitive Graphics.GL_Primitive
---@field shipImageName String
---@field shipImage Hyperspace.ImageDesc
---@field glowOffset Hyperspace.Point
---@field shipImagePrimitive Graphics.GL_Primitive
---@field cloakImageName String
---@field shipImageCloak Hyperspace.ImageDesc
---@field cloakPrimitive Graphics.GL_Primitive
---@field gridPrimitive Graphics.GL_Primitive
---@field wallsPrimitive Graphics.GL_Primitive
---@field doorsPrimitive Graphics.GL_Primitive
---@field doorState vector<Hyperspace.Ship.DoorState>
---@field lastDoorControlMode boolean
---@field thrustersImage Graphics.GL_Texture
---@field jumpGlare Graphics.GL_Texture
---@field vertical_shift integer
---@field horizontal_shift integer
---@field shipName String
---@field bDestroyed boolean
---@field baseEllipse Hyperspace.Ellipse
---@field engineAnim Hyperspace.Animation
---@field cloakingTracker Hyperspace.AnimationTracker
---@field bCloaked boolean
---@field bExperiment boolean
---@field bShowEngines boolean
---@field lockdowns vector<Hyperspace.LockdownShard> Does not give a pointer to the LockdownShard, so any changes to the LockdownShard will not be reflected. Use GetShards() instead.
---@field extraEngineAnim vector<pair<Hyperspace.Animation, integer>> (Read-only)
Hyperspace.Ship = {}

---@param room integer
---@return Hyperspace.Pointf
function Hyperspace.Ship:GetRoomCenter(room) end

---@return vector<Hyperspace.LockdownShard>
function Hyperspace.Ship:GetShards() end

--- Breaches a random tile in the room with `roomId` as its id. This can select an already breached tile, in which case nothing will happen.
---@param roomId integer
function Hyperspace.Ship:BreachRandomHull(roomId) end

--- Breaches a tile at the specified grid coordinates.
---@param grid_x integer
---@param grid_y integer
---@return boolean
function Hyperspace.Ship:BreachSpecificHull(grid_x, grid_y) end

--- Returns the number of tiles within the room (Equivalent to the area of the room). I think this marks all tiles in the room as empty, so you can use this to fit more crew than you should in a given room.
---@param roomId integer
---@return integer
function Hyperspace.Ship:EmptySlots(roomId) end

--- Returns true if the room cannot fit any more crew of the allegiance specifies by the `intruder` arg. If `intruder` is false, counts player crew when on the player ship, and enemy crew when on the enemy ship. If `intruder` is true, counts enemy crew when on the player ship, and player crew when on the enemy ship.
---@param roomId integer
---@param intruder boolean
---@return boolean
function Hyperspace.Ship:FullRoom(roomId, intruder) end

---@param roomId integer
---@param intruder boolean
---@return integer
function Hyperspace.Ship:GetAvailableRoomSlot(roomId, intruder) end

--- Return `baseEllipse` member by value.
---@return Hyperspace.Ellipse
function Hyperspace.Ship:GetBaseEllipse() end

---@param onlyDamaged boolean
---@return vector<Hyperspace.Repairable>
function Hyperspace.Ship:GetHullBreaches(onlyDamaged) end

--- Returns the id of the room at the selected point, or -1 if no valid room would be selected at that point. bIncludeWalls specifies that walls count as part of the room.
---@param x integer
---@param y integer
---@param unk boolean
---@return integer
function Hyperspace.Ship:GetSelectedRoomId(x, y, unk) end

--- Locks down the room, and spawns the crystal animation at `pos`. Does not play the lockdown sound. Note: For a "normal" animation, `pos` can be set to the room's center, but it can be set outside of the room as well.
---@param roomId integer
---@param pos Hyperspace.Pointf
function Hyperspace.Ship:LockdownRoom(roomId, pos) end

--- Returns true if the room is locked down.
---@param roomId integer
---@return boolean
function Hyperspace.Ship:RoomLocked(roomId) end

--- When `blackout` is true, hide the room's interior (As if sensors were disabled). When it is false, show the room's interior. Note: This must be done every tick to have an effect.
---@param roomId integer
---@param blackout boolean
function Hyperspace.Ship:SetRoomBlackout(roomId, blackout) end

--- Sets the room to be selected (Yellow outline). Note: Must be done every tick to have an effect.
---@param roomId integer
function Hyperspace.Ship:SetSelectedRoom(roomId) end

---@class Hyperspace.ShipGenerator
Hyperspace.ShipGenerator = {}

---@return Hyperspace.ShipGenerator
function Hyperspace.ShipGenerator() end

---@param name String
---@param sector integer
---@param event ShipEvent
---@return Hyperspace.ShipManager
function Hyperspace.ShipGenerator.CreateShip(name, sector, event) end

---@param ship Hyperspace.ShipBlueprint
---@param level integer
---@return vector<integer>
function Hyperspace.ShipGenerator.GenerateSystemMaxes(ship, level) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 String
---@param unknown2 uint
---@return vector<Hyperspace.CrewBlueprint>
function Hyperspace.ShipGenerator.GetPossibleCrewList(unknown, unknown1, unknown2) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 String
---@param unknown2 integer
---@param unknown3 uint
---@param unknown4 boolean
---@return vector<Hyperspace.DroneBlueprint>
function Hyperspace.ShipGenerator.GetPossibleDroneList(unknown, unknown1, unknown2, unknown3, unknown4) end

---@param ship Hyperspace.ShipManager
---@param systemMaxes vector<integer>
---@param scrap integer
---@param type integer
---@return vector<integer>
function Hyperspace.ShipGenerator.GetPossibleSystemUpgrades(ship, systemMaxes, scrap, type) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 String
---@param unknown2 integer
---@param unknown3 uint
---@return vector<Hyperspace.WeaponBlueprint>
function Hyperspace.ShipGenerator.GetPossibleWeaponList(unknown, unknown1, unknown2, unknown3) end

---@param unknown Hyperspace.ShipManager
---@param unknown1 vector<integer>
---@param unknown2 uint
---@return boolean
function Hyperspace.ShipGenerator.UpgradeSystem(unknown, unknown1, unknown2) end

---@class Hyperspace.ShipInfo
---@field augList map<String, integer>
Hyperspace.ShipInfo = {}

---@class Hyperspace.Spreader_Fire: Hyperspace.ShipObject
---@field count integer
---@field roomCount vector<integer>
---@field grid vector<vector<Hyperspace.Fire>>
Hyperspace.Spreader_Fire = {}

---@return Hyperspace.Spreader_Fire
function Hyperspace.Spreader_Fire() end

---@class Hyperspace.ShipManager: Hyperspace.ShipObject
---@field _targetable Hyperspace.Targetable (Read-only) **Read-only**
---@field vSystemList vector<Hyperspace.ShipSystem> (Read-only) **Read-only** currently, however we might need to explore if this would be a safe way to remove a system<br>Fields under this object may still be mutable (see their docs).<br>Holds a vector (array in lua) of ship systems that you can iterate over
---@field oxygenSystem Hyperspace.OxygenSystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field teleportSystem Hyperspace.TeleportSystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field cloakSystem Hyperspace.CloakingSystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field batterySystem Hyperspace.BatterySystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field mindSystem Hyperspace.MindSystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field cloneSystem Hyperspace.CloneSystem (Read-only) **Note:** shares system with Medbay system and both cannot exist at the same time<br>Field is **read-only** but fields under this object may still be mutable.
---@field hackingSystem Hyperspace.HackingSystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field shieldSystem Hyperspace.Shields (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field weaponSystem Hyperspace.WeaponSystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field droneSystem Hyperspace.DroneSystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field engineSystem Hyperspace.EngineSystem (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field medbaySystem Hyperspace.MedbaySystem (Read-only) **Note:** shares system with Clonebay system and both cannot exist at the same time<br>Field is **read-only** but fields under this object may still be mutable.
---@field artillerySystems vector<Hyperspace.ArtillerySystem> (Read-only) Array (vector) of artillery systems on this ship, you will need to check for length<br>**Note:** Unlike Lua arrays, because this is a C vector internally it will start at index `0` not index `1` so `.artillerySystems[0]` is the first artillery system.<br>Field is **read-only** but fields under this object may still be mutable.
---@field vCrewList vector<Hyperspace.CrewMember> (Read-only) Array (vector) of crew members on this ship<br>**Note:** Vectors are 0 indexed unlike lua's normal arrays<br>Field is **read-only** but fields under this object may still be mutable.
---@field fireSpreader Hyperspace.Spreader_Fire
---@field ship Hyperspace.Ship (Read-only) Field is **read-only** but fields under this object may still be mutable.
---@field current_target Hyperspace.ShipManager (Read-only)
---@field jump_timer pair<number, number> (Read-only) **read-only** (not sure if it's safe to make this editable)
---@field fuel_count integer Unlike other resources, fuel is mutable and should be modified directly instead of with a modify method
---@field bDestroyed boolean (Read-only) **Since 1.4.0**
---@field iLastDamage integer (Read-only) **read-only** (not sure if it's safe to make this editable)
---@field currentScrap integer (Read-only) **read-only** use the modify method if you really want to change this
---@field bJumping boolean (Read-only) **read-only**
---@field bAutomated boolean **read-only**
---@field shipLevel integer (Read-only) **read-only**
---@field myBlueprint Hyperspace.ShipBlueprint (Read-only) **read-only**
---@field lastEngineStatus boolean (Read-only) **read-only**
---@field lastJumpReady boolean (Read-only) **read-only**
---@field bContainsPlayerCrew boolean (Read-only) **read-only**
---@field iIntruderCount integer (Read-only) **read-only**
---@field crewCounts vector<vector<integer>> (Read-only) Note: Double vector, both indices start at 0<br>Field is **read-only** but fields under this object may still be mutable.
---@field tempDroneCount integer (Read-only) **read-only**
---@field tempMissileCount integer (Read-only) **read-only**
---@field tempVision vector<boolean> (Read-only) **read-only**<br>Note: Vectors start at index 0, unlike normal arrays in Lua
---@field bHighlightCrew boolean
---@field spaceDrones vector<Hyperspace.SpaceDrone>
---@field iCustomizeMode integer (Read-only) **read-only**<br>2 while in the hangar, 0 while in a run
---@field bShowRoom boolean
---@field superBarrage vector<Hyperspace.Projectile> Note: Vectors start at index 0, unlike normal arrays in Lua
---@field bInvincible boolean
---@field superDrones vector<Hyperspace.SpaceDrone> Note: Vectors start at index 0, unlike normal arrays in Lua
---@field failedDodgeCounter integer
---@field enemyDamagedUncloaked boolean
---@field damageCloaked integer
---@field extend Hyperspace.ShipManager_Extend (Read-only) **Since 1.4.0**
Hyperspace.ShipManager = {
    table = {},
}

---@param shipId integer
---@return Hyperspace.ShipManager
function Hyperspace.ShipManager(shipId) end

--- Chooses a random room on the ship and returns the center point of that room
---@return Hyperspace.Pointf
function Hyperspace.ShipManager:GetRandomRoomCenter() end

--- Gets the room center point of a specific room id.
---@param roomId integer
---@return Hyperspace.Pointf
function Hyperspace.ShipManager:GetRoomCenter(roomId) end

--- First element of the pair is the maximum reactor power, the second element is the available reactor power.
---@return pair<integer, integer>
function Hyperspace.ShipManager:GetAvailablePower() end

---@param systemId integer
function Hyperspace.ShipManager:RemoveSystem(systemId) end

---@param bp Hyperspace.CrewBlueprint
---@param slot integer
---@param init boolean
---@param roomId integer
---@param intruder boolean
---@return Hyperspace.CrewMember
function Hyperspace.ShipManager:AddCrewMemberFromBlueprint(bp, slot, init, roomId, intruder) end

---@param name String
---@param race String
---@param intruder boolean
---@param roomId integer
---@param init boolean
---@param male boolean
---@return Hyperspace.CrewMember
function Hyperspace.ShipManager:AddCrewMemberFromString(name, race, intruder, roomId, init, male) end

---@param bp Hyperspace.DroneBlueprint
---@param slot integer
---@return Hyperspace.Drone
function Hyperspace.ShipManager:AddDrone(bp, slot) end

---@param blueprints vector<Hyperspace.CrewBlueprint>
function Hyperspace.ShipManager:AddInitialCrew(blueprints) end

---@param systemId integer
---@return integer
function Hyperspace.ShipManager:AddSystem(systemId) end

---@param bp Hyperspace.WeaponBlueprint
---@param slot integer
---@return integer
function Hyperspace.ShipManager:AddWeapon(bp, slot) end

---@param systemId integer
---@return boolean
function Hyperspace.ShipManager:CanFitSubsystem(systemId) end

---@param systemId integer
---@return boolean
function Hyperspace.ShipManager:CanFitSystem(systemId) end

---@param systemId integer
---@param amount integer
---@return integer
function Hyperspace.ShipManager:CanUpgrade(systemId, amount) end

function Hyperspace.ShipManager:ClearStatusAll() end

---@param system integer
function Hyperspace.ShipManager:ClearStatusSystem(system) end

--- return count of crew on this ship, true for boarders false for regular crewmembers.
---@param boarders boolean
---@return integer
function Hyperspace.ShipManager:CountCrew(boarders) end

--- Counts crew in a room. shipId corresponds to which ship owns the crewmembers, 0 being the player and 1 being the enemy.
---@param roomId integer
---@param shipId integer
---@return integer
function Hyperspace.ShipManager:CountCrewShipId(roomId, shipId) end

---@param bp Hyperspace.DroneBlueprint
---@return Hyperspace.SpaceDrone
function Hyperspace.ShipManager:CreateSpaceDrone(bp) end

---@param location Hyperspace.Pointf
---@param dmg Hyperspace.Damage
---@param forceHit boolean
---@return boolean
function Hyperspace.ShipManager:DamageArea(location, dmg, forceHit) end

---@param location1 Hyperspace.Pointf
---@param location2 Hyperspace.Pointf
---@param dmg Hyperspace.Damage
---@return boolean
function Hyperspace.ShipManager:DamageBeam(location1, location2, dmg) end

--- It directly damages the hull? What's more to say, I think negative numbers heal the hull. Could be cool for some random lifesaving or lifetaking mechanics that run mid-battle instead of during an event. Imagine if you could dump all power into hull integrity or something and lose 10% power for the rest of the fight but gain 10% hull, could be fun!<br>`force` ignores whether or not the ship is jumping. If it is false and the ship is jumping, the damage will not be applied.
---@param dmg integer
---@param force boolean
---@return integer
function Hyperspace.ShipManager:DamageHull(dmg, force) end

---@param systemId integer
---@param damage Hyperspace.Damage
function Hyperspace.ShipManager:DamageSystem(systemId, damage) end

--- `vision` is the sensor level.
---@param vision integer
---@return boolean
function Hyperspace.ShipManager:DoSensorsProvide(vision) end

--- Do the doors work or not
---@return boolean
function Hyperspace.ShipManager:DoorsFunction() end

---@param bp Hyperspace.CrewBlueprint
---@return Hyperspace.CrewMember
function Hyperspace.ShipManager:FindCrew(bp) end

---@param sys integer
---@return boolean
function Hyperspace.ShipManager:ForceDecreaseSystemPower(sys) end

---@param slot integer
---@param present boolean
---@return Hyperspace.CrewMember
function Hyperspace.ShipManager:GetCrewmember(slot, present) end

---@return integer
function Hyperspace.ShipManager:GetDodgeFactor() end

--- Calculates whether a projectile should be dodged or not.<br>Note: 5 calls of this method that return false while the player has fully upgraded, fully powered engines will unlock the achievement 'Astronomically Low Odds'.
---@return boolean
function Hyperspace.ShipManager:GetDodged() end

--- Returns the number of drone parts the ship has.
---@return integer
function Hyperspace.ShipManager:GetDroneCount() end

--- Returns the list of Drones for this ship, the `std::vector` it returns can be accessed like an array in Lua
---@return vector<Hyperspace.Drone>
function Hyperspace.ShipManager:GetDroneList() end

---@param roomId integer
---@return integer
function Hyperspace.ShipManager:GetFireCount(roomId) end

---@return integer
function Hyperspace.ShipManager:GetMissileCount() end

---@return integer
function Hyperspace.ShipManager:GetOxygenPercentage() end

---@param x integer
---@param y integer
---@param intruder boolean
---@return Hyperspace.CrewMember
function Hyperspace.ShipManager:GetSelectedCrewPoint(x, y, intruder) end

---@return Hyperspace.ShieldPower
function Hyperspace.ShipManager:GetShieldPower() end

--- You can also just access the system directly with fields below if it's one of the vanilla systems like `oxygenSystem` `medbaySystem` etc... but custom systems like Temporal currently need to be accessed by id.
---@param systemId integer
---@return Hyperspace.ShipSystem
function Hyperspace.ShipManager:GetSystem(systemId) end

--- Returns the system in a specific room id. If there is no system in the room, returns 0.
---@param roomId integer
---@return Hyperspace.ShipSystem
function Hyperspace.ShipManager:GetSystemInRoom(roomId) end

--- How much power is assigned to this system
---@param systemId integer
---@return integer
function Hyperspace.ShipManager:GetSystemPower(systemId) end

--- What is the max power level of this system, functionally this is the same as the system's "level"
---@param systemId integer
---@return integer
function Hyperspace.ShipManager:GetSystemPowerMax(systemId) end

--- Find what roomId a system is in, could be useful for AI targeting mechanics or some cheesy player weapon that can only attack one system or something.
---@param sysId integer
---@return integer
function Hyperspace.ShipManager:GetSystemRoom(sysId) end

---@param x integer
---@param y integer
---@return string
function Hyperspace.ShipManager:GetTooltip(x, y) end

--- Return a vector of weapons on this ship, can be treated like an array in Lua.
---@return vector<Hyperspace.ProjectileFactory>
function Hyperspace.ShipManager:GetWeaponList() end

--- Does the ship have a specific system, true/false
---@param systemId integer
---@return boolean
function Hyperspace.ShipManager:HasSystem(systemId) end

function Hyperspace.ShipManager:InstantPowerShields() end

---@return boolean
function Hyperspace.ShipManager:IsCrewFull() end

---@return boolean
function Hyperspace.ShipManager:IsCrewOverFull() end

--- Returns the "hacking level" of the system. 0 means there is no hacking drone on the system, 1 means there is a hacking drone attached but is not currently being hacked, 2 means there is a hacking drone and the system is being hacked.
---@param systemId integer
---@return integer
function Hyperspace.ShipManager:IsSystemHacked(systemId) end

---@param drones integer
function Hyperspace.ShipManager:ModifyDroneCount(drones) end

---@param missiles integer
function Hyperspace.ShipManager:ModifyMissileCount(missiles) end

--- `income` determines whether or not augments should be activated (e.g. Scrap Recovery Arm and Repair Arm).
---@param scrap integer
---@param income boolean
function Hyperspace.ShipManager:ModifyScrapCount(scrap, income) end

---@param bp Hyperspace.ShipBlueprint
---@param shipLevel integer
---@return integer
function Hyperspace.ShipManager:OnInit(bp, shipLevel) end

--- I do not know if this is safe to call
function Hyperspace.ShipManager:PrepareSuperBarrage() end

--- I do not know if this is safe to call
function Hyperspace.ShipManager:PrepareSuperDrones() end

function Hyperspace.ShipManager:ResetScrapLevel() end

--- Same as hitting the button to return crew to their original positions.
---@return boolean
function Hyperspace.ShipManager:RestoreCrewPositions() end

--- Select random crew from the ship *for ~~execution~~ selection of your diabolical plans*.<br>Not sure why there is a seed option, not sure if you should give it a fixed number or call `Hyperspace.random32()` for a nice random number.
---@param seed integer
---@param racePref String
---@return Hyperspace.CrewBlueprint
function Hyperspace.ShipManager:SelectRandomCrew(seed, racePref) end

--- *Blow up the damn ship Jean-Luc!*
function Hyperspace.ShipManager:SetDestroyed() end

--- Sets a power loss level, like from an event except can be done at any time regardless of an event.
---@param systemId integer
---@param powerLoss integer
function Hyperspace.ShipManager:SetSystemPowerLoss(systemId, powerLoss) end

--- Yeah, it does *exactly what you think it does* [you monster](https://gfycat.com/complexcarefulant).
---@param roomId integer
function Hyperspace.ShipManager:StartFire(roomId) end

--- Returns whether the system has any power assigned to it.
---@param systemId integer
---@return boolean
function Hyperspace.ShipManager:SystemFunctions(systemId) end

--- Teleport crew & get back the list of CrewMembers.<br>I think there might be something more you need to do to give them a destination so they don't simply get teleport-ed to space, *unless you know... that was the intention*.
---@param roomId integer
---@param intruders boolean
---@return vector<Hyperspace.CrewMember>
function Hyperspace.ShipManager:TeleportCrew(roomId, intruders) end

--- Remove an item by name (equivalent to removing via an event).<br>checkCargo indicates if items will be removed from cargo if not present in weapon/drone system.
---@param name String
---@param checkCargo? boolean = false
function Hyperspace.ShipManager:RemoveItem(name, checkCargo) end

---@param name String
function Hyperspace.ShipManager:RemoveItem(name) end

---@param unknown number
---@param unknown1 number
---@return Hyperspace.Fire
function Hyperspace.ShipManager:GetFireAtPoint(unknown, unknown1) end

---@param unknown Hyperspace.Point
---@return Hyperspace.Fire
function Hyperspace.ShipManager:GetFireAtPoint(unknown) end

---@param unknown Hyperspace.Pointf
---@return Hyperspace.Fire
function Hyperspace.ShipManager:GetFireAtPoint(unknown) end

---@param unknown integer
---@param unknown1 integer
---@return Hyperspace.Fire
function Hyperspace.ShipManager:GetFire(unknown, unknown1) end

---@class Hyperspace.ShipRepairDrone: Hyperspace.CombatDrone
---@field repairBeam CachedImage
---@field repairBeams vector<number>
Hyperspace.ShipRepairDrone = {}

---@class Hyperspace.SoundControl
Hyperspace.SoundControl = {}

---@param soundName String
---@param volume number
---@param loop boolean
---@return integer
function Hyperspace.SoundControl:PlaySoundMix(soundName, volume, loop) end

--- The channel value is given by `PlaySoundMix`<br>`fade` is counted in milliseconds
---@param channel integer
---@param fade number
function Hyperspace.SoundControl:StopChannel(channel, fade) end

---@class Hyperspace.SpaceManager
---@field projectiles vector<Hyperspace.Projectile> (Read-only) **Read-only**
---@field asteroidGenerator Hyperspace.AsteroidGenerator (Read-only)
---@field drones vector<Hyperspace.SpaceDrone> (Read-only) **Read-only**
---@field currentBack Graphics.GL_Texture
---@field currentPlanet Hyperspace.ImageDesc
---@field sunLevel boolean (Read-only)
---@field pulsarLevel boolean (Read-only)
---@field bPDS boolean (Read-only)
---@field envTarget integer
---@field bNebula boolean (Read-only)
---@field bStorm boolean (Read-only)
---@field gamePaused boolean (Read-only) **Read-only**<br>[`AsteroidGenerator`](#AsteroidGenerator) `.asteroidGenerator`<br>`.asteroidGenerator.bRunning` will indicate if the current space has an asteroid hazard, similar to the variables below<br>**Read-only**<br>`bool` `.sunLevel`<br>**Read-only**<br>`bool` `.pulsarLevel`<br>**Read-only**<br>`bool` `.bPDS`<br>**Read-only**<br>`int` `.envTarget`<br>Dictate the current target of the PDS (0: player, 1: enemy, 2: both)<br>`bool` `.bNebula`<br>**Read-only**<br>`bool` `.bStorm`<br>**Read-only**
Hyperspace.SpaceManager = {}

---@param weapon Hyperspace.WeaponBlueprint
---@param position Hyperspace.Pointf
---@param space integer
---@param ownerId integer
---@param target Hyperspace.Pointf
---@param targetSpace integer
---@param heading number
---@return Hyperspace.LaserBlast
function Hyperspace.SpaceManager:CreateLaserBlast(weapon, position, space, ownerId, target, targetSpace, heading) end

---@param position Hyperspace.Pointf
---@param space integer
---@param ownerId integer
---@param target Hyperspace.Pointf
---@param targetSpace integer
---@param heading number
---@return Hyperspace.Asteroid
function Hyperspace.SpaceManager:CreateAsteroid(position, space, ownerId, target, targetSpace, heading) end

---@param weapon Hyperspace.WeaponBlueprint
---@param position Hyperspace.Pointf
---@param space integer
---@param ownerId integer
---@param target Hyperspace.Pointf
---@param targetSpace integer
---@param heading number
---@return Hyperspace.Missile
function Hyperspace.SpaceManager:CreateMissile(weapon, position, space, ownerId, target, targetSpace, heading) end

---@param weapon Hyperspace.WeaponBlueprint
---@param ownerId integer
---@param target Hyperspace.Pointf
---@param targetSpace integer
---@return Hyperspace.BombProjectile
function Hyperspace.SpaceManager:CreateBomb(weapon, ownerId, target, targetSpace) end

---@param weapon Hyperspace.WeaponBlueprint
---@param position Hyperspace.Pointf
---@param space integer
---@param ownerId integer
---@param target1 Hyperspace.Pointf
---@param target2 Hyperspace.Pointf
---@param targetSpace integer
---@param length integer
---@param heading number
---@return Hyperspace.BeamWeapon
function Hyperspace.SpaceManager:CreateBeam(weapon, position, space, ownerId, target1, target2, targetSpace, length, heading) end

---@param weapon Hyperspace.WeaponBlueprint
---@param image String
---@param fake boolean
---@param position Hyperspace.Pointf
---@param space integer
---@param ownerId integer
---@param target Hyperspace.Pointf
---@param targetSpace integer
---@param heading number
---@return Hyperspace.LaserBlast
function Hyperspace.SpaceManager:CreateBurstProjectile(weapon, image, fake, position, space, ownerId, target, targetSpace, heading) end

---@param weapon Hyperspace.WeaponBlueprint
---@param position Hyperspace.Point
---@param target Hyperspace.Pointf
---@param targetSpace integer
---@param smoke boolean
---@return Hyperspace.PDSFire
function Hyperspace.SpaceManager:CreatePDSFire(weapon, position, target, targetSpace, smoke) end

---@return boolean
function Hyperspace.SpaceManager:DangerousEnvironment() end

---@param name String
---@return Hyperspace.ImageDesc
function Hyperspace.SpaceManager:SwitchBackground(name) end

---@param name String
---@return Hyperspace.ImageDesc
function Hyperspace.SpaceManager:SwitchPlanet(name) end

function Hyperspace.SpaceManager:UpdatePlanetImage() end

---@param proj Hyperspace.Projectile
function Hyperspace.SpaceManager:UpdateProjectile(proj) end

---@class Hyperspace.WindowFrame
---@field rect Hyperspace.Rect
---@field outline Graphics.GL_Primitive
---@field mask Graphics.GL_Primitive
---@field pattern Graphics.GL_Primitive
Hyperspace.WindowFrame = {}

---@param _x integer
---@param _y integer
---@param _w integer
---@param _h integer
---@return Hyperspace.WindowFrame
function Hyperspace.WindowFrame(_x, _y, _w, _h) end

---@param x integer
---@param y integer
function Hyperspace.WindowFrame:Draw(x, y) end

---@param unk integer
function Hyperspace.WindowFrame:DrawMask(unk) end

---@class Hyperspace.StarMap: Hyperspace.FocusWindow
---@field locations vector<Hyperspace.Location> (Read-only) **Read-only**
---@field currentLoc Hyperspace.Location
---@field potentialLoc Hyperspace.Location
---@field hoverLoc Hyperspace.Location
---@field dangerZone Hyperspace.Point
---@field worldLevel integer (Read-only) **Read-only**
---@field bMapRevealed boolean
---@field pursuitDelay integer
---@field ship Graphics.GL_Primitive The map icon that rotates around the current location representing the player ship.
---@field shipNoFuel Graphics.GL_Primitive The no fuel variant of the `ship` icon.
---@field mapsBottom Graphics.GL_Primitive[] length=3 Contains the 3 background images of the sector map. Index selected via `worldLevel % 3`.
---@field bTutorialGenerated boolean
---@field sectors vector<Hyperspace.Sector>
---@field currentSector Hyperspace.Sector
---@field bChoosingNewSector boolean
---@field bSecretSector boolean
Hyperspace.StarMap = {}

---@param unk0 integer
function Hyperspace.StarMap:ModifyPursuit(unk0) end

---@param x number
---@param y number
---@return Hyperspace.Point
function Hyperspace.StarMap:PointToGrid(x, y) end

--- Disables the ability to jump and enables the wait/distress menu. Replaces the "NO FUEL" message shown on the sector map with a primitive of your own.<br>NOTE: The primitive should be a local or global variable. If it is garbage collected while in use this will lead to a crash.<br>If no argument is passed, then the jump menu is re-enabled and the "NO FUEL" message is restored.
---@param waitMessage Graphics.GL_Primitive
function Hyperspace.StarMap:ForceWaitMessage(waitMessage) end

function Hyperspace.StarMap:ForceWaitMessage() end

---@class Hyperspace.SuperShieldDrone: Hyperspace.DefenseDrone
---@field shieldSystem Hyperspace.Shields
---@field drone_image_on CachedImage
---@field drone_image_off CachedImage
---@field drone_image_glow CachedImage
---@field glowAnimation number
Hyperspace.SuperShieldDrone = {}

---@param iShipId integer
---@param selfId integer
---@param blueprint Hyperspace.DroneBlueprint
---@return Hyperspace.SuperShieldDrone
function Hyperspace.SuperShieldDrone(iShipId, selfId, blueprint) end

---@return number
function Hyperspace.SuperShieldDrone:GetWeaponCooldown() end

function Hyperspace.SuperShieldDrone:OnLoop() end

---@class Hyperspace.TeleportSystem: Hyperspace.ShipSystem
---@field chargeLevel number
---@field bCanSend boolean
---@field bCanReceive boolean
---@field iArmed integer
---@field crewSlots vector<boolean>
---@field iPreparedCrew integer
---@field iNumSlots integer
---@field bSuperShields boolean
Hyperspace.TeleportSystem = {}

---@return boolean
function Hyperspace.TeleportSystem:CanReceive() end

---@return boolean
function Hyperspace.TeleportSystem:CanSend() end

---@return boolean
function Hyperspace.TeleportSystem:Charged() end

function Hyperspace.TeleportSystem:ForceReady() end

---@return number
function Hyperspace.TeleportSystem:GetChargedPercent() end

function Hyperspace.TeleportSystem:InitiateTeleport() end

---@param armed integer
function Hyperspace.TeleportSystem:SetArmed(armed) end

---@param hackingLevel integer
function Hyperspace.TeleportSystem:SetHackingLevel(hackingLevel) end

---@class Hyperspace.TutorialManager
---@field bRunning boolean
---@field playerShip Hyperspace.ShipManager (Read-only) **read-only**
---@field gui Hyperspace.CommandGui (Read-only) **read-only**
---@field starMap Hyperspace.StarMap (Read-only) **Read-only**
---@field combatControl Hyperspace.CombatControl (Read-only) **Read-only**
---@field shipInfo Hyperspace.TabbedWindow (Read-only) **Read-only**
---@field bGamePaused boolean
---@field bQuitTutorial boolean Setting this to true ends the tutorial.
---@field tracker Hyperspace.AnimationTracker (Read-only) **Read-only**
---@field bAllowJumping boolean If true, plyer can open the star map.
---@field bAllowUpgrades boolean If true, player can open Upgrades screen.
Hyperspace.TutorialManager = {}

---@class Hyperspace.WeaponSystem: Hyperspace.ShipSystem
---@field target Hyperspace.Pointf
---@field weapons vector<Hyperspace.ProjectileFactory>
---@field weaponsTrashList vector<Hyperspace.ProjectileFactory>
---@field shot_timer number
---@field shot_count integer
---@field missile_count integer
---@field missile_start integer
---@field userPowered vector<boolean>
---@field slot_count integer
---@field iStartingBatteryPower integer
---@field repowerList vector<boolean>
Hyperspace.WeaponSystem = {}

---@param amount integer
---@return boolean
function Hyperspace.WeaponSystem:ForceIncreasePower(amount) end

---@param slot integer
---@return Hyperspace.ProjectileFactory
function Hyperspace.WeaponSystem:RemoveWeapon(slot) end

---@param amount integer
---@param permanentPower integer
function Hyperspace.WeaponSystem:SetBonusPower(amount, permanentPower) end

---@class Hyperspace.WorldManager
---@field space Hyperspace.SpaceManager (Read-only) **Read-only**
---@field currentDifficulty integer (Read-only) **Read-only**
---@field starMap Hyperspace.StarMap (Read-only) **Read-only**
---@field bStartedGame boolean (Read-only) **Read-only**
---@field bLoadingGame boolean (Read-only) **Read-only**
---@field playerCrewCount integer
---@field killedCrew integer
---@field playerHull integer
Hyperspace.WorldManager = {}

---@param boardingEvent Hyperspace.BoardingEvent
---@return boolean
function Hyperspace.WorldManager:AddBoarders(boardingEvent) end

function Hyperspace.WorldManager:ClearLocation() end

---@class Hyperspace.CustomAchievementTracker
---@field instance Hyperspace.CustomAchievementTracker (Read-only)
Hyperspace.CustomAchievementTracker = {}

---@param name String
---@return integer
function Hyperspace.CustomAchievementTracker:GetAchievementStatus(name) end

---@param varName String
---@param varValue integer
---@param inGame? boolean = true
function Hyperspace.CustomAchievementTracker:UpdateVariableAchievements(varName, varValue, inGame) end

---@param unknown String
---@param unknown1 integer
function Hyperspace.CustomAchievementTracker:UpdateVariableAchievements(unknown, unknown1) end

---@param name String
---@param noPopup boolean
function Hyperspace.CustomAchievementTracker:SetAchievement(name, noPopup) end

---@class Hyperspace.AugmentSuperShield
---@field value integer (Read-only)
---@field add integer (Read-only)
---@field customRender boolean (Read-only)
---@field present boolean (Read-only)
---@field shieldTexture String (Read-only)
---@field shieldColor Graphics.GL_Color (Read-only)
Hyperspace.AugmentSuperShield = {}

---@class Hyperspace.AugmentCrystalShard
---@field weapon String (Read-only)
---@field chance number (Read-only)
---@field stacking integer (Read-only)
Hyperspace.AugmentCrystalShard = {}

---@class Hyperspace.AugmentFunction
---@field value number (Read-only)
---@field preferHigher boolean (Read-only)
---@field useForReqs boolean (Read-only)
---@field warning boolean (Read-only)
---@field sys integer (Read-only)
---@field modifyChoiceTextScrap boolean (Read-only)
Hyperspace.AugmentFunction = {}

---@param iShipId integer
---@return boolean
function Hyperspace.AugmentFunction:Functional(iShipId) end

---@class Hyperspace.AugmentDefinition
---@field name String (Read-only)
---@field functions unordered_multimap<String, Hyperspace.AugmentFunction> (Read-only)
---@field superShield Hyperspace.AugmentSuperShield (Read-only)
---@field crystalShard vector<Hyperspace.AugmentCrystalShard> (Read-only)
---@field locked boolean (Read-only)
---@field statBoosts vector<Hyperspace.StatBoostDefinition> (Read-only)
---@field iconShipId integer (Read-only)
Hyperspace.AugmentDefinition = {}

---@class Hyperspace.CustomAugmentManager
Hyperspace.CustomAugmentManager = {}

---@return Hyperspace.CustomAugmentManager
function Hyperspace.CustomAugmentManager() end

---@param name String
---@return boolean
function Hyperspace.CustomAugmentManager:IsAugment(name) end

---@param iShipId integer
---@return unordered_map<String, integer>
function Hyperspace.CustomAugmentManager:GetShipAugments(iShipId) end

---@param name String
---@return Hyperspace.AugmentDefinition
function Hyperspace.CustomAugmentManager:GetAugmentDefinition(name) end

---@return Hyperspace.CustomAugmentManager
function Hyperspace.CustomAugmentManager.GetInstance() end

---@class Hyperspace.TemporaryPowerDefinition
---@field duration number
---@field effectAnim String
---@field effectFinishAnim String
---@field animSheet String
---@field baseVisible boolean
---@field soundsEnemy boolean
---@field sounds vector<String>
---@field maxHealth ToggleValue<integer>
---@field stunMultiplier ToggleValue<number>
---@field moveSpeedMultiplier ToggleValue<number>
---@field damageMultiplier ToggleValue<number>
---@field rangedDamageMultiplier ToggleValue<number>
---@field doorDamageMultiplier ToggleValue<number>
---@field repairSpeed ToggleValue<number>
---@field fireRepairMultiplier ToggleValue<number>
---@field controllable ToggleValue<boolean>
---@field canFight ToggleValue<boolean>
---@field canRepair ToggleValue<boolean>
---@field canSabotage ToggleValue<boolean>
---@field canMan ToggleValue<boolean>
---@field canTeleport ToggleValue<boolean>
---@field canSuffocate ToggleValue<boolean>
---@field canBurn ToggleValue<boolean>
---@field oxygenChangeSpeed ToggleValue<number>
---@field canPhaseThroughDoors ToggleValue<boolean>
---@field fireDamageMultiplier ToggleValue<number>
---@field isTelepathic ToggleValue<boolean>
---@field resistsMindControl ToggleValue<boolean>
---@field isAnaerobic ToggleValue<boolean>
---@field detectsLifeforms ToggleValue<boolean>
---@field damageTakenMultiplier ToggleValue<number>
---@field cloneSpeedMultiplier ToggleValue<number>
---@field passiveHealAmount ToggleValue<number>
---@field truePassiveHealAmount ToggleValue<number>
---@field healAmount ToggleValue<number>
---@field trueHealAmount ToggleValue<number>
---@field passiveHealDelay ToggleValue<integer>
---@field sabotageSpeedMultiplier ToggleValue<number>
---@field allDamageTakenMultiplier ToggleValue<number>
---@field healSpeed ToggleValue<number>
---@field suffocationModifier ToggleValue<number>
---@field healCrewAmount ToggleValue<number>
---@field powerDrain ToggleValue<integer>
---@field powerDrainFriendly ToggleValue<boolean>
---@field bonusPower ToggleValue<integer>
---@field damageEnemiesAmount ToggleValue<number>
---@field hackDoors ToggleValue<boolean>
---@field powerRechargeMultiplier ToggleValue<number>
---@field noClone ToggleValue<boolean>
---@field noAI ToggleValue<boolean>
---@field validTarget ToggleValue<boolean>
---@field canMove ToggleValue<boolean>
---@field teleportMove ToggleValue<boolean>
---@field teleportMoveOtherShip ToggleValue<boolean>
---@field silenced ToggleValue<boolean>
---@field lowHealthThreshold ToggleValue<number>
---@field statBoosts vector<Hyperspace.StatBoostDefinition>
---@field invulnerable boolean
---@field animFrame integer
---@field cooldownColor Graphics.GL_Color
Hyperspace.TemporaryPowerDefinition = {}

---@class Hyperspace.ActivatedPowerRequirements
---@field type Hyperspace.ActivatedPowerRequirements.Type
---@field playerShip boolean
---@field enemyShip boolean
---@field checkRoomCrew boolean
---@field enemyInRoom boolean
---@field friendlyInRoom boolean
---@field whiteList vector<String>
---@field friendlyWhiteList vector<String>
---@field friendlyBlackList vector<String>
---@field enemyWhiteList vector<String>
---@field enemyBlackList vector<String>
---@field systemInRoom boolean
---@field systemDamaged boolean
---@field hasClonebay boolean
---@field aiDisabled boolean
---@field outOfCombat boolean
---@field inCombat boolean
---@field requiredSystem integer
---@field requiredSystemFunctional boolean
---@field minHealth ToggleValue<integer>
---@field maxHealth ToggleValue<integer>
---@field extraConditions vector<pair<Hyperspace.CrewExtraCondition, boolean>>
---@field extraOrConditions vector<pair<Hyperspace.CrewExtraCondition, boolean>>
---@field extraOrConditionsTooltip Hyperspace.TextString
Hyperspace.ActivatedPowerRequirements = {
    Type_PLAYER = 0,
    Type_ENEMY = 1,
    Type_CHARGE = 2,
    Type_UNKNOWN = 3,
}

---@return Hyperspace.ActivatedPowerRequirements
function Hyperspace.ActivatedPowerRequirements() end

---@param unknown Hyperspace.ActivatedPowerRequirements.Type
---@return Hyperspace.ActivatedPowerRequirements
function Hyperspace.ActivatedPowerRequirements(unknown) end

---@class Hyperspace.ActivatedPowerDefinition
---@field name String (Read-only) **read-only**
---@field activateGroupIndex uint (Read-only) **read-only**
---@field replaceGroupIndex uint (Read-only) **read-only**
---@field sortOrder integer
---@field damage Hyperspace.Damage
---@field cooldown number
---@field shipFriendlyFire boolean
---@field hasSpecialPower boolean
---@field hasTemporaryPower boolean
---@field jumpCooldown integer
---@field disabledCooldown integer
---@field initialCooldownFraction number
---@field onDeath integer
---@field onHotkey integer
---@field powerCharges integer
---@field initialCharges integer
---@field chargesPerJump integer
---@field respawnCharges integer
---@field disabledCharges integer
---@field hideCooldown boolean
---@field hideCharges boolean
---@field hideButton boolean
---@field powerResources vector<Hyperspace.PowerResourceDefinition>
---@field sounds vector<String>
---@field effectSounds vector<String>
---@field soundsEnemy boolean
---@field effectSoundsEnemy boolean
---@field buttonLabel Hyperspace.TextString
---@field cooldownColor Graphics.GL_Color
---@field tooltip Hyperspace.TextString
---@field effectAnim String
---@field effectPostAnim String
---@field playerReq Hyperspace.ActivatedPowerRequirements
---@field enemyReq Hyperspace.ActivatedPowerRequirements
---@field chargeReq Hyperspace.ActivatedPowerRequirements
---@field win boolean
---@field crewHealth number
---@field enemyHealth number
---@field selfHealth number
---@field animFrame integer
---@field followCrew boolean
---@field activateWhenReady boolean
---@field activateReadyEnemies boolean
---@field transformRace String
---@field crewSpawns vector<CrewSpawn>
---@field statBoosts vector<Hyperspace.StatBoostDefinition>
---@field roomStatBoosts vector<Hyperspace.StatBoostDefinition>
---@field event array<String, 2>
---@field tempPower Hyperspace.TemporaryPowerDefinition
Hyperspace.ActivatedPowerDefinition = {}

---@return Hyperspace.ActivatedPowerDefinition
function Hyperspace.ActivatedPowerDefinition() end

function Hyperspace.ActivatedPowerDefinition:AssignIndex() end

---@param _name String
function Hyperspace.ActivatedPowerDefinition:AssignName(_name) end

---@param _name String
function Hyperspace.ActivatedPowerDefinition:AssignActivateGroup(_name) end

---@param _name String
function Hyperspace.ActivatedPowerDefinition:AssignReplaceGroup(_name) end

---@param _name String
function Hyperspace.ActivatedPowerDefinition:AssignGroup(_name) end

---@param _name String
---@return Hyperspace.ActivatedPowerDefinition
function Hyperspace.ActivatedPowerDefinition.GetPowerByName(_name) end

---@param _name String
---@param copyDef Hyperspace.ActivatedPowerDefinition
---@return Hyperspace.ActivatedPowerDefinition
function Hyperspace.ActivatedPowerDefinition.AddNamedDefinition(_name, copyDef) end

---@class Hyperspace.PowerResourceDefinition
---@field name String (Read-only) **read-only**
---@field groupIndex uint (Read-only) **read-only**
---@field sortOrder integer
---@field cooldown number
---@field jumpCooldown integer
---@field disabledCooldown integer
---@field initialCooldownFraction number
---@field onDeath integer
---@field powerCharges integer
---@field initialCharges integer
---@field chargesPerJump integer
---@field respawnCharges integer
---@field disabledCharges integer
---@field hideCooldown boolean
---@field hideCharges boolean
---@field showTemporaryBars boolean
---@field showLinkedCooldowns boolean
---@field showLinkedCharges boolean
---@field cooldownColor Graphics.GL_Color
---@field chargeReq Hyperspace.ActivatedPowerRequirements
Hyperspace.PowerResourceDefinition = {}

---@return Hyperspace.PowerResourceDefinition
function Hyperspace.PowerResourceDefinition() end

function Hyperspace.PowerResourceDefinition:AssignIndex() end

---@param _name String
function Hyperspace.PowerResourceDefinition:AssignName(_name) end

---@param _name String
function Hyperspace.PowerResourceDefinition:AssignGroup(_name) end

---@param _name String
---@return Hyperspace.PowerResourceDefinition
function Hyperspace.PowerResourceDefinition.GetByName(_name) end

---@param _name String
---@param copyDef Hyperspace.PowerResourceDefinition
---@return Hyperspace.PowerResourceDefinition
function Hyperspace.PowerResourceDefinition.AddNamedDefinition(_name, copyDef) end

---@class Hyperspace.CrewDefinition
---@field race String
---@field deathSounds vector<String>
---@field deathSoundsFemale vector<String>
---@field shootingSounds vector<String>
---@field repairSounds vector<String>
---@field repairSoundFrame integer
---@field canFight boolean
---@field canRepair boolean
---@field canSabotage boolean
---@field canMan boolean
---@field canTeleport boolean
---@field canSuffocate boolean
---@field controllable boolean
---@field selectable boolean
---@field canBurn boolean
---@field maxHealth integer
---@field stunMultiplier number
---@field moveSpeedMultiplier number
---@field repairSpeed number
---@field damageMultiplier number
---@field cloneSpeedMultiplier number
---@field rangedDamageMultiplier number
---@field doorDamageMultiplier number
---@field providesPower boolean
---@field bonusPower integer
---@field fireRepairMultiplier number
---@field suffocationModifier number
---@field isTelepathic boolean
---@field resistsMindControl boolean
---@field isAnaerobic boolean
---@field fireDamageMultiplier number
---@field canPhaseThroughDoors boolean
---@field oxygenChangeSpeed number
---@field damageTakenMultiplier number
---@field passiveHealAmount number
---@field truePassiveHealAmount number
---@field healAmount number
---@field trueHealAmount number
---@field passiveHealDelay integer
---@field detectsLifeforms boolean
---@field hasCustomDeathAnimation boolean
---@field hasDeathExplosion boolean
---@field animBase String
---@field animSheet String
---@field sabotageSpeedMultiplier number
---@field allDamageTakenMultiplier number
---@field defaultSkillLevel integer
---@field healSpeed number
---@field cloneLoseSkills boolean
---@field healCrewAmount number
---@field droneAI DroneAI
---@field droneMoveFromManningSlot boolean
---@field powerDrain integer
---@field powerDrainFriendly boolean
---@field damageEnemiesAmount number
---@field hackDoors boolean
---@field powerRechargeMultiplier number
---@field crewSlots number
---@field noSlot boolean
---@field noClone boolean
---@field noAI boolean
---@field validTarget boolean
---@field canPunch ToggleValue<boolean>
---@field canMove boolean
---@field snapToSlot boolean
---@field teleportMove boolean
---@field teleportMoveOtherShip boolean
---@field essential number
---@field silenced boolean
---@field lowHealthThreshold number
---@field lowHealthThresholdPercentage number
---@field noWarning boolean
---@field shootTimer pair<integer, integer>
---@field punchTimer pair<integer, integer>
---@field explosionDef ExplosionDefinition
---@field powerDefs vector<Hyperspace.ActivatedPowerDefinition>
---@field passiveStatBoosts vector<Hyperspace.StatBoostDefinition>
---@field nameRace vector<String>
---@field transformName vector<String>
---@field changeIfSame boolean
---@field skillsDef SkillsDefinition
Hyperspace.CrewDefinition = {}

---@class Hyperspace.TriggeredEventDefinition
---@field name String (Read-only)
---@field event String (Read-only)
---@field defs vector<Hyperspace.TriggeredEventDefinition> (Read-only)
Hyperspace.TriggeredEventDefinition = {}

---@class Hyperspace.CustomEvent
---@field unlockShip String
---@field triggeredEvents vector<uint> (Read-only) **read-only**
Hyperspace.CustomEvent = {}

---@return Hyperspace.CustomEvent
function Hyperspace.CustomEvent() end

---@class Hyperspace.CustomEventsParser
Hyperspace.CustomEventsParser = {}

---@return Hyperspace.CustomEventsParser
function Hyperspace.CustomEventsParser() end

---@param event String
---@return Hyperspace.CustomEvent
function Hyperspace.CustomEventsParser:GetCustomEvent(event) end

---@param loc Hyperspace.Location
---@return Hyperspace.CustomEvent
function Hyperspace.CustomEventsParser:GetCustomEvent(loc) end

---@param world Hyperspace.WorldManager
---@param eventList EventLoadList
---@param seed integer
---@param parentEvent? Hyperspace.CustomEvent = nullptr
function Hyperspace.CustomEventsParser:LoadEvent(world, eventList, seed, parentEvent) end

---@param unknown Hyperspace.WorldManager
---@param unknown1 EventLoadList
---@param unknown2 integer
function Hyperspace.CustomEventsParser:LoadEvent(unknown, unknown1, unknown2) end

---@param world Hyperspace.WorldManager
---@param eventName String
---@param ignoreUnique boolean
---@param seed integer
---@param parentEvent? Hyperspace.CustomEvent = nullptr
function Hyperspace.CustomEventsParser:LoadEvent(world, eventName, ignoreUnique, seed, parentEvent) end

---@param unknown Hyperspace.WorldManager
---@param unknown1 String
---@param unknown2 boolean
---@param unknown3 integer
function Hyperspace.CustomEventsParser:LoadEvent(unknown, unknown1, unknown2, unknown3) end

---@return Hyperspace.CustomEventsParser
function Hyperspace.CustomEventsParser.GetInstance() end

---@class Hyperspace.CustomShipGenerator
Hyperspace.CustomShipGenerator = {}

---@return Hyperspace.CustomShipGenerator
function Hyperspace.CustomShipGenerator() end

---@param shipBlueprint Hyperspace.ShipBlueprint
---@param sector integer
---@param event ShipEvent
---@return Hyperspace.ShipManager
function Hyperspace.CustomShipGenerator:CreateShip(shipBlueprint, sector, event) end

---@class Hyperspace.RoomDefinition
---@field roomId integer
---@field sensorBlind boolean
---@field hullDamageResistChance number
---@field sysDamageResistChance number
---@field ionDamageResistChance number
Hyperspace.RoomDefinition = {}

---@return Hyperspace.RoomDefinition
function Hyperspace.RoomDefinition() end

---@class Hyperspace.CrewPlacementDefinition
---@field species String
---@field roomId integer
---@field name String
---@field isList boolean
Hyperspace.CrewPlacementDefinition = {}

---@return Hyperspace.CrewPlacementDefinition
function Hyperspace.CrewPlacementDefinition() end

---@class Hyperspace.CustomShipDefinition
---@field name String
---@field hiddenAugs map<String, integer>
---@field crewList vector<Hyperspace.CrewPlacementDefinition>
---@field noJump boolean
---@field noFuelStalemate boolean
---@field hpCap integer
---@field startingFuel integer
---@field startingScrap integer
---@field roomDefs unordered_map<integer, Hyperspace.RoomDefinition>
---@field shipIcons vector<String>
---@field forceAutomated ToggleValue<boolean>
---@field crewLimit integer
---@field systemLimit integer
---@field subsystemLimit integer
---@field reactorPrices vector<integer>
---@field reactorPriceIncrement integer
---@field maxReactorLevel integer
---@field shipGenerator String
Hyperspace.CustomShipDefinition = {}

---@return Hyperspace.CustomShipDefinition
function Hyperspace.CustomShipDefinition() end

---@class Hyperspace.CustomShipSelect
Hyperspace.CustomShipSelect = {}

---@return Hyperspace.CustomShipSelect
function Hyperspace.CustomShipSelect() end

---@param name String
---@return Hyperspace.CustomShipDefinition
function Hyperspace.CustomShipSelect:GetDefinition(name) end

---@return Hyperspace.CustomShipSelect
function Hyperspace.CustomShipSelect.GetInstance() end

---@class Hyperspace.ActivatedPowerResource
---@field def Hyperspace.PowerResourceDefinition (Read-only) **read-only**
---@field crew Hyperspace.CrewMember (Read-only) **read-only**
---@field crew_ex Hyperspace.CrewMember_Extend (Read-only) **read-only**
---@field enabled boolean
---@field modifiedPowerCharges number
---@field modifiedChargesPerJump number
---@field powerCooldown pair<number, number>
---@field powerCharges pair<integer, integer>
Hyperspace.ActivatedPowerResource = {}

---@param _def Hyperspace.PowerResourceDefinition
---@return Hyperspace.ActivatedPowerResource
function Hyperspace.ActivatedPowerResource(_def) end

---@param _def Hyperspace.PowerResourceDefinition
---@param _crew Hyperspace.CrewMember
---@param _ex Hyperspace.CrewMember_Extend
---@return Hyperspace.ActivatedPowerResource
function Hyperspace.ActivatedPowerResource(_def, _crew, _ex) end

---@param _def Hyperspace.PowerResourceDefinition
---@param _crew Hyperspace.CrewMember
---@return Hyperspace.ActivatedPowerResource
function Hyperspace.ActivatedPowerResource(_def, _crew) end

---@param _def Hyperspace.PowerResourceDefinition
---@param _ex Hyperspace.CrewMember_Extend
---@return Hyperspace.ActivatedPowerResource
function Hyperspace.ActivatedPowerResource(_def, _ex) end

function Hyperspace.ActivatedPowerResource:GetLinkedPowers() end

---@param req Hyperspace.ActivatedPowerRequirements
---@return PowerReadyState
function Hyperspace.ActivatedPowerResource:PowerReq(req) end

function Hyperspace.ActivatedPowerResource:OnUpdate() end

function Hyperspace.ActivatedPowerResource:EnablePower() end

function Hyperspace.ActivatedPowerResource:DisablePower() end

function Hyperspace.ActivatedPowerResource:EnableInit() end

---@param mode integer
---@return integer
function Hyperspace.ActivatedPowerResource:GetCrewBoxResourceWidth(mode) end

---@class Hyperspace.ActivatedPower
---@field def Hyperspace.ActivatedPowerDefinition (Read-only) **read-only**
---@field crew Hyperspace.CrewMember (Read-only) **read-only**
---@field crew_ex Hyperspace.CrewMember_Extend (Read-only) **read-only**
---@field enabled boolean
---@field modifiedPowerCharges number
---@field modifiedChargesPerJump number
---@field powerCooldown pair<number, number>
---@field temporaryPowerDuration pair<number, number>
---@field powerCharges pair<integer, integer>
---@field powerResources vector<Hyperspace.ActivatedPowerResource> (Read-only)
---@field powerRoom integer
---@field powerShip integer
---@field powerActivated boolean
---@field temporaryPowerActive boolean
---@field powerDone boolean
---@field temporaryPowerDone boolean
---@field effectAnim Hyperspace.Animation (Read-only)
---@field tempEffectAnim Hyperspace.Animation (Read-only)
---@field effectFinishAnim Hyperspace.Animation (Read-only)
---@field extraAnims vector<Hyperspace.Animation>
---@field tempEffectStrip Graphics.GL_Texture
---@field effectPos Hyperspace.Pointf
---@field effectWorldPos Hyperspace.Pointf
Hyperspace.ActivatedPower = {}

---@param _def Hyperspace.ActivatedPowerDefinition
---@return Hyperspace.ActivatedPower
function Hyperspace.ActivatedPower(_def) end

---@param _def Hyperspace.ActivatedPowerDefinition
---@param _crew Hyperspace.CrewMember
---@param _ex Hyperspace.CrewMember_Extend
---@return Hyperspace.ActivatedPower
function Hyperspace.ActivatedPower(_def, _crew, _ex) end

---@param _def Hyperspace.ActivatedPowerDefinition
---@param _crew Hyperspace.CrewMember
---@return Hyperspace.ActivatedPower
function Hyperspace.ActivatedPower(_def, _crew) end

---@param _def Hyperspace.ActivatedPowerDefinition
---@param _ex Hyperspace.CrewMember_Extend
---@return Hyperspace.ActivatedPower
function Hyperspace.ActivatedPower(_def, _ex) end

---@param req Hyperspace.ActivatedPowerRequirements
---@return PowerReadyState
function Hyperspace.ActivatedPower:PowerReq(req) end

---@return PowerReadyState
function Hyperspace.ActivatedPower:PowerReady() end

---@return Hyperspace.Damage
function Hyperspace.ActivatedPower:GetPowerDamage() end

function Hyperspace.ActivatedPower:ActivateTemporaryPower() end

function Hyperspace.ActivatedPower:TemporaryPowerFinished() end

function Hyperspace.ActivatedPower:PrepareAnimation() end

function Hyperspace.ActivatedPower:PrepareTemporaryAnimation() end

function Hyperspace.ActivatedPower:PreparePower() end

function Hyperspace.ActivatedPower:ActivatePower() end

---@param clearAnim boolean
function Hyperspace.ActivatedPower:CancelPower(clearAnim) end

function Hyperspace.ActivatedPower:OnUpdate() end

---@param newDef Hyperspace.ActivatedPowerDefinition
function Hyperspace.ActivatedPower:ChangePowerDef(newDef) end

function Hyperspace.ActivatedPower:EnablePower() end

function Hyperspace.ActivatedPower:DisablePower() end

function Hyperspace.ActivatedPower:EnableInit() end

---@param mode integer
---@return integer
function Hyperspace.ActivatedPower:GetCrewBoxResourceWidth(mode) end

---@class Hyperspace.CrewMember_Extend
---@field orig Hyperspace.CrewMember (Read-only) **read-only**
---@field selfId integer (Read-only) **read-only**
---@field canPhaseThroughDoors boolean
---@field isHealing boolean
---@field passiveHealTimer Hyperspace.TimerHelper
---@field deathTimer Hyperspace.TimerHelper
---@field lastRoom integer
---@field lastShipId integer
---@field exploded boolean
---@field triggerExplosion boolean
---@field crewPowers vector<Hyperspace.ActivatedPower> (Read-only) **read-only**
---@field hasSpecialPower boolean
---@field powerResources vector<Hyperspace.ActivatedPowerResource> (Read-only) **read-only**
---@field powerResourceMap unordered_map<uint, Hyperspace.ActivatedPowerResource> (Read-only) **read-only**
---@field powerChange vector<Hyperspace.ActivatedPowerDefinition>
---@field noSlot boolean
---@field noClone boolean
---@field customTele Hyperspace.CustomTeleport
Hyperspace.CrewMember_Extend = {}

---@return Hyperspace.CrewMember_Extend
function Hyperspace.CrewMember_Extend() end

---@param shipId integer
---@param roomId? integer = -1
---@param slotId? integer = -1
function Hyperspace.CrewMember_Extend:InitiateTeleport(shipId, roomId, slotId) end

---@param unknown integer
---@param unknown1 integer
function Hyperspace.CrewMember_Extend:InitiateTeleport(unknown, unknown1) end

---@param unknown integer
function Hyperspace.CrewMember_Extend:InitiateTeleport(unknown) end

---@return Hyperspace.CrewDefinition
function Hyperspace.CrewMember_Extend:GetDefinition() end

---@param stat Hyperspace.CrewStat
---@param def Hyperspace.CrewDefinition
---@param boolValue? boolean = nullptr
---@return number
function Hyperspace.CrewMember_Extend:CalculateStat(stat, def, boolValue) end

---@param unknown Hyperspace.CrewStat
---@param unknown1 Hyperspace.CrewDefinition
---@return number
function Hyperspace.CrewMember_Extend:CalculateStat(unknown, unknown1) end

--- Returns the current `float` and `bool` value for the given `CrewStat`.
---@param stat Hyperspace.CrewStat
---@param boolValue? boolean = nullptr
---@return number
function Hyperspace.CrewMember_Extend:CalculateStat(stat, boolValue) end

---@param unknown Hyperspace.CrewStat
---@return number
function Hyperspace.CrewMember_Extend:CalculateStat(unknown) end

---@class Hyperspace.CustomTeleport
---@field teleporting boolean
---@field shipId integer
---@field roomId integer
---@field slotId integer
Hyperspace.CustomTeleport = {}

---@class Hyperspace.Projectile_Extend
---@field orig Hyperspace.Projectile (Read-only)
---@field name String
---@field customDamage Hyperspace.CustomDamage
---@field missedDrones vector<integer>
Hyperspace.Projectile_Extend = {}

---@class Hyperspace.ShipManager_Extend
Hyperspace.ShipManager_Extend = {}

---@class Hyperspace.ShipSystem_Extend
---@field additionalPowerLoss integer
---@field xOffset integer The offset from this SystemBox to the next in the UI.
Hyperspace.ShipSystem_Extend = {}

---@class Hyperspace.SystemBox_Extend
---@field orig Hyperspace.SystemBox (Read-only) **Read-only**<br>The SystemBox associated with this SystemBox_Extend.
---@field xOffset integer The offset from this SystemBox to the next in the UI.<br>THIS IS DEPRECIATED IN FAVOR OF `ShipSystem_Extend.xOffset`!
Hyperspace.SystemBox_Extend = {}

---@class Hyperspace.Room_Extend
---@field hullDamageResistChance number
---@field sysDamageResistChance number
---@field ionDamageResistChance number
---@field timeDilation integer
Hyperspace.Room_Extend = {}

---@class Hyperspace.StatBoostDefinition
---@field stat Hyperspace.CrewStat
---@field amount number
---@field value boolean
---@field stringValue String
---@field isBool boolean
---@field priority integer
---@field duration number
---@field jumpClear boolean
---@field cloneClear boolean
---@field boostAnim String
---@field roomAnim RoomAnimDef
---@field affectsSelf boolean
---@field whiteList vector<String>
---@field blackList vector<String>
---@field systemRoomReqs vector<String>
---@field systemList vector<String>
---@field providedStatBoosts vector<Hyperspace.StatBoostDefinition>
---@field powerChange Hyperspace.ActivatedPowerDefinition
---@field powerWhitelist unordered_set<Hyperspace.ActivatedPowerDefinition>
---@field powerBlacklist unordered_set<Hyperspace.ActivatedPowerDefinition>
---@field powerResourceWhitelist unordered_set<Hyperspace.PowerResourceDefinition>
---@field powerResourceBlacklist unordered_set<Hyperspace.PowerResourceDefinition>
---@field powerGroupWhitelist unordered_set<uint>
---@field powerGroupBlacklist unordered_set<uint>
---@field hasPowerList boolean
---@field deathEffectChange ExplosionDefinition
---@field powerScaling vector<number>
---@field powerScalingNoSys number
---@field powerScalingHackedSys number
---@field systemPowerScaling vector<integer>
---@field extraConditions vector<pair<Hyperspace.CrewExtraCondition, boolean>>
---@field extraOrConditions vector<pair<Hyperspace.CrewExtraCondition, boolean>>
---@field extraConditionsReq boolean
---@field systemRoomTarget Hyperspace.StatBoostDefinition.SystemRoomTarget Valid values:<br>`Hyperspace.StatBoostDefinition.SystemRoomTarget.ALL`<br>`Hyperspace.StatBoostDefinition.SystemRoomTarget.NONE`
---@field systemRoomReq boolean
---@field isRoomBased boolean
---@field boostSource Hyperspace.StatBoostDefinition.BoostSource Valid values:<br>`Hyperspace.StatBoostDefinition.BoostSource.CREW`<br>`Hyperspace.StatBoostDefinition.BoostSource.AUGMENT`
---@field boostType Hyperspace.StatBoostDefinition.BoostType Valid values:<br>`Hyperspace.StatBoostDefinition.BoostType.MULT`<br>`Hyperspace.StatBoostDefinition.BoostType.FLAT`<br>`Hyperspace.StatBoostDefinition.BoostType.ADD`<br>`Hyperspace.StatBoostDefinition.BoostType.SET`<br>`Hyperspace.StatBoostDefinition.BoostType.FLIP`<br>`Hyperspace.StatBoostDefinition.BoostType.SET_VALUE`<br>`Hyperspace.StatBoostDefinition.BoostType.MIN`<br>`Hyperspace.StatBoostDefinition.BoostType.MAX`<br>`Hyperspace.StatBoostDefinition.BoostType.REPLACE_GROUP`<br>`Hyperspace.StatBoostDefinition.BoostType.REPLACE_POWER`
---@field shipTarget Hyperspace.StatBoostDefinition.ShipTarget Valid values:<br>`Hyperspace.StatBoostDefinition.ShipTarget.PLAYER_SHIP`<br>`Hyperspace.StatBoostDefinition.ShipTarget.ENEMY_SHIP`<br>`Hyperspace.StatBoostDefinition.ShipTarget.CURRENT_ALL`<br>`Hyperspace.StatBoostDefinition.ShipTarget.CURRENT_ROOM`<br>`Hyperspace.StatBoostDefinition.ShipTarget.OTHER_ALL`<br>`Hyperspace.StatBoostDefinition.ShipTarget.ORIGINAL_SHIP`<br>`Hyperspace.StatBoostDefinition.ShipTarget.ORIGINAL_OTHER_SHIP`<br>`Hyperspace.StatBoostDefinition.ShipTarget.CREW_TARGET`<br>`Hyperspace.StatBoostDefinition.ShipTarget.TARGETS_ME`<br>`Hyperspace.StatBoostDefinition.ShipTarget.ALL`
---@field crewTarget Hyperspace.StatBoostDefinition.CrewTarget Valid values:<br>`Hyperspace.StatBoostDefinition.CrewTarget.ALLIES`<br>`Hyperspace.StatBoostDefinition.CrewTarget.ENEMIES`<br>`Hyperspace.StatBoostDefinition.CrewTarget.SELF`<br>`Hyperspace.StatBoostDefinition.CrewTarget.ALL`<br>`Hyperspace.StatBoostDefinition.CrewTarget.CURRENT_ALLIES`<br>`Hyperspace.StatBoostDefinition.CrewTarget.CURRENT_ENEMIES`<br>`Hyperspace.StatBoostDefinition.CrewTarget.ORIGINAL_ALLIES`<br>`Hyperspace.StatBoostDefinition.CrewTarget.ORIGINAL_ENEMIES`
---@field droneTarget Hyperspace.StatBoostDefinition.DroneTarget Valid values:<br>`Hyperspace.StatBoostDefinition.DroneTarget.DRONES`<br>`Hyperspace.StatBoostDefinition.DroneTarget.CREW`<br>`Hyperspace.StatBoostDefinition.DroneTarget.ALL`
---@field functionalTarget boolean
---@field healthReq pair<number, number>
---@field healthFractionReq pair<number, number>
---@field oxygenReq pair<number, number>
---@field fireCount pair<integer, integer>
---@field dangerRating number
---@field realBoostId integer
---@field stackId integer
---@field maxStacks integer
---@field statBoostDefs vector<Hyperspace.StatBoostDefinition>
---@field savedStatBoostDefs unordered_map<String, Hyperspace.StatBoostDefinition>
Hyperspace.StatBoostDefinition = {
    BoostType_MULT = 0,
    BoostType_FLAT = 1,
    BoostType_ADD = 1,
    BoostType_SET = 2,
    BoostType_FLIP = 3,
    BoostType_SET_VALUE = 4,
    BoostType_MIN = 5,
    BoostType_MAX = 6,
    BoostType_REPLACE_GROUP = 7,
    BoostType_REPLACE_POWER = 8,
    BoostSource_CREW = 0,
    BoostSource_AUGMENT = 1,
    ShipTarget_PLAYER_SHIP = 0,
    ShipTarget_ENEMY_SHIP = 1,
    ShipTarget_CURRENT_ALL = 2,
    ShipTarget_CURRENT_ROOM = 3,
    ShipTarget_OTHER_ALL = 4,
    ShipTarget_ORIGINAL_SHIP = 5,
    ShipTarget_ORIGINAL_OTHER_SHIP = 6,
    ShipTarget_CREW_TARGET = 7,
    ShipTarget_TARGETS_ME = 8,
    ShipTarget_ALL = 9,
    SystemRoomTarget_ALL = 0,
    SystemRoomTarget_NONE = 1,
    CrewTarget_ALLIES = 0,
    CrewTarget_ENEMIES = 1,
    CrewTarget_SELF = 2,
    CrewTarget_ALL = 3,
    CrewTarget_CURRENT_ALLIES = 4,
    CrewTarget_CURRENT_ENEMIES = 5,
    CrewTarget_ORIGINAL_ALLIES = 6,
    CrewTarget_ORIGINAL_ENEMIES = 7,
    DroneTarget_DRONES = 0,
    DroneTarget_CREW = 1,
    DroneTarget_ALL = 2,
}

---@return Hyperspace.StatBoostDefinition
function Hyperspace.StatBoostDefinition() end

function Hyperspace.StatBoostDefinition:GiveId() end

---@param ship Hyperspace.ShipManager
---@param room integer
---@return boolean
function Hyperspace.StatBoostDefinition:TestRoomStatBoostSystem(ship, room) end

---@param power Hyperspace.ActivatedPowerDefinition
---@return boolean
function Hyperspace.StatBoostDefinition:IsTargetPower(power) end

---@param power Hyperspace.PowerResourceDefinition
---@return boolean
function Hyperspace.StatBoostDefinition:IsTargetPower(power) end

---@class Hyperspace.StatBoost
Hyperspace.StatBoost = {}

---@param definition Hyperspace.StatBoostDefinition
---@return Hyperspace.StatBoost
function Hyperspace.StatBoost(definition) end

---@param definition Hyperspace.StatBoostDefinition
---@return Hyperspace.StatBoost
function Hyperspace.StatBoost(definition) end

---@class Hyperspace.StatBoostManager
Hyperspace.StatBoostManager = {}

---@return Hyperspace.StatBoostManager
function Hyperspace.StatBoostManager() end

---@param unknown Hyperspace.StatBoost
---@param unknown1 Hyperspace.CrewMember
function Hyperspace.StatBoostManager:CreateTimedAugmentBoost(unknown, unknown1) end

--- Returns the main instance of `StatBoostManager`. Always use this to access any members and methods belonging to this class.
---@return Hyperspace.StatBoostManager
function Hyperspace.StatBoostManager.GetInstance() end

---@class Hyperspace.CustomShipUnlocks
---@field instance Hyperspace.CustomShipUnlocks (Read-only)
Hyperspace.CustomShipUnlocks = {}

---@param shipBlueprint String
---@param silent boolean
---@param checkMultiUnlocks? boolean = true
---@param isEvent? boolean = false
function Hyperspace.CustomShipUnlocks:UnlockShip(shipBlueprint, silent, checkMultiUnlocks, isEvent) end

---@param unknown String
---@param unknown1 boolean
---@param unknown2 boolean
function Hyperspace.CustomShipUnlocks:UnlockShip(unknown, unknown1, unknown2) end

---@param unknown String
---@param unknown1 boolean
function Hyperspace.CustomShipUnlocks:UnlockShip(unknown, unknown1) end

--- 0 being ship variant A, 1 is ship variant B and 2 is ship variant C
---@param name String
---@param variant? integer = 0
---@return boolean
function Hyperspace.CustomShipUnlocks:GetCustomShipUnlocked(name, variant) end

---@param unknown String
---@return boolean
function Hyperspace.CustomShipUnlocks:GetCustomShipUnlocked(unknown) end

---@class Hyperspace.PrintHelper
---@field x integer The x coordinate of messages. Default is 100.
---@field y integer The y coordinate of messages. Default is 100.
---@field font integer The size of the font used. Default is 10.
---@field lineLength integer Width (in pixels) before automatic newline. Default is 400.
---@field messageLimit integer How many messages may be displayed at once. Default is 10.
---@field duration integer How long (in seconds) each message lasts. Default is 5.
---@field useSpeed boolean Whether the speed at which messages are cleared scales with game speed. Default is `false`.
Hyperspace.PrintHelper = {}

--- Returns the main instance of `PrintHelper`. Always use this to access any members belonging to this class.
---@return Hyperspace.PrintHelper
function Hyperspace.PrintHelper.GetInstance() end

---@class Hyperspace.TutorialArrow
---@field arrow Graphics.GL_Texture
---@field arrow2 Graphics.GL_Texture
---@field position Hyperspace.Pointf
---@field blitSize Hyperspace.Pointf
---@field rotation number
---@field arrow_color Graphics.GL_Color
---@field arrow2_color Graphics.GL_Color
Hyperspace.TutorialArrow = {}

---@param _position Hyperspace.Pointf
---@param _rotation number
---@return Hyperspace.TutorialArrow
function Hyperspace.TutorialArrow(_position, _rotation) end

function Hyperspace.TutorialArrow:OnRender() end

---@class Hyperspace.TemporalSystemParser
Hyperspace.TemporalSystemParser = {}

--- Gets the temporal modifier for a given time dilation value.
---@param effectStrength integer
---@return number
function Hyperspace.TemporalSystemParser.GetDilationStrength(effectStrength) end

---@class Hyperspace.CustomDamageDefinition
---@field idx integer (Read-only) **read-only**
---@field accuracyMod integer
---@field droneAccuracyMod integer
---@field noSysDamage boolean
---@field noPersDamage boolean
---@field ionBeamFix boolean
---@field statBoostChance integer
---@field roomStatBoostChance integer
---@field statBoosts vector<Hyperspace.StatBoostDefinition> (Read-only) **read-only**
---@field roomStatBoosts vector<Hyperspace.StatBoostDefinition> (Read-only) **read-only**
---@field erosionChance integer
---@field erosionEffect ErosionEffect
---@field crewSpawnChance integer
---@field crewSpawns vector<CrewSpawn> (Read-only) **read-only**
Hyperspace.CustomDamageDefinition = {}

---@return Hyperspace.CustomDamageDefinition
function Hyperspace.CustomDamageDefinition() end

function Hyperspace.CustomDamageDefinition:GiveId() end

---@class Hyperspace.CustomDamage
---@field def Hyperspace.CustomDamageDefinition
---@field sourceShipId integer (Read-only)
---@field accuracyMod integer
---@field droneAccuracyMod integer
Hyperspace.CustomDamage = {}

---@return Hyperspace.CustomDamage
function Hyperspace.CustomDamage() end

function Hyperspace.CustomDamage:Clear() end

---@class Graphics
Graphics = {
    STENCIL_IGNORE = 0,
    STENCIL_SET = 1,
    STENCIL_USE = 2,
}

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@return Graphics.GL_Color
function Graphics.GL_Color_FromHSV(unknown, unknown1, unknown2, unknown3) end

---@param unknown vector<Graphics.GL_TexVertex>
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 number
---@param unknown5 number
---@param unknown6 number
---@param unknown7 number
---@param unknown8 number
---@return unknown
function Graphics.CSurface_AddTexVertices(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6, unknown7, unknown8) end

---@param unknown Graphics.GL_Texture
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 number
---@param unknown5 number
---@param unknown6 Graphics.GL_Color
---@param unknown7 boolean
---@return boolean
function Graphics.CSurface_GL_BlitImage(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6, unknown7) end

---@param unknown Graphics.GL_Texture
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 number
---@param unknown5 number
---@param unknown6 number
---@param unknown7 number
---@param unknown8 number
---@param unknown9 number
---@param unknown10 Graphics.GL_Color
---@param unknown11 boolean
---@return boolean
function Graphics.CSurface_GL_BlitImagePartial(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6, unknown7, unknown8, unknown9, unknown10, unknown11) end

---@param unknown Graphics.GL_Texture
---@param unknown1 vector<Graphics.GL_ColorTexVertex>
---@param unknown2 boolean
---@return unknown
function Graphics.CSurface_GL_BlitMultiColorImage(unknown, unknown1, unknown2) end

---@param unknown Graphics.GL_Texture
---@param unknown1 vector<Graphics.GL_TexVertex>
---@param unknown2 boolean
---@return unknown
function Graphics.CSurface_GL_BlitMultiImage(unknown, unknown1, unknown2) end

---@param unknown Graphics.GL_Texture
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 number
---@param unknown5 number
---@param unknown6 Graphics.GL_Color
---@param unknown7 boolean
---@return boolean
function Graphics.CSurface_GL_BlitPixelImage(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6, unknown7) end

---@param unknown Graphics.GL_Texture
---@param unknown1 number
---@param unknown2 number
---@param unknown3 integer
---@param unknown4 integer
---@param unknown5 number
---@param unknown6 Graphics.GL_Color
---@param unknown7 boolean
---@return boolean
function Graphics.CSurface_GL_BlitPixelImageWide(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6, unknown7) end

---@return unknown
function Graphics.CSurface_GL_ClearAll() end

---@return unknown
function Graphics.CSurface_GL_ClearColor() end

---@param unknown Graphics.GL_Texture
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 number
---@param unknown5 number
---@param unknown6 Graphics.GL_Color
---@return Graphics.GL_Primitive
function Graphics.CSurface_GL_CreateImagePrimitive(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6) end

---@param unknown Graphics.GL_Texture
---@param unknown1 vector<Graphics.GL_TexVertex>
---@param unknown2 Graphics.GL_Color
---@return Graphics.GL_Primitive
function Graphics.CSurface_GL_CreateMultiImagePrimitive(unknown, unknown1, unknown2) end

---@param unknown vector<Graphics.GL_Line>
---@param unknown1 Graphics.GL_Color
---@param unknown2 number
---@return Graphics.GL_Primitive
function Graphics.CSurface_GL_CreateMultiLinePrimitive(unknown, unknown1, unknown2) end

---@param unknown vector<Hyperspace.Rect>
---@param unknown1 Graphics.GL_Color
---@return Graphics.GL_Primitive
function Graphics.CSurface_GL_CreateMultiRectPrimitive(unknown, unknown1) end

---@param unknown Graphics.GL_Texture
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 number
---@param unknown5 number
---@param unknown6 Graphics.GL_Color
---@param unknown7 boolean
---@return Graphics.GL_Primitive
function Graphics.CSurface_GL_CreatePixelImagePrimitive(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6, unknown7) end

---@param unknown integer
---@param unknown1 integer
---@param unknown2 integer
---@param unknown3 integer
---@param unknown4 Graphics.GL_Color
---@param unknown5 number
---@return Graphics.GL_Primitive
function Graphics.CSurface_GL_CreateRectOutlinePrimitive(unknown, unknown1, unknown2, unknown3, unknown4, unknown5) end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 Graphics.GL_Color
---@return Graphics.GL_Primitive
function Graphics.CSurface_GL_CreateRectPrimitive(unknown, unknown1, unknown2, unknown3, unknown4) end

---@param unknown Graphics.GL_Primitive
---@return unknown
function Graphics.CSurface_GL_DestroyPrimitive(unknown) end

---@return boolean
function Graphics.CSurface_GL_DisableBlend() end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@param unknown3 Graphics.GL_Color
---@return boolean
function Graphics.CSurface_GL_DrawCircle(unknown, unknown1, unknown2, unknown3) end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 number
---@param unknown5 Graphics.GL_Color
---@return boolean
function Graphics.CSurface_GL_DrawLine(unknown, unknown1, unknown2, unknown3, unknown4, unknown5) end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 Graphics.GL_Color
---@return boolean
function Graphics.CSurface_GL_DrawRect(unknown, unknown1, unknown2, unknown3, unknown4) end

---@param unknown integer
---@param unknown1 integer
---@param unknown2 integer
---@param unknown3 integer
---@param unknown4 Graphics.GL_Color
---@param unknown5 number
---@return boolean
function Graphics.CSurface_GL_DrawRectOutline(unknown, unknown1, unknown2, unknown3, unknown4, unknown5) end

---@param unknown integer
---@param unknown1 integer
---@param unknown2 number
---@param unknown3 number
---@param unknown4 integer
---@param unknown5 integer
---@param unknown6 Graphics.GL_Color
---@param unknown7 number
---@return boolean
function Graphics.CSurface_GL_DrawShield(unknown, unknown1, unknown2, unknown3, unknown4, unknown5, unknown6, unknown7) end

---@param unknown integer
---@param unknown1 integer
---@param unknown2 integer
---@param unknown3 integer
---@param unknown4 Graphics.GL_Color
---@return boolean
function Graphics.CSurface_GL_DrawLaser(unknown, unknown1, unknown2, unknown3, unknown4) end

---@param unknown Hyperspace.Point
---@param unknown1 Hyperspace.Point
---@param unknown2 Hyperspace.Point
---@param unknown3 Graphics.GL_Color
---@return boolean
function Graphics.CSurface_GL_DrawTriangle(unknown, unknown1, unknown2, unknown3) end

---@return boolean
function Graphics.CSurface_GL_EnableBlend() end

---@return Graphics.GL_Color
function Graphics.CSurface_GL_GetColor() end

---@return integer
function Graphics.CSurface_GL_LoadIdentity() end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@param unknown4 number
---@param unknown5 number
---@return integer
function Graphics.CSurface_GL_OrthoProjection(unknown, unknown1, unknown2, unknown3, unknown4, unknown5) end

---@return integer
function Graphics.CSurface_GL_PopMatrix() end

---@return unknown
function Graphics.CSurface_GL_PopScissor() end

---@return unknown
function Graphics.CSurface_GL_PopStencilMode() end

---@return integer
function Graphics.CSurface_GL_PushMatrix() end

---@return unknown
function Graphics.CSurface_GL_PushStencilMode() end

---@return unknown
function Graphics.CSurface_GL_RemoveColorTint() end

---@param unknown Graphics.GL_Primitive
---@return unknown
function Graphics.CSurface_GL_RenderPrimitive(unknown) end

---@param unknown Graphics.GL_Primitive
---@param unknown1 number
---@return unknown
function Graphics.CSurface_GL_RenderPrimitiveWithAlpha(unknown, unknown1) end

---@param unknown Graphics.GL_Primitive
---@param unknown1 Graphics.GL_Color
---@return unknown
function Graphics.CSurface_GL_RenderPrimitiveWithColor(unknown, unknown1) end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@param unknown3 number
---@return unknown
function Graphics.CSurface_GL_Rotate(unknown, unknown1, unknown2, unknown3) end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@return unknown
function Graphics.CSurface_GL_Rotate(unknown, unknown1, unknown2) end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@return unknown
function Graphics.CSurface_GL_Scale(unknown, unknown1, unknown2) end

---@param unknown Graphics.GL_Color
---@return integer
function Graphics.CSurface_GL_SetColor(unknown) end

---@param unknown Graphics.GL_Color
---@return unknown
function Graphics.CSurface_GL_SetColorTint(unknown) end

---@param unknown GL_StencilMode
---@param unknown1 integer
---@param unknown2 integer
---@return unknown
function Graphics.CSurface_GL_SetStencilMode(unknown, unknown1, unknown2) end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
---@return boolean
function Graphics.CSurface_GL_Translate(unknown, unknown1, unknown2) end

---@param unknown number
---@param unknown1 number
---@return boolean
function Graphics.CSurface_GL_Translate(unknown, unknown1) end

---@return Graphics.GL_Color
function Graphics.CSurface_GetColorTint() end

---@param unknown integer
---@param unknown1 number
---@param unknown2 number
---@param unknown3 integer
---@param unknown4 String
---@return Hyperspace.Pointf
function Graphics.freetype_easy_measurePrintLines(unknown, unknown1, unknown2, unknown3, unknown4) end

---@param unknown integer
---@param unknown1 String
---@return integer
function Graphics.freetype_easy_measureWidth(unknown, unknown1) end

---@param unknown integer
---@param unknown1 number
---@param unknown2 number
---@param unknown3 String
---@return Hyperspace.Pointf
function Graphics.freetype_easy_print(unknown, unknown1, unknown2, unknown3) end

---@param unknown integer
---@param unknown1 number
---@param unknown2 number
---@param unknown3 integer
---@param unknown4 String
---@return Hyperspace.Pointf
function Graphics.freetype_easy_printAutoNewlines(unknown, unknown1, unknown2, unknown3, unknown4) end

---@param unknown integer
---@param unknown1 number
---@param unknown2 number
---@param unknown3 integer
---@param unknown4 boolean
---@param unknown5 String
---@return unknown
function Graphics.freetype_easy_printAutoShrink(unknown, unknown1, unknown2, unknown3, unknown4, unknown5) end

---@param unknown integer
---@param unknown1 number
---@param unknown2 number
---@param unknown3 String
---@return Hyperspace.Pointf
function Graphics.freetype_easy_printCenter(unknown, unknown1, unknown2, unknown3) end

---@param unknown integer
---@param unknown1 number
---@param unknown2 number
---@param unknown3 integer
---@param unknown4 String
---@return Hyperspace.Pointf
function Graphics.freetype_easy_printNewlinesCentered(unknown, unknown1, unknown2, unknown3, unknown4) end

---@param unknown integer
---@param unknown1 number
---@param unknown2 number
---@param unknown3 String
---@return Hyperspace.Pointf
function Graphics.freetype_easy_printRightAlign(unknown, unknown1, unknown2, unknown3) end

---@class Defines.string
Defines.string = {}

---@return String
function Graphics.string() end

---@param unknown String
---@return String
function Graphics.string(unknown) end

---@return uint
function String:size() end

---@return uint
function String:length() end

---@return boolean
function String:empty() end

---@return string
function String:c_str() end

---@return string
function String:data() end

---@param unknown String
---@return unknown
function String:assign(unknown) end

---@class Graphics.GL_Primitive
---@field type integer
---@field lineWidth number
---@field hasTexture boolean
---@field texture Graphics.GL_Texture
---@field textureAntialias boolean
---@field hasColor boolean
---@field color Graphics.GL_Color
---@field id integer
Graphics.GL_Primitive = {}

---@return Graphics.GL_Primitive
function Graphics.GL_Primitive() end

---@class Graphics.GL_Texture
---@field id integer
---@field width integer
---@field height integer
---@field isLogical boolean
---@field u_base number
---@field v_base number
---@field u_size number
---@field v_size number
Graphics.GL_Texture = {}

---@return Graphics.GL_Texture
function Graphics.GL_Texture() end

---@class Graphics.GL_Color
---@field r number
---@field g number
---@field b number
---@field a number
Graphics.GL_Color = {}

---@param rr number
---@param gg number
---@param bb number
---@param aa number
---@return Graphics.GL_Color
function Graphics.GL_Color(rr, gg, bb, aa) end

---@return Graphics.GL_Color
function Graphics.GL_Color() end

---@param fH number
---@param fS number
---@param fV number
---@param fA number
---@return Graphics.GL_Color
function Graphics.GL_Color.FromHSV(fH, fS, fV, fA) end

---@class Graphics.GL_ColorTexVertex
---@field x number
---@field y number
---@field u number
---@field v number
---@field r number
---@field g number
---@field b number
---@field a number
Graphics.GL_ColorTexVertex = {}

---@return Graphics.GL_ColorTexVertex
function Graphics.GL_ColorTexVertex() end

---@class Graphics.GL_Line
---@field start Hyperspace.Pointf (Read-only)
---@field c_end Hyperspace.Pointf (Read-only)
Graphics.GL_Line = {}

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return Graphics.GL_Line
function Graphics.GL_Line(x1, y1, x2, y2) end

---@param _start Hyperspace.Pointf
---@param _end Hyperspace.Pointf
---@return Graphics.GL_Line
function Graphics.GL_Line(_start, _end) end

---@class Graphics.GL_TexVertex
---@field x number
---@field y number
---@field u number
---@field v number
Graphics.GL_TexVertex = {}

---@return Graphics.GL_TexVertex
function Graphics.GL_TexVertex() end

---@class Graphics.CSurface
Graphics.CSurface = {}

--- **Warning**: operations with `std::vector` are not yet implemented
---@param vec vector<Graphics.GL_TexVertex>
---@param x1 number
---@param y1 number
---@param u1 number
---@param v1 number
---@param x2 number
---@param y2 number
---@param u2 number
---@param v2 number
function Graphics.CSurface.AddTexVertices(vec, x1, y1, u1, v1, x2, y2, u2, v2) end

--- Renders an image texture<br>`float x, float y` -- starting point (top-left corner)<br>`float x2, float y2` -- width and length
---@param tex Graphics.GL_Texture
---@param x number
---@param y number
---@param x2 number
---@param y2 number
---@param rotation number
---@param color Graphics.GL_Color
---@param mirror boolean
---@return boolean
function Graphics.CSurface.GL_BlitImage(tex, x, y, x2, y2, rotation, color, mirror) end

--- Renders a portion of an image texture<br>`float x, float y` -- starting point (top-left corner)<br>`float x2, float y2` -- width and length<br>`float start_x, float end_x, float start_y, float end_y` -- normalized coordinates of the portion of the texture to render<br>Example:
---@param tex Graphics.GL_Texture
---@param x number
---@param y number
---@param size_x number
---@param size_y number
---@param start_x number
---@param end_x number
---@param start_y number
---@param end_y number
---@param alpha number
---@param color Graphics.GL_Color
---@param mirror boolean
---@return boolean
function Graphics.CSurface.GL_BlitImagePartial(tex, x, y, size_x, size_y, start_x, end_x, start_y, end_y, alpha, color, mirror) end

---@param tex Graphics.GL_Texture
---@param texVertices vector<Graphics.GL_ColorTexVertex>
---@param antialias boolean
function Graphics.CSurface.GL_BlitMultiColorImage(tex, texVertices, antialias) end

---@param tex Graphics.GL_Texture
---@param texVertices vector<Graphics.GL_TexVertex>
---@param antialias boolean
function Graphics.CSurface.GL_BlitMultiImage(tex, texVertices, antialias) end

---@param tex Graphics.GL_Texture
---@param x number
---@param y number
---@param x2 number
---@param y2 number
---@param rotation number
---@param color Graphics.GL_Color
---@param mirror boolean
---@return boolean
function Graphics.CSurface.GL_BlitPixelImage(tex, x, y, x2, y2, rotation, color, mirror) end

---@param tex Graphics.GL_Texture
---@param x number
---@param y number
---@param x2 integer
---@param y2 integer
---@param opacity number
---@param color Graphics.GL_Color
---@param mirror boolean
---@return boolean
function Graphics.CSurface.GL_BlitPixelImageWide(tex, x, y, x2, y2, opacity, color, mirror) end

--- Remove everything that has been drawn.
function Graphics.CSurface.GL_ClearAll() end

function Graphics.CSurface.GL_ClearColor() end

---@param tex Graphics.GL_Texture
---@param x number
---@param y number
---@param size_x number
---@param size_y number
---@param rotate number
---@param color Graphics.GL_Color
---@return Graphics.GL_Primitive
function Graphics.CSurface.GL_CreateImagePrimitive(tex, x, y, size_x, size_y, rotate, color) end

---@param tex Graphics.GL_Texture
---@param vec vector<Graphics.GL_TexVertex>
---@param color Graphics.GL_Color
---@return Graphics.GL_Primitive
function Graphics.CSurface.GL_CreateMultiImagePrimitive(tex, vec, color) end

---@param vec vector<Graphics.GL_Line>
---@param color Graphics.GL_Color
---@param thickness number
---@return Graphics.GL_Primitive
function Graphics.CSurface.GL_CreateMultiLinePrimitive(vec, color, thickness) end

---@param vec vector<Hyperspace.Rect>
---@param color Graphics.GL_Color
---@return Graphics.GL_Primitive
function Graphics.CSurface.GL_CreateMultiRectPrimitive(vec, color) end

---@param tex Graphics.GL_Texture
---@param x number
---@param y number
---@param size_x number
---@param size_y number
---@param rotate number
---@param color Graphics.GL_Color
---@param unk boolean
---@return Graphics.GL_Primitive
function Graphics.CSurface.GL_CreatePixelImagePrimitive(tex, x, y, size_x, size_y, rotate, color, unk) end

---@param x integer
---@param y integer
---@param w integer
---@param h integer
---@param color Graphics.GL_Color
---@param lineWidth number
---@return Graphics.GL_Primitive
function Graphics.CSurface.GL_CreateRectOutlinePrimitive(x, y, w, h, color, lineWidth) end

---@param x number
---@param y number
---@param w number
---@param h number
---@param color Graphics.GL_Color
---@return Graphics.GL_Primitive
function Graphics.CSurface.GL_CreateRectPrimitive(x, y, w, h, color) end

---@param primitive Graphics.GL_Primitive
function Graphics.CSurface.GL_DestroyPrimitive(primitive) end

---@return boolean
function Graphics.CSurface.GL_DisableBlend() end

--- Renders a full circle<br>`float x, float y` -- center point<br>`radius` -- the radius of the circle
---@param x number
---@param y number
---@param radius number
---@param color Graphics.GL_Color
---@return boolean
function Graphics.CSurface.GL_DrawCircle(x, y, radius, color) end

--- Renders a line<br>`float x1, float y1` -- starting point<br>`float x2, float y2` -- end point
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param lineWidth number
---@param color Graphics.GL_Color
---@return boolean
function Graphics.CSurface.GL_DrawLine(x1, y1, x2, y2, lineWidth, color) end

--- Renders a rectangle<br>`float x1, float y1` -- starting point (top-left corner)<br>`float x2, float y2` -- width and length
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param color Graphics.GL_Color
---@return boolean
function Graphics.CSurface.GL_DrawRect(x1, y1, x2, y2, color) end

--- Renders a rectange, no fill<br>`float x1, float y1` -- starting point (top-left corner)<br>`float x2, float y2` -- width and length
---@param x1 integer
---@param y1 integer
---@param x2 integer
---@param y2 integer
---@param color Graphics.GL_Color
---@param lineWidth number
---@return boolean
function Graphics.CSurface.GL_DrawRectOutline(x1, y1, x2, y2, color, lineWidth) end

--- Renders a gradient shield effect. (like how a portion of the shield turns white when a beam hits it)<br>`int x, int y` -- center point<br>`float a1, float b1` -- radius X, radius Y<br>`int angle1, int angle2` -- start direction, end direction
---@param x integer
---@param y integer
---@param a1 number
---@param b1 number
---@param angle1 integer
---@param angle2 integer
---@param color Graphics.GL_Color
---@param thickness number
---@return boolean
function Graphics.CSurface.GL_DrawShield(x, y, a1, b1, angle1, angle2, color, thickness) end

--- Renders a beam.<br>`int x, int y` -- origin point<br>`int w` -- beam length<br>`int h` -- beam thickness
---@param x integer
---@param y integer
---@param w integer
---@param h integer
---@param color Graphics.GL_Color
---@return boolean
function Graphics.CSurface.GL_DrawLaser(x, y, w, h, color) end

--- Renders a triangle. The verticies are constructed with `Hyperspace.Point(x, y)`
---@param vertex1 Hyperspace.Point
---@param vertex2 Hyperspace.Point
---@param vertex3 Hyperspace.Point
---@param color Graphics.GL_Color
---@return boolean
function Graphics.CSurface.GL_DrawTriangle(vertex1, vertex2, vertex3, color) end

---@return boolean
function Graphics.CSurface.GL_EnableBlend() end

---@return Graphics.GL_Color
function Graphics.CSurface.GL_GetColor() end

---@return integer
function Graphics.CSurface.GL_LoadIdentity() end

---@param mx1 number
---@param mx2 number
---@param mx3 number
---@param mx4 number
---@param mx5 number
---@param mx6 number
---@return integer
function Graphics.CSurface.GL_OrthoProjection(mx1, mx2, mx3, mx4, mx5, mx6) end

--- Remove the current graphic from the selected stack.
---@return integer
function Graphics.CSurface.GL_PopMatrix() end

function Graphics.CSurface.GL_PopScissor() end

function Graphics.CSurface.GL_PopStencilMode() end

--- Push the current graphic, that is about to be drawn, onto the selected stack. Which can later be modified with other `CSurface` methods.
---@return integer
function Graphics.CSurface.GL_PushMatrix() end

function Graphics.CSurface.GL_PushStencilMode() end

function Graphics.CSurface.GL_RemoveColorTint() end

---@param primitive Graphics.GL_Primitive
function Graphics.CSurface.GL_RenderPrimitive(primitive) end

---@param primitive Graphics.GL_Primitive
---@param alpha number
function Graphics.CSurface.GL_RenderPrimitiveWithAlpha(primitive, alpha) end

---@param primitive Graphics.GL_Primitive
---@param color Graphics.GL_Color
function Graphics.CSurface.GL_RenderPrimitiveWithColor(primitive, color) end

---@param angle number
---@param x number
---@param y number
---@param z? number = 1.f
function Graphics.CSurface.GL_Rotate(angle, x, y, z) end

---@param unknown number
---@param unknown1 number
---@param unknown2 number
function Graphics.CSurface.GL_Rotate(unknown, unknown1, unknown2) end

---@param x number
---@param y number
---@param z number
function Graphics.CSurface.GL_Scale(x, y, z) end

---@param color Graphics.GL_Color
---@return integer
function Graphics.CSurface.GL_SetColor(color) end

---@param color Graphics.GL_Color
function Graphics.CSurface.GL_SetColorTint(color) end

---@param stencilMode GL_StencilMode
---@param ref integer
---@param mask integer
function Graphics.CSurface.GL_SetStencilMode(stencilMode, ref, mask) end

---@param x number
---@param y number
---@param z? number = 0.f
---@return boolean
function Graphics.CSurface.GL_Translate(x, y, z) end

---@param unknown number
---@param unknown1 number
---@return boolean
function Graphics.CSurface.GL_Translate(unknown, unknown1) end

---@return Graphics.GL_Color
function Graphics.CSurface.GetColorTint() end

---@class Graphics.freetype
Graphics.freetype = {}

--- Return: The horizontal/vertical size of the text. Note that the augments `x` and `y` do not affect the return value.
---@param fontSize integer
---@param x number
---@param y number
---@param line_length integer
---@param text String
---@return Hyperspace.Pointf
function Graphics.freetype.easy_measurePrintLines(fontSize, x, y, line_length, text) end

--- Return: The horizontal size of the text.
---@param fontSize integer
---@param text String
---@return integer
function Graphics.freetype.easy_measureWidth(fontSize, text) end

--- Return.`x`: The horizontal size of the text.<br>Return.`y`: Y position of the last letter.
---@param fontSize integer
---@param x number
---@param y number
---@param text String
---@return Hyperspace.Pointf
function Graphics.freetype.easy_print(fontSize, x, y, text) end

--- Return.`x`: The horizontal size of the text.<br>Return.`y`: Y position of the last letter.
---@param fontSize integer
---@param x number
---@param y number
---@param line_length integer
---@param text String
---@return Hyperspace.Pointf
function Graphics.freetype.easy_printAutoNewlines(fontSize, x, y, line_length, text) end

---@param fontId integer
---@param x number
---@param y number
---@param maxWidth integer
---@param centered boolean
---@param text String
function Graphics.freetype.easy_printAutoShrink(fontId, x, y, maxWidth, centered, text) end

---@param fontSize integer
---@param x number
---@param y number
---@param text String
---@return Hyperspace.Pointf
function Graphics.freetype.easy_printCenter(fontSize, x, y, text) end

---@param fontSize integer
---@param x number
---@param y number
---@param line_length integer
---@param text String
---@return Hyperspace.Pointf
function Graphics.freetype.easy_printNewlinesCentered(fontSize, x, y, line_length, text) end

--- Return.`x`: The value is somehow always fixed to 0.<br>Return.`y`: Y position of the last letter.
---@param fontSize integer
---@param x number
---@param y number
---@param text String
---@return Hyperspace.Pointf
function Graphics.freetype.easy_printRightAlign(fontSize, x, y, text) end

---@class Defines
Defines = {
    InternalEvents_UNKNOWN = 0,
    InternalEvents_ON_TICK = 1,
    InternalEvents_MAIN_MENU = 2,
    InternalEvents_DANGEROUS_ENVIRONMENT = 3,
    InternalEvents_GET_BEACON_HAZARD = 4,
    InternalEvents_GET_HAZARD_FLASH = 5,
    InternalEvents_GET_RUN_SEED = 6,
    InternalEvents_ON_KEY_DOWN = 7,
    InternalEvents_ON_KEY_UP = 8,
    InternalEvents_ON_MOUSE_MOVE = 9,
    InternalEvents_ON_MOUSE_L_BUTTON_DOWN = 10,
    InternalEvents_ON_MOUSE_L_BUTTON_UP = 11,
    InternalEvents_ON_MOUSE_R_BUTTON_DOWN = 12,
    InternalEvents_ON_MOUSE_R_BUTTON_UP = 13,
    InternalEvents_ON_MOUSE_M_BUTTON_DOWN = 14,
    InternalEvents_ON_MOUSE_SCROLL = 15,
    InternalEvents_GUI_MOUSE_MOVE = 16,
    InternalEvents_CREW_LOOP = 17,
    InternalEvents_CREW_CLONE = 18,
    InternalEvents_SHIP_LOOP = 19,
    InternalEvents_HAS_EQUIPMENT = 20,
    InternalEvents_HAS_AUGMENTATION = 21,
    InternalEvents_GET_AUGMENTATION_VALUE = 22,
    InternalEvents_GET_DODGE_FACTOR = 23,
    InternalEvents_SET_BONUS_POWER = 24,
    InternalEvents_SELECT_ARMAMENT_PRE = 25,
    InternalEvents_SELECT_ARMAMENT_POST = 26,
    InternalEvents_PROJECTILE_INITIALIZE = 27,
    InternalEvents_PROJECTILE_FIRE = 28,
    InternalEvents_PROJECTILE_PRE = 29,
    InternalEvents_PROJECTILE_POST = 30,
    InternalEvents_PROJECTILE_UPDATE_PRE = 31,
    InternalEvents_PROJECTILE_UPDATE_POST = 32,
    InternalEvents_WEAPON_COOLDOWN_MOD = 33,
    InternalEvents_WEAPON_STATBOX = 34,
    InternalEvents_WEAPON_DESCBOX = 35,
    InternalEvents_WEAPON_RENDERBOX = 36,
    InternalEvents_DRONE_FIRE = 37,
    InternalEvents_DRONE_COLLISION = 38,
    InternalEvents_PROJECTILE_COLLISION = 39,
    InternalEvents_SHIELD_COLLISION_PRE = 40,
    InternalEvents_SHIELD_COLLISION = 41,
    InternalEvents_DAMAGE_AREA = 42,
    InternalEvents_DAMAGE_AREA_HIT = 43,
    InternalEvents_DAMAGE_BEAM = 44,
    InternalEvents_DAMAGE_SYSTEM = 45,
    InternalEvents_SYSTEM_ADD_DAMAGE = 46,
    InternalEvents_ACTIVATE_POWER = 47,
    InternalEvents_PREPARE_POWER = 48,
    InternalEvents_CANCEL_POWER = 49,
    InternalEvents_POWER_ON_UPDATE = 50,
    InternalEvents_POWER_RESOURCE_ON_UPDATE = 51,
    InternalEvents_POWER_ENABLE_INIT = 52,
    InternalEvents_POWER_RESOURCE_ENABLE_INIT = 53,
    InternalEvents_POWER_REQ = 54,
    InternalEvents_POWER_READY = 55,
    InternalEvents_POWER_TOOLTIP = 56,
    InternalEvents_GENERATOR_CREATE_SHIP = 57,
    InternalEvents_GENERATOR_CREATE_SHIP_POST = 58,
    InternalEvents_PRE_CREATE_CHOICEBOX = 59,
    InternalEvents_POST_CREATE_CHOICEBOX = 60,
    InternalEvents_TABBED_WINDOW_CONFIRM = 61,
    InternalEvents_TABBED_WINDOW_UNDO = 62,
    InternalEvents_JUMP_ARRIVE = 63,
    InternalEvents_JUMP_LEAVE = 64,
    InternalEvents_ON_WAIT = 65,
    InternalEvents_SYSTEM_BOX_MOUSE_MOVE = 66,
    InternalEvents_SYSTEM_BOX_MOUSE_CLICK = 67,
    InternalEvents_SYSTEM_BOX_KEY_DOWN = 68,
    InternalEvents_GET_LEVEL_DESCRIPTION = 69,
    InternalEvents_CALCULATE_LEAK_MODIFIER = 70,
    InternalEvents_CONSTRUCT_CREWMEMBER = 71,
    InternalEvents_CONSTRUCT_SPACEDRONE = 72,
    InternalEvents_CONSTRUCT_PROJECTILE_FACTORY = 73,
    InternalEvents_CONSTRUCT_PROJECTILE = 74,
    InternalEvents_CONSTRUCT_ROOM = 75,
    InternalEvents_CONSTRUCT_SHIP_MANAGER = 76,
    InternalEvents_CONSTRUCT_SHIP_SYSTEM = 77,
    InternalEvents_CONSTRUCT_SYSTEM_BOX = 78,
    InternalEvents_UNKNOWN_MAX = 79,
    Chain_CONTINUE = 0,
    Chain_HALT = 1,
    Chain_PREEMPT = 2,
    Evasion_NONE = 0,
    Evasion_HIT = 1,
    Evasion_MISS = 2,
    BeamHit_SAME_TILE = 0,
    BeamHit_NEW_TILE = 1,
    BeamHit_NEW_ROOM = 2,
    RenderEvents_UNKNOWN = 0,
    RenderEvents_MAIN_MENU = 1,
    RenderEvents_GUI_CONTAINER = 2,
    RenderEvents_LAYER_BACKGROUND = 3,
    RenderEvents_LAYER_FOREGROUND = 4,
    RenderEvents_LAYER_ASTEROIDS = 5,
    RenderEvents_LAYER_PLAYER = 6,
    RenderEvents_SHIP = 7,
    RenderEvents_SHIP_MANAGER = 8,
    RenderEvents_SHIP_JUMP = 9,
    RenderEvents_SHIP_HULL = 10,
    RenderEvents_SHIP_ENGINES = 11,
    RenderEvents_SHIP_FLOOR = 12,
    RenderEvents_SHIP_BREACHES = 13,
    RenderEvents_SHIP_SPARKS = 14,
    RenderEvents_CREW_MEMBER_HEALTH = 15,
    RenderEvents_LAYER_FRONT = 16,
    RenderEvents_FTL_BUTTON = 17,
    RenderEvents_SYSTEM_BOX = 18,
    RenderEvents_SPACE_STATUS = 19,
    RenderEvents_SHIP_STATUS = 20,
    RenderEvents_CHOICE_BOX = 21,
    RenderEvents_TABBED_WINDOW = 22,
    RenderEvents_MOUSE_CONTROL = 23,
    RenderEvents_UNKNOWN_MAX = 24,
    SDL_KEY_UNKNOWN = 0,
    SDL_KEY_0 = 48,
    SDL_KEY_1 = 49,
    SDL_KEY_2 = 50,
    SDL_KEY_3 = 51,
    SDL_KEY_4 = 52,
    SDL_KEY_5 = 53,
    SDL_KEY_6 = 54,
    SDL_KEY_7 = 55,
    SDL_KEY_8 = 56,
    SDL_KEY_9 = 57,
    SDL_KEY_AT = 64,
    SDL_KEY_AMPERSAND = 38,
    SDL_KEY_ASTERISK = 42,
    SDL_KEY_BACKQUOTE = 96,
    SDL_KEY_BACKSLASH = 92,
    SDL_KEY_BACKSPACE = 8,
    SDL_KEY_BREAK = 318,
    SDL_KEY_CAPSLOCK = 301,
    SDL_KEY_CARET = 94,
    SDL_KEY_CLEAR = 12,
    SDL_KEY_COLON = 58,
    SDL_KEY_COMMA = 44,
    SDL_KEY_COMPOSE = 314,
    SDL_KEY_DELETE = 127,
    SDL_KEY_DOLLAR = 36,
    SDL_KEY_DOWN = 274,
    SDL_KEY_END = 279,
    SDL_KEY_EQUALS = 61,
    SDL_KEY_ESCAPE = 27,
    SDL_KEY_EURO = 321,
    SDL_KEY_EXCLAIM = 33,
    SDL_KEY_F1 = 282,
    SDL_KEY_F10 = 291,
    SDL_KEY_F11 = 292,
    SDL_KEY_F12 = 293,
    SDL_KEY_F13 = 294,
    SDL_KEY_F14 = 295,
    SDL_KEY_F15 = 296,
    SDL_KEY_F2 = 283,
    SDL_KEY_F3 = 284,
    SDL_KEY_F4 = 285,
    SDL_KEY_F5 = 286,
    SDL_KEY_F6 = 287,
    SDL_KEY_F7 = 288,
    SDL_KEY_F8 = 289,
    SDL_KEY_F9 = 290,
    SDL_KEY_GREATER = 62,
    SDL_KEY_HASH = 36,
    SDL_KEY_HELP = 315,
    SDL_KEY_HOME = 278,
    SDL_KEY_INSERT = 277,
    SDL_KEY_KP0 = 256,
    SDL_KEY_KP1 = 257,
    SDL_KEY_KP2 = 258,
    SDL_KEY_KP3 = 259,
    SDL_KEY_KP4 = 260,
    SDL_KEY_KP5 = 261,
    SDL_KEY_KP6 = 262,
    SDL_KEY_KP7 = 263,
    SDL_KEY_KP8 = 264,
    SDL_KEY_KP9 = 265,
    SDL_KEY_KP_PERIOD = 266,
    SDL_KEY_KP_DIVIDE = 267,
    SDL_KEY_KP_MULTIPLY = 268,
    SDL_KEY_KP_MINUS = 269,
    SDL_KEY_KP_PLUS = 270,
    SDL_KEY_KP_ENTER = 271,
    SDL_KEY_KP_EQUALS = 272,
    SDL_KEY_LALT = 308,
    SDL_KEY_LCTRL = 306,
    SDL_KEY_LEFT = 276,
    SDL_KEY_LEFTBRACKET = 91,
    SDL_KEY_LEFTPAREN = 40,
    SDL_KEY_LESS = 60,
    SDL_KEY_LMETA = 310,
    SDL_KEY_LSHIFT = 304,
    SDL_KEY_LSUPER = 311,
    SDL_KEY_MENU = 319,
    SDL_KEY_MINUS = 45,
    SDL_KEY_MODE = 313,
    SDL_KEY_NUMLOCK = 300,
    SDL_KEY_PAGEDOWN = 281,
    SDL_KEY_PAGEUP = 280,
    SDL_KEY_PAUSE = 19,
    SDL_KEY_PERIOD = 46,
    SDL_KEY_PLUS = 43,
    SDL_KEY_POWER = 320,
    SDL_KEY_PRINTSCREEN = 316,
    SDL_KEY_QUESTION = 63,
    SDL_KEY_QUOTEDBL = 34,
    SDL_KEY_QUOTE = 39,
    SDL_KEY_RALT = 307,
    SDL_KEY_RCTRL = 305,
    SDL_KEY_RETURN = 13,
    SDL_KEY_RIGHT = 275,
    SDL_KEY_RIGHTBRACKET = 93,
    SDL_KEY_RIGHTPAREN = 41,
    SDL_KEY_RMETA = 309,
    SDL_KEY_RSHIFT = 303,
    SDL_KEY_RSUPER = 312,
    SDL_KEY_SCROLLOCK = 302,
    SDL_KEY_SEMICOLON = 59,
    SDL_KEY_SLASH = 47,
    SDL_KEY_SPACE = 32,
    SDL_KEY_SYSREQ = 317,
    SDL_KEY_TAB = 9,
    SDL_KEY_UNDERSCORE = 95,
    SDL_KEY_UNDO = 322,
    SDL_KEY_UP = 273,
    SDL_KEY_a = 97,
    SDL_KEY_b = 98,
    SDL_KEY_c = 99,
    SDL_KEY_d = 100,
    SDL_KEY_e = 101,
    SDL_KEY_f = 102,
    SDL_KEY_g = 103,
    SDL_KEY_h = 104,
    SDL_KEY_i = 105,
    SDL_KEY_j = 106,
    SDL_KEY_k = 107,
    SDL_KEY_l = 108,
    SDL_KEY_m = 109,
    SDL_KEY_n = 110,
    SDL_KEY_o = 111,
    SDL_KEY_p = 112,
    SDL_KEY_q = 113,
    SDL_KEY_r = 114,
    SDL_KEY_s = 115,
    SDL_KEY_t = 116,
    SDL_KEY_u = 117,
    SDL_KEY_v = 118,
    SDL_KEY_w = 119,
    SDL_KEY_x = 120,
    SDL_KEY_y = 121,
    SDL_KEY_z = 122,
    SDL_KEY_LAST = 323,
}

---@class Defines.string
Defines.string = {}

---@return String
function Defines.string() end

---@param unknown String
---@return String
function Defines.string(unknown) end

---@return uint
function String:size() end

---@return uint
function String:length() end

---@return boolean
function String:empty() end

---@return string
function String:c_str() end

---@return string
function String:data() end

---@param unknown String
---@return unknown
function String:assign(unknown) end

---@enum Defines.InternalEvents
Defines.InternalEvents = {
    UNKNOWN = 0,
    ON_TICK = 1, -- Run code every in-game tick (frame), use in combination with other events to turn logic on and off in your code that runs every tick
    MAIN_MENU = 2, -- Run code when the main menu opens
    DANGEROUS_ENVIRONMENT = 3, -- Can be used to change the state of the environment, affecting music and ability to upgrade
    GET_BEACON_HAZARD = 4, -- If a value is returned, can be used to mark a beacon as a hazard with an icon and tooltip on the beacon map
    GET_HAZARD_FLASH = 5, -- Can be used to alter the opacity and color of the flash used for suns and pulsars
    GET_RUN_SEED = 6, -- Run code when the seed for the run is set
    ON_KEY_DOWN = 7, -- Detect keyboard key is pressed
    ON_KEY_UP = 8, -- Detect keyboard key is unpressed
    ON_MOUSE_MOVE = 9, -- Detect mouse movement
    ON_MOUSE_L_BUTTON_DOWN = 10, -- Detect left mouse button is pressed
    ON_MOUSE_L_BUTTON_UP = 11, -- Detect left mouse button is unpressed
    ON_MOUSE_R_BUTTON_DOWN = 12, -- Detect right mouse button is pressed
    ON_MOUSE_R_BUTTON_UP = 13, -- Detect right mouse button is unpressed
    ON_MOUSE_M_BUTTON_DOWN = 14, -- Detect middle mouse button is pressed
    ON_MOUSE_SCROLL = 15, -- Detect mouse scrolling. `direction` will be 1.0 when scrolling down, -1.0 when scrolling up.
    GUI_MOUSE_MOVE = 16, -- Detect mouse movement (to be used for `GenericButton`'s `MouseMove` method)
    CREW_LOOP = 17, -- While unpaused, run code every in-game tick for each crew member
    CREW_CLONE = 18, -- Called at the start of creating a `CrewMember` after the cloning process
    SHIP_LOOP = 19, -- While unpaused, run code every in-game tick for each ship
    HAS_EQUIPMENT = 20, -- Run every hasEquipment check
    HAS_AUGMENTATION = 21, -- Run every hasAugmentation check
    GET_AUGMENTATION_VALUE = 22, -- Called when checking an augmentation's value
    GET_DODGE_FACTOR = 23, -- Can be used to alter the dodge factor for the given ship
    SET_BONUS_POWER = 24, -- Can be used to alter the bonus power for the given system
    SELECT_ARMAMENT_PRE = 25, -- Triggered when selecting a weapon to fire, can be used to alter or block the selected weapon
    SELECT_ARMAMENT_POST = 26, -- Triggered after selecting a weapon to fire
    PROJECTILE_INITIALIZE = 27, -- Called when a projectile is initialized
    PROJECTILE_FIRE = 28, -- Called when a projectile is fired
    PROJECTILE_PRE = 29, -- Called before projectile processing
    PROJECTILE_POST = 30, -- Called after projectile processing
    PROJECTILE_UPDATE_PRE = 31, -- Called before projectile update
    PROJECTILE_UPDATE_POST = 32, -- Called after projectile update
    WEAPON_COOLDOWN_MOD = 33, -- Check and possibly alter the cooldown modifier being applied to a weapon. Return value cannot be greater than 1 for non-artillery weapons.
    WEAPON_STATBOX = 34, -- Change the text displayed for the player weapon stats (only works if `redesignedWeaponTooltips` is enabled)
    WEAPON_DESCBOX = 35, -- Change the text displayed for the player weapon description
    WEAPON_RENDERBOX = 36, -- Change the text displayed for the player weapon cooldown timers
    DRONE_FIRE = 37, -- Called when a drone fires
    DRONE_COLLISION = 38, -- Called when a drone collides with a projectile
    PROJECTILE_COLLISION = 39, -- Called when projectiles collide
    SHIELD_COLLISION_PRE = 40, -- Called before shield collision logic
    SHIELD_COLLISION = 41, -- Called after shield collision
    DAMAGE_AREA = 42, -- Called when an is about to be hit by a projectile
    DAMAGE_AREA_HIT = 43, -- Called when an area is hit by a projectile
    DAMAGE_BEAM = 44, -- Called when a beam deals damage
    DAMAGE_SYSTEM = 45, -- Called when a system takes damage
    SYSTEM_ADD_DAMAGE = 46, -- Called when damage is added to a system, occurs after all resist calculations
    ACTIVATE_POWER = 47, -- Called when a crew activates a power
    PREPARE_POWER = 48, -- Called when preparing a power activation
    CANCEL_POWER = 49, -- Called when canceling a power
    POWER_ON_UPDATE = 50, -- Called when updating a power
    POWER_RESOURCE_ON_UPDATE = 51, -- Called when updating a resource power
    POWER_ENABLE_INIT = 52, -- Called when initializing power enable state
    POWER_RESOURCE_ENABLE_INIT = 53, -- Called when initializing resource power enable state
    POWER_REQ = 54, -- Called when checking power requirements
    POWER_READY = 55, -- Called when checking if power is ready
    POWER_TOOLTIP = 56, -- Called when rendering power tooltip
    GENERATOR_CREATE_SHIP = 57, -- Called when generating a new ship from an event
    GENERATOR_CREATE_SHIP_POST = 58, -- Called after generating a new ship from an event
    PRE_CREATE_CHOICEBOX = 59, -- Called before the creation of a `ChoiceBox` by a `LocationEvent`
    POST_CREATE_CHOICEBOX = 60, -- Called after the creation of a `ChoiceBox` by a `LocationEvent`
    TABBED_WINDOW_CONFIRM = 61, -- Called for every event that closes the current tab in the upgrade menu
    TABBED_WINDOW_UNDO = 62, -- Called when the UNDO button is activated in the upgrade menu
    JUMP_ARRIVE = 63, -- Called when a ship arrives at a beacon
    JUMP_LEAVE = 64, -- Called when a ship leaves a beacon
    ON_WAIT = 65, -- Run code every time the ship waits (Spending a jump cycle without moving beacons, either when out of fuel or at last stand)
    SYSTEM_BOX_MOUSE_MOVE = 66, -- Called when the mouse is moved at coordinates (`x`, `y`). Coordinates are relative to the SystemBox in question.
    SYSTEM_BOX_MOUSE_CLICK = 67, -- Called when the mouse is clicked. `shift` indicates whether the shift key is held on click.
    SYSTEM_BOX_KEY_DOWN = 68, -- Called when a key is pressed. `Key` argument indicates the specific key pressed, and `shift` argument indicates whether the shift key is held on click.
    GET_LEVEL_DESCRIPTION = 69, -- Called to get the description of what a system does at a certain level. `systemId` indicates the ID of the system, `level` indicates the power level, and `tooltip` indicates whether the string being generated is in the context of a mouseover tooltip.
    CALCULATE_LEAK_MODIFIER = 70, -- Called once per ship every game tick to calculate a multiplier to the rate at which airlocks and breaches drain oxygen.
    CONSTRUCT_CREWMEMBER = 71, -- Called when constructing a crew member
    CONSTRUCT_SPACEDRONE = 72, -- Called when constructing a space drone
    CONSTRUCT_PROJECTILE_FACTORY = 73, -- Called when constructing a weapon
    CONSTRUCT_PROJECTILE = 74, -- Called when constructing a projectile
    CONSTRUCT_ROOM = 75, -- Called when constructing a room
    CONSTRUCT_SHIP_MANAGER = 76, -- Called when constructing a ShipManager
    CONSTRUCT_SHIP_SYSTEM = 77, -- Called when constructing a ship system
    CONSTRUCT_SYSTEM_BOX = 78, -- Called when constructing a GUI system box
    UNKNOWN_MAX = 79,
}

---@enum Defines.Chain
Defines.Chain = {
    CONTINUE = 0, -- Call the next callback in the sequence if there is one
    HALT = 1, -- Halt the callback loop, but still run subsequent C++ code
    PREEMPT = 2, -- Halt the callback loop and skip subsequent C++ code
}

---@enum Defines.Evasion
Defines.Evasion = {
    NONE = 0, -- Indicates evasion still needs to be checked
    HIT = 1, -- Force projectile to hit
    MISS = 2, -- Force projectile to miss
}

---@enum Defines.BeamHit
Defines.BeamHit = {
    SAME_TILE = 0, -- Treat beam hit as same tile as last frame
    NEW_TILE = 1, -- Treat beam hit as new tile but same room as last frame
    NEW_ROOM = 2, -- Treat beam hit as new room from last frame
}

---@enum Defines.RenderEvents
Defines.RenderEvents = {
    UNKNOWN = 0,
    MAIN_MENU = 1, -- On rendering the main menu
    GUI_CONTAINER = 2, -- On rendering the main game, this is a wrapper around the entire game UI
    LAYER_BACKGROUND = 3, -- The space background layer
    LAYER_FOREGROUND = 4, -- The space foreground layer, includes the planet/solar flare/ion storm/nebula but not asteroids
    LAYER_ASTEROIDS = 5, -- The space asteroids layer, in front of the the space foreground
    LAYER_PLAYER = 6, -- The player ship, you can render things on top the player ship by using the after method of the callbacks
    SHIP = 7, -- Any active ship, you can render things on top the ship by using the after method of the callbacks
    SHIP_MANAGER = 8, -- `before_function` is equivalent to `roomAnim` layer 3, `after_function` is equivalent to `roomAnim` layer 4
    SHIP_JUMP = 9, -- Any active ship that is jumping, you can render things on top the ship by using the after method of the callbacks
    SHIP_HULL = 10, -- On rendering the ship hull, cloak and thruster animations
    SHIP_ENGINES = 11, -- Thruster animations
    SHIP_FLOOR = 12, -- Equivalent to `roomAnim` layer 0
    SHIP_BREACHES = 13, -- Equivalent to `roomAnim` layer 1
    SHIP_SPARKS = 14, -- Equivalent to `roomAnim` layer 2
    CREW_MEMBER_HEALTH = 15, -- Runs for each `CrewMember` regardless of whether their health bar is visible
    LAYER_FRONT = 16, -- In front of player ship, where asteroids above the ship are rendered but you can draw whatever you want
    FTL_BUTTON = 17, -- Same layer as the FTL jump button and most of the player UI
    SYSTEM_BOX = 18, -- Called for each individual SystemBox, passed under the `systemBox` arg. Render coordinates are in the reference frame of the SystemBox. Unsure what `ignoreStatus` does.
    SPACE_STATUS = 19, -- On rendering hazard environment icons
    SHIP_STATUS = 20, -- On rendering player element like hull and ressources
    CHOICE_BOX = 21, -- When any choiceBox related window is on screen
    TABBED_WINDOW = 22, -- On rendering a tab in the upgrade interface
    MOUSE_CONTROL = 23, -- Rendering at the highest layer above everything else where the mouse cursor is finally drawn
    UNKNOWN_MAX = 24,
}

---@enum Defines.SDL
Defines.SDL = {
    KEY_UNKNOWN = 0, -- Unknown key was pressed
    KEY_0 = 48, -- 0 key
    KEY_1 = 49, -- 1 key
    KEY_2 = 50, -- 2 key
    KEY_3 = 51, -- 3 key
    KEY_4 = 52, -- 4 key
    KEY_5 = 53, -- 5 key
    KEY_6 = 54, -- 6 key
    KEY_7 = 55, -- 7 key
    KEY_8 = 56, -- 8 key
    KEY_9 = 57, -- 9 key
    KEY_AT = 64, -- @ at-sign
    KEY_AMPERSAND = 38, -- `&` Ampersand key
    KEY_ASTERISK = 42, -- `*` Asterisk key
    KEY_BACKQUOTE = 96, -- `` ` `` Backquote/Backtick key
    KEY_BACKSLASH = 92, -- `\` Backslash key
    KEY_BACKSPACE = 8, -- Backspace key
    KEY_BREAK = 318, -- Break key (the "break" of "pause/break")
    KEY_CAPSLOCK = 301, -- Capslock key
    KEY_CARET = 94, -- `^` Caret key
    KEY_CLEAR = 12, -- CLEAR key
    KEY_COLON = 58, -- `:` COLON key
    KEY_COMMA = 44, -- `,` COMMA key
    KEY_COMPOSE = 314, -- COMPOSE key
    KEY_DELETE = 127, -- DELETE key
    KEY_DOLLAR = 36, -- `$` DOLLAR key
    KEY_DOWN = 274, -- DOWN Arrow key
    KEY_END = 279, -- END key
    KEY_EQUALS = 61, -- `=` EQUALS key
    KEY_ESCAPE = 27, -- ESCAPE key
    KEY_EURO = 321, -- EURO key
    KEY_EXCLAIM = 33, -- `!` Exclamation point/mark key
    KEY_F1 = 282, -- F1 key
    KEY_F10 = 291, -- F10 key
    KEY_F11 = 292, -- F11 key
    KEY_F12 = 293, -- F12 key
    KEY_F13 = 294, -- F13 key
    KEY_F14 = 295, -- F14 key
    KEY_F15 = 296, -- F15 key
    KEY_F2 = 283, -- F2 key
    KEY_F3 = 284, -- F3 key
    KEY_F4 = 285, -- F4 key
    KEY_F5 = 286, -- F5 key
    KEY_F6 = 287, -- F6 key
    KEY_F7 = 288, -- F7 key
    KEY_F8 = 289, -- F8 key
    KEY_F9 = 290, -- F9 key
    KEY_GREATER = 62, -- `>` GREATER key
    KEY_HASH = 36, -- `#` HASH key
    KEY_HELP = 315, -- HELP key
    KEY_HOME = 278, -- HOME key
    KEY_INSERT = 277, -- INSERT key
    KEY_KP0 = 256, -- Numpad `0` key
    KEY_KP1 = 257, -- Numpad `1` key
    KEY_KP2 = 258, -- Numpad `2` key
    KEY_KP3 = 259, -- Numpad `3` key
    KEY_KP4 = 260, -- Numpad `4` key
    KEY_KP5 = 261, -- Numpad `5` key
    KEY_KP6 = 262, -- Numpad `6` key
    KEY_KP7 = 263, -- Numpad `7` key
    KEY_KP8 = 264, -- Numpad `8` key
    KEY_KP9 = 265, -- Numpad `9` key
    KEY_KP_PERIOD = 266, -- Numpad `.` period key
    KEY_KP_DIVIDE = 267, -- Numpad `/` divide key
    KEY_KP_MULTIPLY = 268, -- Numpad `*` multiply key
    KEY_KP_MINUS = 269, -- Numpad `-` minus key
    KEY_KP_PLUS = 270, -- Numpad `+` plus key
    KEY_KP_ENTER = 271, -- Numpad Enter key
    KEY_KP_EQUALS = 272, -- Numpad `=` Equals key
    KEY_LALT = 308, -- Left ALT key
    KEY_LCTRL = 306, -- Left CTRL key
    KEY_LEFT = 276, -- LEFT Arrow key
    KEY_LEFTBRACKET = 91, -- `[` key
    KEY_LEFTPAREN = 40, -- `(` key
    KEY_LESS = 60, -- LESS key
    KEY_LMETA = 310, -- Left META key
    KEY_LSHIFT = 304, -- Left SHIFT key
    KEY_LSUPER = 311, -- Left SUPER key
    KEY_MENU = 319, -- Menu/Context Menu key
    KEY_MINUS = 45, -- `-` key
    KEY_MODE = 313, -- MODE key
    KEY_NUMLOCK = 300, -- NUMLOCK key
    KEY_PAGEDOWN = 281, -- PAGE DOWN key
    KEY_PAGEUP = 280, -- PAGE UP key
    KEY_PAUSE = 19, -- PAUSE key (of "pause/break")
    KEY_PERIOD = 46, -- `.` key
    KEY_PLUS = 43, -- `+` key
    KEY_POWER = 320, -- POWER key
    KEY_PRINTSCREEN = 316, -- PRINT SCREEN key
    KEY_QUESTION = 63, -- `?` key
    KEY_QUOTEDBL = 34, -- `"` key
    KEY_QUOTE = 39, -- `'` key
    KEY_RALT = 307, -- Right ALT key
    KEY_RCTRL = 305, -- Right CTRL key
    KEY_RETURN = 13, -- RETURN key
    KEY_RIGHT = 275, -- RIGHT Arrow key
    KEY_RIGHTBRACKET = 93, -- `]` key
    KEY_RIGHTPAREN = 41, -- `)` key
    KEY_RMETA = 309, -- Right META key
    KEY_RSHIFT = 303, -- Right SHIFT key
    KEY_RSUPER = 312, -- Right SUPER key
    KEY_SCROLLOCK = 302, -- SCROL LOCK key
    KEY_SEMICOLON = 59, -- `;` key
    KEY_SLASH = 47, -- `/` key
    KEY_SPACE = 32, -- SPACE key
    KEY_SYSREQ = 317, -- System Request key
    KEY_TAB = 9, -- TAB key
    KEY_UNDERSCORE = 95, -- `_` key
    KEY_UNDO = 322, -- UNDO key (this is not ctrl+z)
    KEY_UP = 273, -- UP Arrow key
    KEY_a = 97, -- a key
    KEY_b = 98, -- b key
    KEY_c = 99, -- c key
    KEY_d = 100, -- d key
    KEY_e = 101, -- e key
    KEY_f = 102, -- f key
    KEY_g = 103, -- g key
    KEY_h = 104, -- h key
    KEY_i = 105, -- i key
    KEY_j = 106, -- j key
    KEY_k = 107, -- k key
    KEY_l = 108, -- l key
    KEY_m = 109, -- m key
    KEY_n = 110, -- n key
    KEY_o = 111, -- o key
    KEY_p = 112, -- p key
    KEY_q = 113, -- q key
    KEY_r = 114, -- r key
    KEY_s = 115, -- s key
    KEY_t = 116, -- t key
    KEY_u = 117, -- u key
    KEY_v = 118, -- v key
    KEY_w = 119, -- w key
    KEY_x = 120, -- x key
    KEY_y = 121, -- y key
    KEY_z = 122, -- z key
    KEY_LAST = 323,
}


---@enum Hyperspace.ActivatedPowerRequirements.Type
Hyperspace.ActivatedPowerRequirements.Type = {}

---@enum Hyperspace.CrewExtraCondition
Hyperspace.CrewExtraCondition = {
    BURNING = 0,
    SUFFOCATING = 1,
    MIND_CONTROLLED = 2,
    STUNNED = 3,
    REPAIRING = 4,
    REPAIRING_SYSTEM = 5,
    REPAIRING_BREACH = 6,
    FIGHTING = 7,
    SABOTAGING = 8,
    SHOOTING = 9,
    MOVING = 10,
    IDLE = 11,
    MANNING = 12,
    FIREFIGHTING = 13,
    DYING = 14,
    TELEPORTING = 15,
}

---@enum Hyperspace.CrewStat
Hyperspace.CrewStat = {
    MAX_HEALTH = 0,
    STUN_MULTIPLIER = 1,
    MOVE_SPEED_MULTIPLIER = 2,
    REPAIR_SPEED_MULTIPLIER = 3,
    DAMAGE_MULTIPLIER = 4,
    RANGED_DAMAGE_MULTIPLIER = 5,
    DOOR_DAMAGE_MULTIPLIER = 6,
    FIRE_REPAIR_MULTIPLIER = 7,
    SUFFOCATION_MODIFIER = 8,
    FIRE_DAMAGE_MULTIPLIER = 9,
    OXYGEN_CHANGE_SPEED = 10,
    DAMAGE_TAKEN_MULTIPLIER = 11,
    CLONE_SPEED_MULTIPLIER = 12,
    PASSIVE_HEAL_AMOUNT = 13,
    TRUE_PASSIVE_HEAL_AMOUNT = 14,
    TRUE_HEAL_AMOUNT = 15,
    PASSIVE_HEAL_DELAY = 16,
    ACTIVE_HEAL_AMOUNT = 17,
    SABOTAGE_SPEED_MULTIPLIER = 18,
    ALL_DAMAGE_TAKEN_MULTIPLIER = 19,
    HEAL_SPEED_MULTIPLIER = 20,
    HEAL_CREW_AMOUNT = 21,
    DAMAGE_ENEMIES_AMOUNT = 22,
    BONUS_POWER = 23,
    POWER_DRAIN = 24,
    ESSENTIAL = 25,
    CAN_FIGHT = 26,
    CAN_REPAIR = 27,
    CAN_SABOTAGE = 28,
    CAN_MAN = 29,
    CAN_TELEPORT = 30,
    CAN_SUFFOCATE = 31,
    CONTROLLABLE = 32,
    CAN_BURN = 33,
    IS_TELEPATHIC = 34,
    RESISTS_MIND_CONTROL = 35,
    IS_ANAEROBIC = 36,
    CAN_PHASE_THROUGH_DOORS = 37,
    DETECTS_LIFEFORMS = 38,
    CLONE_LOSE_SKILLS = 39,
    POWER_DRAIN_FRIENDLY = 40,
    DEFAULT_SKILL_LEVEL = 41,
    POWER_RECHARGE_MULTIPLIER = 42,
    HACK_DOORS = 43,
    NO_CLONE = 44,
    NO_SLOT = 45,
    NO_AI = 46,
    VALID_TARGET = 47,
    CAN_MOVE = 48,
    TELEPORT_MOVE = 49,
    TELEPORT_MOVE_OTHER_SHIP = 50,
    SILENCED = 51,
    LOW_HEALTH_THRESHOLD = 52,
    NO_WARNING = 53,
    CREW_SLOTS = 54,
    ACTIVATE_WHEN_READY = 55,
    STAT_BOOST = 56,
    DEATH_EFFECT = 57,
    POWER_EFFECT = 58,
    POWER_MAX_CHARGES = 59,
    POWER_CHARGES_PER_JUMP = 60,
    POWER_COOLDOWN = 61,
    TRANSFORM_RACE = 62,
}

---@enum Hyperspace.StatBoostDefinition.BoostType
Hyperspace.StatBoostDefinition.BoostType = {
    MULT = 0,
    FLAT = 1,
    ADD = 1,
    SET = 2,
    FLIP = 3,
    SET_VALUE = 4,
    MIN = 5,
    MAX = 6,
    REPLACE_GROUP = 7,
    REPLACE_POWER = 8,
}

---@enum Hyperspace.StatBoostDefinition.BoostSource
Hyperspace.StatBoostDefinition.BoostSource = {
    CREW = 0,
    AUGMENT = 1,
}

---@enum Hyperspace.StatBoostDefinition.ShipTarget
Hyperspace.StatBoostDefinition.ShipTarget = {
    PLAYER_SHIP = 0,
    ENEMY_SHIP = 1,
    CURRENT_ALL = 2,
    CURRENT_ROOM = 3,
    OTHER_ALL = 4,
    ORIGINAL_SHIP = 5,
    ORIGINAL_OTHER_SHIP = 6,
    CREW_TARGET = 7,
    TARGETS_ME = 8,
    ALL = 9,
}

---@enum Hyperspace.StatBoostDefinition.SystemRoomTarget
Hyperspace.StatBoostDefinition.SystemRoomTarget = {
    ALL = 0,
    NONE = 1,
}

---@enum Hyperspace.StatBoostDefinition.CrewTarget
Hyperspace.StatBoostDefinition.CrewTarget = {
    ALLIES = 0,
    ENEMIES = 1,
    SELF = 2,
    ALL = 3,
    CURRENT_ALLIES = 4,
    CURRENT_ENEMIES = 5,
    ORIGINAL_ALLIES = 6,
    ORIGINAL_ENEMIES = 7,
}

---@enum Hyperspace.StatBoostDefinition.DroneTarget
Hyperspace.StatBoostDefinition.DroneTarget = {
    DRONES = 0,
    CREW = 1,
    ALL = 2,
}