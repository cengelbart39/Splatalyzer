//
//  SubWeaponStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

public struct SubWeaponStats {
    public let weapon: SubWeapon
    public let inkConsumptionPercentage: AbilityStat
    public let whiteInkSeconds: Double
    public let velocity: AbilityStat?
    public let firstPhaseDuration: AbilityStat?
    public let secondPhaseDuration: AbilityStat?
    public let markingTimeInSeconds: AbilityStat?
    public let markingRadius: AbilityStat?
    public let explosionRadius: AbilityStat?
    public let subHp: AbilityStat?
    public let quickSuperJumpBoost: AbilityStat?
}

extension BuildStats {
    public func subStats() -> SubWeaponStats {
        return SubWeaponStats(
            weapon: self.subWeapon,
            inkConsumptionPercentage: self.subInkConsumptionPercentage,
            whiteInkSeconds: self.subWhiteInkSeconds,
            velocity: self.subVelocity,
            firstPhaseDuration: self.subFirstPhaseDuration,
            secondPhaseDuration: self.subSecondPhaseDuration,
            markingTimeInSeconds: self.subMarkedSeconds,
            markingRadius: self.subMarkedRadius,
            explosionRadius: self.subExplosionRadius,
            subHp: self.subHp,
            quickSuperJumpBoost: self.quickSuperJumpBoost)
    }
}
