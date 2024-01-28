//
//  SubStatList.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import SwiftUI

struct SubStatList: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var subStats: SubWeaponStats
    
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
                            Text(subStats.weapon.localized)
                                .font(.title3)
                            
                        }, icon: {
                            #if os(macOS)
                            Image(nsImage: subStats.weapon.image ?? NSImage())
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            #else
                            Image(uiImage: subStats.weapon.image ?? UIImage())
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
                    AbilityStatCard(stat: subStats.inkConsumptionPercentage)
                    
                    DoubleStatCard(
                        title: String(localized: "No Ink Recovery Time After Usage"),
                        value: subStats.whiteInkSeconds,
                        unit: .seconds)
                    
                    if let velocity = subStats.velocity {
                        AbilityStatCard(stat: velocity)
                    }
                    
                    if let firstPhaseDuration = subStats.firstPhaseDuration {
                        AbilityStatCard(stat: firstPhaseDuration)
                    }
                    
                    if let secondPhaseDuration = subStats.secondPhaseDuration {
                        AbilityStatCard(stat: secondPhaseDuration)
                    }
                    
                    if let markingTimeInSeconds = subStats.markingTimeInSeconds {
                        AbilityStatCard(stat: markingTimeInSeconds)
                    }
                    
                    if let markingRadius = subStats.markingRadius {
                        AbilityStatCard(stat: markingRadius)
                    }
                    
                    if let explosionRadius = subStats.explosionRadius {
                        AbilityStatCard(stat: explosionRadius)
                    }
                    
                    if let subHp = subStats.subHp {
                        AbilityStatCard(stat: subHp)
                    }
                    
                    if let quickSuperJumpBoost = subStats.quickSuperJumpBoost, subStats.weapon == .squidBeakon {
                        AbilityStatCard(stat: quickSuperJumpBoost)
                    }
                }
            }
        }
    }
}
