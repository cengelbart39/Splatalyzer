//
//  MiscStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import Splatalyzer
import SwiftUI

/// Displays miscellaneous stats
public struct MiscStatList: View {
    
    public var miscStats: MiscStats
    
    public init(miscStats: MiscStats) {
        self.miscStats = miscStats
    }
    
    public var body: some View {
        StatList(title: "Miscellaneous", isModifiedByAbilities: miscStats.isModifiedByAbilities()) {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: miscStats.squidInkRecovery, statItem: .squidInkRecovery)
                
                AbilityStatCard(stat: miscStats.humanoidInkRecovery, statItem: .humanoidInkRecovery)
                
                AbilityStatCard(stat: miscStats.quickRespawnTime, statItem: .quickRespawnTime)
                
                AbilityStatCard(stat: miscStats.quickRespawnTimeRP, statItem: .quickRespawnTimeRP)
                
                AbilityStatCard(stat: miscStats.superJumpGroundFrames, statItem: .superJumpGroundFrames)
                
                AbilityStatCard(stat: miscStats.superJumpTimeTotal, statItem: .superJumpTimeTotal)
            }

        }
    }
}
