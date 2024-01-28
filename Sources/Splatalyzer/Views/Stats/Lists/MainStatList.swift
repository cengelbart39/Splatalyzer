//
//  MainStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

struct MainStatList: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State var isCollapsed = true
    
    var mainStats: MainWeaponStats
    
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
                            Text(mainStats.weapon.localized)
                                .font(.title3)
                            
                        }, icon: {
                            #if os(macOS)
                            Image(nsImage: mainStats.weapon.image ?? NSImage())
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25)
                            #else
                            Image(uiImage: mainStats.weapon.image ?? UIImage())
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
                    if let shotSpreadAir = mainStats.shotSpreadAir {
                        AbilityStatCard(stat: shotSpreadAir)
                    }
                    
                    if let shotSpreadGround = mainStats.shotSpreadGround {
                        DoubleStatCard(
                            title: String(localized: "Shot Spread on the Ground"),
                            value: shotSpreadGround,
                            unit: .degrees)
                    }
                    
                    if let shotAutofireSpreadAir = mainStats.shotAutofireSpreadAir {
                        AbilityStatCard(stat: shotAutofireSpreadAir)
                    }
                    
                    if let shotAutofireSpreadGround = mainStats.shotAutofireSpreadGround {
                        DoubleStatCard(
                            title: String(localized: "Secondary Mode Spread on the Ground"),
                            value: shotAutofireSpreadGround,
                            unit: .degrees)
                    }
                    
                    if let whiteInkSeconds = mainStats.whiteInkSeconds {
                        DoubleStatCard(
                            title: String(localized: "No Ink Recovery Time After Usage"),
                            value: whiteInkSeconds,
                            unit: .seconds)
                    }
                    
                    if let brellaCanopyHp = mainStats.brellaCanopyHp.toDouble() {
                        DoubleStatCard(
                            title: String(localized: "Canopy Durability", comment: "Refers to a Brella's shield durability."),
                            value: brellaCanopyHp,
                            unit: .hp)
                    }
                    
                    if let fullChargeSeconds = mainStats.fullChargeSeconds {
                        DoubleStatCard(
                            title: String(localized: "Charge Time To Full"),
                            value: fullChargeSeconds,
                            unit: .seconds)
                    }
                    
                    if let maxChargeSeconds = mainStats.maxChargeSeconds {
                        DoubleStatCard(
                            title: String(localized: "Max Charge Hold Time"),
                            value: maxChargeSeconds,
                            unit: .seconds)
                    }
                }
            }
        }
    }
}
