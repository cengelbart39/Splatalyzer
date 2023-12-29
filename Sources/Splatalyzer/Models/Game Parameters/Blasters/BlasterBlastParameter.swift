//
//  BlastParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterBlastParameter: Codable {
    let type: String
    let crossPaintCheckLength: Double
    let crossPaintRadius: Double
    let damageAttackPriority: Bool
    let damageLinear: Bool
    let distanceDamage: [DistanceDamage]
    let knockbackParam: AttackKnockbackParameter
    let paintRadius: Double
    let splashAroundParam: SplashAroundParameter?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case damageAttackPriority = "DamageAttackerPriority"
        case damageLinear = "DamageLinear"
        case distanceDamage = "DistanceDamage"
        case knockbackParam = "KnockBackParam"
        case paintRadius = "PaintRadius"
        case splashAroundParam = "SplashAroundParam"
    }
    
    struct SplashAroundParameter: Codable {
        let paintRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case paintRadius = "PaintRadius"
        }
    }
}
