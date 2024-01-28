//
//  SpecialStatList.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import SwiftUI

struct SpecialStatList: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var specialStats: SpecialWeaponStats
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.isCollapsed.toggle()
                }
            }, label: {
                HStack {
                    Label(
                        title: {
                            Text(specialStats.weapon.localized)
                                .font(.title3)
                            
                        }, icon: {
                            #if os(macOS)
                            Image(nsImage: specialStats.weapon.image ?? NSImage())
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            #else
                            Image(uiImage: specialStats.weapon.image ?? UIImage())
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            #endif
                        }
                    )
                    
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
                    AbilityStatCard(stat: specialStats.point)
                    
                    AbilityStatCard(stat: specialStats.lost)
                    
                    AbilityStatCard(stat: specialStats.lostSplattedByRP)

                    if let duration = specialStats.duration {
                        AbilityStatCard(stat: duration)
                    }

                    if let damageDistance = specialStats.damageDistance {
                        AbilityStatCard(stat: damageDistance)
                    }
                    
                    if let paintRadius = specialStats.paintRadius {
                        AbilityStatCard(stat: paintRadius)
                    }
                    
                    if let fieldHp = specialStats.fieldHp {
                        AbilityStatCard(stat: fieldHp)
                    }
                    
                    if let deviceHp = specialStats.deviceHp {
                        AbilityStatCard(stat: deviceHp)
                    }
                    
                    if let hookInkConsumption = specialStats.hookInkConsumption {
                        AbilityStatCard(stat: hookInkConsumption)
                    }
                    
                    if let hookInkConsumptionPerSecond = specialStats.hookInkConsumptionPerSecond {
                        AbilityStatCard(stat: hookInkConsumptionPerSecond)
                    }
                    
                    if let reticleRadius = specialStats.reticleRadius {
                        AbilityStatCard(stat: reticleRadius)
                    }
                    
                    if let throwDistance = specialStats.throwDistance {
                        AbilityStatCard(stat: throwDistance)
                    }
                    
                    if let moveSpeed = specialStats.moveSpeed {
                        AbilityStatCard(stat: moveSpeed)
                    }
                    
                    if let autoChargeRate = specialStats.autoChargeRate {
                        AbilityStatCard(stat: autoChargeRate)
                    }
                    
                    if let maxRadius = specialStats.maxRadius {
                        AbilityStatCard(stat: maxRadius)
                    }
                    
                    if let radiusRange = specialStats.radiusRange {
                        AbilityStatCard(stat: radiusRange)
                    }
                    
                    if let powerUpDuration = specialStats.powerUpDuration {
                        AbilityStatCard(stat: powerUpDuration)
                    }
                }
            }
        }
    }
}
