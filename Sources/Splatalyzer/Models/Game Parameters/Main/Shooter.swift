//
//  Shooter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

public struct Shooter: Codable {
    public let collisionParam: CollisionParameter
    public let damageParam: DamageParameter
    
    public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    public let mainWeaponSetting: MainWeaponSettings
    
    public let moveParam: MoveParameter
    public let paintParam: PaintParameter
    public let splashPaintParam: SplashPaintParameter
    public let splashSpawnParam: SplashSpawnParameter
    
    public let variableCollisionParam: CollisionParameter?
    public let variableDamageParam: DamageParameter?
    public let variableMoveParam: MoveParameter?
    public let variablePaintParam: PaintParameter?
    public let variableSplashPaintParam: SplashPaintParameter?
    public let variableSplashSpawnParam: SplashSpawnParameter?
    public let variableWeaponParam: WeaponParameter?
    
    public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
    public let wallDropMoveParam: WallDropMoveParameter
    public let weaponParam: WeaponParameter
    
    public let actionSpecUpReduceJumpSwerveRate: ActionSpecUpParameter?
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
        case variableCollisionParam = "VariableCollisionParam"
        case variableDamageParam = "VariableDamageParam"
        case variableMoveParam = "VariableMoveParam"
        case variablePaintParam = "VariablePaintParam"
        case variableSplashPaintParam = "VariableSplashPaintParam"
        case variableSplashSpawnParam = "VariableSplashSpawnParam"
        case variableWeaponParam = "VariableWeaponParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponParam = "WeaponParam"
        case actionSpecUpReduceJumpSwerveRate = "spl__PlayerGearSkillParam_ActionSpecUp_ReduceJumpSwerveRate"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }

    public struct CollisionParameter: Codable {
        public let type: String
        public let changeFrameForField: Int?
        public let endRadiusForField: Double?
        public let endRadiusForPlayer: Double?
        public let friendThroughFrameForPlayer: Int?
        public let initRadiusForField: Double?
        public let initRadiusForPlayer: Double?
        
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
        public let valueMax: Int
        public let valueMin: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case reduceEndFrame = "ReduceEndFrame"
            case reduceStartFrame = "ReduceStartFrame"
            case valueMax = "ValueMax"
            case valueMin = "ValueMin"
        }
    }
    
    public struct MoveParameter: Codable {
        public let type: String
        public let freeAirResist: Double?
        public let freeGravity: Double?
        public let goStraightStateEndMaxSpeed: Double
        public let goStraightToBrakeStateFrame: Int
        public let spawnSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case freeAirResist = "FreeAirResist"
            case freeGravity = "FreeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
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
        public let heightUseDepthScaleMaxBreakFree: Double?
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
        public let widthHalf: Double
        public let widthHalfNearest: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    public struct SplashSpawnParameter: Codable {
        public let type: String
        public let forceSpawnNearestAddNumArray: [Int]?
        public let randomSpawnVelXMax: Double?
        public let spawnBetweenLength: Double
        public let spawnNearestLength: Double
        public let spawnNum: Double
        public let splitNum: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
            case randomSpawnVelXMax = "RandomSpawnVelXMax"
            case spawnBetweenLength = "SpawnBetweenLength"
            case spawnNearestLength = "SpawnNearestLength"
            case spawnNum = "SpawnNum"
            case splitNum = "SplitNum"
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
        public let freeGravityType: String?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
            case fallPeriodSecondFrame = "FallPeriodSecondFrame"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
            case freeGravityType = "FreeGravityType"
        }
    }
    
    public struct WeaponParameter: Codable {
        public let type: String
        public let burstAimMoveFrame: Int?
        public let inkConsume: Double
        public let inkRecoverStop: Int?
        public let jumpDegBiasDecreaseStartFrame: Int
        public let jumpDegBiasEndFrame: Int
        public let jumpDegBiasMax: Double
        public let jumpDegSwerve: Double
        public let moveSpeed: Double
        public let postDelayFrame: Int?
        public let repeatFrame: Int?
        public let shotGuideFrame: Int
        public let squidShotShorteningFrame: Int?
        public let standDegBiasDecrease: Double
        public let standDegBiasKf: Double
        public let standDegBiasMax: Double?
        public let standDegBiasMin: Double
        public let standDegSwerve: Double
        public let tripleShotSpanFrame: Int?
        public let variableShotRepeatStartFrame: Int?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case burstAimMoveFrame = "BurstAimMoveFrame"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
            case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
            case jumpDegBiasMax = "Jump_DegBiasMax"
            case jumpDegSwerve = "Jump_DegSwerve"
            case moveSpeed = "MoveSpeed"
            case postDelayFrame = "PostDelayFrame"
            case repeatFrame = "RepeatFrame"
            case shotGuideFrame = "ShotGuideFrame"
            case squidShotShorteningFrame = "SquidShotShorteningFrame"
            case standDegBiasDecrease = "Stand_DegBiasDecrease"
            case standDegBiasKf = "Stand_DegBiasKf"
            case standDegBiasMax = "Stand_DegBiasMax"
            case standDegBiasMin = "Stand_DegBiasMin"
            case standDegSwerve = "Stand_DegSwerve"
            case tripleShotSpanFrame = "TripleShotSpanFrame"
            case variableShotRepeatStartFrame = "VariableShotRepeatStartFrame"
        }
    }
    
    public struct ActionSpecUpParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct SpawnBulletAdditionMovePlayerParameter: Codable {
        public let type: String
        public let zRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
}
