//
//  SpecialSuperLanding.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialSuperLanding: Codable {
    let bulletBlastParam: BulletBlastParameter
    
    enum CodingKeys: String, CodingKey {
        case bulletBlastParam = "spl__BulletBlastParam"
    }
    
    struct BulletBlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let crossPaintTexture: String
        let distanceDamage: [DistanceDamage]
        let knockBackParam: AttackKnockbackParameter
        let paintRadius: Double
        let paintTexture: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case crossPaintTexture = "CrossPaintTexture"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintRadius = "PaintRadius"
            case paintTexture = "PaintTexture"
        }
    }
}
