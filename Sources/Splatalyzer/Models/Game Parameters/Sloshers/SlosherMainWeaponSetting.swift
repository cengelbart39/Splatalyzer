//
//  SlosherMainWeaponSetting.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherMainWeaponSetting: Codable {
    let type: String
    let weaponSpeedType: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case weaponSpeedType = "WeaponSpeedType"
    }
}
