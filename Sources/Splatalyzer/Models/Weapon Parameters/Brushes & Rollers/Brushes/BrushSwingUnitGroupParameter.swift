//
//  BrushSwingUnitGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushSwingUnitGroupParameter: Codable {
    let type: String
    let pushOutCheckFieldCollisionFrame: Int?
    let damageParam: BRDamageParameter
    let splashNearestParam: BRSpawnParameter
    let unit: [BRUnit]
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case pushOutCheckFieldCollisionFrame = "PushOutCheckFieldCollisionFrame"
        case damageParam = "DamageParam"
        case splashNearestParam = "SplashNearestParam"
        case unit = "Unit"
    }
}
