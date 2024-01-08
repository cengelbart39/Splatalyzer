//
//  ShooterParameters.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterParameters: Codable {
    let collisionParam: CollisionParameter
    let damageParam: DamageParameter
    
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    let mainWeaponSetting: MainWeaponSettings
    
    let moveParam: MoveParameter
    let paintParam: PaintParameter
    let splashPaintParam: SplashPaintParameter
    let splashSpawnParam: SplashSpawnParameter
    
    let variableCollisionParam: CollisionParameter?
    let variableDamageParam: DamageParameter?
    let variableMoveParam: MoveParameter?
    let variablePaintParam: PaintParameter?
    let variableSplashPaintParam: SplashPaintParameter?
    let variableSplashSpawnParam: SplashSpawnParameter?
    let variableWeaponParam: WeaponParameter?
    
    let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
    let wallDropMoveParam: WallDropMoveParameter
    let weaponParam: WeaponParameter
    
    let actionSpecUpReduceJumpSwerveRate: ActionSpecUpParameter?
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

    struct CollisionParameter: Codable {
        let type: String
        let changeFrameForField: Int?
        let endRadiusForField: Double?
        let endRadiusForPlayer: Double?
        let friendThroughFrameForPlayer: Int?
        let initRadiusForField: Double?
        let initRadiusForPlayer: Double?
        
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
        let valueMax: Int
        let valueMin: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case reduceEndFrame = "ReduceEndFrame"
            case reduceStartFrame = "ReduceStartFrame"
            case valueMax = "ValueMax"
            case valueMin = "ValueMin"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let freeAirResist: Double?
        let freeGravity: Double?
        let goStraightStateEndMaxSpeed: Double
        let goStraightToBrakeStateFrame: Int
        let spawnSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case freeAirResist = "FreeAirResist"
            case freeGravity = "FreeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
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
        let heightUseDepthScaleMaxBreakFree: Double?
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
        let widthHalf: Double
        let widthHalfNearest: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    struct SplashSpawnParameter: Codable {
        let type: String
        let forceSpawnNearestAddNumArray: [Int]?
        let randomSpawnVelXMax: Double?
        let spawnBetweenLength: Double
        let spawnNearestLength: Double
        let spawnNum: Double
        let splitNum: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
            case randomSpawnVelXMax = "RandomSpawnVelXMax"
            case spawnBetweenLength = "SpawnBetweenLength"
            case spawnNearestLength = "SpawnNearestLength"
            case spawnNum = "SpawnNum"
            case splitNum = "SplitNum"
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
        let freeGravityType: String?
        
        enum CodingKeys: String, CodingKey {
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
    
    struct WeaponParameter: Codable {
        let type: String
        let burstAimMoveFrame: Int?
        let inkConsume: Double
        let inkRecoverStop: Int?
        let jumpDegBiasDecreaseStartFrame: Int
        let jumpDegBiasEndFrame: Int
        let jumpDegBiasMax: Double
        let jumpDegSwerve: Double
        let moveSpeed: Double
        let postDelayFrame: Int?
        let repeatFrame: Int?
        let shotGuideFrame: Int
        let squidShotShorteningFrame: Int?
        let standDegBiasDecrease: Double
        let standDegBiasKf: Double
        let standDegBiasMax: Double?
        let standDegBiasMin: Double
        let standDegSwerve: Double
        let tripleShotSpanFrame: Int?
        let variableShotRepeatStartFrame: Int?
        
        enum CodingKeys: String, CodingKey {
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
    
    struct ActionSpecUpParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
}
