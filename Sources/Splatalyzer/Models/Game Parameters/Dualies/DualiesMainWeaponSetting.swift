//
//  DualiesMainWeaponSetting.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesMainWeaponSetting: Codable {
    let type: String
    let weaponSpeedType: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case weaponSpeedType = "WeaponSpeedType"
    }
}
