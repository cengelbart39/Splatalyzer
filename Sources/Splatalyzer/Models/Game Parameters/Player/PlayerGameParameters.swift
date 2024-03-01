//
//  PlayerGameParameters.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

/// Represents the game parameter data of the Player from
/// `SplPlayer.game__GameParameterTable.json`
public struct Player: GameParametable {
    
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: Codable {
        public let dieBlastParam: DieBlastParameter
        
        public let playerLeagueInGameModifierParam: PlayerLeagueInGameModifierParameter
        
        public let constraintBidnableHelperParam: ConstraintBindableHelperParameter
        
        public let coopBuildParam: CoopBuildParameter
        public let coopBuildParamHumanMoveUp: CoopBuildParameterHumanMoveUp
        public let coopBuildParamOpInkEffectReduction: CoopBuildParameterOpInkEffectReduction
        public let coopBuildParamSquidMoveUp: CoopBuildParameterSquidMoveUp
        
        public let damageParam: DamageParameter
        
        public let displayItemGetHelperParam: DisplayItemGetHelperParameter
        
        public let inkRailPlayerParam: InkRailPlayerParameter
        
        public let playerAttractTargetParam: AttractTargetParameter
        
        public let playerBeaconSubSpecUpParam: BeaconSubSpecUpParameter
        
        public let playerCameraPeriscopeParam: CameraPeriscopeParameter
        
        public let playerCanolaShotParam: CanolaShotParameter
        
        public let playerEntryLiftParam: EntryLiftParameter
        
        public let skillActionSpecUpSquidParam: ActionSpecUpSquidSkillParameter
        
        public let skillHumanMoveUpParam: HumanMoveUpSkillParameter
        
        public let skillInkRecoveryUpParam: InkRecoveryUpSkillParameter
        
        public let skillMainInkSaveParam: MainInkSaveSkillParameter
        
        public let skillOpInkEffectReductionParam: OpInkEffectReductionSkillParameter
        
        public let skillRespawnSpecialGuageSaveParam: RespawnSpecialGuageSaveSkillParameter
        
        public let skillRespawnTimeSaveParam: RespawnTimeSaveSkillParameter
        
        public let skillSpecialIncreaseUpParam: SpecialIncreaseUpSkillParameter
        
        public let skillSquidMoveUpParam: SquidMoveUpSkillParameter
        
        public let skillSubEffectReductionParam: SubEffectReductionSkillParameter
        
        public let skillSubInkSaveParam: SubInkSaveSkillParameter
        
        public let skillSuperJumpTimeSave: SuperJumpTimeSaveSkillParameter
        
        public let playerGeyserParam: GeyserParameter
        
        public let playerGrindRailParam: GrindRailParameter
        
        public let playerJumpGimmickParam: JumpGimmickParameter
        
        public let playerMissionSearchAbilityParam: MissionSearchAbilityParameter
        
        public let playerMissionSkillParam: MissionSkillParameter
        
        public let playerPeriscopeParam: PeriscopeParameter
        
        public let playerPipelineParam: PipelineParameter
        
        public let playerVehicleSpectacleParam: VehicleSpectacleParameter
        
        public let playerThrowClamParma: ThrowClamParameter
        
        public let playerThrowGoldIkuraParam: ThrowGoldenIkuraParameter
        
        public let playerThrowTenjinParam: ThrowTenjinParameter
        
        public enum CodingKeys: String, CodingKey {
            case dieBlastParam = "DieBlastParam"
            case playerLeagueInGameModifierParam = "PlayerLeagueInGameModifierParam"
            case constraintBidnableHelperParam = "spl__ConstraintBindableHelperParam"
            case coopBuildParam = "spl__CoopBuildParam"
            case coopBuildParamHumanMoveUp = "spl__CoopBuildParam_HumanMoveUp"
            case coopBuildParamOpInkEffectReduction = "spl__CoopBuildParam_OpInkEffectReduction"
            case coopBuildParamSquidMoveUp = "spl__CoopBuildParam_SquidMoveUp"
            case damageParam = "spl__DamageParam"
            case displayItemGetHelperParam = "spl__DisplayItemGetHelperParam"
            case inkRailPlayerParam = "spl__InkRailPlayerParam"
            case playerAttractTargetParam = "spl__PlayerAttractTargetParam"
            case playerBeaconSubSpecUpParam = "spl__PlayerBeaconSubSpecUpParam"
            case playerCameraPeriscopeParam = "spl__PlayerCameraPeriscopeParam"
            case playerCanolaShotParam = "spl__PlayerCanolaShotParam"
            case playerEntryLiftParam = "spl__PlayerEntryLiftParam"
            case skillActionSpecUpSquidParam = "spl__PlayerGearSkillParam_ActionSpecUp_Squid"
            case skillHumanMoveUpParam = "spl__PlayerGearSkillParam_HumanMoveUp"
            case skillInkRecoveryUpParam = "spl__PlayerGearSkillParam_InkRecoveryUp"
            case skillMainInkSaveParam = "spl__PlayerGearSkillParam_MainInkSave"
            case skillOpInkEffectReductionParam = "spl__PlayerGearSkillParam_OpInkEffectReduction"
            case skillRespawnSpecialGuageSaveParam = "spl__PlayerGearSkillParam_RespawnSpecialGaugeSave"
            case skillRespawnTimeSaveParam = "spl__PlayerGearSkillParam_RespawnTimeSave"
            case skillSpecialIncreaseUpParam = "spl__PlayerGearSkillParam_SpecialIncreaseUp"
            case skillSquidMoveUpParam = "spl__PlayerGearSkillParam_SquidMoveUp"
            case skillSubEffectReductionParam = "spl__PlayerGearSkillParam_SubEffectReduction"
            case skillSubInkSaveParam = "spl__PlayerGearSkillParam_SubInkSave"
            case skillSuperJumpTimeSave = "spl__PlayerGearSkillParam_SuperJumpTimeSave"
            case playerGeyserParam = "spl__PlayerGeyserParam"
            case playerGrindRailParam = "spl__PlayerGrindRailParam"
            case playerJumpGimmickParam = "spl__PlayerJumpGimmickParam"
            case playerMissionSearchAbilityParam = "spl__PlayerMissionSearchAbilityParam"
            case playerMissionSkillParam = "spl__PlayerMissionSkillParam"
            case playerPeriscopeParam = "spl__PlayerPeriscopeParam"
            case playerPipelineParam = "spl__PlayerPipelineParam"
            case playerVehicleSpectacleParam = "spl__PlayerVehicleSpectacleParam"
            case playerThrowClamParma = "spl__ThrowClamParam"
            case playerThrowGoldIkuraParam = "spl__ThrowGoldenIkuraParam"
            case playerThrowTenjinParam = "spl__ThrowTenjinParam"
        }
    }
}

extension Player.Parameters {
    public struct DieBlastParameter: Codable {
        public let type: String
        public let collisionRadiusForPaint: Double
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let crossPaintTexture: String
        public let damageOffsetY: Double
        public let knockbackParam: KnockbackParameter
        public let paintOffsetY: Double
        public let paintRadius: Double
        public let paintTexture: String
        public let splashAroundParam: SplashAroundParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionRadiusForPaint = "CollisionRadiusForPaint"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case crossPaintTexture = "CrossPaintTexture"
            case damageOffsetY = "DamageOffsetY"
            case knockbackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case paintTexture = "PaintTexture"
            case splashAroundParam = "SplashAroundParam"
        }
    }
    
    public struct PlayerLeagueInGameModifierParameter: Codable {
        public let type: String
        public let highJumpExCoefSpecial: Double
        public let highJumpVelCoef: Double
        public let highJumpVelCoefSqdAct: Double
        public let highJumpVelLmtCoef: Double
        public let swimSpeedUpMaxSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case highJumpExCoefSpecial = "HighJump_ExCoef_Special"
            case highJumpVelCoef = "HighJump_JumpVelCoef"
            case highJumpVelCoefSqdAct = "HighJump_JumpVelCoef_SqdAct"
            case highJumpVelLmtCoef = "HighJump_JumpVelLmtCoef"
            case swimSpeedUpMaxSpeed = "SquidSpeedUp_MaxSpeed"
        }
    }
    
    public struct ConstraintBindableHelperParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct CoopBuildParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct CoopBuildParameterHumanMoveUp: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct CoopBuildParameterOpInkEffectReduction: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct CoopBuildParameterSquidMoveUp: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct DamageParameter: Codable {
        public let type: String
        public let damageRecivers: [DamagerReciever]
        public let damageSenders: [DamageSender]
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageRecivers = "DamageReceiverArray"
            case damageSenders = "DamageSenderArray"
        }
    }
}

extension Player.Parameters.DamageParameter {
    public struct DamagerReciever: Codable {
        public let damagerHistMaxSize: Int
        public let damageRateInfoCol: String
        public let flag: [String]
        public let isManualRefRigidBody: Bool
        public let name: String
        public let refHitPointerHolder: [String]
        public let refRigidBody: [String]
        public let shotTargetLocatorName: String
        
        public enum CodingKeys: String, CodingKey {
            case damagerHistMaxSize = "DamageHistMaxSize"
            case damageRateInfoCol = "DamageRateInfoCol"
            case flag = "Flag"
            case isManualRefRigidBody = "IsManualRefRigidBody"
            case name = "Name"
            case refHitPointerHolder = "RefHitPointHolder"
            case refRigidBody = "RefRigidBody"
            case shotTargetLocatorName = "ShotTargetLocatorName"
        }
    }
    
    public struct DamageSender: Codable {
        public let name: String
        public let refRigidBody: [String]
        
        public enum CodingKeys: String, CodingKey {
            case name = "Name"
            case refRigidBody = "RefRigidBody"
        }
    }
    
}

extension Player.Parameters {
    public struct DisplayItemGetHelperParameter: Codable {
        public let type: String
        public let displayOffsetY: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case displayOffsetY = "DisplayOffsetY"
        }
    }
    
    public struct InkRailPlayerParameter: Codable {
        public let type: String
        public let finishImmAfterFrame: Int
        public let finishPlayerVelRateY: Double
        public let modelDynamicsUnitParam: ModelDynamicsUnitParameter
        public let playerJumpRightSpeed: Double
        public let switchColBulletStarDist: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case finishImmAfterFrame = "FinishImmAfterFrame"
            case finishPlayerVelRateY = "FinishPlayerVelRateY"
            case modelDynamicsUnitParam = "ModelDynamicsUnitParam"
            case playerJumpRightSpeed = "PlayerJumpRightSpeed"
            case switchColBulletStarDist = "SwitchColBulletStartDist"
        }
    }
}

extension Player.Parameters.InkRailPlayerParameter {
    public struct ModelDynamicsUnitParameter: Codable {
        public let airRes: Double
        public let connectionForce: Double
        public let endBoneName: String
        public let gravity: Double
        public let limitAngle: Double
        public let limitLengthRateDiff: Double
        public let startBoneName: String
        
        public enum CodingKeys: String, CodingKey {
            case airRes = "AirRes"
            case connectionForce = "ConnectionForce"
            case endBoneName = "EndBoneName"
            case gravity = "Gravity"
            case limitAngle = "LimitAngle"
            case limitLengthRateDiff = "LimitLengthRateDiff"
            case startBoneName = "StartBoneName"
        }
    }
}

// Not a extension since used in SubWeaponData
public struct BeaconSubSpecUpParameter: Codable {
    public let type: String
    public let subSpecUpParam: HighMidLow
    
    public enum CodingKeys: String, CodingKey {
        case type = "$type"
        case subSpecUpParam = "SubSpecUpParam"
    }
}

extension Player.Parameters {
    public struct AttractTargetParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct CameraPeriscopeParameter: Codable {
        public let type: String
        public let playerFollowRate: RateData
        public let yawAngleVelRateGyro: RateData
        public let yawAngleVelRateStick: RateData
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case playerFollowRate = "PlayerFollowRate"
            case yawAngleVelRateGyro = "YawAngleVelRateGyro"
            case yawAngleVelRateStick = "YawAngleVelRateStick"
        }
    }
    
    public struct CanolaShotParameter: Codable {
        public var type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct EntryLiftParameter: Codable {
        public let type: String
        public let finishVel: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case finishVel = "FinishVel"
        }
    }
    
    public struct GeyserParameter: Codable {
        public let type: String
        public let bindToRoofMinSec: Double
        public let jumpVelAtRoof: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case bindToRoofMinSec = "BindToRoofMinSec"
            case jumpVelAtRoof = "JumpVelAtRoof"
        }
    }
    
    public struct GrindRailParameter: Codable {
        public let type: String
        public let aerialVelYToBind: Double
        public let autoFinishCheckDist: Double
        public let autoFinishVelY: Double
        public let autoJumpFinishNoBindFrame: Int
        public let bindDistY: Double
        public let finishNoBindFrame: Int
        public let finishPlayerVelRateY: Double
        public let gndColFallNoBindFrame: Int
        public let gndColRadius: Double
        public let playerJumpSpeed: Double
        public let playerSideJumpEndFix: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case aerialVelYToBind = "AerialVelYToBind"
            case autoFinishCheckDist = "AutoFinish_CheckDist"
            case autoFinishVelY = "AutoFinish_VelY"
            case autoJumpFinishNoBindFrame = "AutoJumpFinishNoBindFrame"
            case bindDistY = "BindDistY"
            case finishNoBindFrame = "FinishNoBindFrame"
            case finishPlayerVelRateY = "FinishPlayerVelRateY"
            case gndColFallNoBindFrame = "GndCol_FallNoBindFrame"
            case gndColRadius = "GndCol_Radius"
            case playerJumpSpeed = "PlayerJumpSpeed"
            case playerSideJumpEndFix = "PlayerSideJumpEndFix"
        }
    }
    
    public struct JumpGimmickParameter: Codable {
        public let type: String
        public let jumpDisableFrm: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case jumpDisableFrm = "JumpDisableFrm"
        }
    }
    
    public struct MissionSkillParameter: Codable {
        public let type: String
        public let armorRecoverFrame: [Int]
        public let inkTankCapacityRate: [Double]
        public let markerCheckRadius: [Double]
        public let opInkEffectMoveSpeedJump: [Double]
        public let opInkEffectMoveSpeedNormal: [Double]
        public let opInkEffectMoveSpeedShot: [Double]
        public let shooterShotIntervalFrame: [Int]
        public let specialIncreaseUpRate: [Double]
        public let subWeapon1InkConsumeCoef: Double
        public let subWeapon2InkConsumeCoef: Double
        public let subWeapon3InkConsumeCoef: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case armorRecoverFrame = "ArmorRecoverFrame"
            case inkTankCapacityRate = "InkTankCapacityRate"
            case markerCheckRadius = "MarkerCheckRadius"
            case opInkEffectMoveSpeedJump = "OpInkEffect_MoveSpeed_Jump"
            case opInkEffectMoveSpeedNormal = "OpInkEffect_MoveSpeed_Normal"
            case opInkEffectMoveSpeedShot = "OpInkEffect_MoveSpeed_Shot"
            case shooterShotIntervalFrame = "ShooterShotIntervalFrame"
            case specialIncreaseUpRate = "SpecialIncreaseUpRate"
            case subWeapon1InkConsumeCoef = "SubWeapon1_InkConsumeCoef"
            case subWeapon2InkConsumeCoef = "SubWeapon2_InkConsumeCoef"
            case subWeapon3InkConsumeCoef = "SubWeapon3_InkConsumeCoef"
        }
    }
    
    public struct PeriscopeParameter: Codable {
        public let type: String
        public let extendSec: Double
        public let shrinkMoveGraph: RateData
        public let shrinkSec: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case extendSec = "ExtendSec"
            case shrinkMoveGraph = "ShrinkMoveGraph"
            case shrinkSec = "ShrinkSec"
        }
    }
    
    public struct PipelineParameter: Codable {
        public let type: String
        public let darkenDelaySec: Double
        public let finishSec: Double
        public let finishVel: Double
        public let modelOffsetY: RateData
        public let modelOffsetZ: RateData
        public let moveAcc: Double
        public let openEndDistance: Double
        public let startAttCurve: RateData
        public let startSec: Double
        public let startSplashStartOffsetZ: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case darkenDelaySec = "DarkenDelaySec"
            case finishSec = "FinishSec"
            case finishVel = "FinishVel"
            case modelOffsetY = "ModelOffsetY"
            case modelOffsetZ = "ModelOffsetZ"
            case moveAcc = "MoveAcc"
            case openEndDistance = "OpenEndDistance"
            case startAttCurve = "StartAttCurve"
            case startSec = "StartSec"
            case startSplashStartOffsetZ = "StartSplashStartOffsetZ"
        }
    }
    
    public struct VehicleSpectacleParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
}

extension Player.Parameters {
    public struct ActionSpecUpSquidSkillParameter: Codable {
        public let type: String
        public let wallJumpChargeFormHigh: Int
        public let wallJumpChargeFormLow: Int
        public let wallJumpChargeFormMid: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case wallJumpChargeFormHigh = "WallJumpChargeFrm_High"
            case wallJumpChargeFormLow = "WallJumpChargeFrm_Low"
            case wallJumpChargeFormMid = "WallJumpChargeFrm_Mid"
        }
    }
    
    public struct HumanMoveUpSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct InkRecoveryUpSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct MainInkSaveSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct OpInkEffectReductionSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct RespawnSpecialGuageSaveSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct RespawnTimeSaveSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct SpecialIncreaseUpSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct SquidMoveUpSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct SubEffectReductionSkillParameter: Codable {
        public let type: String
        public let damageRtBombLHigh: Double
        public let damageRtBombLMid: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageRtBombLHigh = "DamageRt_BombL_High"
            case damageRtBombLMid = "DamageRt_BombL_Mid"
        }
    }
    
    public struct SubInkSaveSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct SuperJumpTimeSaveSkillParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
}

extension Player.Parameters {
    public struct MissionSearchAbilityParameter: Codable {
        public let type: String
        public let markingForgetTime: Double
        public let periscopeMarkingMaxNum: [Double]
        public let periscopeRadius: [Double]
        public let radiusParam: [RadiusParameter]
        public let sightParam: SightParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case markingForgetTime = "MarkingForgetTime"
            case periscopeMarkingMaxNum = "PeriscopeMarkingMaxNum"
            case periscopeRadius = "PeriscopeRadius"
            case radiusParam = "RadiusParam"
            case sightParam = "SightParam"
        }
    }
}

extension Player.Parameters.MissionSearchAbilityParameter {
    public struct RadiusParameter: Codable {
        public let strongRadius: Double
        public let weakRadius: Double
        
        public enum CodingKeys: String, CodingKey {
            case strongRadius = "StrongRadius"
            case weakRadius = "WeakRadius"
        }
    }
    
    public struct SightParameter: Codable {
        public let queryLayerHitMaskEntity: String
        public let querySubLayerHitMskEntity: String
        public let shapeHolderUnitParam: [ShapeHolderUnitParameter]
        public let userDefilade: Bool
        
        public enum CodingKeys: String, CodingKey {
            case queryLayerHitMaskEntity = "QueryLayerHitMaskEntity"
            case querySubLayerHitMskEntity = "QuerySubLayerHitMaskEntity"
            case shapeHolderUnitParam = "ShapeHolderUnitParamArray"
            case userDefilade = "UseDefilade"
        }
    }
}

extension Player.Parameters.MissionSearchAbilityParameter.SightParameter {
    public struct ShapeHolderUnitParameter: Codable {
        public let name: String
        public let shapeHolderUnitParam: ShapeHolderParameter
        
        public enum CodingKeys: String, CodingKey {
            case name = "Name"
            case shapeHolderUnitParam = "ShapeHolderParam"
        }
        
        public struct ShapeHolderParameter: Codable {
            public let sphereArray: [Sphere]
            
            public enum CodingKeys: String, CodingKey {
                case sphereArray = "SphereArray"
            }
            
            public struct Sphere: Codable {
                public enum CodingKeys: CodingKey { }
            }
        }
    }
}

extension Player.Parameters {
    public struct ThrowClamParameter: Codable {
        public let type: String
        public let additionalMoveParam: AdditionalMoveParameter
        public let blastGachiParam: BlastGachiParameter
        public let throwGachiParam: ThrowParameter
        public let throwNormalParma: ThrowParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case additionalMoveParam = "AdditionMoveParam"
            case blastGachiParam = "BlastGachiParam"
            case throwGachiParam = "ThrowGachiParam"
            case throwNormalParma = "ThrowNormalParam"
        }
    }
}

extension Player.Parameters.ThrowClamParameter {
    public struct BlastGachiParameter: Codable {
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let distanceDamage: [DistanceDamage]
        public let knockbackParma: KnockbackParameter
        public let paintRadius: Double
        
        public enum CodingKeys: String, CodingKey {
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case distanceDamage = "DistanceDamage"
            case knockbackParma = "KnockBackParam"
            case paintRadius = "PaintRadius"
        }
    }
    
    public struct ThrowParameter: Codable {
        public let guideHitCollisionType: String
        public let guideRadius: Double
        public let spawnSpeedY: Double
        public let spawnSpeedYWorldMin: Double
        public let spawnSpeedZSpecUp: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case guideHitCollisionType = "GuideHitCollisionType"
            case guideRadius = "GuideRadius"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
}

extension Player.Parameters {
    public struct ThrowGoldenIkuraParameter: Codable {
        public let type: String
        public let additionalMoveParam: AdditionalMoveParameter
        public let attackParam: AttackParameter
        public let blastParam: BlastParameter
        public let inkConsume: Double
        public let throwParam: ThrowParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case additionalMoveParam = "AdditionMoveParam"
            case attackParam = "AttackParam"
            case blastParam = "BlastParam"
            case inkConsume = "InkConsume"
            case throwParam = "ThrowParam"
        }
    }
}

extension Player.Parameters.ThrowGoldenIkuraParameter {
    public struct AttackParameter: Codable {
        public let blastParam: BlastParameter
        public let collisionRadius: Double
        public let damageDirectHit: Int
        public let flyGravity: Double
        public let flyPositionAirResist: Double
        public let guideHitCollisionType: String
        public let guideRadius: Double
        public let spawnSpeedY: Double
        public let spawnSpeedYWorldMin: Double
        public let spawnSpeedZSpecUp: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case blastParam = "BlastParam"
            case collisionRadius = "CollisionRadius"
            case damageDirectHit = "DamageDirectHit"
            case flyGravity = "FlyGravity"
            case flyPositionAirResist = "FlyPositionAirResist"
            case guideHitCollisionType = "GuideHitCollisionType"
            case guideRadius = "GuideRadius"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    public struct BlastParameter: Codable {
        public let damageAttackPriority: Bool
        public let distanceDamage: [DistanceDamage]
        public let paintRadius: Int
        
        public enum CodingKeys: String, CodingKey {
            case damageAttackPriority = "DamageAttackerPriority"
            case distanceDamage = "DistanceDamage"
            case paintRadius = "PaintRadius"
        }
    }
    
    public struct ThrowParameter: Codable {
        public let flyHitWallReboundRate: Double
        public let guideHitCollisionType: String
        public let returnWaterMinFrame: Int
        public let spawnSpeedY: Double
        public let spawnSpeedYWorldMin: Double
        public let spawnSpeedZSpecUp: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case flyHitWallReboundRate = "FlyHitWallReboundRate"
            case guideHitCollisionType = "GuideHitCollisionType"
            case returnWaterMinFrame = "ReturnWaterMinFrame"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
}

extension Player.Parameters.ThrowGoldenIkuraParameter.AttackParameter {
    public struct BlastParameter: Codable {
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let damageAttackerPriority: Bool
        public let damageOffsetY: Double
        public let distanceDamage: [DistanceDamage]
        public let knockbackParam: KnockbackParameter
        public let paintOffsetY: Double
        public let paintRadius: Double
        public let splashAroundParam: SplashAroundParameter
        
        public enum CodingKeys: String, CodingKey {
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageAttackerPriority = "DamageAttackerPriority"
            case damageOffsetY = "DamageOffsetY"
            case distanceDamage = "DistanceDamage"
            case knockbackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case splashAroundParam = "SplashAroundParam"
        }
    }
}

extension Player.Parameters {
    public struct ThrowTenjinParameter: Codable {
        public let type: String
        public let additionalMoveParam: AdditionalMoveParameter
        public let throwParam: ThrowParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case additionalMoveParam = "AdditionMoveParam"
            case throwParam = "ThrowParam"
        }
    }
}

extension Player.Parameters.ThrowTenjinParameter {
    public struct ThrowParameter: Codable {
        public let blastParam: BlastParameter
        public let guideHitCollisionType: String
        public let hitWallPitchToPlane: Double
        public let hitWallReboundResetFrame: Int
        public let riseFrame: Int
        public let spawnSpeedY: Double
        public let spawnSpeedYWorldMin: Double
        public let spawnSpeedZSpecUp: HighMidLow
        public let waitRiseFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case blastParam = "BlastParam"
            case guideHitCollisionType = "GuideHitCollisionType"
            case hitWallPitchToPlane = "HitWallPitchToPlane"
            case hitWallReboundResetFrame = "HitWallReboundResetFrame"
            case riseFrame = "RiseFrame"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            case waitRiseFrame = "WaitRiseFrame"
        }
    }
}

extension Player.Parameters.ThrowTenjinParameter.ThrowParameter {
    public struct BlastParameter: Codable {
        public let crossPaintCheckLength: Double
        public let distanceDamage: [DistanceDamage]
        public let knockBackParam: KnockbackParameter
        public let paintOffsetY: Double
        public let paintRadius: Double
        public let paintTexture: String
        
        public enum CodingKeys: String, CodingKey {
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case paintTexture = "PaintTexture"
        }
    }
}
