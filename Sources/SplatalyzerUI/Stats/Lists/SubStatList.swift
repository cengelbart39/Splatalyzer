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
    
    public var subStats: SubWeaponStats
    
    public init(subStats: SubWeaponStats) {
        self.subStats = subStats
    }
    
    public var body: some View {
        StatList(title: subStats.weapon.localized, image: subStats.weapon.image) {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: subStats.inkConsumptionPercentage)
                
                DoubleStatCard(
                    title: String(localized: "No Ink Recovery Time After Usage"),
                    value: subStats.whiteInkSeconds,
                    unit: .seconds)
                
                AbilityStatCard(stat: subStats.velocity)
                
                AbilityStatCard(stat: subStats.firstPhaseDuration)
                
                AbilityStatCard(stat: subStats.secondPhaseDuration)
                
                AbilityStatCard(stat: subStats.markingTimeInSeconds)
                
                AbilityStatCard(stat: subStats.markingRadius)
                
                AbilityStatCard(stat: subStats.explosionRadius)
                
                AbilityStatCard(stat: subStats.subHp)
                
                if subStats.weapon == .squidBeakon {
                    AbilityStatCard(stat: subStats.quickSuperJumpBoost)
                }
            }
        }
    }
}
