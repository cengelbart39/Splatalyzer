//
//  MainStatList.swift
//
//
//  Created by Christopher Engelbart on 1/19/24.
//

import SwiftUI

/// Displays statistics about the main weapon
public struct MainStatList: View {
    
    /// Main Weapon statistics
    public var mainStats: MainWeaponStats
    
    public init(mainStats: MainWeaponStats) {
        self.mainStats = mainStats
    }
    
    public var body: some View {
        StatList(title: mainStats.weapon.localized, image: mainStats.weapon.image) {
            LazyVStack(spacing: 10) {
                AbilityStatCard(stat: mainStats.shotSpreadAir)
                
                DoubleStatCard(
                    title: String(localized: "Shot Spread on the Ground"),
                    value: mainStats.shotSpreadGround,
                    unit: .degrees)
                
                AbilityStatCard(stat: mainStats.shotAutofireSpreadAir)
                
                DoubleStatCard(
                    title: String(localized: "Secondary Mode Spread on the Ground"),
                    value: mainStats.shotAutofireSpreadGround,
                    unit: .degrees)
                
                DoubleStatCard(
                    title: String(localized: "No Ink Recovery Time After Usage"),
                    value: mainStats.whiteInkSeconds,
                    unit: .seconds)
                
                DoubleStatCard(
                    title: String(localized: "Canopy Durability", comment: "Refers to a Brella's shield durability."),
                    value: mainStats.brellaCanopyHp.toDouble(),
                    unit: .hp)
                
                DoubleStatCard(
                    title: String(localized: "Charge Time To Full"),
                    value: mainStats.fullChargeSeconds,
                    unit: .seconds)
                
                DoubleStatCard(
                    title: String(localized: "Max Charge Hold Time"),
                    value: mainStats.maxChargeSeconds,
                    unit: .seconds)
            }
        }
    }
}
