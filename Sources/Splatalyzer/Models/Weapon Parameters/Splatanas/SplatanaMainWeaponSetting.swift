//
//  SplatanaMainWeaponSetting.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct SplatanaMainWeaponSetting: Codable {
    let type: String
    let weaponAccType: String?
    let weaponSpeedType: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case weaponAccType = "WeaponAccType"
        case weaponSpeedType = "WeaponSpeedType"
    }
}
