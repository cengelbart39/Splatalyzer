//
//  MovementStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

public struct MovementStats: Equatable {
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
