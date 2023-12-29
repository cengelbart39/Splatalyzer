//
//  StringerMainWeaponSetting.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct StringerMainWeaponSetting: Codable {
    let type: String
    let overwriteConsumeRtMainHigh: Double?
    let overwriteConsumeRtMainLow: Double?
    let overwriteConsumeRtMainMid: Double?
    let overwriteMoveVelRtMainHigh: Double?
    let overwriteMoveVelRtMainLow: Double?
    let overwriteMoveVelRtMainMid: Double?
    let weaponAccType: String?
    let weaponSpeedType: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case overwriteConsumeRtMainHigh = "Overwrite_ConsumeRt_Main_High"
        case overwriteConsumeRtMainLow = "Overwrite_ConsumeRt_Main_Low"
        case overwriteConsumeRtMainMid = "Overwrite_ConsumeRt_Main_Mid"
        case overwriteMoveVelRtMainHigh = "Overwrite_MoveVelRt_Shot_High"
        case overwriteMoveVelRtMainLow = "Overwrite_MoveVelRt_Shot_Low"
        case overwriteMoveVelRtMainMid = "Overwrite_MoveVelRt_Shot_Mid"
        case weaponAccType = "WeaponAccType"
        case weaponSpeedType = "WeaponSpeedType"
    }
}
