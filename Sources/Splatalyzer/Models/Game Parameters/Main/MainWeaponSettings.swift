//
//  MainWeaponSettings.swift
//
//
//  Created by Christopher Engelbart on 1/6/24.
//

import Foundation

public struct MainWeaponSettings: Codable {
    public let type: String
    public let overwriteConsumeRtMainHigh: Double?
    public let overwriteConsumeRtMainLow: Double?
    public let overwriteConsumeRtMainMid: Double?
    public let overwriteMoveVelRtShotHigh: Double?
    public let overwriteMoveVelRtShotLow: Double?
    public let overwriteMoveVelRtShotMid: Double?
    public let weaponAccType: WeaponAccType?
    public let weaponSpeedType: WeaponSpeedType?

    public enum CodingKeys: String, CodingKey {
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
    
    public enum WeaponAccType: String, Codable {
        case fast = "Fast"
        case mid = "Mid"
    }
    
    public func getOverwrites() -> MainOverwrites {
        return MainOverwrites(settings: self)
    }
}

/// Represents the weight of a Main Weapon
public enum WeaponSpeedType: String, Codable {
    case slow = "Slow"
    case mid = "Mid"
    case fast = "Fast"
    
    public var display: String {
        switch self {
        case .slow:
            return String(localized: "Heavy", comment: "Refers to main weapon weight")
            
        case .mid:
            return String(localized: "Normal", comment: "Refers to main weapon weight")
            
        case .fast:
            return String(localized: "Light", comment: "Refers to main weapon weight")
        }
    }
}

/// Represents properties that can be overwritten by the Main Weapon
public struct MainOverwrites: Overwritable {
    /// Overwrites Main Weapon ink consumption
    public let consumeRtMain: HighMidLow?
    
    /// Overwrites move speed while shooting the Main Weapon
    public let moveVelRtShot: HighMidLow?
    
    /// Initializes with ``MainWeaponSettings``
    /// - Parameter settings: Contains overwrite properties
    public init(settings: MainWeaponSettings) {
        self.consumeRtMain = HighMidLow(
            high: settings.overwriteConsumeRtMainHigh,
            mid: settings.overwriteConsumeRtMainMid,
            low: settings.overwriteConsumeRtMainLow)
        
        self.moveVelRtShot = HighMidLow(
            high: settings.overwriteMoveVelRtShotHigh,
            mid: settings.overwriteMoveVelRtShotMid,
            low: settings.overwriteMoveVelRtShotLow)
    }
    
    /// Initializer to set all properties to `nil`
    public init() {
        self.consumeRtMain = nil
        self.moveVelRtShot = nil
    }
    
    public func value(for key: AbilityValue) -> HighMidLow? {
        if key == .consumeRtMain {
            return self.consumeRtMain
            
        } else if key == .moveVelRtShot {
            return self.moveVelRtShot
            
        } else {
            return nil
        }
    }
}
