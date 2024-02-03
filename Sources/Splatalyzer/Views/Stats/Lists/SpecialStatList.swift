//
//  SpecialStatList.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import SwiftUI

/// Displays Special Weapon statistics
public struct SpecialStatList: View {
    
    /// Stats about the special weapons
    public var specialStats: SpecialWeaponStats
    
    public var body: some View {
        StatList(title: specialStats.weapon.localized, image: specialStats.weapon.image) {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: specialStats.point)
                
                AbilityStatCard(stat: specialStats.lost)
                
                AbilityStatCard(stat: specialStats.lostSplattedByRP)

                AbilityStatCard(stat: specialStats.duration)

                AbilityStatCard(stat: specialStats.damageDistance)
                
                AbilityStatCard(stat: specialStats.paintRadius)
                
                AbilityStatCard(stat: specialStats.fieldHp)
                
                AbilityStatCard(stat: specialStats.deviceHp)
                
                AbilityStatCard(stat: specialStats.hookInkConsumption)
                
                AbilityStatCard(stat: specialStats.hookInkConsumptionPerSecond)
                
                AbilityStatCard(stat: specialStats.reticleRadius)
                
                AbilityStatCard(stat: specialStats.throwDistance)
                
                AbilityStatCard(stat: specialStats.moveSpeed)
                
                AbilityStatCard(stat: specialStats.autoChargeRate)
                
                AbilityStatCard(stat: specialStats.maxRadius)
                
                AbilityStatCard(stat: specialStats.radiusRange)
                
                AbilityStatCard(stat: specialStats.powerUpDuration)
            }
        }
    }
}
