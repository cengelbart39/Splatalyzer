//
//  MovementStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

/// Represents statistics about player movement
public struct MovementStats: Equatable {
    
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
}
