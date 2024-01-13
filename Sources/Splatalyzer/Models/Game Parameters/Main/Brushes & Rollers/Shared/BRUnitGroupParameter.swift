//
//  BRUnitGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/25/23.
//

import Foundation

public struct BRUnit: Codable {
    public let addSpawnSpeedYRateBySpeed: Double?
    public let afterOffsetSpawnRoateXDegree: Double?
    public let afterOffsetSpawnSpeed: Double?
    public let bulletNum: Int?
    public let depletionBulletNum: Int?
    public let depletionSpeedRate: Double?
    public let fourPetalsCenterRadiusRate: Double?
    public let fourPetalsPetalRadiusRate: Double?
    public let paintOnly: Bool?
    public let spawnPositionHeight: Int?
    public let spawnPositionOffsetHeight: Double?
    public let spawnPositionRandomCube: Double?
    public let spawnPositionWidth: Double?
    public let spawnRotateXDegreeBase: Double?
    public let spawnRotateYDegree: Double?
    public let spawnRotateYDegreeLeftToRight: Double?
    public let spawnRotateYDegreeRightToLeft: Double?
    public let spawnSpeedBase: Double?
    public let spawnSpeedRandom: Double?
    public let spawnSplash: Bool?
    public let spawnWideDegree: Int?
    public let swerveRateBySpeed: Double?
    public let unitDamageRate: Double?
    public let unitParam: UnitParameter
    
    public enum CodingKeys: String, CodingKey {
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
    public struct UnitParameter: Codable {
        public let collisionParam: CollisionParameter
        public let drawSizeParam: DrawSizeParameter
        public let moveParam: MoveParameter
        public let paintParam: PaintParameter
        public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        public let wallDropMoveParam: WallDropMoveParameter
        
        public enum CodingKeys: String, CodingKey {
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
    public struct CollisionParameter: Codable {
        public let chargeFrameForField: Int
        public let chargeFrameForPlayer: Int?
        public let depletionRate: Double
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct DrawSizeParameter: Codable {
        public let chargeFrame: Int?
        public let endRadius: Double
        public let initRadius: Double
        
        public enum CodingKeys: String, CodingKey {
            case chargeFrame = "ChangeFrame"
            case endRadius = "EndRadius"
            case initRadius = "InitRadius"
        }
    }
    
    public struct MoveParameter: Codable {
        public let freeAirResist: Double
        public let freeGravity: Double
        public let goStraightToBrakeStateFrame: Int
        public let spawnSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case freeAirResist = "FreeAirResist"
            case freeGravity = "FreeGravity"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
    
    public struct PaintParameter: Codable {
        public let changeFrameWidthRate: Double
        public let changeWidthEndFrame: Int
        public let changeWidthStartFrame: Int
        public let degreeUseDepthScaleMax: Double?
        public let degreeUseDepthScaleMin: Double
        public let depletionDepthWidthRate: Double
        public let depthScaleMaxBreakFree: Double
        public let depthScaleMaxStraight: Double
        public let depthScaleMinBreakFree: Double?
        public let depthScaleMinStraight: Double?
        public let distanceFar: Double?
        public let distanceNear: Double?
        public let heightUseDepthScaleMaxBreakFree: Double?
        public let heightUseDepthScaleMinBreakFree: Double
        public let widthHalfFar: Double
        public let widthHalfNear: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct WallDropCollisionPaintParameter: Codable {
        public let fallPeriodFirstSecondTargetAlp: Double?
        public let paintRadiusFall: Double?
        public let paintRadiusGround: Double?
        public let paintRadiusShock: Double?
        
        public enum CodingKeys: String, CodingKey {
            case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    public struct WallDropMoveParameter: Codable {
        public let fallPeriodFirstFrameMax: Int
        public let fallPeriodFirstFrameMin: Int?
        public let fallPeriodFirstTargetSpeed: Double?
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int
        public let fallPeriodSecondFrame: Int
        public let fallPeriodSecondTargetSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
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
