//
//  SlosherUnitGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

extension Slosher.Parameters {
    public struct UnitGroupParameter: Codable {
        public let type: String
        public let unit: [UnitParameter]
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case unit = "Unit"
        }
    }
}

extension Slosher.Parameters.UnitGroupParameter {
    public struct UnitParameter: Codable {
        public let addSpawnSpeedYRateByXZ: Double
        public let afterOffsetDelayFrame: Int
        public let afterOffsetSpawnSpeed: Double
        
        public let afterPaintParam: AfterPaintParameter
        public let afterWallDropCollisionPaintPrm: AfterWallDropCollisionPaintParameter
        public let afterWallDropMoveParam: AfterWallDropMoveParameter
        
        public let baseRotateYDegree: Double
        public let bulletNum: Int
        
        public let collisionParam: CollisionParameter
        public let damageParam: DamageParameter
        public let drawSizeParam: DrawSizeParameter
        
        public let hitEffectBigOrderNum: [Int]
        
        public let moveParam: MoveParameter
        public let paintParam: PaintParameter
        
        public let randomRotateYBias: Double
        public let randomRotateYDegree: Double
        public let randomRotateYOffOrderNum: [Int]
        
        public let spawnSpeedAir: Double
        public let spawnSpeedGround: Double
        
        public let splashAndSplashWallHitSpawnParam: SplashAndSplashWallHitSpawnParameter
        public let splashSlosherHitParam: [SplashHitParameter]
        
        public let unitDelayFrame: Int
        
        public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        public let wallDropMoveParam: WallDropMoveParameter
        
        public enum CodingKeys: String, CodingKey {
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
}

extension Slosher.Parameters.UnitGroupParameter.UnitParameter {
    public struct AfterPaintParameter: Codable {
        public let depthScaleFar: Double
        public let depthScaleNear: Double
        public let distanceXZFar: Double
        public let distanceXZNear: Double
        public let scaleEndFallDistance: Double
        public let scaleStartFallDistance: Double
        public let widthDepthScaleFall: Double
        public let widthHalfFar: Double
        public let widthHalfNear: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct AfterWallDropCollisionPaintParameter: Codable {
        public let fallPeriodFirstSecondTargetAlp: Double
        public let paintRadiusFall: Double
        public let paintRadiusGround: Double
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    public struct AfterWallDropMoveParameter: Codable {
        public let fallPeriodFirstFrameMax: Int
        public let fallPeriodFirstFrameMin: Int
        public let fallPeriodFirstTargetSpeed: Double
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int
        public let fallPeriodSecondFrame: Int
        public let fallPeriodSecondTargetSpeed: Double
        public let freeGravityType: String
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct CollisionParameter: Codable {
        public let afterOffsetEndRadiusForField: Double
        public let afterOffsetEndRadiusForPlayer: Double
        public let afterOffsetInitRadiusForField: Double
        public let afterOffsetInitRadiusForPlayer: Double
        public let changeFrameForField: Int
        public let changeFrameForPlayer: Int
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct DamageParameter: Codable {
        public let groupNum: Int
        public let reduceEndFallDistance: Double
        public let reduceStartFallDistance: Double
        public let valueMax: Double
        public let valueMin: Double
        
        public enum CodingKeys: String, CodingKey {
            case groupNum = "GroupNum"
            case reduceEndFallDistance = "ReduceEndFallDistance"
            case reduceStartFallDistance = "ReduceStartFallDistance"
            case valueMax = "ValueMax"
            case valueMin = "ValueMin"
        }
    }
    
    public struct DrawSizeParameter: Codable {
        public let afterOffsetEndRadius: Double
        public let afterOffsetInitRadius: Double
        public let changeFrame: Int
        public let endRadius: Double
        public let initRadius: Double
        public let tailId: Int
        public let tailLengthMax: Double
        public let tailLengthMaxLastTail: Double
        public let tailLengthMin: Double
        public let tailSolidFrame: Int
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct MoveParameter: Codable {
        public let brakeAirResist: Double
        public let brakeGravity: Double
        public let brakeToFreeStateFrame: Int
        public let brakeToFreeVelocityXZ: Double
        public let brakeToFreeVelocityY: Double
        public let freeAirResist: Double
        public let freeGravity: Double
        public let goStraightStateEndMaxSpeed: Double
        public let goStraightToBrakeStateFrame: Int
        public let spawnSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct PaintParameter: Codable {
        public let depthScaleFar: Double
        public let depthScaleNear: Double
        public let distanceXZFar: Double
        public let distanceXZNear: Double
        public let scaleEndFallDistance: Double
        public let scaleStartFallDistance: Double
        public let widthDepthScaleFall: Double
        public let widthHalfFar: Double
        public let widthHalfNear: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct SplashAndSplashWallHitSpawnParameter: Codable {
        public let combination: [SplashHitSpawnCombination]?
        public let splashParam: [SplashHitSpawnSplashParameter]?
    }
}

extension Slosher.Parameters.UnitGroupParameter.UnitParameter.SplashAndSplashWallHitSpawnParameter {
    public struct SplashHitSpawnCombination: Codable {
        public let orderNum: Int
        public let splashArrayOrderNum: Int
        public let splashWallHitArrayOrderNum: Int
        public let totalNum: Int
        
        public enum CodingKeys: String, CodingKey {
            case orderNum = "OrderNum"
            case splashArrayOrderNum = "SplashArrayOrderNum"
            case splashWallHitArrayOrderNum = "SplashWallHitArrayOrderNum"
            case totalNum = "TotalNum"
        }
    }
    
    public struct SplashHitSpawnSplashParameter: Codable {
        public let drawSizeCollisionPaintParam: DrawSizeCollisionPaintParameter
        public let spawnParam: SpawnParameter
        
        public enum CodingKeys: String, CodingKey {
            case drawSizeCollisionPaintParam = "DrawSizeCollisionPaintParam"
            case spawnParam = "SpawnParam"
        }
    }
}

extension Slosher.Parameters.UnitGroupParameter.UnitParameter.SplashAndSplashWallHitSpawnParameter.SplashHitSpawnSplashParameter {
    public struct DrawSizeCollisionPaintParameter: Codable {
        public let collisionParam: Slosher.Parameters.CollisionParameter
        public let drawRadius: Double
        public let paintDepthScale: Double
        public let paintWidthHalf: Double
        
        public enum CodingKeys: String, CodingKey {
            case collisionParam = "CollisionParam"
            case drawRadius = "DrawRadius"
            case paintDepthScale = "PaintDepthScale"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
    
    public struct SpawnParameter: Codable {
        public let changeFrameForField: Int
        public let changeFrameForPlayer: Int
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
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

extension Slosher.Parameters.UnitGroupParameter.UnitParameter {
    public struct SplashHitParameter: Codable {
        public let collisionRadius: Double
        public let drawRadius: Double
        public let paintRadiusRatePerWidthHalf: Double
        public let spawnOffsetHitByPlayer: Double
        public let spawnOffsetY: Double
        
        public enum CodingKeys: String, CodingKey {
            case collisionRadius = "CollisionRadius"
            case drawRadius = "DrawRadius"
            case paintRadiusRatePerWidthHalf = "PaintRadiusRatePerWidthHalf"
            case spawnOffsetHitByPlayer = "SpawnOffsetHitByPlayer"
            case spawnOffsetY = "SpawnOffsetY"
        }
    }
    
    public struct WallDropCollisionPaintParameter: Codable {
        public let fallPeriodFirstSecondTargetAlp: Double
        public let paintRadiusFall: Double
        public let paintRadiusGround: Double
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    public struct WallDropMoveParameter: Codable {
        public let fallPeriodFirstFrameMax: Int
        public let fallPeriodFirstFrameMin: Int
        public let fallPeriodFirstTargetSpeed: Double
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int
        public let fallPeriodSecondFrame: Int
        public let fallPeriodSecondTargetSpeed: Double
        public let freeGravityType: String
        
        public enum CodingKeys: String, CodingKey {
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
}
