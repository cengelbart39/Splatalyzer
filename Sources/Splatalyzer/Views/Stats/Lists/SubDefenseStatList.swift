//
//  SubDefenseStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

/// Displays Sub Weapon Effect statistics
public struct SubDefenseStatList: View {
    
    /// Sub Weapon Effect statistics
    public var defenseStats: SubDefenseStats
    
    public init(defenseStats: SubDefenseStats) {
        self.defenseStats = defenseStats
    }
    
    public var body: some View {
        StatList(title: "Sub Weapon Effect Defense") {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: defenseStats.toxicMistMovementReduction)
                
                AbilityStatCard(stat: defenseStats.pointSensorMarkedSeconds)
                
                AbilityStatCard(stat: defenseStats.inkMineMarkedSeconds)
                
                AbilityStatCard(stat: defenseStats.angleShooterMarkedSeconds)
                
                GroupBox {
                    HStack {
                        Spacer()
                        
                        Text("\(SubWeapon.pointSensor.rawValue), \(SubWeapon.inkMine.rawValue), and \(SubWeapon.angleShooter.rawValue) tracking times are calculated against an oponent with 0 AP of \(Ability.subResistanceUp.localized).")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        
                        Spacer()
                    }
                }
            }

        }
    }
}
