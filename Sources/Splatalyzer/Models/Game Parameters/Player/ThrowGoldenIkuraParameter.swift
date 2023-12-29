//
//  ThrowGoldenIkuraParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct ThrowGoldenIkuraParameter: Parametable {
    let type: String
    let additionalMoveParam: AdditionalMoveParameter
    let attackParam: AttackParameter
    let blastParam: GoldenIkuraBlastParameter
    let inkConsume: Double
    let throwParam: GoldenIkuraThrowParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case additionalMoveParam = "AdditionMoveParam"
        case attackParam = "AttackParam"
        case blastParam = "BlastParam"
        case inkConsume = "InkConsume"
        case throwParam = "ThrowParam"
    }
}

struct AttackParameter: Codable {
    let blastParam: AttackBlastParameter
    let collisionRadius: Double
    let damageDirectHit: Int
    let flyGravity: Double
    let flyPositionAirResist: Double
    let guideHitCollisionType: String
    let guideRadius: Double
    let spawnSpeedY: Double
    let spawnSpeedYWorldMin: Double
    let spawnSpeedZSpecUp: SpawnSpeedZSpecUp
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case collisionRadius = "CollisionRadius"
        case damageDirectHit = "DamageDirectHit"
        case flyGravity = "FlyGravity"
        case flyPositionAirResist = "FlyPositionAirResist"
        case guideHitCollisionType = "GuideHitCollisionType"
        case guideRadius = "GuideRadius"
        case spawnSpeedY = "SpawnSpeedY"
        case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
        case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
    }
}

struct AttackBlastParameter: Codable {
    let crossPaintCheckLength: Double
    let crossPaintRadius: Double
    let damageAttackerPriority: Bool
    let damageOffsetY: Double
    let distanceDamage: DistanceDamage
    let knockbackParam: AttackKnockbackParameter
    let paintOffsetY: Double
    let paintRadius: Double
    let splashAroundParam: SplashAroundParameter
    
    enum CodingKeys: String, CodingKey {
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case damageAttackerPriority = "DamageAttackerPriority"
        case damageOffsetY = "DamageOffsetY"
        case distanceDamage = "DistanceDamage"
        case knockbackParam = "KnockBackParam"
        case paintOffsetY = "PaintOffsetY"
        case paintRadius = "PaintRadius"
        case splashAroundParam = "SplashAroundParam"
    }
}

struct AttackKnockbackParameter: Codable {
    let accel: Double
    let bias: Double?
    let degree: Double?
    let directionZeroAccelRate: Double?
    let distance: Double?
    
    enum CodingKeys: String, CodingKey {
        case accel = "Accel"
        case bias = "Bias"
        case degree = "Degree"
        case directionZeroAccelRate = "DirectionZeroAccelRate"
        case distance = "Distance"
    }
}

struct GoldenIkuraBlastParameter: Codable {
    let damageAttackPriority: Bool
    let distanceDamage: DistanceDamage
    let paintRadius: Bool
    
    enum CodingKeys: String, CodingKey {
        case damageAttackPriority = "DamageAttackerPriority"
        case distanceDamage = "DistanceDamage"
        case paintRadius = "PaintRadius"
    }
}

struct GoldenIkuraThrowParameter: Codable {
    let flyHitWallReboundRate: Double
    let guideHitCollisionType: String
    let returnWaterMinFrame: Int
    let spawnSpeedY: Double
    let spawnSpeedYWorldMin: Double
    let spawnSpeedZSpecUp: SpawnSpeedZSpecUp
    
    enum CodingKeys: String, CodingKey {
        case flyHitWallReboundRate = "FlyHitWallReboundRate"
        case guideHitCollisionType = "GuideHitCollisionType"
        case returnWaterMinFrame = "ReturnWaterMinFrame"
        case spawnSpeedY = "SpawnSpeedY"
        case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
        case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
    }
}
