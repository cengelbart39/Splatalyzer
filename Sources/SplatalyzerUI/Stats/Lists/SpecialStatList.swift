//
//  SpecialStatList.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import Splatalyzer
import SwiftUI

/// Displays Special Weapon statistics
public struct SpecialStatList: View {
    
    @ScaledMetric(relativeTo: .title3)
    private var imageSize = 20
    
    /// Stats about the special weapons
    public var specialStats: SpecialWeaponStats
    
    public init(specialStats: SpecialWeaponStats) {
        self.specialStats = specialStats
    }
    
    public var body: some View {
        StatList(title: specialStats.weapon.localized, image: specialStats.weapon.image, imageSize: imageSize, isModifiedByAbilities: specialStats.isModifiedByAbilities()) {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: specialStats.point, statItem: .specialPoint)
                
                AbilityStatCard(stat: specialStats.lost, statItem: .specialLost)
                
                AbilityStatCard(stat: specialStats.lostSplattedByRP, statItem: .specialLostByRP)

                AbilityStatCard(stat: specialStats.duration, statItem: .specialDuration)

                AbilityStatCard(stat: specialStats.damageDistance, statItem: .specialDamageDistance)
                
                AbilityStatCard(stat: specialStats.paintRadius, statItem: .specialPaintRadius)
                
                AbilityStatCard(stat: specialStats.fieldHp, statItem: .specialFieldHp)
                
                AbilityStatCard(stat: specialStats.deviceHp, statItem: .specialDeviceHp)
                
                AbilityStatCard(stat: specialStats.hookInkConsumption, statItem: .specialHookInkConsumption)
                
                AbilityStatCard(stat: specialStats.hookInkConsumptionPerSecond, statItem: .specialHookInkConsumptionPerSecond)
                
                AbilityStatCard(stat: specialStats.reticleRadius, statItem: .specialReticleRadius)
                
                AbilityStatCard(stat: specialStats.throwDistance, statItem: .specialThrowDistance)
                
                AbilityStatCard(stat: specialStats.moveSpeed, statItem: .specialMoveSpeed)
                
                AbilityStatCard(stat: specialStats.autoChargeRate, statItem: .specialAutoChargeRate)
                
                AbilityStatCard(stat: specialStats.maxRadius, statItem: .specialMaxRadius)
                
                AbilityStatCard(stat: specialStats.radiusMin, statItem: .specialRadiusMin)
                
                AbilityStatCard(stat: specialStats.radiusMax, statItem: .specialRadiusMax)
                
                AbilityStatCard(stat: specialStats.powerUpDuration, statItem: .specialPowerUpDuration)
            }
        }
    }
}
