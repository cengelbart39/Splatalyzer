//
//  SpecialWeaponStats.swift
//  
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

public struct SpecialWeaponStats: Equatable {
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
