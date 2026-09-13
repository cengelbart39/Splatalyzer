//
//  SubStatList.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import Splatalyzer
import SwiftUI

/// Displays sub weapon statistics
public struct SubStatList: View {
    
    @ScaledMetric(relativeTo: .title3)
    private var imageSize = 20
    
    public var subStats: SubWeaponStats
    
    public init(subStats: SubWeaponStats) {
        self.subStats = subStats
    }
    
    public var body: some View {
        StatList(title: subStats.weapon.localized, image: subStats.weapon.image, imageSize: imageSize) {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: subStats.inkConsumptionPercentage, statItem: .subInkConsumptionPercentage)
                
                DoubleStatCard(
                    title: String(localized: "No Ink Recovery Time After Usage"),
                    value: subStats.whiteInkSeconds,
                    unit: .seconds)
                
                if subStats.weapon != .squidBeakon {
                    AbilityStatCard(stat: subStats.velocity, statItem: .subVelocity)
                }
                
                AbilityStatCard(stat: subStats.firstPhaseDuration, statItem: .subFirstPhaseDuration)
                
                AbilityStatCard(stat: subStats.secondPhaseDuration, statItem: .subSecondPhaseDuration)
                
                AbilityStatCard(stat: subStats.markingTimeInSeconds, statItem: .subMarkingTimeInSeconds)
                
                AbilityStatCard(stat: subStats.markingRadius, statItem: .subMarkingRadius)
                
                AbilityStatCard(stat: subStats.explosionRadius, statItem: .subExplosionRadius)
                
                AbilityStatCard(stat: subStats.subHp, statItem: .subHp)
                
                if subStats.weapon == .squidBeakon {
                    AbilityStatCard(stat: subStats.quickSuperJumpBoost, statItem: .subQuickSuperJumpBoost)
                }
            }
        }
    }
}
