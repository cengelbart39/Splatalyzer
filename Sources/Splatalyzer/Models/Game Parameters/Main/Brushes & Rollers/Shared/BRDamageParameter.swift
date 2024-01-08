//
//  BRDamageParameter.swift
//  
//
//  Created by Christopher Engelbart on 1/7/24.
//

import Foundation

struct BRDamageParameter: Codable {
    let damageRejectEndFrame: Int
    let damageRejectState: Double
    let damageRejectStartFrame: Int
    let inside: Damage
    let outside: Damage
    
    enum CodingKeys: String, CodingKey {
        case damageRejectEndFrame = "DamageRejectEndFrame"
        case damageRejectState = "DamageRejectRate"
        case damageRejectStartFrame = "DamageRejectStartFrame"
        case inside = "Inside"
        case outside = "Outside"
    }
}

extension BRDamageParameter {
    struct Damage: Codable {
        let damageHighDistance: Double
        let damageHighValue: Int
        let damageLowDistance: Double
        let damageLowValue: Int
        let damageMaxDistance: Double
        let damageMaxValue: Int
        let damageMinDistance: Double
        let damageMinValue: Int?
        let damageRate: Double?
        let degree: Double?
        let depletionDamageRate: Double?
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
            case depletionDamageRate = "DepletionDamageRate"
            case finalDamageMinValue = "FinalDamageMinValue"
            case insideDistanceXZ = "InsideDistanceXZ"
        }
    }
}
