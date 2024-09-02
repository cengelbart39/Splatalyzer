//
//  SpecialParametable.swift
//
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

public protocol SpecialWeaponable: GameParametable where Parameters: SpecialParametable { }

/// Sets required methods for any Special Weapon
public protocol SpecialParametable: Parametable {
    
    /// Isolates properties of the special weapon that can overwrite other properties
    /// - Returns: Overwrites for properties that exist
    func getOverwrites() -> SpecialOverwrites
}

/// Represents values that can be overwritten with a special weapon's properties
public struct SpecialOverwrites: Overwritable {
    public let chargeRateAutoPerFrame: HighMidLow?
    public let crossPaintCheckLength: HighMidLow?
    public let crossPaintRadius: HighMidLow?
    public let distanceDamageDistanceRate: HighMidLow?
    public let inkConsumeHook: HighMidLow?
    public let inkConsumePerSec: HighMidLow?
    public let maxFieldHp: HighMidLow?
    public let maxFrame: HighMidLow?
    public let maxHp: HighMidLow?
    public let maxRadius: HighMidLow?
    public let moveSpeed: HighMidLow?
    public let paintRadius: HighMidLow?
    public let powerUpFrame: HighMidLow?
    public let radiusMax: HighMidLow?
    public let radiusMin: HighMidLow?
    public let spawnSpeedZSpecUp: HighMidLow?
    public let specialDurationFrame: HighMidLow?
    public let splashAroundVelocityMax: HighMidLow?
    public let splashAroundVelocityMin: HighMidLow?
    public let targetInCircleRadius: HighMidLow?
    
    public func value(for key: AbilityValue) -> HighMidLow? {
        switch key {
        case .specialDurationFrame:
            return self.specialDurationFrame
            
        case .specialDamageDistance:
            return self.distanceDamageDistanceRate
            
        case .specialPaintRadius:
            return self.crossPaintRadius ?? self.paintRadius
            
        case .specialFieldHp:
            return self.maxFieldHp
            
        case .specialDeviceHp:
            return self.maxHp
            
        case .specialHookInkConsumption:
            return self.inkConsumeHook
            
        case .specialInkConsumptionPerSecond:
            return self.inkConsumePerSec
            
        case .specialReticleRadius:
            return self.targetInCircleRadius
            
        case .specialThrowDistance:
            return self.spawnSpeedZSpecUp
            
        case .specialMoveSpeed:
            return self.moveSpeed
            
        case .specialMaxRadius:
            return self.maxRadius
            
        case .specialRadiusMax:
            return self.radiusMax
            
        case .specialRadiusMin:
            return self.radiusMin
            
        case .specialPowerUpDuration:
            return self.powerUpFrame
            
        case .specialAutoChargeRate:
            return self.chargeRateAutoPerFrame
            
        default:
            return nil
        }
    }
}
