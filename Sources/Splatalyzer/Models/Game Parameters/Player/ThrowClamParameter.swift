//
//  ThrowClamParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct ThrowClamParameter: Parametable {
    let type: String
    let additionalMoveParam: AdditionalMoveParameter
    let blastGachiParam: BlastGachiParameter
    let throwGachiParam: ThrowParameter
    let throwNormalParma: ThrowParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case additionalMoveParam = "AdditionMoveParam"
        case blastGachiParam = "BlastGachiParam"
        case throwGachiParam = "ThrowGachiParam"
        case throwNormalParma = "ThrowNormalParam"
    }
}
struct BlastGachiParameter: Codable {
    let crossPaintCheckLength: Double
    let crossPaintRadius: Double
    let distanceDamage: [DistanceDamage]
    let knockbackParma: KnockbackParameter
    let paintRadius: Double
    
    enum CodingKeys: String, CodingKey {
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case distanceDamage = "DistanceDamage"
        case knockbackParma = "KnockBackParam"
        case paintRadius = "PaintRadius"
    }
}

struct DistanceDamage: Codable {
    let damage: Int
    let distance: Double
    
    enum CodingKeys: String, CodingKey {
        case damage = "Damage"
        case distance = "Distance"
    }
}

struct ThrowParameter: Codable {
    let guideHitCollisionType: String
    let guideRadius: Double
    let spawnSpeedY: Double
    let spawnSpeedYWorldMin: Double
    let spawnSpeedZSpecUp: SpawnSpeedZSpecUp
    
    enum CodingKeys: String, CodingKey {
        case guideHitCollisionType = "GuideHitCollisionType"
        case guideRadius = "GuideRadius"
        case spawnSpeedY = "SpawnSpeedY"
        case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
        case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
    }
}
