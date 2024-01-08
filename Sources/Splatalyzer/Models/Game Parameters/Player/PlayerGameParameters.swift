//
//  PlayerGameParameters.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

protocol Parametable: Codable {
    var type: String { get }
}

struct PlayerParameters: Codable {
    let dieBlastParam: DieBlastParameter
    
    let playerLeagueInGameModifierParam: PlayerLeagueInGameModifierParameter
    
    let constraintBidnableHelperParam: ConstraintBindableHelperParameter
    
    let coopBuildParam: CoopBuildParameter
    let coopBuildParamHumanMoveUp: CoopBuildParameterHumanMoveUp
    let coopBuildParamOpInkEffectReduction: CoopBuildParameterOpInkEffectReduction
    let coopBuildParamSquidMoveUp: CoopBuildParameterSquidMoveUp
    
    let damageParam: DamageParameter
    
    let displayItemGetHelperParam: DisplayItemGetHelperParameter
    
    let inkRailPlayerParam: InkRailPlayerParameter
    
    let playerAttractTargetParam: AttractTargetParameter
    
    let playerBeaconSubSpecUpParam: BeaconSubSpecUpParameter
    
    let playerCameraPeriscopeParam: CameraPeriscopeParameter
    
    let playerCanolaShotParam: CanolaShotParameter
    
    let playerEntryLiftParam: EntryLiftParameter
    
    let skillActionSpecUpSquidParam: ActionSpecUpSquidSkillParameter
    
    let skillHumanMoveUpParam: HumanMoveUpSkillParameter
    
    let skillInkRecoveryUpParam: InkRecoveryUpSkillParameter
    
    let skillMainInkSaveParam: MainInkSaveSkillParameter
    
    let skillOpInkEffectReductionParam: OpInkEffectReductionSkillParameter
    
    let skillRespawnSpecialGuageSaveParam: RespawnSpecialGuageSaveSkillParameter
    
    let skillRespawnTimeSaveParam: RespawnTimeSaveSkillParameter
    
    let skillSpecialIncreaseUpParam: SpecialIncreaseUpSkillParameter
    
    let skillSquidMoveUpParam: SquidMoveUpSkillParameter
    
    let skillSubEffectReductionParam: SubEffectReductionSkillParameter
    
    let skillSubInkSaveParam: SubInkSaveSkillParameter
    
    let skillSuperJumpTimeSave: SuperJumpTimeSaveSkillParameter
    
    let playerGeyserParam: GeyserParameter
    
    let playerGrindRailParam: GrindRailParameter
    
    let playerJumpGimmickParam: JumpGimmickParameter
    
    let playerMissionSearchAbilityParam: MissionSearchAbilityParameter
    
    let playerMissionSkillParam: MissionSkillParameter
    
    let playerPeriscopeParam: PeriscopeParameter
    
    let playerPipelineParam: PipelineParameter
    
    let playerVehicleSpectacleParam: VehicleSpectacleParameter
    
    let playerThrowClamParma: ThrowClamParameter
    
    let playerThrowGoldIkuraParam: ThrowGoldenIkuraParameter
}

extension PlayerParameters {
    struct DieBlastParameter: Codable {
        let type: String
        let collisionRadiusForPaint: Double
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let crossPaintTexture: String
        let damageOffsetY: Double
        let knockbackParam: KnockbackParameter
        let paintOffsetY: Double
        let paintRadius: Double
        let paintTexture: String
        let splashAroundParam: SplashAroundParameter
        
        enum CodingKeys: String, CodingKey {
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
    
    struct PlayerLeagueInGameModifierParameter: Codable {
        let type: String
        let highJumpExCoefSpecial: Double
        let highJumpVelCoef: Double
        let highJumpVelCoefSqdAct: Double
        let highJumpVelLmtCoef: Double
        let swimSpeedUpMaxSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case highJumpExCoefSpecial = "HighJump_ExCoef_Special"
            case highJumpVelCoef = "HighJump_JumpVelCoef"
            case highJumpVelCoefSqdAct = "HighJump_JumpVelCoef_SqdAct"
            case highJumpVelLmtCoef = "HighJump_JumpVelLmtCoef"
            case swimSpeedUpMaxSpeed = "SquidSpeedUp_MaxSpeed"
        }
    }
    
    struct ConstraintBindableHelperParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct CoopBuildParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct CoopBuildParameterHumanMoveUp: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct CoopBuildParameterOpInkEffectReduction: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct CoopBuildParameterSquidMoveUp: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct DamageParameter: Codable {
        let type: String
        let damageRecivers: [DamagerReciever]
        let damageSenders: [DamageSender]
    }
}

extension PlayerParameters.DamageParameter {
    struct DamagerReciever: Codable {
        let damagerHistMaxSize: Int
        let damageRateInfoCol: String
        let flag: [String]
        let isManualRefRigidBody: Bool
        let name: String
        let refHitPointerHolder: [String]
        let refRigidBody: [String]
        let shotTargetLocatorName: String
        
        enum CodingKeys: String, CodingKey {
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

    struct DamageSender: Codable {
        let name: String
        let refRigidBody: [String]
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case refRigidBody = "RefRigidBody"
        }
    }

}
 
extension PlayerParameters {
    struct DisplayItemGetHelperParameter: Codable {
        let type: String
        let displayOffsetY: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case displayOffsetY = "DisplayOffsetY"
        }
    }
    
    struct InkRailPlayerParameter: Codable {
        let type: String
        let finishImmAfterFrame: Int
        let finishPlayerVelRateY: Double
        let modelDynamicsUnitParam: ModelDynamicsUnitParameter
        let playerJumpRightSpeed: Double
        let switchColBulletStarDist: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case finishImmAfterFrame = "FinishImmAfterFrame"
            case finishPlayerVelRateY = "FinishPlayerVelRateY"
            case modelDynamicsUnitParam = "ModelDynamicsUnitParam"
            case playerJumpRightSpeed = "PlayerJumpRightSpeed"
            case switchColBulletStarDist = "SwitchColBulletStartDist"
        }
    }
}

extension PlayerParameters.InkRailPlayerParameter {
    struct ModelDynamicsUnitParameter: Codable {
        let airRes: Double
        let connectionForce: Double
        let endBoneName: String
        let gravity: Double
        let limitAngle: Double
        let limitLengthRateDiff: Double
        let startBoneName: String
        
        enum CodingKeys: String, CodingKey {
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

extension PlayerParameters {
    struct BeaconSubSpecUpParameter: Codable {
        let type: String
        let subSpecUpParam: SubSpecUpParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case subSpecUpParam = "SubSpecUpParam"
        }
    }
}

extension PlayerParameters.BeaconSubSpecUpParameter {
    struct SubSpecUpParameter: Codable {
        let high: Double
        let mid: Double
        
        enum CodingKeys: String, CodingKey {
            case high = "High"
            case mid = "Mid"
        }
    }

}

extension PlayerParameters {
    struct AttractTargetParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct CameraPeriscopeParameter: Codable {
        let type: String
        let playerFollowRate: RateData
        let yawAngleVelRateGyro: RateData
        let yawAngleVelRateStick: RateData
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case playerFollowRate = "PlayerFollowRate"
            case yawAngleVelRateGyro = "YawAngleVelRateGyro"
            case yawAngleVelRateStick = "YawAngleVelRateStick"
        }
    }
    
    struct CanolaShotParameter: Codable {
        var type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct EntryLiftParameter: Codable {
        let type: String
        let finishVel: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case finishVel = "FinishVel"
        }
    }

    struct GeyserParameter: Codable {
        let type: String
        let bindToRoofMinSec: Double
        let jumpVelAtRoof: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case bindToRoofMinSec = "BindToRoofMinSec"
            case jumpVelAtRoof = "JumpVelAtRoof"
        }
    }
    
    struct GrindRailParameter: Codable {
        let type: String
        let aerialVelYToBind: Double
        let autoFinishCheckDist: Double
        let autoFinishVelY: Double
        let autoJumpFinishNoBindFrame: Int
        let bindDistY: Double
        let finishNoBindFrame: Int
        let finishPlayerVelRateY: Double
        let gndColFallNoBindFrame: Int
        let gndColRadius: Double
        let playerJumpSpeed: Double
        let playerSideJumpEndFix: Int
        
        enum CodingKeys: String, CodingKey {
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
    
    struct JumpGimmickParameter: Codable {
        let type: String
        let jumpDisableFrm: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case jumpDisableFrm = "JumpDisableFrm"
        }
    }
    
    struct MissionSkillParameter: Codable {
        let type: String
        let armorRecoverFrame: [Int]
        let inkTankCapacityRate: [Double]
        let markerCheckRadius: [Double]
        let opInkEffectMoveSpeedJump: [Double]
        let opInkEffectMoveSpeedNormal: [Double]
        let opInkEffectMoveSpeedShot: [Double]
        let shooterShotIntervalFrame: [Int]
        let specialIncreaseUpRate: [Double]
        let subWeapon1InkConsumeCoef: Double
        let subWeapon2InkConsumeCoef: Double
        let subWeapon3InkConsumeCoef: Double
        
        enum CodingKeys: String, CodingKey {
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
    
    struct PeriscopeParameter: Codable {
        let type: String
        let extendSec: Double
        let shrinkMoveGraph: RateData
        let shrinkSec: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case extendSec = "ExtendSec"
            case shrinkMoveGraph = "ShrinkMoveGraph"
            case shrinkSec = "ShrinkSec"
        }
    }
    
    struct PipelineParameter: Codable {
        let type: String
        let darkenDelaySec: Double
        let finishSec: Double
        let finishVel: Double
        let modelOffsetY: RateData
        let modelOffsetZ: RateData
        let moveAcc: Double
        let openEndDistance: Double
        let startAttCurve: RateData
        let startSec: Double
        let startSplashStartOffsetZ: Double
        
        enum CodingKeys: String, CodingKey {
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
    
    struct VehicleSpectacleParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
}

extension PlayerParameters {
    struct ActionSpecUpSquidSkillParameter: Codable {
        let type: String
        let wallJumpChargeFormHigh: Int
        let wallJumpChargeFormLow: Int
        let wallJumpChargeFormMid: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case wallJumpChargeFormHigh = "WallJumpChargeFrm_High"
            case wallJumpChargeFormLow = "WallJumpChargeFrm_Low"
            case wallJumpChargeFormMid = "WallJumpChargeFrm_Mid"
        }
    }
    
    struct HumanMoveUpSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct InkRecoveryUpSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct MainInkSaveSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct OpInkEffectReductionSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct RespawnSpecialGuageSaveSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct RespawnTimeSaveSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct SpecialIncreaseUpSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct SquidMoveUpSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }

    struct SubEffectReductionSkillParameter: Codable {
        let type: String
        let damageRtBombLHigh: Double
        let damageRtBombLMid: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageRtBombLHigh = "DamageRt_BombL_High"
            case damageRtBombLMid = "DamageRt_BombL_Mid"
        }
    }

    struct SubInkSaveSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }

    struct SuperJumpTimeSaveSkillParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
}

extension PlayerParameters {
    struct MissionSearchAbilityParameter: Codable {
        let type: String
        let markingForgetTime: Double
        let periscopeMarkingMaxNum: [Double]
        let periscopeRadius: [Double]
        let radiusParam: [RadiusParameter]
        let slightParam: SlightParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case markingForgetTime = "MarkingForgetTime"
            case periscopeMarkingMaxNum = "PeriscopeMarkingMaxNum"
            case periscopeRadius = "PeriscopeRadius"
            case radiusParam = "RadiusParam"
            case slightParam = "SlightParam"
        }
    }
}

extension PlayerParameters.MissionSearchAbilityParameter {
    struct RadiusParameter: Codable {
        let strongRadius: Double
        let weakRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case strongRadius = "StrongRadius"
            case weakRadius = "WeakRadius"
        }
    }
    
    struct SlightParameter: Codable {
        let queryLayerHitMaskEntity: String
        let querySubLayerHitMskEntity: String
        let shapeHolderUnitParam: [ShapeHolderUnitParameter]
        let userDefilade: Bool
        
        enum CodingKeys: String, CodingKey {
            case queryLayerHitMaskEntity = "QueryLayerHitMaskEntity"
            case querySubLayerHitMskEntity = "QuerySubLayerHitMaskEntity"
            case shapeHolderUnitParam = "ShapeHolderUnitParamArray"
            case userDefilade = "UseDefilade"
        }
    }
}

extension PlayerParameters.MissionSearchAbilityParameter.SlightParameter {
    
    struct ShapeHolderUnitParameter: Codable {
        let name: String
        let shapeHolderUnitParam: [ShapeHolderParameter]
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case shapeHolderUnitParam = "ShapeHolderParam"
        }
        
        struct ShapeHolderParameter: Codable {
            let sphereArray: [String]
            
            enum CodingKeys: String, CodingKey {
                case sphereArray = "SphereArray"
            }
        }
    }
}

extension PlayerParameters {
    struct ThrowClamParameter: Codable {
        let type: String
        let additionalMoveParam: AdditionalMoveParameter
        let blastGachiParam: BlastGachiParameter
        let throwGachiParam: ThrowParameter
        let throwNormalParma: ThrowParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case additionalMoveParam = "AdditionMoveParam"
            case blastGachiParam = "BlastGachiParam"
            case throwGachiParam = "ThrowGachiParam"
            case throwNormalParma = "ThrowNormalParam"
        }
    }
}

extension PlayerParameters.ThrowClamParameter {
    struct BlastGachiParameter: Codable {
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let distanceDamage: [DistanceDamage]
        let knockbackParma: KnockbackParameter
        let paintRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case distanceDamage = "DistanceDamage"
            case knockbackParma = "KnockBackParam"
            case paintRadius = "PaintRadius"
        }
    }
    
    struct ThrowParameter: Codable {
        let guideHitCollisionType: String
        let guideRadius: Double
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: SpawnSpeedZSpecUp
        
        enum CodingKeys: String, CodingKey {
            case guideHitCollisionType = "GuideHitCollisionType"
            case guideRadius = "GuideRadius"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
}

extension PlayerParameters {
    struct ThrowGoldenIkuraParameter: Parametable {
        let type: String
        let additionalMoveParam: AdditionalMoveParameter
        let attackParam: AttackParameter
        let blastParam: BlastParameter
        let inkConsume: Double
        let throwParam: ThrowParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case additionalMoveParam = "AdditionMoveParam"
            case attackParam = "AttackParam"
            case blastParam = "BlastParam"
            case inkConsume = "InkConsume"
            case throwParam = "ThrowParam"
        }
    }
}

extension PlayerParameters.ThrowGoldenIkuraParameter {
    struct AttackParameter: Codable {
        let blastParam: BlastParameter
        let collisionRadius: Double
        let damageDirectHit: Int
        let flyGravity: Double
        let flyPositionAirResist: Double
        let guideHitCollisionType: String
        let guideRadius: Double
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: SpawnSpeedZSpecUp
        
        enum CodingKeys: String, CodingKey {
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
    
    struct BlastParameter: Codable {
        let damageAttackPriority: Bool
        let distanceDamage: DistanceDamage
        let paintRadius: Bool
        
        enum CodingKeys: String, CodingKey {
            case damageAttackPriority = "DamageAttackerPriority"
            case distanceDamage = "DistanceDamage"
            case paintRadius = "PaintRadius"
        }
    }
    
    struct ThrowParameter: Codable {
        let flyHitWallReboundRate: Double
        let guideHitCollisionType: String
        let returnWaterMinFrame: Int
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: SpawnSpeedZSpecUp
        
        enum CodingKeys: String, CodingKey {
            case flyHitWallReboundRate = "FlyHitWallReboundRate"
            case guideHitCollisionType = "GuideHitCollisionType"
            case returnWaterMinFrame = "ReturnWaterMinFrame"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
}

extension PlayerParameters.ThrowGoldenIkuraParameter.AttackParameter {
    struct BlastParameter: Codable {
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageAttackerPriority: Bool
        let damageOffsetY: Double
        let distanceDamage: DistanceDamage
        let knockbackParam: KnockbackParameter
        let paintOffsetY: Double
        let paintRadius: Double
        let splashAroundParam: SplashAroundParameter
        
        enum CodingKeys: String, CodingKey {
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
