//
//  StatViewSideBySide.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import SwiftUI

public struct StatViewSideBySide: View {
    
    @StateObject public var analyzer = Splatalyzer()
    
    public init() { }
    
    public var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                AbilitySelector()
                    .frame(width: geo.size.width / 2, height: geo.size.height, alignment: .center)
//                    .frame(width: geo.size.width / 2, alignment: .center)
                
                if let stats = analyzer.stats {
                    
                    let mainStats = stats.mainWeaponStats()
                    
                    ScrollView {
                        VStack {
                            if mainStats.exists() {
                                MainStatList(mainStats: mainStats)
                            }
                            
                            SubStatList(subStats: stats.subStats())
                            
                            SpecialStatList(specialStats: stats.specialStats())
                            
                            SubDefenseStatList(defenseStats: stats.subDefenseStats())
                            
                            SubDefenseDamageList(defenseDamage: stats.subDefenseDamages)
                            
                            MainDamageList(mainDamages: stats.mainDamages.filtered())
                            
                            SpecialDamageList(specialWeapon: stats.specialWeapon, specialDamage: stats.specialDamages)
                            
                            InkTankOptionsList(options: stats.fullInkTankOptions)
                            
                            MovementStatList(movementStats: stats.movementStats())
                            
                            MiscStatList(miscStats: stats.miscStats())
                        }
                        .padding()
                    }
                    .frame(maxWidth: geo.size.width / 2, alignment: .center)
                }
                
            }
        }
        .foregroundStyle(.primary)
        .padding(.trailing, 10)
        .environmentObject(analyzer)
    }
}

#Preview {
    StatViewSideBySide()
}
