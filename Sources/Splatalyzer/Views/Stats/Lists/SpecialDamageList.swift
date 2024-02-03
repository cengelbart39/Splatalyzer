//
//  SpecialDamageList.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

/// Displays damage done by the Special Weapon
public struct SpecialDamageList: View {
    
    /// The Special Wepaon in question
    public var specialWeapon: SpecialWeapon
    
    /// The damage done by the Special Weapon
    public var specialDamage: [DamageStat]
    
    public var body: some View {
        let title = NSLocalizedString("\(specialWeapon.localized) Damage", bundle: Bundle.module, comment: "Refers to the damage done by the Special Weapon.")
        
        StatList(title: title) {
            LazyVStack(spacing: 10) {
                ForEach(specialDamage, id: \.self) { stat in
                    DamageStatCard(stat: stat)
                }
            }
        }
    }
}
