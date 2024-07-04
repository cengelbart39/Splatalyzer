//
//  Splashdown.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the single-player exclusive Splashdown special weapon
///
/// See the JSON file `WeaponSpSuperLanding.game__GameParameterTable.json`.
struct Splashdown: GameParametable {
    var parameters: Parameters
    
    init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    struct Parameters: Parametable {
        let bulletBlastParam: BulletBlastParameter
        
        enum CodingKeys: String, CodingKey {
            case bulletBlastParam = "spl__BulletBlastParam"
        }
        
        struct BulletBlastParameter: Parametable {
            let type: String
            let crossPaintCheckLength: Double
            let crossPaintRadius: Double
            let crossPaintTexture: String
            let distanceDamage: [DistanceDamage]
            let knockBackParam: KnockbackParameter
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
}
