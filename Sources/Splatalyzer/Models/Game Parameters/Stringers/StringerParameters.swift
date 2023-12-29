//
//  StringerParameters.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct StringerParameters: Codable {
    let mainEffectiveRangeUpParam: StringerMainEffectiveRangeUpParameter
    let mainWeaponSetting: StringerMainWeaponSetting
    
    let bulletStringerParam: StringerBulletParameter
    let weaponStringerParam: StringerWeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case bulletStringerParam = "spl__BulletStringerParam"
        case weaponStringerParam = "spl__WeaponStringerParam"
    }
}
