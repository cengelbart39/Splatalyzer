//
//  StatViewVertical.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

public struct StatViewVertical: View {
    
    @StateObject public var analyzer = Splatalyzer()
    
    public init() { }
    
    public var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack {
                    AbilitySelector()
                    
                    if let stats = analyzer.stats {
                        
                        let mainStats = stats.mainWeaponStats()
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
                    }
                }
                .padding(.horizontal)
                
            }
        }
        .foregroundStyle(.primary)
        .environmentObject(analyzer)
    }
}

#Preview {
    StatViewVertical()
}
