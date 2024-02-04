//
//  SubWeaponStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

/// Represents statistics about the Sub Weapon
public struct SubWeaponStats: Equatable {
    
    /// The kit's sub weapon
    public let weapon: SubWeapon
    
    /// Sub Ink Tank Consumption
    public let inkConsumptionPercentage: AbilityStat
    
    /// No Ink Recovery Time After Sub Usage
    public let whiteInkSeconds: Double
    
    /// Sub Velocity
    public let velocity: AbilityStat?
    
    /// Full Power Phase Duration
    public let firstPhaseDuration: AbilityStat?
    
    /// Mid-Phase Duration
    public let secondPhaseDuration: AbilityStat?
    
    /// Sub Marking Duration
    public let markingTimeInSeconds: AbilityStat?
    
    /// Sub Marking Radius
    public let markingRadius: AbilityStat?
    
    /// Sub Explosion Radius
    public let explosionRadius: AbilityStat?
    
    /// Sub Durability
    public let subHp: AbilityStat?
    
    /// Quick Super Jump Boost (Squid Beakon)
    public let quickSuperJumpBoost: AbilityStat?
}
