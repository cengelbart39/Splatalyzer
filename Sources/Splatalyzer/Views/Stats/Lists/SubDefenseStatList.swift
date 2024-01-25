//
//  SubDefenseStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

struct SubDefenseStatList: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var defenseStats: SubDefenseStats
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Text("Sub Weapon Effect Defense")
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
                    AbilityStatCard(stat: defenseStats.toxicMistMovementReduction)
                    
                    AbilityStatCard(stat: defenseStats.pointSensorMarkedSeconds)
                    
                    AbilityStatCard(stat: defenseStats.inkMineMarkedSeconds)
                    
                    AbilityStatCard(stat: defenseStats.angleShooterMarkedSeconds)
                    
                    GroupBox {
                        HStack {
                            Spacer()
                            
                            Text("\(SubWeapon.pointSensor.rawValue), \(SubWeapon.inkMine.rawValue), and \(SubWeapon.angleShooter.rawValue) tracking times are calculated against an oponent with 0 AP of \(Ability.subResistanceUp.rawValue).")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                            
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}
