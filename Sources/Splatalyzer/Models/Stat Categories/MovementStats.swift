//
//  MovementStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

public struct MovementStats {
    public let speedType: WeaponSpeedType
    public let swimSpeed: AbilityStat
    public let swimSpeedWithRainmaker: AbilityStat
    public let runSpeed: AbilityStat
    public let shootingRunSpeed: AbilityStat?
    public let shootingRunSpeedCharging: AbilityStat?
    public let shootingRunSpeedFullCharge: AbilityStat?
    public let shootingRunSpeedSecondary: AbilityStat?
    public let squidSurgeChargeFrames: AbilityStat
    public let runSpeedInEnemyInk: AbilityStat
    public let framesBeforeDamageInEnemyInk: AbilityStat
    public let damageInEnemyInkPerSecond: AbilityStat
    public let enemyInkDamageLimit: AbilityStat
}

extension BuildStats {
    public func movementStats() -> MovementStats {
        return MovementStats(
            speedType: self.speedType,
            swimSpeed: self.swimSpeed,
            swimSpeedWithRainmaker: self.swimSpeedWithRainmaker,
            runSpeed: self.runSpeed,
            shootingRunSpeed: self.shootingRunSpeed,
            shootingRunSpeedCharging: self.shootingRunSpeedCharging,
            shootingRunSpeedFullCharge: self.shootingRunSpeedFullCharge,
            shootingRunSpeedSecondary: self.shootingRunSpeedSecondaryMode,
            squidSurgeChargeFrames: self.squidSurgeChargeFrame,
            runSpeedInEnemyInk: self.runSpeedInEnemyInk,
            framesBeforeDamageInEnemyInk: self.framesBeforeDamageInEnemyInk,
            damageInEnemyInkPerSecond: self.damageInEnemyInkPerSecond,
            enemyInkDamageLimit: self.enemyInkDamageLimit)
    }
}
