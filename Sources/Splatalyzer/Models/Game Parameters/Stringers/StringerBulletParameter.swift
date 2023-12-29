//
//  StringerBulletParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct StringerBulletParameter: Codable {
    let type: String
    let collisionParam: StringerBulletCollisionParameter
    let damageParam: StringerBulletDamageParameter
    let detonationParam: StringerBulletDetonationParameter
    let drawParam: StringerBulletDrawParameter
    let effect1stParam: StringerBulletEffect1stParameter
    let effect2ndParam: StringerBulletEffect2ndParameter
    let moveParam: StringerBulletMoveParameter
    let paintParam: StringerBulletPaintParameter
    let splashPaintParam: StringerBulletSplashPaintParameter
    let splashSpawnParam: StringerBulletSplashSpawnParameter
    let wallDropMoveParam: StringerBulletWallDropMoveParameter
    let wallDropPaintParam: StringerBulletWallDropPaintParameter?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case detonationParam = "DetonationParam"
        case drawParam = "DrawParam"
        case effect1stParam = "Effect1stParam"
        case effect2ndParam = "Effect2ndParam"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnParam = "SplashSpawnParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case wallDropPaintParam = "WallDropPaintParam"
    }
}

struct StringerBulletCollisionParameter: Codable {
    let changeFrameForField: Int?
    let changeFrameForPlayer: Int?
    let endRadiusForField: Double?
    let endRadiusForPlayer: Double
    let friendThroughFrameForPlayer: Int?
    let initRadiusForField: Double?
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

struct StringerBulletDamageParameter: Codable {
    let directHitDamageMax: Int
    let directHitDamageMid: Int
    let directHitDamageMin: Int
    
    enum CodingKeys: String, CodingKey {
        case directHitDamageMax = "DirectHitDamageMax"
        case directHitDamageMid = "DirectHitDamageMid"
        case directHitDamageMin = "DirectHitDamageMin"
    }
}

struct StringerBulletDetonationParameter: Codable {
    let blastParam: StringerBulletDetonationBlastParameter
    let detonationFrame: Int
    let isExplosiveBoltMidCharge: Bool
    let isExplosiveBoltMinCharge: Bool?
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case detonationFrame = "DetonationFrame"
        case isExplosiveBoltMidCharge = "IsExplosiveBoltMidCharge"
        case isExplosiveBoltMinCharge = "IsExplosiveBoltMinCharge"
    }
}

struct StringerBulletDetonationBlastParameter: Codable {
    let collisionRadiusForPaint: Double?
    let crossPaintCheckLength: Double?
    let crossPaintRadius: Double?
    let crossPaintTexture: String?
    let crossPaintUseChageArea: Bool?
    let damageAttackerPriority: Bool?
    let damageLinear: Bool?
    let damageOffsetY: Double
    let distanceDamage: [DistanceDamage]
    let knockBackParam: AttackKnockbackParameter?
    let paintHeight: Double?
    let paintOffsetY: Double
    let paintRadius: Double
    let paintTexture: String?
    let planeDamage: [Int]?
    let reactionVel: Double?
    let splashAroundParam: SplashAroundParameter?
    let subSpecialSpecUpList: [String]?
    
    enum CodingKeys: String, CodingKey {
        case collisionRadiusForPaint = "CollisionRadiusForPaint"
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case crossPaintTexture = "CrossPaintTexture"
        case crossPaintUseChageArea = "CrossPaintUseChageArea"
        case damageAttackerPriority = "DamageAttackerPriority"
        case damageLinear = "DamageLinear"
        case damageOffsetY = "DamageOffsetY"
        case distanceDamage = "DistanceDamage"
        case knockBackParam = "KnockBackParam"
        case paintHeight = "PaintHeight"
        case paintOffsetY = "PaintOffsetY"
        case paintRadius = "PaintRadius"
        case paintTexture = "PaintTexture"
        case planeDamage = "PlaneDamage"
        case reactionVel = "ReactionVel"
        case splashAroundParam = "SplashAroundParam"
        case subSpecialSpecUpList = "SubSpecialSpecUpList"
    }
    
    struct SplashAroundParameter: Codable {
        let num: Int
        let offsetY: Double
        let paintRadius: Double
        let pitchMax: Double
        let pitchMin: Double
        let velocityMax: Double
        let velocityMin: Double
        
        enum CodingKeys: String, CodingKey {
            case num = "Num"
            case offsetY = "OffsetY"
            case paintRadius = "PaintRadius"
            case pitchMax = "PitchMax"
            case pitchMin = "PitchMin"
            case velocityMax = "VelocityMax"
            case velocityMin = "VelocityMin"
        }
    }
}

struct StringerBulletDrawParameter: Codable {
    let attInterpRate: Double?
    let capsuleLength: Double
    let capsuleRadius: Double
    let isDrawCapsule: Bool
    let isDrawCollision: Bool
    
    enum CodingKeys: String, CodingKey {
        case attInterpRate = "AttInterpRate"
        case capsuleLength = "CapsuleLength"
        case capsuleRadius = "CapsuleRadius"
        case isDrawCapsule = "IsDrawCapsule"
        case isDrawCollision = "IsDrawCollision"
    }
}

struct StringerBulletEffect1stParameter: Codable {
    let delayFrame: Int
    let maxLength: Double
    
    enum CodingKeys: String, CodingKey {
        case delayFrame = "DelayFrame"
        case maxLength = "MaxLen"
    }
}

struct StringerBulletEffect2ndParameter: Codable {
    let landArrowMinAngle: Int?
    let landArrowRiseFrame: Int?
    let smokeInterval: Double
    let smokeStartLen: Double?
    
    enum CodingKeys: String, CodingKey {
        case landArrowMinAngle = "LandArrowMinAngle"
        case landArrowRiseFrame = "LandArrowRiseFrame"
        case smokeInterval = "SmokeInterval"
        case smokeStartLen = "SmokeStartLen"
    }
}

struct StringerBulletMoveParameter: Codable {
    let brakeAirResist: Double
    let brakeGravity: Double
    let brakeToFreeStateFrame: Int
    let brakeToFreeVelocityXZ: Double
    let brakeToFreeVelocityY: Double
    let freeAirResist: Double
    let freeGravity: Double
    let goStraightStateEndMaxSpeed: Double
    let goStraightToBrakeStateFrame: Int
    let hitWallKeepFrame: Int?
    let spawnSpeed: Double
    let spawnSpeedMax: Double
    let spawnSpeedMid: Double
    let spawnSpeedMin: Double
    
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
        case hitWallKeepFrame = "HitWallKeepFrame"
        case spawnSpeed = "SpawnSpeed"
        case spawnSpeedMax = "SpawnSpeedMax"
        case spawnSpeedMid = "SpawnSpeedMid"
        case spawnSpeedMin = "SpawnSpeedMin"
    }
}

struct StringerBulletPaintParameter: Codable {
    let depthScaleMax: Double?
    let depthScaleMin: Double?
    let paintDegreeMax: Double?
    let paintDegreeMin: Double?
    let widthHalfMax: Double
    let widthHalfMid: Double
    let widthHalfMin: Double
    
    enum CodingKeys: String, CodingKey {
        case depthScaleMax = "DepthScaleMax"
        case depthScaleMin = "DepthScaleMin"
        case paintDegreeMax = "PaintDegreeMax"
        case paintDegreeMin = "PaintDegreeMin"
        case widthHalfMax = "WidthHalfMax"
        case widthHalfMid = "WidthHalfMid"
        case widthHalfMin = "WidthHalfMin"
    }
}

struct StringerBulletSplashPaintParameter: Codable {
    let depthMaxDropHeight: Double?
    let depthMinDropHeight: Double?
    let depthScaleMax: Double
    let depthScaleMin: Double?
    let widthHalf: Double
    let widthHalfNearest: Double?
    
    enum CodingKeys: String, CodingKey {
        case depthMaxDropHeight = "DepthMaxDropHeight"
        case depthMinDropHeight = "DepthMinDropHeight"
        case depthScaleMax = "DepthScaleMax"
        case depthScaleMin = "DepthScaleMin"
        case widthHalf = "WidthHalf"
        case widthHalfNearest = "WidthHalfNearest"
    }
}

struct StringerBulletSplashSpawnParameter: Codable {
    let dropInterval: Double
    let nearestLen: Double?
    let randomSpawnVelXMax: Double?
    let randomSpawnVelYMax: Double?
    let randomSpawnVelZMax: Double?
    let randomSpawnVelZMin: Double?
    let splashNumMax: Int?
    let splitNum: Int
    
    enum CodingKeys: String, CodingKey {
        case dropInterval = "DropInterval"
        case nearestLen = "NearestLen"
        case randomSpawnVelXMax = "RandomSpawnVelXMax"
        case randomSpawnVelYMax = "RandomSpawnVelYMax"
        case randomSpawnVelZMax = "RandomSpawnVelZMax"
        case randomSpawnVelZMin = "RandomSpawnVelZMin"
        case splashNumMax = "SplashNumMax"
        case splitNum = "SplitNum"
    }
}

struct StringerBulletWallDropMoveParameter: Codable {
    let fallPeriodFirstFrameMax: Int
    let fallPeriodFirstFrameMin: Int
    let fallPeriodFirstTargetSpeed: Double?
    let fallPeriodLastFrameMax: Int
    let fallPeriodLastFrameMin: Int?
    let fallPeriodSecondFrame: Int?
    let fallPeriodSecondTargetSpeed: Double?
    let freeGravityType: String?
    
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

struct StringerBulletWallDropPaintParameter: Codable {
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
