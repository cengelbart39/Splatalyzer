//
//  SlosherUnitGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherUnitGroupParameter: Codable {
    let type: String
    let unit: [SlosherUnitParameter]
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case unit = "Unit"
    }
}

struct SlosherUnitParameter: Codable {
    let addSpawnSpeedYRateByXZ: Double
    let afterOffsetDelayFrame: Int
    let afterOffsetSpawnSpeed: Double
    
    let afterPaintParam: SlosherUnitAfterPaintParameter
    let afterWallDropCollisionPaintPrm: SlosherUnitAfterWallDropCollisionPaintParameter
    let afterWallDropMoveParam: SlosherUnitAfterWallDropMoveParameter
    
    let baseRotateYDegree: Double
    let bulletNum: Int
    
    let collisionParam: SlosherUnitCollisionParameter
    let damageParam: SlosherUnitDamageParameter
    let drawSizeParam: SlosherUnitDrawSizeParameter
    
    let hitEffectBigOrderNum: [Int]
    
    let moveParam: SlosherUnitMoveParameter
    let paintParam: SlosherUnitPaintParameter
    
    let randomRotateYBias: Double
    let randomRotateYDegree: Double
    let randomRotateYOffOrderNum: [Int]
    
    let spawnSpeedAir: Double
    let spawnSpeedGround: Double
    
    let splashAndSplashWallHitSpawnParam: SlosherUnitSplashAndSplashWallHitSpawnParameter
    let splashSlosherHitParam: [SlosherUnitSplashHitParameter]
    
    let unitDelayFrame: Int
    
    let wallDropCollisionPaintParam: SlosherUnitWallDropCollisionPaintParameter
    let wallDropMoveParam: SlosherUnitWallDropMoveParameter
    
    enum CodingKeys: String, CodingKey {
        case addSpawnSpeedYRateByXZ = "AddSpawnSpeedYRateByXZ"
        case afterOffsetDelayFrame = "AfterOffsetDelayFrame"
        case afterOffsetSpawnSpeed = "AfterOffsetSpawnSpeed"
        case afterPaintParam = "AfterPaintParam"
        case afterWallDropCollisionPaintPrm = "AfterWallDropCollisionPaintPrm"
        case afterWallDropMoveParam = "AfterWallDropMoveParam"
        case baseRotateYDegree = "BaseRotateYDegree"
        case bulletNum = "BulletNum"
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case drawSizeParam = "DrawSizeParam"
        case hitEffectBigOrderNum = "HitEffectBigOrderNum"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case randomRotateYBias = "RandomRotateYBias"
        case randomRotateYDegree = "RandomRotateYDegree"
        case randomRotateYOffOrderNum = "RandomRotateYOffOrderNum"
        case spawnSpeedAir = "SpawnSpeedAir"
        case spawnSpeedGround = "SpawnSpeedGround"
        case splashAndSplashWallHitSpawnParam = "SplashAndSplashWallHitSpawnPrm"
        case splashSlosherHitParam = "SplashSlosherHitParam"
        case unitDelayFrame = "UnitDelayFrame"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
    }
}

struct SlosherUnitAfterPaintParameter: Codable {
    let depthScaleFar: Double
    let depthScaleNear: Double
    let distanceXZFar: Double
    let distanceXZNear: Double
    let scaleEndFallDistance: Double
    let scaleStartFallDistance: Double
    let widthDepthScaleFall: Double
    let widthHalfFar: Double
    let widthHalfNear: Double
    
    enum CodingKeys: String, CodingKey {
        case depthScaleFar = "DepthScaleFar"
        case depthScaleNear = "DepthScaleNear"
        case distanceXZFar = "DistanceXZFar"
        case distanceXZNear = "DistanceXZNear"
        case scaleEndFallDistance = "ScaleEndFallDistance"
        case scaleStartFallDistance = "ScaleStartFallDistance"
        case widthDepthScaleFall = "WidthDepthScaleFall"
        case widthHalfFar = "WidthHalfFar"
        case widthHalfNear = "WidthHalfNear"
    }
}

struct SlosherUnitAfterWallDropCollisionPaintParameter: Codable {
    let fallPeriodFirstSecondTargetAlp: Double
    let paintRadiusFall: Double
    let paintRadiusGround: Double
    let paintRadiusShock: Double
    
    enum CodingKeys: String, CodingKey {
        case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusShock = "PaintRadiusShock"
    }
}

struct SlosherUnitAfterWallDropMoveParameter: Codable {
    let fallPeriodFirstFrameMax: Int
    let fallPeriodFirstFrameMin: Int
    let fallPeriodFirstTargetSpeed: Double
    let fallPeriodLastFrameMax: Int
    let fallPeriodLastFrameMin: Int
    let fallPeriodSecondFrame: Int
    let fallPeriodSecondTargetSpeed: Double
    let freeGravityType: String
    
    enum CodingKeys: String, CodingKey {
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

struct SlosherUnitCollisionParameter: Codable {
    let afterOffsetEndRadiusForField: Double
    let afterOffsetEndRadiusForPlayer: Double
    let afterOffsetInitRadiusForField: Double
    let afterOffsetInitRadiusForPlayer: Double
    let changeFrameForField: Int
    let changeFrameForPlayer: Int
    let endRadiusForField: Double
    let endRadiusForPlayer: Double
    let friendThroughFrameForPlayer: Int
    let initRadiusForField: Double
    let initRadiusForPlayer: Double
    
    enum CodingKeys: String, CodingKey {
        case afterOffsetEndRadiusForField = "AfterOffsetEndRadiusForField"
        case afterOffsetEndRadiusForPlayer = "AfterOffsetEndRadiusForPlayer"
        case afterOffsetInitRadiusForField = "AfterOffsetInitRadiusForField"
        case afterOffsetInitRadiusForPlayer = "AfterOffsetInitRadiusForPlayer"
        case changeFrameForField = "ChangeFrameForField"
        case changeFrameForPlayer = "ChangeFrameForPlayer"
        case endRadiusForField = "EndRadiusForField"
        case endRadiusForPlayer = "EndRadiusForPlayer"
        case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
        case initRadiusForField = "InitRadiusForField"
        case initRadiusForPlayer = "InitRadiusForPlayer"
    }
}

struct SlosherUnitDamageParameter: Codable {
    let groupNum: Int
    let reduceEndFallDistance: Double
    let reduceStartFallDistance: Double
    let valueMax: Double
    let valueMin: Double
    
    enum CodingKeys: String, CodingKey {
        case groupNum = "GroupNum"
        case reduceEndFallDistance = "ReduceEndFallDistance"
        case reduceStartFallDistance = "ReduceStartFallDistance"
        case valueMax = "ValueMax"
        case valueMin = "ValueMin"
    }
}

struct SlosherUnitDrawSizeParameter: Codable {
    let afterOffsetEndRadius: Double
    let afterOffsetInitRadius: Double
    let changeFrame: Int
    let endRadius: Double
    let initRadius: Double
    let tailId: Int
    let tailLengthMax: Double
    let tailLengthMaxLastTail: Double
    let tailLengthMin: Double
    let tailSolidFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case afterOffsetEndRadius = "AfterOffsetEndRadius"
        case afterOffsetInitRadius = "AfterOffsetInitRadius"
        case changeFrame = "ChangeFrame"
        case endRadius = "EndRadius"
        case initRadius = "InitRadius"
        case tailId = "TailID"
        case tailLengthMax = "TailLengthMax"
        case tailLengthMaxLastTail = "TailLengthMaxLastTail"
        case tailLengthMin = "TailLengthMin"
        case tailSolidFrame = "TailSolidFrame"
    }
}

struct SlosherUnitMoveParameter: Codable {
    let brakeAirResist: Double
    let brakeGravity: Double
    let brakeToFreeStateFrame: Int
    let brakeToFreeVelocityXZ: Double
    let brakeToFreeVelocityY: Double
    let freeAirResist: Double
    let freeGravity: Double
    let goStraightStateEndMaxSpeed: Double
    let goStraightToBrakeStateFrame: Int
    let spawnSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case brakeAirResist = "BrakeAirResist"
        case brakeGravity = "BrakeGravity"
        case brakeToFreeStateFrame = "BrakeToFreeStateFrame"
        case brakeToFreeVelocityXZ = "BrakeToFreeVelocityXZ"
        case brakeToFreeVelocityY = "BrakeToFreeVelocityY"
        case freeAirResist = "FreeAirResist"
        case freeGravity = "FreeGravity"
        case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
        case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
        case spawnSpeed = "SpawnSpeed"
    }
}

struct SlosherUnitPaintParameter: Codable {
    let depthScaleFar: Double
    let depthScaleNear: Double
    let distanceXZFar: Double
    let distanceXZNear: Double
    let scaleEndFallDistance: Double
    let scaleStartFallDistance: Double
    let widthDepthScaleFall: Double
    let widthHalfFar: Double
    let widthHalfNear: Double
    
    enum CodingKeys: String, CodingKey {
        case depthScaleFar = "DepthScaleFar"
        case depthScaleNear = "DepthScaleNear"
        case distanceXZFar = "DistanceXZFar"
        case distanceXZNear = "DistanceXZNear"
        case scaleEndFallDistance = "ScaleEndFallDistance"
        case scaleStartFallDistance = "ScaleStartFallDistance"
        case widthDepthScaleFall = "WidthDepthScaleFall"
        case widthHalfFar = "WidthHalfFar"
        case widthHalfNear = "WidthHalfNear"
    }
}

struct SlosherUnitSplashAndSplashWallHitSpawnParameter: Codable {
    let combination: [SlosherSplashHitSpawnCombination]
    let splashParam: [SlosherSplashHitSpawnSplashParameter]
}

struct SlosherSplashHitSpawnCombination: Codable {
    let orderNum: Int
    let splashArrayOrderNum: Int
    let splashWallHitArrayOrderNum: Int
    let totalNum: Int
    
    enum CodingKeys: String, CodingKey {
        case orderNum = "OrderNum"
        case splashArrayOrderNum = "SplashArrayOrderNum"
        case splashWallHitArrayOrderNum = "SplashWallHitArrayOrderNum"
        case totalNum = "TotalNum"
    }
}

struct SlosherSplashHitSpawnSplashParameter: Codable {
    let drawSizeCollisionPaintParam: DrawSizeCollisionPaintParameter
    let spawnParam: SpawnParameter
    
    enum CodingKeys: String, CodingKey {
        case drawSizeCollisionPaintParam = "DrawSizeCollisionPaintParam"
        case spawnParam = "SpawnParam"
    }
    
    struct DrawSizeCollisionPaintParameter: Codable {
        let collisionParam: SlosherCollisionParameter
        let drawRadius: Double
        let paintDepthScale: Double
        let paintWidthHalf: Double
        
        enum CodingKeys: String, CodingKey {
            case collisionParam = "CollisionParam"
            case drawRadius = "DrawRadius"
            case paintDepthScale = "PaintDepthScale"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
    
    struct SpawnParameter: Codable {
        let changeFrameForField: Int
        let changeFrameForPlayer: Int
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case changeFrameForField = "ChangeFrameForField"
            case changeFrameForPlayer = "ChangeFrameForPlayer"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
}

struct SlosherSplashHitSpawnSplashWallHitParameter: Codable {
    let spawnParam: SpawnParameter
    let wallDropCollisionPaintParameter: SlosherUnitWallDropCollisionPaintParameter
    let wallDropMoveParameter: SlosherUnitWallDropMoveParameter
    
    enum CodingKeys: String, CodingKey {
        case spawnParam = "SpawnParam"
        case wallDropCollisionPaintParameter = "WallDropCollisionPaintParam"
        case wallDropMoveParameter = "WallDropMoveParam"
    }
    
    struct SpawnParameter: Codable {
        let betweenDistance: Double
        let distanceXZRate: Double
        let firstDistance: Double
        let velocityMinusYRate: Double
        
        enum CodingKeys: String, CodingKey {
            case betweenDistance = "BetweenDistance"
            case distanceXZRate = "DistanceXZRate"
            case firstDistance = "FirstDistance"
            case velocityMinusYRate = "VelocityMinusYRate"
        }
    }
}

struct SlosherUnitSplashHitParameter: Codable {
    let collisionRadius: Double
    let drawRadius: Double
    let paintRadiusRatePerWidthHalf: Double
    let spawnOffsetHitByPlayer: Double
    let spawnOffsetY: Double
    
    enum CodingKeys: String, CodingKey {
        case collisionRadius = "CollisionRadius"
        case drawRadius = "DrawRadius"
        case paintRadiusRatePerWidthHalf = "PaintRadiusRatePerWidthHalf"
        case spawnOffsetHitByPlayer = "SpawnOffsetHitByPlayer"
        case spawnOffsetY = "SpawnOffsetY"
    }
}

struct SlosherUnitWallDropCollisionPaintParameter: Codable {
    let fallPeriodFirstSecondTargetAlp: Double
    let paintRadiusFall: Double
    let paintRadiusGround: Double
    let paintRadiusShock: Double
    
    enum CodingKeys: String, CodingKey {
        case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusShock = "PaintRadiusShock"
    }
}

struct SlosherUnitWallDropMoveParameter: Codable {
    let fallPeriodFirstFrameMax: Int
    let fallPeriodFirstFrameMin: Int
    let fallPeriodFirstTargetSpeed: Double
    let fallPeriodLastFrameMax: Int
    let fallPeriodLastFrameMin: Int
    let fallPeriodSecondFrame: Int
    let fallPeriodSecondTargetSpeed: Double
    let freeGravityType: String
    
    enum CodingKeys: String, CodingKey {
        case fallPeriodFirstFrameMax
        case fallPeriodFirstFrameMin
        case fallPeriodFirstTargetSpeed
        case fallPeriodLastFrameMax
        case fallPeriodLastFrameMin
        case fallPeriodSecondFrame
        case fallPeriodSecondTargetSpeed
        case freeGravityType
    }
}
