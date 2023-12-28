//
//  SubBlastParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubBlastParameter: Codable {
    let type: String
    let crossPaintCheckLength: Double?
    let crossPaintRadius: Double?
    let damageAttackerPriority: Bool?
    let damageLinear: Bool?
    let damageOffsetY: Double?
    let distanceDamage: [DistanceDamage]
    let knockBackParam: [AttackKnockbackParameter]
    let paintOffsetY: Double?
    let paintRadius: Double?
    let planeDamage: [DistanceDamage]?
    let subSpecialSpecUpList: [SubBlastSpecialSpecUpList]?
    let splashAroundParam: [SubBlastSplashAroundParameter]?
    let splashBlastParam: [SubBlastSplashParameter]?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case damageAttackerPriority = "DamageAttackerPriority"
        case damageLinear = "DamageLinear"
        case damageOffsetY = "DamageOffsetY"
        case distanceDamage = "DistanceDamage"
        case knockBackParam = "KnockBackParam"
        case paintOffsetY = "PaintOffsetY"
        case paintRadius = "PaintRadius"
        case planeDamage = "PlaneDamage"
        case subSpecialSpecUpList = "SubSpecialSpecUpList"
        case splashAroundParam = "SplashAroundParam"
        case splashBlastParam = "SplashBlastParam"
    }
}

struct SubBlastSpecialSpecUpList: Codable {
    let specUpType: String
    let value: SubHighMiddleLow
    
    enum CodingKeys: String, CodingKey {
        case specUpType = "SpecUpType"
        case value = "Value"
    }
}

struct SubBlastSplashAroundParameter: Codable {
    let num: Double
    let offsetY: Double?
    let paintRadius: Double
    let pitchMax: Double?
    let pitchMin: Double?
    let velocityMax: Double?
    let velocityMin: Double?
    
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

struct SubBlastSplashParameter: Codable {
    let crossPaintCheckLength: Double
    let crossPaintRadius: Double
    let distanceDamage: [DistanceDamage]
    let knockBackParam: AttackKnockbackParameter
    let paintRadius: Double
    
    enum CodingKeys: String, CodingKey {
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case distanceDamage = "DistanceDamage"
        case knockBackParam = "KnockBackParam (Accel)"
        case paintRadius = "PaintRadius"
    }
}
