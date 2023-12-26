//
//  ShooterMainWeaponSetting.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterMainWeaponSetting: Codable {
    let type: String
    let overwriteConsmeRtMainHigh: String?
    let overwriteConsmeRtMainMid: String?
    let overwriteMoveVelRtShotHigh: String?
    let overwriteMoveVelRtShotMid: String?
    let weaponAccType: String?
    let weaponSpeedType: String?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case overwriteConsmeRtMainHigh = "Overwrite_ConsumeRt_Main_High"
        case overwriteConsmeRtMainMid = "Overwrite_ConsumeRt_Main_Mid"
        case overwriteMoveVelRtShotHigh = "Overwrite_MoveVelRt_Shot_High"
        case overwriteMoveVelRtShotMid = "Overwrite_MoveVelRt_Shot_Mid"
        case weaponAccType = "WeaponAccType"
        case weaponSpeedType = "WeaponSpeedType"
    }
}
