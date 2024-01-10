//
//  Splatling.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct Splatling: Codable {
    let collisionParam: CollisionParameter
    let damageParam: DamageParameter
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    let mainWeaponSetting: MainWeaponSettings
    let moveParam: MoveParameter
    let paintParam: PaintParameter
    let splashPaintParam: SplashPaintParameter
    let splashSpawnParam: SplashSpawnParameter
    
    let variableDamageParam: DamageParameter?
    let variableMoveParam: MoveParameter?
    let variablePaintParam: PaintParameter?
    let variableShotParam: VariableShotParameter?
    let variableSplashPaintParam: SplashPaintParameter?
    let variableSplashSpawnParam: SplashSpawnParameter?
    
    let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
    let wallDropMoveParam: WallDropMoveParameter
    
    let weaponFullChargeParam: FullChargeParameter?
    let weaponKeepChargeParam: KeepChargeParameter?
    
    let weaponParam: WeaponParameter
    
    let bulletShooterTailLengthParam: BulletShooterTailLengthParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnParam = "SplashSpawnParam"
        case variableDamageParam = "VariableDamageParam"
        case variableMoveParam = "VariableMoveParam"
        case variablePaintParam = "VariablePaintParam"
        case variableShotParam = "VariableShotParam"
        case variableSplashPaintParam = "VariableSplashPaintParam"
        case variableSplashSpawnParam = "VariableSplashSpawnParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponFullChargeParam = "WeaponFullChargeParam"
        case weaponKeepChargeParam = "WeaponKeepChargeParam"
        case weaponParam = "WeaponParam"
        case bulletShooterTailLengthParam = "spl__BulletShooterTailLengthParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}

extension Splatling {
    struct CollisionParameter: Codable {
        let type: String
        let changeFrameForField: Int
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case changeFrameForField = "ChangeFrameForField"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    struct DamageParameter: Codable {
        let type: String
        let reduceEndFrame: Int
        let reduceStartFrame: Int
        let valueFullChargeMax: Int
        let valueMax: Int
        let valueMin: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case reduceEndFrame = "ReduceEndFrame"
            case reduceStartFrame = "ReduceStartFrame"
            case valueFullChargeMax = "ValueFullChargeMax"
            case valueMax = "ValueMax"
            case valueMin = "ValueMin"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let goStraightStateEndMaxSpeed: Double
        let goStraightToBrakeStateFrame: Int
        let spawnSpeed: Double
        let spawnSpeedFirstLandAndSecond: Double
        let spawnSpeedRandomBias: Double
        let spawnSpeedRandomRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
            case spawnSpeedFirstLandAndSecond = "SpawnSpeedFirstLastAndSecond"
            case spawnSpeedRandomBias = "SpawnSpeedRandomBias"
            case spawnSpeedRandomRate = "SpawnSpeedRandomRate"
        }
    }

    struct PaintParameter: Codable {
        let type: String
        let depthScaleMax: Double
        let depthScaleMaxBreakFree: Double
        let depthScaleMin: Double
        let depthScaleMinBreakFree: Double
        let distanceFar: Double?
        let distanceMiddle: Double
        let distanceNear: Double?
        let heightUseDepthScaleMaxBreakFree: Double
        let heightUseDepthScaleMinBreakFree: Double?
        let widthHalfFar: Double
        let widthHalfMiddle: Double
        let widthHalfNear: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMaxBreakFree = "DepthScaleMaxBreakFree"
            case depthScaleMin = "DepthScaleMin"
            case depthScaleMinBreakFree = "DepthScaleMinBreakFree"
            case distanceFar = "DistanceFar"
            case distanceMiddle = "DistanceMiddle"
            case distanceNear = "DistanceNear"
            case heightUseDepthScaleMaxBreakFree = "HeightUseDepthScaleMaxBreakFree"
            case heightUseDepthScaleMinBreakFree = "HeightUseDepthScaleMinBreakFree"
            case widthHalfFar = "WidthHalfFar"
            case widthHalfMiddle = "WidthHalfMiddle"
            case widthHalfNear = "WidthHalfNear"
        }
    }
    
    struct SplashPaintParameter: Codable {
        let type: String
        let depthMaxDropHeight: Double?
        let depthMinDropHeight: Double?
        let depthScaleMax: Double
        let depthScaleMin: Double
        let widthHalf: Double
        let widthHalfNearest: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }

    struct SplashSpawnParameter: Codable {
        let type: String
        let forceSpawnNearestAddNumArray: [Int]?
        let spawnBetweenLength: Double
        let spawnNearestLength: Double?
        let spawnNum: Double
        let splitNum: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
            case spawnBetweenLength = "SpawnBetweenLength"
            case spawnNearestLength = "SpawnNearestLength"
            case spawnNum = "SpawnNum"
            case splitNum = "SplitNum"
        }
    }

    struct VariableShotParameter: Codable {
        let type: String
        let jumpDegBiasDecreaseStartFrame: Int
        let jumpDegBiasEndFrame: Int
        let jumpDegBiasMax: Double
        let jumpDegSwerve: Double
        let moveSpeed: Double
        let pitchDegBias: Double
        let pitchDegSwerve: Double
        let repeatFrame: Int
        let standDegBiasMax: Double
        let standDegSwerve: Double
        let variableInterpolatedFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
            case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
            case jumpDegBiasMax = "Jump_DegBiasMax"
            case jumpDegSwerve = "Jump_DegSwerve"
            case moveSpeed = "MoveSpeed"
            case pitchDegBias = "PitchDegBias"
            case pitchDegSwerve = "PitchDegSwerve"
            case repeatFrame = "RepeatFrame"
            case standDegBiasMax = "Stand_DegBiasMax"
            case standDegSwerve = "Stand_DegSwerve"
            case variableInterpolatedFrame = "VariableInterpolatedFrame"
        }
    }
    
    struct WallDropCollisionPaintParameter: Codable {
        let type: String
        let paintRadiusFall: Double
        let paintRadiusGround: Double
        let paintRadiusShock: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    struct WallDropMoveParameter: Codable {
        let type: String
        let fallPeriodFirstFrameMax: Int
        let fallPeriodFirstFrameMin: Int
        let fallPeriodFirstTargetSpeed: Double
        let fallPeriodLastFrameMax: Int
        let fallPeriodLastFrameMin: Int
        let fallPeriodSecondFrame: Int
        let fallPeriodSecondTargetSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
            case fallPeriodSecondFrame = "FallPeriodSecondFrame"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }
    
    struct FullChargeParameter: Codable {
        let type: String
        let maxShootingFrameSecond: Int
        let repeatFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case maxShootingFrameSecond = "MaxShootingFrame_Second"
            case repeatFrame = "RepeatFrame"
        }
    }

    struct KeepChargeParameter: Codable {
        let type: String
        let enableKeepChargeAnytime: Bool
        let keepChargeFullFrame: Int
        let keepChargePreDelayFrame: Int
        let keepChargePreDelayFramePre: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case enableKeepChargeAnytime = "EnableKeepChargeAnytime"
            case keepChargeFullFrame = "KeepChargeFullFrame"
            case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
            case keepChargePreDelayFramePre = "KeepChargePreDelayFrame_Pre"
        }
    }

    struct WeaponParameter: Codable {
        let type: String
        let burstAimMoveFrame: Int?
        let chargeFrameFirst: Int?
        let chargeFrameSecond: Int?
        let enableRecharge: Bool?
        let inkConsume: Double
        let inkEmptyChargeTimes: Int?
        let inkRecoverStop: Int
        let jumpGndCharge: Double?
        let jumpDegBiasDecreaseStartFrame: Int
        let jumpDegBiasEndFrame: Int
        let jumpDegBiasMax: Double
        let jumpDegSwerve: Double
        let maxShootingFrameFirst: Int?
        let maxShootingFrameSecond: Int?
        let moveSpeed: Double
        let moveSpeedCharge: Double?
        let pitchDegBias: Double
        let pitchDegSwerve: Double
        let postDelayFrame: Int
        let preDelayFrameSquidShot: Int
        let repeatFrame: Int
        let shotGuideFrame: Int
        let standDegBiasMax: Double
        let standDegBiasMin: Double
        let standDegSwerve: Double
        let velGndBiasCharge: Double
        let velGndDownRtCharge: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case burstAimMoveFrame = "BurstAimMoveFrame"
            case chargeFrameFirst = "ChargeFrame_First"
            case chargeFrameSecond = "ChargeFrame_Second"
            case enableRecharge = "EnableRecharge"
            case inkConsume = "InkConsume"
            case inkEmptyChargeTimes = "InkEmptyChargeTimes"
            case inkRecoverStop = "InkRecoverStop"
            case jumpGndCharge = "JumpGnd_Charge"
            case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
            case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
            case jumpDegBiasMax = "Jump_DegBiasMax"
            case jumpDegSwerve = "Jump_DegSwerve"
            case maxShootingFrameFirst = "MaxShootingFrame_First"
            case maxShootingFrameSecond = "MaxShootingFrame_Second"
            case moveSpeed = "MoveSpeed"
            case moveSpeedCharge = "MoveSpeed_Charge"
            case pitchDegBias = "PitchDegBias"
            case pitchDegSwerve = "PitchDegSwerve"
            case postDelayFrame = "PostDelayFrame"
            case preDelayFrameSquidShot = "PreDelayFrame_SquidShot"
            case repeatFrame = "RepeatFrame"
            case shotGuideFrame = "ShotGuideFrame"
            case standDegBiasMax = "Stand_DegBiasMax"
            case standDegBiasMin = "Stand_DegBiasMin"
            case standDegSwerve = "Stand_DegSwerve"
            case velGndBiasCharge = "VelGnd_Bias_Charge"
            case velGndDownRtCharge = "VelGnd_DownRt_Charge"
        }
    }

    struct BulletShooterTailLengthParameter: Codable {
        let type: String
        let maxLengthFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case maxLengthFrame = "MaxLengthFrame"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
}
