//
//  SplatanaBulletSaberParameter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct SplatanaBulletSaberParameter: Codable {
    let type: String
    let burstParam: SplatanaBulletBurstParameter
    let collisionParam: SplatanaBulletCollisionParameter
    let damageParam: SplatanaBulletDamageParameter
    let moveParam: SplatanaBulletMoveParameter
    let paintParam: SplatanaBulletPaintParameter?
    let splashPaintParam: SplatanaBulletSplashPaintParameter?
    let splashSpawnParam: SplatanaBulletSplashSpawnParameter
    let wallDropPaintParam: SplatanaBulletWallDropPaintParameter?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case burstParam = "BurstParam"
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnParam = "SplashSpawnParam"
        case wallDropPaintParam = "WallDropPaintParam"
    }
}

struct SplatanaBulletBurstParameter: Codable {
    let burstFrame: Int
    let isEmitSplash: Bool?
    let splashColRadius: Double?
    let splashDrawRadius: Double?
    let splashPaintRadius: Double
    
    enum CodingKeys: String, CodingKey {
        case burstFrame = "BurstFrame"
        case isEmitSplash = "IsEmitSplash"
        case splashColRadius = "SplashColRadius"
        case splashDrawRadius = "SplashDrawRadius"
        case splashPaintRadius = "SplashPaintRadius"
    }
}

struct SplatanaBulletCollisionParameter: Codable {
    let coreIndex: Int
    let offsetArray: [XYZData]
    let paramArray: [SplatanaBulletCollisionParamItem]
    
    enum CodingKeys: String, CodingKey {
        case coreIndex = "CoreIndex"
        case offsetArray = "OffsetArray"
        case paramArray = "ParamArray"
    }
}

struct SplatanaBulletCollisionParamItem: Codable {
    let chargeFrameForField: Int?
    let chargeFrameForPlayer: Int?
    let endRadiusForField: Double
    let endRadiusForPlayer: Double
    let friendThroughFrameForPlayer: Int?
    let initRadiusForField: Double
    let initRadiusForPlayer: Double
    
    enum CodingKeys: String, CodingKey {
        case chargeFrameForField = "ChangeFrameForField"
        case chargeFrameForPlayer = "ChangeFrameForPlayer"
        case endRadiusForField = "EndRadiusForField"
        case endRadiusForPlayer = "EndRadiusForPlayer"
        case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
        case initRadiusForField = "InitRadiusForField"
        case initRadiusForPlayer = "InitRadiusForPlayer"
    }
}

struct SplatanaBulletDamageParameter: Codable {
    let hasGuard: Bool?
    let hitDamage: Int
    
    enum CodingKeys: String, CodingKey {
        case hasGuard = "HasGuard"
        case hitDamage = "HitDamage"
    }
}

struct SplatanaBulletMoveParameter: Codable {
    let brakeAirResist: Double?
    let brakeGravity: Double
    let brakeToFreeStartFrame: Int?
    let brakeToFreeVelocityXZ: Double?
    let brakeToFreeVelocityY: Double?
    let freeAirResist: Double?
    let freeGravity: Double
    let goStraightStateEndMaxSpeed: Double?
    let goStraightToBrakeStartFrame: Int
    let spawnSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case brakeAirResist = "BrakeAirResist"
        case brakeGravity = "BrakeGravity"
        case brakeToFreeStartFrame = "BrakeToFreeStateFrame"
        case brakeToFreeVelocityXZ = "BrakeToFreeVelocityXZ"
        case brakeToFreeVelocityY = "BrakeToFreeVelocityY"
        case freeAirResist = "FreeAirResist"
        case freeGravity = "FreeGravity"
        case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
        case goStraightToBrakeStartFrame = "GoStraightToBrakeStateFrame"
        case spawnSpeed = "SpawnSpeed"
    }
}

struct SplatanaBulletPaintParameter: Codable {
    let castPaintDistance: Double?
    let depthScaleMax: Double?
    let depthScaleMin: Double?
    let paintDegreeMax: Double?
    let widthHalf: Double
    
    enum CodingKeys: String, CodingKey {
        case castPaintDistance = "CastPaintDistance"
        case depthScaleMax = "DepthScaleMax"
        case depthScaleMin = "DepthScaleMin"
        case paintDegreeMax = "PaintDegreeMax"
        case widthHalf = "WidthHalf"
    }
}

struct SplatanaBulletSplashPaintParameter: Codable {
    let depthScaleMax: Double?
    let depthScaleMin: Double?
    let widthHalf: Double
    let widthHalfNearest: Double?
    
    enum CodingKeys: String, CodingKey {
        case depthScaleMax = "DepthScaleMax"
        case depthScaleMin = "DepthScaleMin"
        case widthHalf = "WidthHalf"
        case widthHalfNearest = "WidthHalfNearest"
    }
}

struct SplatanaBulletSplashSpawnParameter: Codable {
    let dropInterval: Double
    let nearestLen: Double?
    let splashNumMax: Int
    let splitNum: Int?
    
    enum CodingKeys: String, CodingKey {
        case dropInterval = "DropInterval"
        case nearestLen = "NearestLen"
        case splashNumMax = "SplashNumMax"
        case splitNum = "SplitNum"
    }
}

struct SplatanaBulletWallDropPaintParameter: Codable {
    let paintRadiusShock: Double
    
    enum CodingKeys: String, CodingKey {
        case paintRadiusShock = "PaintRadiusShock"
    }
}
