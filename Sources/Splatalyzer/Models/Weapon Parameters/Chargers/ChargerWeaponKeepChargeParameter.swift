//
//  ChargerWeaponKeepChargeParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerWeaponKeepChargeParameter: Codable {
    let type: String
    let enableKeepChargeAnytime: Bool?
    let enableKeepChargeTransCancel: Bool?
    let keepChargeFullFrame: Int
    let keepChargePreDelayFrame: Int
    let keepChargePreDelayFramePre: Int
    let muzzleLocalPos: MuzzleLocalPos
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case enableKeepChargeAnytime = "EnableKeepChargeAnytime"
        case enableKeepChargeTransCancel = "EnableKeepChargeTransCancel"
        case keepChargeFullFrame = "KeepChargeFullFrame"
        case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
        case keepChargePreDelayFramePre = "KeepChargePreDelayFrame_Pre"
        case muzzleLocalPos = "MuzzleLocalPos"
    }
}
