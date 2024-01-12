//
//  SpecialParametable.swift
//
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

protocol SpecialParametable: Codable {
    
    func getOverwrites() -> SpecialOverwrites
}

struct SpecialOverwrites: Overwritable {
    let chargeRateAutoPerFrame: HighMidLow?
    let crossPaintCheckLength: HighMidLow?
    let crossPaintRadius: HighMidLow?
    let distanceDamageDistanceRate: HighMidLow?
    let inkConsumeHook: HighMidLow?
    let inkConsumePerSec: HighMidLow?
    let maxFieldHp: HighMidLow?
    let maxFrame: HighMidLow?
    let maxHp: HighMidLow?
    let maxRadius: HighMidLow?
    let moveSpeed: HighMidLow?
    let paintRadius: HighMidLow?
    let powerUpFrame: HighMidLow?
    let radiusMax: HighMidLow?
    let radiusMin: HighMidLow?
    let spawnSpeedZSpecUp: HighMidLow?
    let specialDurationFrame: HighMidLow?
    let splashAroundVelocityMax: HighMidLow?
    let splashAroundVelocityMin: HighMidLow?
    let targetInCircleRadius: HighMidLow?
    
    func value(for key: AbilityValue) -> HighMidLow? {
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
            
        case .specialMinRadius:
            return self.radiusMin
            
        case .specialPowerUpDuration:
            return self.powerUpFrame
            
        default:
            return nil
        }
    }
}
