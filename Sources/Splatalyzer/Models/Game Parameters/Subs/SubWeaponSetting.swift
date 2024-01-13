//
//  SubWeaponSetting.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

public struct SubWeaponSetting: Codable {
    public let type: String
    public let subInkSaveLv: Int?
    
    public enum CodingKeys: String, CodingKey {
        case type = "$type"
        case subInkSaveLv = "SubInkSaveLv"
    }
}
