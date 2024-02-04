//
//  SpecialWeaponStats.swift
//  
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

/// Represents statistics about the Special Weapon
public struct SpecialWeaponStats: Equatable {
    /// The kit's special weapon
    public let weapon: SpecialWeapon
    
    /// Points to Special
    public let point: AbilityStat
    
    /// Special Lost When Splatted
    public let lost: AbilityStat
    
    /// Special Lost When Splatted With Respawn Punisher
    public let lostSplattedByRP: AbilityStat
    
    /// Special Duration
    public let duration: AbilityStat?
    
    /// Special Damage done over a specified distance
    public let damageDistance: AbilityStat?
    
    /// Special Paint Radius
    public let paintRadius: AbilityStat?
    
    /// Special Shield Durability (Big Bubbler)
    public let fieldHp: AbilityStat?
    
    /// Special Device Durability (Big Bubbler)
    public let deviceHp: AbilityStat?
    
    /// Special Hook Ink Consumption (Zipcaster)
    public let hookInkConsumption: AbilityStat?
    
    /// Special Hook Ink Consumption per Second (Zipcaster)
    public let hookInkConsumptionPerSecond: AbilityStat?
    
    /// Special Reticle Radius (Tenta Missiles)
    public let reticleRadius: AbilityStat?
    
    /// Special Throw Distance (Splattercolor Screen)
    public let throwDistance: AbilityStat?
    
    /// Special Move Distance
    public let moveSpeed: AbilityStat?
    
    /// Special Auto Charge Rate
    public let autoChargeRate: AbilityStat?
    
    /// Special Max Radius (Big Bubbler, Wave Breaker)
    public let maxRadius: AbilityStat?
    
    /// Max and min radius of certain specials
    public let radiusRange: AbilityStat?
    
    /// Special Power Up Duration
    public let powerUpDuration: AbilityStat?
}
