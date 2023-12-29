//
//  SplatlingWeaponKeepChargeParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingWeaponKeepChargeParameter: Codable {
    let type: String
    let enableKeepChargeAnytime: Bool
    let keepChargeFullFrame: Int
    let keepChargePreDelayFrame: Int
    let keepChargePreDelayFramePre: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case enableKeepChargeAnytime = "EnableKeepChargeAnytime"
        case keepChargeFullFrame = "KeepChargeFullFrame"
        case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
        case keepChargePreDelayFramePre = "KeepChargePreDelayFrame_Pre"
    }
}
