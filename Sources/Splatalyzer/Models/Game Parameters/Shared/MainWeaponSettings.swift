//
//  MainWeaponSettings.swift
//
//
//  Created by Christopher Engelbart on 1/6/24.
//

import Foundation

struct MainWeaponSettings: Codable {
    let type: String
    let overwriteConsumeRtMainHigh: Double?
    let overwriteConsumeRtMainLow: Double?
    let overwriteConsumeRtMainMid: Double?
    let overwriteMoveVelRtShotHigh: Double?
    let overwriteMoveVelRtShotLow: Double?
    let overwriteMoveVelRtShotMid: Double?
    let weaponAccType: WeaponAccType?
    let weaponSpeedType: WeaponSpeedType?

    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case overwriteConsumeRtMainHigh = "Overwrite_ConsumeRt_Main_High"
        case overwriteConsumeRtMainLow = "Overwrite_ConsumeRt_Main_Low"
        case overwriteConsumeRtMainMid = "Overwrite_ConsumeRt_Main_Mid"
        case overwriteMoveVelRtShotHigh = "Overwrite_MoveVelRt_Shot_High"
        case overwriteMoveVelRtShotLow = "Overwrite_MoveVelRt_Shot_Low"
        case overwriteMoveVelRtShotMid = "Overwrite_MoveVelRt_Shot_Mid"
        case weaponAccType = "WeaponAccType"
        case weaponSpeedType = "WeaponSpeedType"
    }
    
    enum WeaponAccType: String, Codable {
        case fast = "Fast"
        case mid = "Mid"
    }
    
    func getOverwrites() -> Overwrites {
        return Overwrites(settings: self)
    }
}

enum WeaponSpeedType: String, Codable {
    case slow = "Slow"
    case mid = "Mid"
    case fast = "Fast"
}

struct Overwrites {
    let consumeRtMain: HighMidLow?
    let moveVelRtShot: HighMidLow?
    
    init(settings: MainWeaponSettings) {
        self.consumeRtMain = HighMidLow(
            high: settings.overwriteConsumeRtMainHigh,
            low: settings.overwriteConsumeRtMainLow,
            mid: settings.overwriteConsumeRtMainMid)
        
        self.moveVelRtShot = HighMidLow(
            high: settings.overwriteMoveVelRtShotHigh,
            low: settings.overwriteMoveVelRtShotLow,
            mid: settings.overwriteMoveVelRtShotMid)
    }
    
    init() {
        self.consumeRtMain = nil
        self.moveVelRtShot = nil
    }
}