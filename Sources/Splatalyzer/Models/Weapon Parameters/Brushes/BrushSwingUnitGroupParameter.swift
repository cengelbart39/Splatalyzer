//
//  BrushSwingUnitGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushSwingUnitGroupParameter: Codable {
    let type: String
    let pushOutCheckFieldCollisionFrame: Int?
    let damageParam: BrushDamageParameter
    let splashNearestParam: BrushSplashNearestParameter
    let unit: [BrushUnit]
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case pushOutCheckFieldCollisionFrame = "PushOutCheckFieldCollisionFrame"
        case damageParam = "DamageParam"
        case splashNearestParam = "SplashNearestParam"
        case unit = "Unit"
    }
}

struct BrushDamageParameter: Codable {
    let damageRejectEndFrame: Int
    let damageRejectState: Double
    let damageRejectStartFrame: Int
    let inside: BrushDamage
    let outside: BrushDamage
    
    enum CodingKeys: String, CodingKey {
        case damageRejectEndFrame = "DamageRejectEndFrame"
        case damageRejectState = "DamageRejectRate"
        case damageRejectStartFrame = "DamageRejectStartFrame"
        case inside = "Inside"
        case outside = "Outside"
    }
}

struct BrushDamage: Codable {
    let damageHighDistance: Double
    let damageHighValue: Int
    let damageLowDistance: Double
    let damageLowValue: Int
    let damageMaxDistance: Double
    let damageMaxValue: Int
    let damageMinDistance: Double
    let damageMinValue: Int?
    let damageRate: Double?
    let degree: Double
    let finalDamageMinValue: Int?
    let insideDistanceXZ: Double?
    
    enum CodingKeys: String, CodingKey {
        case damageHighDistance = "DamageHighDistance"
        case damageHighValue = "DamageHighValue"
        case damageLowDistance = "DamageLowDistance"
        case damageLowValue = "DamageLowValue"
        case damageMaxDistance = "DamageMaxDistance"
        case damageMaxValue = "DamageMaxValue"
        case damageMinDistance = "DamageMinDistance"
        case damageMinValue = "DamageMinValue"
        case damageRate = "DamageRate"
        case degree = "Degree"
        case finalDamageMinValue = "FinalDamageMinValue"
        case insideDistanceXZ = "InsideDistanceXZ"
    }
}

struct BrushSplashNearestParameter: Codable {
    let maxHeight: Double?
    let offset: Offset
    let paintDepthScale: Double?
    let paintWidthHalf: Double
    let visible: Bool
    
    struct Offset: Codable {
        let x: Double
        let y: Double
        let z: Double
        
        enum CodingKeys: String, CodingKey {
            case x = "X"
            case y = "Y"
            case z = "Z"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case maxHeight = "MaxHeight"
        case offset = "Offset"
        case paintDepthScale = "PaintDepthScale"
        case paintWidthHalf = "PaintWidthHalf"
        case visible = "Visible"
    }
}

struct BrushUnit: Codable {
    let addSpawnSpeedYRateBySpeed: Double
    let bulletNum: Int?
    let depletionBulletNum: Int?
    let depletionSpeedRate: Double
    let spawnPositionOffsetHeight: Double?
    let spawnPositionRandomCube: Double
    let spawnPositionWidth: Double
    let spawnRotateYDegreeLeftToRight: Double?
    let spawnRotateYDegreeRightToLeft: Double?
    let spawnSpeedBase: Double
    let spawnSpeedRandom: Double
    let spawnWideDegree: Double
    let swerveRateBySpeed: Double
    let unitParam: [BrushUnitParameter]
    
    enum CodingKeys: String, CodingKey {
        case addSpawnSpeedYRateBySpeed = "AddSpawnSpeedYRateBySpeed"
        case bulletNum = "BulletNum"
        case depletionBulletNum = "DepletionBulletNum"
        case depletionSpeedRate = "DepletionSpeedRate"
        case spawnPositionOffsetHeight = "SpawnPositionOffsetHeight"
        case spawnPositionRandomCube = "SpawnPositionRandomCube"
        case spawnPositionWidth = "SpawnPositionWidth"
        case spawnRotateYDegreeLeftToRight = "SpawnRotateYDegreeLeftToRight"
        case spawnRotateYDegreeRightToLeft = "SpawnRotateYDegreeRightToLeft"
        case spawnSpeedBase = "SpawnSpeedBase"
        case spawnSpeedRandom = "SpawnSpeedRandom"
        case spawnWideDegree = "SpawnWideDegree"
        case swerveRateBySpeed = "SwerveRateBySpeed"
        case unitParam = "UnitParam"
    }
}

struct BrushUnitParameter: Codable {
    let collisionParam: BrushUnitCollisionParameter
    let drawSizeParam: BrushUnitDrawSizeParameter
    let moveParam: BrushUnitMoveParameter
    let paintParam: BrushUnitPaintParameter
    let wallDropCollisionPaintParam: BrushUnitWallDropCollisionPaintParameter
    let wallDropMoveParam: BrushUnitWallDropMoveParameter
    
    enum CodingKeys: String, CodingKey {
        case collisionParam = "CollisionParam"
        case drawSizeParam = "DrawSizeParam"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
    }
}

struct BrushUnitCollisionParameter: Codable {
    let chargeFrameForField: Int
    let chargeFrameForPlayer: Int
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

struct BrushUnitDrawSizeParameter: Codable {
    let endRadius: Double
    let initRadius: Double
    
    enum CodingKeys: String, CodingKey {
        case endRadius = "EndRadius"
        case initRadius = "InitRadius"
    }
}

struct BrushUnitMoveParameter: Codable {
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

struct BrushUnitPaintParameter: Codable {
    let changeFrameWidthRate: Double
    let changeWidthEndFrame: Int
    let changeWidthStartFrame: Int
    let degreeUseDepthScaleMin: Double
    let depletionDepthWidthRate: Double
    let depthScaleMaxBreakFree: Double
    let depthScaleMaxStraight: Double
    let depthScaleMinBreakFree: Double?
    let depthScaleMinStraight: Double?
    let distanceFar: Double?
    let distanceNear: Double
    let heightUseDepthScaleMaxBreakFree: Double?
    let heightUseDepthScaleMinBreakFree: Double
    let widthHalfFar: Double
    let widthHalfNear: Double
    
    enum CodingKeys: String, CodingKey {
        case changeFrameWidthRate = "ChangeFrameWidthRate"
        case changeWidthEndFrame = "ChangeWidthEndFrame"
        case changeWidthStartFrame = "ChangeWidthStartFrame"
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

struct BrushUnitWallDropCollisionPaintParameter: Codable {
    let paintRadiusFall: Double
    let paintRadiusGround: Double?
    let paintRadiusShock: Double?
    
    enum CodingKeys: String, CodingKey {
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusShock = "PaintRadiusShock"
    }
}

struct BrushUnitWallDropMoveParameter: Codable {
    let fallPeriodFirstFrameMax: Int
    let fallPeriodFirstFrameMin: Int
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
