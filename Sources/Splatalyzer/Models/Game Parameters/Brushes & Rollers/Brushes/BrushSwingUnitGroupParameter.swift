//
//  BrushSwingUnitGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushSwingUnitGroupParameter: Codable {
    let type: String
    let damageParam: BRDamageParameter
    let pushOutCheckFieldCollisionFrame: Int?
    let splashNearestParam: BRSplashNearestParameter
    let unit: [BRUnit]
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case damageParam = "DamageParam"
        case pushOutCheckFieldCollisionFrame = "PushOutCheckFieldCollisionFrame"
        case splashNearestParam = "SplashNearestParam"
        case unit = "Unit"
    }
}
