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
                        Text("\(arr[0].format())-\(arr[1].format())", comment: "Represents a distance range, i.e. 4-7")
                            .font(.title)
                            .fontDesign(.rounded)
                    }
                }
                .accessibilityElement(children: .combine)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Base")
                        .font(.headline.weight(.semibold))
                        .padding(.bottom, -5)
                        .foregroundStyle(.secondary)
                    
                    Text(stat.baseValue.format())
                        .font(.title)
                        .fontDesign(.rounded)
                    + Text(StatUnit.hp.symbol.uppercased())
                        .foregroundStyle(.secondary)
                        .font(.headline)
                }
                .accessibilityElement(children: .combine)
                
                Spacer()
                
                if stat.baseValue != stat.effectValue {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Effect")
                            .font(.headline.weight(.semibold))
                            .padding(.bottom, -5)
                            .foregroundStyle(.secondary)
                        
                        Text(stat.effectValue.format())
                            .font(.title)
                            .fontDesign(.rounded)
                        + Text(StatUnit.hp.symbol.uppercased())
                            .foregroundStyle(.secondary)
                            .font(.headline)
                    }
                    .accessibilityElement(children: .combine)
                    
                    Spacer()
                }
                
            }
        }
    }
}
