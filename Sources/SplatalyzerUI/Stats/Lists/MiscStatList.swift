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
        StatList(title: "Miscellaneous") {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: miscStats.squidInkRecovery)
                
                AbilityStatCard(stat: miscStats.humanoidInkRecovery)
                
                AbilityStatCard(stat: miscStats.quickRespawnTime)
                
                AbilityStatCard(stat: miscStats.quickRespawnTimeRP)
                
                AbilityStatCard(stat: miscStats.superJumpGroundFrames)
                
                AbilityStatCard(stat: miscStats.superJumpTimeTotal)
            }

        }
    }
}
