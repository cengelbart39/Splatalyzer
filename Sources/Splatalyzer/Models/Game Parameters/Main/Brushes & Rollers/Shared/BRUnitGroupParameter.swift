//
//  BRUnitGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/25/23.
//

import Foundation

struct BRUnit: Codable {
    let addSpawnSpeedYRateBySpeed: Double?
    let afterOffsetSpawnRoateXDegree: Double?
    let afterOffsetSpawnSpeed: Double?
    let bulletNum: Int?
    let depletionBulletNum: Int?
    let depletionSpeedRate: Double?
    let fourPetalsCenterRadiusRate: Double?
    let fourPetalsPetalRadiusRate: Double?
    let paintOnly: Bool?
    let spawnPositionHeight: Int?
    let spawnPositionOffsetHeight: Double?
    let spawnPositionRandomCube: Double?
    let spawnPositionWidth: Double?
    let spawnRotateXDegreeBase: Double?
    let spawnRotateYDegree: Double?
    let spawnRotateYDegreeLeftToRight: Double?
    let spawnRotateYDegreeRightToLeft: Double?
    let spawnSpeedBase: Double?
    let spawnSpeedRandom: Double?
    let spawnSplash: Bool?
    let spawnWideDegree: Int?
    let swerveRateBySpeed: Double?
    let unitDamageRate: Double?
    let unitParam: UnitParameter
    
    enum CodingKeys: String, CodingKey {
        case addSpawnSpeedYRateBySpeed = "AddSpawnSpeedYRateBySpeed"
        case afterOffsetSpawnRoateXDegree
        case afterOffsetSpawnSpeed
        case bulletNum = "BulletNum"
        case depletionBulletNum = "DepletionBulletNum"
        case depletionSpeedRate = "DepletionSpeedRate"
        case fourPetalsCenterRadiusRate
        case fourPetalsPetalRadiusRate
        case paintOnly
        case spawnPositionHeight
        case spawnPositionOffsetHeight = "SpawnPositionOffsetHeight"
        case spawnPositionRandomCube = "SpawnPositionRandomCube"
        case spawnPositionWidth = "SpawnPositionWidth"
        case spawnRotateXDegreeBase
        case spawnRotateYDegree
        case spawnRotateYDegreeLeftToRight = "SpawnRotateYDegreeLeftToRight"
        case spawnRotateYDegreeRightToLeft = "SpawnRotateYDegreeRightToLeft"
        case spawnSpeedBase = "SpawnSpeedBase"
        case spawnSpeedRandom = "SpawnSpeedRandom"
        case spawnSplash
        case spawnWideDegree = "SpawnWideDegree"
        case swerveRateBySpeed = "SwerveRateBySpeed"
        case unitDamageRate
        case unitParam = "UnitParam"
    }
}

extension BRUnit {
    struct UnitParameter: Codable {
        let collisionParam: CollisionParameter
        let drawSizeParam: DrawSizeParameter
        let moveParam: MoveParameter
        let paintParam: PaintParameter
        let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        let wallDropMoveParam: WallDropMoveParameter
        
        enum CodingKeys: String, CodingKey {
            case collisionParam = "CollisionParam"
            case drawSizeParam = "DrawSizeParam"
            case moveParam = "MoveParam"
            case paintParam = "PaintParam"
            case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
            case wallDropMoveParam = "WallDropMoveParam"
        }
    }
}

extension BRUnit.UnitParameter {
    struct CollisionParameter: Codable {
        let chargeFrameForField: Int
        let chargeFrameForPlayer: Int?
        let depletionRate: Double
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case chargeFrameForField = "ChangeFrameForField"
            case chargeFrameForPlayer = "ChangeFrameForPlayer"
            case depletionRate = "DepletionRate"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    struct DrawSizeParameter: Codable {
        let chargeFrame: Int?
        let endRadius: Double
        let initRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case chargeFrame = "ChangeFrame"
            case endRadius = "EndRadius"
            case initRadius = "InitRadius"
        }
    }
    
    struct MoveParameter: Codable {
        let freeAirResist: Double
        let freeGravity: Double
        let goStraightToBrakeStateFrame: Int
        let spawnSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case freeAirResist = "FreeAirResist"
            case freeGravity = "FreeGravity"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
    
    struct PaintParameter: Codable {
        let changeFrameWidthRate: Double
        let changeWidthEndFrame: Int
        let changeWidthStartFrame: Int
        let degreeUseDepthScaleMax: Double?
        let degreeUseDepthScaleMin: Double
        let depletionDepthWidthRate: Double
        let depthScaleMaxBreakFree: Double
        let depthScaleMaxStraight: Double
        let depthScaleMinBreakFree: Double?
        let depthScaleMinStraight: Double?
        let distanceFar: Double?
        let distanceNear: Double?
        let heightUseDepthScaleMaxBreakFree: Double?
        let heightUseDepthScaleMinBreakFree: Double
        let widthHalfFar: Double
        let widthHalfNear: Double
        
        enum CodingKeys: String, CodingKey {
            case changeFrameWidthRate = "ChangeFrameWidthRate"
            case changeWidthEndFrame = "ChangeWidthEndFrame"
            case changeWidthStartFrame = "ChangeWidthStartFrame"
            case degreeUseDepthScaleMax = "DegreeUseDepthScaleMax"
            case degreeUseDepthScaleMin = "DegreeUseDepthScaleMin"
            case depletionDepthWidthRate = "DepletionDepthWidthRate"
            case depthScaleMaxBreakFree = "DepthScaleMaxBreakFree"
            case depthScaleMaxStraight = "DepthScaleMaxStraight"
            case depthScaleMinBreakFree = "DepthScaleMinBreakFree"
            case depthScaleMinStraight = "DepthScaleMinStraight"
            case distanceFar = "DistanceFar"
            case distanceNear = "DistanceNear"
            case heightUseDepthScaleMaxBreakFree = "HeightUseDepthScaleMaxBreakFree"
            case heightUseDepthScaleMinBreakFree = "HeightUseDepthScaleMinBreakFree"
            case widthHalfFar = "WidthHalfFar"
            case widthHalfNear = "WidthHalfNear"
        }
    }
    
    struct WallDropCollisionPaintParameter: Codable {
        let fallPeriodFirstSecondTargetAlp: Double?
        let paintRadiusFall: Double?
        let paintRadiusGround: Double?
        let paintRadiusShock: Double?
        
        enum CodingKeys: String, CodingKey {
            case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    struct WallDropMoveParameter: Codable {
        let fallPeriodFirstFrameMax: Int
        let fallPeriodFirstFrameMin: Int?
        let fallPeriodFirstTargetSpeed: Double?
        let fallPeriodLastFrameMax: Int
        let fallPeriodLastFrameMin: Int
        let fallPeriodSecondFrame: Int
        let fallPeriodSecondTargetSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
            case fallPeriodSecondFrame = "FallPeriodSecondFrame"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }
}
