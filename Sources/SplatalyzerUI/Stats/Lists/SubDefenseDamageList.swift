//
//  SubDefenseDamageList.swift
//  
//
//  Created by Christopher Engelbart on 1/19/24.
//

import Splatalyzer
import SwiftUI

/// Displays damage done by every special weapon
public struct SubDefenseDamageList: View {
    
    /// Dictionary of sub weapons and their damage
    public var defenseDamage: [SubWeapon : [DamageEffectStat]]
    
    public init(defenseDamage: [SubWeapon : [DamageEffectStat]]) {
        self.defenseDamage = defenseDamage
    }
    
    public var body: some View {
        StatList(title: "Sub Weapon Damage Defense") {
            let keys = Array(defenseDamage.keys).sorted(by: { $0.rawValue < $1.rawValue })
            
            ForEach(keys, id: \.self) { key in
                if !defenseDamage[key]!.isEmpty {
                    SubDefenseDamageItem(key: key, values: defenseDamage[key]!)
                        .padding(.horizontal)
                }
            }
        }
    }
}

/// Displays damage done by a specific special weapon
/// - SeeAlso: An element of ``SubDefenseDamageList``
public struct SubDefenseDamageItem: View {
        
    /// A specific sub weapon
    public var key: SubWeapon
    
    /// The damage done by a sub weapon
    public var values: [DamageEffectStat]
    
    public init(key: SubWeapon, values: [DamageEffectStat]) {
        self.key = key
        self.values = values
    }
    
    public var body: some View {
        StatList(title: key.localized, image: key.image) {
            LazyVStack(spacing: 10) {
                ForEach(values, id: \.self) { stat in
                    DamageEffectStatCard(stat: stat)
                }
            }
        }
    }
}

struct DamageEffectAll {
    
    var weapon: SubWeapon
    
    var stats: [DamageEffectStat]
    
    init(sub: SubWeapon, stats: [DamageEffectStat]) {
        self.weapon = sub
        self.stats = stats
    }
}
