//
//  BrushMainWeaponSetting.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushMainWeaponSetting: Codable {
    let type: String
    let weaponSpeedType: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case weaponSpeedType = "WeaponSpeedType"
    }
}
