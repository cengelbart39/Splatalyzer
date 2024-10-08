//
//  File.swift
//
//
//  Created by Christopher Engelbart on 2/3/24.
//

import Splatalyzer
import SwiftUI

/// Displays all stats displayed in `BuildStats`
public struct BuildStatsView: View {
    
    /// The current stats
    public var stats: BuildStats
    
    public init(stats: BuildStats) {
        self.stats = stats
    }
    
    public var body: some View {
        VStack {
            if stats.mainStats.exists() {
                MainStatList(mainStats: stats.mainStats)
            }
            
            SubStatList(subStats: stats.subStats)
            
            SpecialStatList(specialStats: stats.specialStats)
            
            SubDefenseStatList(defenseStats: stats.subDefenseStats)
            
            SubDefenseDamageList(defenseDamage: stats.subDefenseDamages)
            
            MainDamageList(mainDamages: stats.mainDamages)
            
            if !stats.specialDamages.isEmpty {
                SpecialDamageList(specialWeapon: stats.specialStats.weapon, specialDamage: stats.specialDamages)
            }
            
            InkTankOptionsList(options: stats.fullInkTankOptions)
            
            MovementStatList(movementStats: stats.moveStats)
            
            MiscStatList(miscStats: stats.miscStats)
        }
    }
}
