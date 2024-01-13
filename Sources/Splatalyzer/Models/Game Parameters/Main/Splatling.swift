//
//  Splatling.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

public struct Splatling: Codable {
    public let collisionParam: CollisionParameter
    public let damageParam: DamageParameter
    public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    public let mainWeaponSetting: MainWeaponSettings
    public let moveParam: MoveParameter
    public let paintParam: PaintParameter
    public let splashPaintParam: SplashPaintParameter
    public let splashSpawnParam: SplashSpawnParameter
    
    public let variableDamageParam: DamageParameter?
    public let variableMoveParam: MoveParameter?
    public let variablePaintParam: PaintParameter?
    public let variableShotParam: VariableShotParameter?
    public let variableSplashPaintParam: SplashPaintParameter?
    public let variableSplashSpawnParam: SplashSpawnParameter?
    
    public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
    public let wallDropMoveParam: WallDropMoveParameter
    
    public let weaponFullChargeParam: FullChargeParameter?
    public let weaponKeepChargeParam: KeepChargeParameter?
    
    public let weaponParam: WeaponParameter
    
    public let bulletShooterTailLengthParam: BulletShooterTailLengthParameter
    public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    public enum CodingKeys: String, CodingKey {
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
    public struct CollisionParameter: Codable {
        public let type: String
        public let changeFrameForField: Int
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case changeFrameForField = "ChangeFrameForField"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    public struct DamageParameter: Codable {
        public let type: String
        public let reduceEndFrame: Int
        public let reduceStartFrame: Int
        public let valueFullChargeMax: Int
        public let valueMax: Int
        public let valueMin: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case reduceEndFrame = "ReduceEndFrame"
            case reduceStartFrame = "ReduceStartFrame"
            case valueFullChargeMax = "ValueFullChargeMax"
            case valueMax = "ValueMax"
            case valueMin = "ValueMin"
        }
    }
    
    public struct MoveParameter: Codable {
        public let type: String
        public let goStraightStateEndMaxSpeed: Double
        public let goStraightToBrakeStateFrame: Int
        public let spawnSpeed: Double
        public let spawnSpeedFirstLandAndSecond: Double
        public let spawnSpeedRandomBias: Double
        public let spawnSpeedRandomRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
            case spawnSpeedFirstLandAndSecond = "SpawnSpeedFirstLastAndSecond"
            case spawnSpeedRandomBias = "SpawnSpeedRandomBias"
            case spawnSpeedRandomRate = "SpawnSpeedRandomRate"
        }
    }

    public struct PaintParameter: Codable {
        public let type: String
        public let depthScaleMax: Double
        public let depthScaleMaxBreakFree: Double
        public let depthScaleMin: Double
        public let depthScaleMinBreakFree: Double
        public let distanceFar: Double?
        public let distanceMiddle: Double
        public let distanceNear: Double?
        public let heightUseDepthScaleMaxBreakFree: Double
        public let heightUseDepthScaleMinBreakFree: Double?
        public let widthHalfFar: Double
        public let widthHalfMiddle: Double
        public let widthHalfNear: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct SplashPaintParameter: Codable {
        public let type: String
        public let depthMaxDropHeight: Double?
        public let depthMinDropHeight: Double?
        public let depthScaleMax: Double
        public let depthScaleMin: Double
        public let widthHalf: Double
        public let widthHalfNearest: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }

    public struct SplashSpawnParameter: Codable {
        public let type: String
        public let forceSpawnNearestAddNumArray: [Int]?
        public let spawnBetweenLength: Double
        public let spawnNearestLength: Double?
        public let spawnNum: Double
        public let splitNum: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
            case spawnBetweenLength = "SpawnBetweenLength"
            case spawnNearestLength = "SpawnNearestLength"
            case spawnNum = "SpawnNum"
            case splitNum = "SplitNum"
        }
    }

    public struct VariableShotParameter: Codable {
        public let type: String
        public let jumpDegBiasDecreaseStartFrame: Int
        public let jumpDegBiasEndFrame: Int
        public let jumpDegBiasMax: Double
        public let jumpDegSwerve: Double
        public let moveSpeed: Double
        public let pitchDegBias: Double
        public let pitchDegSwerve: Double
        public let repeatFrame: Int
        public let standDegBiasMax: Double
        public let standDegSwerve: Double
        public let variableInterpolatedFrame: Int
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct WallDropCollisionPaintParameter: Codable {
        public let type: String
        public let paintRadiusFall: Double
        public let paintRadiusGround: Double
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    public struct WallDropMoveParameter: Codable {
        public let type: String
        public let fallPeriodFirstFrameMax: Int
        public let fallPeriodFirstFrameMin: Int
        public let fallPeriodFirstTargetSpeed: Double
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int
        public let fallPeriodSecondFrame: Int
        public let fallPeriodSecondTargetSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct FullChargeParameter: Codable {
        public let type: String
        public let maxShootingFrameSecond: Int
        public let repeatFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case maxShootingFrameSecond = "MaxShootingFrame_Second"
            case repeatFrame = "RepeatFrame"
        }
    }

    public struct KeepChargeParameter: Codable {
        public let type: String
        public let enableKeepChargeAnytime: Bool
        public let keepChargeFullFrame: Int
        public let keepChargePreDelayFrame: Int
        public let keepChargePreDelayFramePre: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case enableKeepChargeAnytime = "EnableKeepChargeAnytime"
            case keepChargeFullFrame = "KeepChargeFullFrame"
            case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
            case keepChargePreDelayFramePre = "KeepChargePreDelayFrame_Pre"
        }
    }

    public struct WeaponParameter: Codable {
        public let type: String
        public let burstAimMoveFrame: Int?
        public let chargeFrameFirst: Int?
        public let chargeFrameSecond: Int?
        public let enableRecharge: Bool?
        public let inkConsume: Double
        public let inkEmptyChargeTimes: Int?
        public let inkRecoverStop: Int
        public let jumpGndCharge: Double?
        public let jumpDegBiasDecreaseStartFrame: Int
        public let jumpDegBiasEndFrame: Int
        public let jumpDegBiasMax: Double
        public let jumpDegSwerve: Double
        public let maxShootingFrameFirst: Int?
        public let maxShootingFrameSecond: Int?
        public let moveSpeed: Double
        public let moveSpeedCharge: Double?
        public let pitchDegBias: Double
        public let pitchDegSwerve: Double
        public let postDelayFrame: Int
        public let preDelayFrameSquidShot: Int
        public let repeatFrame: Int
        public let shotGuideFrame: Int
        public let standDegBiasMax: Double
        public let standDegBiasMin: Double
        public let standDegSwerve: Double
        public let velGndBiasCharge: Double
        public let velGndDownRtCharge: Double
        
        public enum CodingKeys: String, CodingKey {
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

    public struct BulletShooterTailLengthParameter: Codable {
        public let type: String
        public let maxLengthFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case maxLengthFrame = "MaxLengthFrame"
        }
    }
    
    public struct SpawnBulletAdditionMovePlayerParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
}
