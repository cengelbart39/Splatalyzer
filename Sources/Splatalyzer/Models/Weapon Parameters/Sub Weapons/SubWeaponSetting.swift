//
//  SubWeaponSetting.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubWeaponSetting: Codable {
    let type: String
    let subInkSaveLv: Int?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case subInkSaveLv = "SubInkSaveLv"
    }
}
