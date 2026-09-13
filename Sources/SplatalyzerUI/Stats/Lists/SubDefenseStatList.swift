//
//  SubDefenseStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import Splatalyzer
import SwiftUI

/// Displays Sub Weapon Effect statistics
public struct SubDefenseStatList: View {
    
    /// Sub Weapon Effect statistics
    public var defenseStats: SubDefenseStats
    
    public init(defenseStats: SubDefenseStats) {
        self.defenseStats = defenseStats
    }
    
    public var body: some View {
        StatList(title: "Sub Weapon Effect Defense", isModifiedByAbilities: defenseStats.isModifiedByAbilities()) {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: defenseStats.toxicMistMovementReduction, statItem: .toxicMistMovementReduction)
                
                AbilityStatCard(stat: defenseStats.pointSensorMarkedSeconds, statItem: .pointSensorMarkedSeconds)
                
                AbilityStatCard(stat: defenseStats.inkMineMarkedSeconds, statItem: .inkMineMarkedSeconds)
                
                AbilityStatCard(stat: defenseStats.angleShooterMarkedSeconds, statItem: .angleShooterMarkedSeconds)
                
                GroupBox {
                    HStack {
                        Spacer()
                        
                        Text("\(SubWeapon.pointSensor.localized), \(SubWeapon.inkMine.localized), and \(SubWeapon.angleShooter.localized) tracking times are calculated against an oponent with 0 AP of \(Ability.subResistanceUp.localized).")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        
                        Spacer()
                    }
                }
            }

        }
    }
}
