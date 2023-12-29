//
//  ChargerWeaponDivideChargerParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerWeaponDivideChargerParameter: Codable {
    let type: String
    let fullChargeDivideNum: Int
    let muzzleLocalPos: MuzzleLocalPos
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case fullChargeDivideNum = "FullChargeDivideNum"
        case muzzleLocalPos = "MuzzleLocalPos"
    }
}
