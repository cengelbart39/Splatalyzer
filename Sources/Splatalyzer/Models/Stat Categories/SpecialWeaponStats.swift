//
//  SpecialWeaponStats.swift
//  
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

public struct SpecialWeaponStats {
    public let weapon: SpecialWeapon
    public let point: AbilityStat
    public let lost: AbilityStat
    public let lostSplattedByRP: AbilityStat
    public let duration: AbilityStat?
    public let damageDistance: AbilityStat?
    public let paintRadius: AbilityStat?
    public let fieldHp: AbilityStat?
    public let deviceHp: AbilityStat?
    public let hookInkConsumption: AbilityStat?
    public let hookInkConsumptionPerSecond: AbilityStat?
    public let reticleRadius: AbilityStat?
    public let throwDistance: AbilityStat?
    public let moveSpeed: AbilityStat?
    public let autoChargeRate: AbilityStat?
    public let maxRadius: AbilityStat?
    public let radiusRange: AbilityStat?
    public let powerUpDuration: AbilityStat?
}

extension BuildStats {
    public func specialStats() -> SpecialWeaponStats {
        return SpecialWeaponStats(
            weapon: self.specialWeapon,
            point: self.specialPoint,
            lost: self.specialLost,
            lostSplattedByRP: self.specialLostSplattedByRP,
            duration: self.specialDuration,
            damageDistance: self.specialDamageDistance,
            paintRadius: self.specialPaintRadius,
            fieldHp: self.specialFieldHp,
            deviceHp: self.specialDeviceHp,
            hookInkConsumption: self.specialHookInkConsumption,
            hookInkConsumptionPerSecond: self.specialHookInkConsumptionPerSecond,
            reticleRadius: self.specialReticleRadius,
            throwDistance: self.specialThrowDistance,
            moveSpeed: self.specialMoveSpeed,
            autoChargeRate: self.specialAutoChargeRate,
            maxRadius: self.specialMaxRadius,
            radiusRange: self.specialRadiusRange,
            powerUpDuration: self.specialPowerUpDuration)
    }
}
