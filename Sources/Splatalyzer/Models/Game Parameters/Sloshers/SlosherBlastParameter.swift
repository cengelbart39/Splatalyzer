//
//  SlosherBlastParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherBlastParameter: Codable {
    let type: String
    let blastParam: SlosherBlastInnerParameter
    let distanceFar: Double
    let distanceNear: Double
    let paintRadiusFar: Double
    let paintRadiusNear: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case blastParam = "BlastParam"
        case distanceFar = "DistanceFar"
        case distanceNear = "DistanceNear"
        case paintRadiusFar = "PaintRadiusFar"
        case paintRadiusNear = "PaintRadiusNear"
    }
}

struct SlosherBlastInnerParameter: Codable {
    let collisionRadiusForPaint: Double
    let crossPaintCheckLength: Double
    let crossPaintRadius: Double
    let damageAttackerPriority: Bool
    let damageOffsetY: Double
    let distanceDamage: [DistanceDamage]
    let knockBackParam: AttackKnockbackParameter
    let paintOffsetY: Double
    let paintRadius: Double
    
    enum CodingKeys: String, CodingKey {
        case collisionRadiusForPaint = "CollisionRadiusForPaint"
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case damageAttackerPriority = "DamageAttackerPriority"
        case damageOffsetY = "DamageOffsetY"
        case distanceDamage = "DistanceDamage"
        case knockBackParam = "KnockBackParam"
        case paintOffsetY = "PaintOffsetY"
        case paintRadius = "PaintRadius"
    }
}
