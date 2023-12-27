//
//  SplatlingMainWeaponSetting.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingMainWeaponSetting: Codable {
    let type: String
    let overwriteConsumeRtMainHigh: Double?
    let overwriteConsumeRtMainLow: Double?
    let overwriteConsumeRtMainMid: Double?
    let overwriteMoveVelRtShotHigh: Double
    let overwriteMoveVelRtShotLow: Double
    let overwriteMoveVelRtShotMid: Double
    let weaponSpeedType: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case overwriteConsumeRtMainHigh = "Overwrite_ConsumeRt_Main_High"
        case overwriteConsumeRtMainLow = "Overwrite_ConsumeRt_Main_Low"
        case overwriteConsumeRtMainMid = "Overwrite_ConsumeRt_Main_Mid"
        case overwriteMoveVelRtShotHigh = "Overwrite_MoveVelRt_Shot_High"
        case overwriteMoveVelRtShotLow = "Overwrite_MoveVelRt_Shot_Low"
        case overwriteMoveVelRtShotMid = "Overwrite_MoveVelRt_Shot_Mid"
        case weaponSpeedType = "WeaponSpeedType"
    }
}
