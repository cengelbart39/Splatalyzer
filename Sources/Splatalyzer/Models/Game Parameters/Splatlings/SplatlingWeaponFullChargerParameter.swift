//
//  SplatlingWeaponFullChargerParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingWeaponFullChargerParameter: Codable {
    let type: String
    let maxShootingFrameSecond: Int
    let repeatFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case maxShootingFrameSecond = "MaxShootingFrame_Second"
        case repeatFrame = "RepeatFrame"
    }
}
