//
//  MovementStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

/// Represents statistics about player movement
public struct MovementStats: Codable, Equatable, Sendable {
    
    /// The weight of the main weapon
    public let speedType: WeaponSpeedType
    
    /// Player's swim speed
    public let swimSpeed: AbilityStat
    
    /// Player's Swim Speed with Rainmaker
    public let swimSpeedWithRainmaker: AbilityStat
    
    /// Player's Run Speed
    public let runSpeed: AbilityStat
    
    /// Player's Run Speed while Shooting Main Weapon
    public let shootingRunSpeed: AbilityStat?
    
    /// Player's Run Speed while charging Main Weapon
    public let shootingRunSpeedCharging: AbilityStat?
    
    /// Player's Run Speed while Main Weapon is at full charge
    public let shootingRunSpeedFullCharge: AbilityStat?
    
    /// Player's Run Speed while in shooting Main Weapon in secondary mode
    public let shootingRunSpeedSecondary: AbilityStat?
    
    /// Amount of frames till Squid Surge is fully charged
    public let squidSurgeChargeFrames: AbilityStat
    
    /// Player's run speed in enemy ink
    public let runSpeedInEnemyInk: AbilityStat
    
    /// The number of frames before the player takes damage in enemy ink
    public let framesBeforeDamageInEnemyInk: AbilityStat
    
    /// The amount of damage per second the player takes while in enemy ink
    public let damageInEnemyInkPerSecond: AbilityStat
    
    /// The limit to the amount of damage enemy ink can cause to the player
    public let enemyInkDamageLimit: AbilityStat
    
    public init(speedType: WeaponSpeedType, swimSpeed: AbilityStat, swimSpeedWithRainmaker: AbilityStat, runSpeed: AbilityStat, shootingRunSpeed: AbilityStat?, shootingRunSpeedCharging: AbilityStat?, shootingRunSpeedFullCharge: AbilityStat?, shootingRunSpeedSecondary: AbilityStat?, squidSurgeChargeFrames: AbilityStat, runSpeedInEnemyInk: AbilityStat, framesBeforeDamageInEnemyInk: AbilityStat, damageInEnemyInkPerSecond: AbilityStat, enemyInkDamageLimit: AbilityStat) {
        self.speedType = speedType
        self.swimSpeed = swimSpeed
        self.swimSpeedWithRainmaker = swimSpeedWithRainmaker
        self.runSpeed = runSpeed
        self.shootingRunSpeed = shootingRunSpeed
        self.shootingRunSpeedCharging = shootingRunSpeedCharging
        self.shootingRunSpeedFullCharge = shootingRunSpeedFullCharge
        self.shootingRunSpeedSecondary = shootingRunSpeedSecondary
        self.squidSurgeChargeFrames = squidSurgeChargeFrames
        self.runSpeedInEnemyInk = runSpeedInEnemyInk
        self.framesBeforeDamageInEnemyInk = framesBeforeDamageInEnemyInk
        self.damageInEnemyInkPerSecond = damageInEnemyInkPerSecond
        self.enemyInkDamageLimit = enemyInkDamageLimit
    }
    
    public init(ap: AbilityPoints, gearBuild: GearBuild, mainData: MainWeaponData) {
        
        self.speedType = mainData.weaponSpeedType ?? .mid
        
        self.swimSpeed = StatHelper.swimSpeed(ap: ap, gearBuild: gearBuild, mainInfo: mainData)
        
        self.swimSpeedWithRainmaker = StatHelper.swimSpeedWithRainmaker(ap: ap, gearBuild: gearBuild, mainInfo: mainData)
        
        self.runSpeed = StatHelper.runSpeed(ap: ap, mainInfo: mainData)
        
        self.shootingRunSpeed = StatHelper.shootingRunSpeed(for: .moveSpeed, ap: ap, mainInfo: mainData)
        
        self.shootingRunSpeedCharging = StatHelper.shootingRunSpeed(for: .moveSpeedCharge, ap: ap, mainInfo: mainData)
        
        self.shootingRunSpeedFullCharge = StatHelper.shootingRunSpeed(for: .moveSpeedFullCharge, ap: ap, mainInfo: mainData)
        
        self.shootingRunSpeedSecondary = StatHelper.shootingRunSpeed(for: .moveSpeedVariable, ap: ap, mainInfo: mainData)
        
        self.squidSurgeChargeFrames = StatHelper.squidSurgeChargeFrames(ap: ap, mainInfo: mainData)
        
        self.runSpeedInEnemyInk = StatHelper.runSpeedInEnemyInk(ap: ap, mainInfo: mainData)
        
        self.framesBeforeDamageInEnemyInk = StatHelper.framesBeforeDamageInEnemyInk(ap: ap, mainInfo: mainData)
        
        self.damageInEnemyInkPerSecond = StatHelper.damageInEnemyInkPerSecond(ap: ap, mainInfo: mainData)

        self.enemyInkDamageLimit = StatHelper.enemyInkDamageLimit(ap: ap, mainInfo: mainData)
    }
}
