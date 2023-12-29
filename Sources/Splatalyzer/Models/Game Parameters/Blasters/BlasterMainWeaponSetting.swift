//
//  BlasterMainWeaponSetting.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterMainWeaponSetting: Codable {
    let type: String
    let weaponSpeedType: String?
    let overwriteConsumeRtMainHigh: Double?
    let overwriteConsumeRtMainMid: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case weaponSpeedType = "WeaponSpeedType"
        case overwriteConsumeRtMainHigh = "Overwrite_ConsumeRt_Main_High"
        case overwriteConsumeRtMainMid = "Overwrite_ConsumeRt_Main_Mid"
    }
}
