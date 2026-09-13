//
//  MovementStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import Splatalyzer
import SwiftUI

/// Displays Movement Stats
public struct MovementStatList: View {

    public var movementStats: MovementStats
    
    public init(movementStats: MovementStats) {
        self.movementStats = movementStats
    }
    
    public var body: some View {
        StatList(title: "Movement", isModifiedByAbilities: movementStats.isModifiedByAbilities()) {
            LazyVStack(spacing: 10) {
                StringStatCard(
                    title: String(
                        localized: "Weight",
                        comment: "Refers to the weight class of a main weapon."
                    ),
                    value: movementStats.speedType.display)
                
                AbilityStatCard(stat: movementStats.swimSpeed, statItem: .swimSpeed)
                
                AbilityStatCard(stat: movementStats.swimSpeedWithRainmaker, statItem: .swimSpeedWithRainmaker)
                
                AbilityStatCard(stat: movementStats.runSpeed, statItem: .runSpeed)
                
                AbilityStatCard(stat: movementStats.shootingRunSpeed, statItem: .shootingRunSpeed)
                
                AbilityStatCard(stat: movementStats.shootingRunSpeedCharging, statItem: .shootingRunSpeedCharging)
                
                AbilityStatCard(stat: movementStats.shootingRunSpeedFullCharge, statItem: .shootingRunSpeedFullCharge)
                
                AbilityStatCard(stat: movementStats.shootingRunSpeedSecondary, statItem: .shootingRunSpeedSecondary)
                
                AbilityStatCard(stat: movementStats.squidSurgeChargeFrames, statItem: .squidSurgeChargeFrames)
                
                AbilityStatCard(stat: movementStats.runSpeedInEnemyInk, statItem: .runSpeedInEnemyInk)
                
                AbilityStatCard(stat: movementStats.framesBeforeDamageInEnemyInk, statItem: .framesBeforeDamageInEnemyInk)
                
                AbilityStatCard(stat: movementStats.damageInEnemyInkPerSecond, statItem: .damageInEnemyInkPerSecond)
                
                AbilityStatCard(stat: movementStats.enemyInkDamageLimit, statItem: .enemyInkDamageLimit)
            }

        }
    }
}
