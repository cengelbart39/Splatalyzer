//
//  MainDamageList.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

/// Displays the damage done by the Main Weapon
public struct MainDamageList: View {
    
    /// The damage done by the main weapon
    public var mainDamages: [DamageStat]
    
    public init(mainDamages: [DamageStat]) {
        self.mainDamages = mainDamages
    }
    
    public var body: some View {
        StatList(title: "Main Weapon Damage") {
            LazyVStack(spacing: 10) {
                ForEach(mainDamages, id: \.self) { stat in
                    DamageStatCard(stat: stat)
                }
            }
        }
    }
}
