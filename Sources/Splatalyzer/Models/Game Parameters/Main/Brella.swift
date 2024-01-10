//
//  Brella.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct Brella: Codable {
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    let mainWeaponSetting: MainWeaponSettings
    
    let bulletShelterCanopyParam: BulletCanopyParameter
    let bulletShelterShotgunParam: BulletShotgunParameter
    
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    let weaponShelterCanopyParam: CanopyParameter
    let weaponShelterShotgunParam: ShotgunParameter
    
    enum CodingKeys: String, CodingKey {
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case bulletShelterCanopyParam = "spl__BulletShelterCanopyParam"
        case bulletShelterShotgunParam = "spl__BulletShelterShotgunParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        case weaponShelterCanopyParam = "spl__WeaponShelterCanopyParam"
        case weaponShelterShotgunParam = "spl__WeaponShelterShotgunParam"
    }
}

extension Brella {
    struct BulletCanopyParameter: Codable {
        let type: String
        let canopyAttackedDamageRate: Double?
        let canopyColRadius: Double?
        let canopyCureHPPerFrame: Int?
        let canopyDamage: Int?
        let canopyFrame: Int?
        let canopyGravity: Double
        let canopyHP: Int?
        let canopyHitOtherCanopyDamage: Int?
        let canopyHitOtherCanopyVolume: Int?
        let canopyHitShieldAttackDamage: Int?
        let canopyHitShieldReceiveDamage: Int?
        let canopyInitSpeed: Double?
        let canopyMoveKnockBackSideStepRate: Double?
        let canopyNakedFrame: Int?
        let canopyPaintRadius: Double?
        let canopySpeedAirAddScaleXZ: Double
        let canopySpeedGroundAddScale: Double
        let footSplashPaintRadius: Double?
        let footSplashShapeCastOffset: Double
        let footSplashSpanFrame: Int?
        let footSplashWaitFrame: Int?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case canopyAttackedDamageRate = "CanopyAttackedDamageRate"
            case canopyColRadius = "CanopyColRadius"
            case canopyCureHPPerFrame = "CanopyCureHPPerFrame"
            case canopyDamage = "CanopyDamage"
            case canopyFrame = "CanopyFrame"
            case canopyGravity = "CanopyGravity"
            case canopyHP = "CanopyHP"
            case canopyHitOtherCanopyDamage = "CanopyHitOtherCanopyDamage"
            case canopyHitOtherCanopyVolume = "CanopyHitOtherCanopyVolume"
            case canopyHitShieldAttackDamage = "CanopyHitShieldAttackDamage"
            case canopyHitShieldReceiveDamage = "CanopyHitShieldReceiveDamage"
            case canopyInitSpeed = "CanopyInitSpeed"
            case canopyMoveKnockBackSideStepRate = "CanopyMoveKnockBackSideStepRate"
            case canopyNakedFrame = "CanopyNakedFrame"
            case canopyPaintRadius = "CanopyPaintRadius"
            case canopySpeedAirAddScaleXZ = "CanopySpeedAirAddScaleXZ"
            case canopySpeedGroundAddScale = "CanopySpeedGroundAddScale"
            case footSplashPaintRadius = "FootSplashPaintRadius"
            case footSplashShapeCastOffset = "FootSplashShapeCastOffset"
            case footSplashSpanFrame = "FootSplashSpanFrame"
            case footSplashWaitFrame = "FootSplashWaitFrame"
        }
    }
}

extension Brella {
    struct BulletShotgunParameter: Codable {
        let type: String
        let damageEffectiveTotalMax: Int
        let groupParams: [GroupParameter]
        let shotgunWallDropCollisionParam: WallDropCollisionParameter?
        let shotgunWallDropMoveParam: WallDropMoveParameter
        let splashParam: SplashParameter
        let splashWallDropCollisionParam: SplashWallDropCollisionParameter
        let splashWallDropMoveParam: SplashWallDropMoveParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageEffectiveTotalMax = "DamageEffectiveTotalMax"
            case groupParams = "GroupParams"
            case shotgunWallDropCollisionParam = "ShotgunWallDropCollisionParam"
            case shotgunWallDropMoveParam = "ShotgunWallDropMoveParam"
            case splashParam = "SplashParam"
            case splashWallDropCollisionParam = "SplashWallDropCollisionParam"
            case splashWallDropMoveParam = "SplashWallDropMoveParam"
        }
    }
}

extension Brella.BulletShotgunParameter {
    struct GroupParameter: Codable {
        let addDegree: Double?
        let collisionParam: CollisionParameter?
        let damageParam: GroupDamageParameter
        let drawRadius: Double?
        let horizontalDegree: Double
        let horizontalOffset: Double
        let initVelRandom: Double?
        let moveParam: GroupMoveParameter
        let paintParam: GroupPaintParameter?
        let totalNum: Int
        let verticalDegree: Double
        let verticalOffset: Double
        
        enum CodingKeys: String, CodingKey {
            case addDegree = "AddDegree"
            case collisionParam = "CollisionParam"
            case damageParam = "DamageParam"
            case drawRadius = "DrawRadius"
            case horizontalDegree = "HorizontalDegree"
            case horizontalOffset = "HorizontalOffset"
            case initVelRandom = "InitVelRandom"
            case moveParam = "MoveParam"
            case paintParam = "PaintParam"
            case totalNum = "TotalNum"
            case verticalDegree = "VerticalDegree"
            case verticalOffset = "VerticalOffset"
        }
    }
    
    struct WallDropCollisionParameter: Codable {
        let paintRadiusShock: Double
        
        enum CodingKeys: String, CodingKey {
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    struct WallDropMoveParameter: Codable {
        let fallPeriodFirstFrameMax: Int
        let fallPeriodFirstFrameMin: Int
        let fallPeriodFirstTargetSpeed: Double
        let fallPeriodLastFrameMax: Int
        let fallPeriodLastFrameMin: Int
        
        enum CodingKeys: String, CodingKey {
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
        }
    }
    
    struct SplashParameter: Codable {
        let createSplashLength: Double?
        let createSplashNum: Int?
        let splashPaintDepthScaleFullActive: Double
        let splashPaintDepthScaleOneActive: Double
        let splashPaintWidthFullActive: Double
        let splashPaintWidthOneActive: Double
        
        enum CodingKeys: String, CodingKey {
            case createSplashLength = "CreateSplashLength"
            case createSplashNum = "CreateSplashNum"
            case splashPaintDepthScaleFullActive = "SplashPaintDepthScaleFullActive"
            case splashPaintDepthScaleOneActive = "SplashPaintDepthScaleOneActive"
            case splashPaintWidthFullActive = "SplashPaintWidthFullActive"
            case splashPaintWidthOneActive = "SplashPaintWidthOneActive"
        }
    }
    
    struct SplashWallDropCollisionParameter: Codable {
        let paintRadiusFall: Double
        let paintRadiusGround: Double
        let paintRadiusShock: Double
        
        enum CodingKeys: String, CodingKey {
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    struct SplashWallDropMoveParameter: Codable {
        let fallPeriodFirstFrameMax: Int
        let fallPeriodFirstTargetSpeed: Double
        let fallPeriodLastFrameMax: Int
        let fallPeriodLastFrameMin: Int
        let fallPeriodSecondFrame: Int
        let fallPeriodSecondTargetSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
            case fallPeriodSecondFrame = "FallPeriodSecondFrame"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }
}

extension Brella.BulletShotgunParameter.GroupParameter {
    struct CollisionParameter: Codable {
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    struct GroupDamageParameter: Codable {
        let reduceEndFrame: Int?
        let reduceStartFrame: Int?
        let valueMax: Int
        let valueMin: Int
        
        enum CodingKeys: String, CodingKey {
            case reduceEndFrame = "ReduceEndFrame"
            case reduceStartFrame = "ReduceStartFrame"
            case valueMax = "ValueMax"
            case valueMin = "ValueMin"
        }
    }
    
    struct GroupMoveParameter: Codable {
        let brakeGravity: Double?
        let goStraightStateEndMaxSpeed: Double
        let goStraightToBrakeStateFrame: Int
        let spawnSpeed: Double?
        
        enum CodingKeys: String, CodingKey {
            case brakeGravity = "BrakeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
    
    struct GroupPaintParameter: Codable {
        let distanceNear: Double?
        let widthHalfFar: Double?
        let widthHalfMiddle: Double?
        let widthHalfNear: Double?
        
        enum CodingKeys: String, CodingKey {
            case distanceNear = "DistanceNear"
            case widthHalfFar = "WidthHalfFar"
            case widthHalfMiddle = "WidthHalfMiddle"
            case widthHalfNear = "WidthHalfNear"
        }
    }
}

extension Brella {
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
}

extension Brella {
    struct CanopyParameter: Codable {
        let type: String
        let canopyChargeFrame: Int?
        let canopyDirXZDiffDegH: Double?
        let canopyDirXZDiffDegL: Double?
        let canopyDirXZRotDegBias: Double?
        let canopyDirXZRotDegH: Double?
        let canopyDirXZRotDegL: Double?
        let canopyNakedFrame: Int?
        let canopyOpenEndBias: Double?
        let canopyOpenEndOffset: Double
        let canopyOpenFrame: Int?
        let canopyOpenStartOffset: Double
        let canopyShotFrame: Int?
        let inkConsumeUmbrella: Double
        let isAlwaysNaked: Bool?
        let isCanopyShot: Bool?
        let isRecoverCanopyByKill: Bool?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case canopyChargeFrame = "CanopyChargeFrame"
            case canopyDirXZDiffDegH = "CanopyDirXZ_DiffDeg_H"
            case canopyDirXZDiffDegL = "CanopyDirXZ_DiffDeg_L"
            case canopyDirXZRotDegBias = "CanopyDirXZ_RotDegBias"
            case canopyDirXZRotDegH = "CanopyDirXZ_RotDeg_H"
            case canopyDirXZRotDegL = "CanopyDirXZ_RotDeg_L"
            case canopyNakedFrame = "CanopyNakedFrame"
            case canopyOpenEndBias = "CanopyOpenEndBias"
            case canopyOpenEndOffset = "CanopyOpenEndOffset"
            case canopyOpenFrame = "CanopyOpenFrame"
            case canopyOpenStartOffset = "CanopyOpenStartOffset"
            case canopyShotFrame = "CanopyShotFrame"
            case inkConsumeUmbrella = "InkConsumeUmbrella"
            case isAlwaysNaked = "IsAlwaysNaked"
            case isCanopyShot = "IsCanopyShot"
            case isRecoverCanopyByKill = "IsRecoverCanopyByKill"
        }
    }
}

extension Brella {
    struct ShotgunParameter: Codable {
        let type: String
        let inkConsume: Double?
        let inkRecoverStop: Int?
        let inkRecoverStopCharge: Int?
        let jumpGndCharge: Double
        let moveSpeed: Double
        let moveSpeedCharge: Double
        let postDelayFrameMain: Int?
        let postDelayFrameMoveLmt: Int?
        let postNoShotReqFrame: Int?
        let preDelayFrameHumanMain: Int?
        let preDelayFrameSquidMain: Int?
        let repeatFrame: Int
        let shotGuideFrame: Int?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case inkRecoverStopCharge = "InkRecoverStopCharge"
            case jumpGndCharge = "JumpGndCharge"
            case moveSpeed = "MoveSpeed"
            case moveSpeedCharge = "MoveSpeedCharge"
            case postDelayFrameMain = "PostDelayFrame_Main"
            case postDelayFrameMoveLmt = "PostDelayFrame_MoveLmt"
            case postNoShotReqFrame = "PostNoShotReqFrame"
            case preDelayFrameHumanMain = "PreDelayFrame_HumanMain"
            case preDelayFrameSquidMain = "PreDelayFrame_SquidMain"
            case repeatFrame = "RepeatFrame"
            case shotGuideFrame = "ShotGuideFrame"
        }
    }
}
