//
//  MovementStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

/// Displays Movement Stats
public struct MovementStatList: View {

    public var movementStats: MovementStats
    
    public var body: some View {
        StatList(title: "Movement") {
            LazyVStack(spacing: 10) {
                StringStatCard(
                    title: String(
                        localized: "Weight",
                        comment: "Refers to the weight class of a main weapon."
                    ),
                    value: movementStats.speedType.display)
                
                AbilityStatCard(stat: movementStats.swimSpeed)
                
                AbilityStatCard(stat: movementStats.swimSpeedWithRainmaker)
                
                AbilityStatCard(stat: movementStats.runSpeed)
                
                AbilityStatCard(stat: movementStats.shootingRunSpeed)
                
                AbilityStatCard(stat: movementStats.shootingRunSpeedCharging)
                
                AbilityStatCard(stat: movementStats.shootingRunSpeedFullCharge)
                
                AbilityStatCard(stat: movementStats.shootingRunSpeedSecondary)
                
                AbilityStatCard(stat: movementStats.squidSurgeChargeFrames)
                
                AbilityStatCard(stat: movementStats.runSpeedInEnemyInk)
                
                AbilityStatCard(stat: movementStats.framesBeforeDamageInEnemyInk)
                
                AbilityStatCard(stat: movementStats.damageInEnemyInkPerSecond)
                
                AbilityStatCard(stat: movementStats.enemyInkDamageLimit)
            }

        }
    }
}
