//
//  RollerWideSwingUnitGroupParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/25/23.
//

import Foundation

struct RollerWideSwingUnitGroupParameter: Codable {
    let type: String
    let damageParam: BRDamageParameter
    let splashNearestParam: BRSplashNearestParameter
    let unit: [BRUnit]
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case damageParam = "DamageParam"
        case splashNearestParam = "SplashNearestParam"
        case unit = "Unit"
    }
}
