//
//  MovementStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

struct MovementStatList: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var movementStats: MovementStats
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Text("Movement")
                        .font(.title3)
                    
                    Spacer()
                    
                    Image(systemName: isCollapsed ? "chevron.right" : "chevron.down")
                        .font(.title3)
                }
                .bold()
            })
            .contentTransition(.symbolEffect(.replace))
            .cardBackground(for: colorScheme)
            
            if !self.isCollapsed {
                LazyVStack(spacing: 10) {
                    StringStatCard(title: "Weight", value: movementStats.speedType.display)
                    
                    AbilityStatCard(stat: movementStats.swimSpeed)
                    
                    AbilityStatCard(stat: movementStats.swimSpeedWithRainmaker)
                    
                    AbilityStatCard(stat: movementStats.runSpeed)
                    
                    if let shootingRunSpeed = movementStats.shootingRunSpeed {
                        AbilityStatCard(stat: shootingRunSpeed)
                    }
                    
                    if let shootingRunSpeedCharging = movementStats.shootingRunSpeedCharging {
                        AbilityStatCard(stat: shootingRunSpeedCharging)
                    }
                    
                    if let shootingRunSpeedFullCharge = movementStats.shootingRunSpeedFullCharge {
                        AbilityStatCard(stat: shootingRunSpeedFullCharge)
                    }
                    
                    if let shootingRunSpeedSecondary = movementStats.shootingRunSpeedSecondary {
                        AbilityStatCard(stat: shootingRunSpeedSecondary)
                    }
                    
                    AbilityStatCard(stat: movementStats.squidSurgeChargeFrames)
                    
                    AbilityStatCard(stat: movementStats.runSpeedInEnemyInk)
                    
                    AbilityStatCard(stat: movementStats.framesBeforeDamageInEnemyInk)
                    
                    AbilityStatCard(stat: movementStats.damageInEnemyInkPerSecond)
                    
                    AbilityStatCard(stat: movementStats.enemyInkDamageLimit)
                }
            }
        }
    }
}
