//
//  DamageEffectStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import Splatalyzer
import SwiftUI

/// Displays information in a `DamageEffectStat`
public struct DamageEffectStatCard: View {
    
    public var stat: DamageEffectStat
    
    public init(stat: DamageEffectStat) {
        self.stat = stat
    }
    
    public var body: some View {
        GroupBox(stat.type.localized) {
            HStack {
                Spacer()
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Distance")
                        .font(.headline.weight(.semibold))
                        .padding(.bottom, -10)
                        .foregroundStyle(.secondary)
                    
                    if let dist = stat.distance {
                        Text(dist.format())
                            .font(.title)
                            .fontDesign(.rounded)
                        
                    } else if stat.distanceArr.count == 2 {
                        let arr = stat.distanceArr
                        Text("\(arr[0].format())-\(arr[1].format())", comment: "Represents a distance range, e.g., 4-7")
                            .font(.title)
                            .fontDesign(.rounded)
                    }
                }
                .accessibilityElement(children: .combine)
                
                Spacer()
                
                StatLabel(
                    label: String(localized: "Base"),
                    value: stat.baseValue.format(),
                    unit: .hp
                )
                
                Spacer()
                
                if stat.baseValue != stat.effectValue {
                    StatLabel(
                        label: String(localized: "Effect"),
                        value: stat.baseValue.format(),
                        unit: .hp
                    )
                    
                    Spacer()
                }
                
            }
        }
    }
}
