//
//  BrellaMainWeaponSetting.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct BrellaMainWeaponSetting: Codable {
    let type: String
    let overwriteConsumeRtMainHigh: Double?
    let overwriteConsumeRtMainMid: Double?
    let weaponSpeedType: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case overwriteConsumeRtMainHigh = "Overwrite_ConsumeRt_Main_High"
        case overwriteConsumeRtMainMid = "Overwrite_ConsumeRt_Main_Mid"
        case weaponSpeedType = "WeaponSpeedType"
    }
}
