//
//  DamageStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import Splatalyzer
import SwiftUI

/// Displays information in a `DamageStat`
public struct DamageStatCard: View {
    
    public var stat: DamageStat
    
    public init(stat: DamageStat) {
        self.stat = stat
    }
    
    public var body: some View {
        GroupBox(stat.type.localized) {
            HStack {
                Spacer()
                
                if let distance = stat.distance {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Distance")
                            .font(.headline.weight(.semibold))
                            .padding(.bottom, -5)
                            .foregroundStyle(.secondary)
                        
                        Text(distance.format())
                            .font(.title)
                            .fontDesign(.rounded)
                    }
                    .accessibilityElement(children: .combine)
                    
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Damage")
                        .font(.headline.weight(.semibold))
                        .padding(.bottom, -5)
                        .foregroundStyle(.secondary)
                    
                    if stat.multiShots != nil {
                        Text(stat.multiShotString())
                            .font(.title)
                            .fontDesign(.rounded)
                        
                    } else {
                        Text(stat.value.format())
                            .font(.title)
                            .fontDesign(.rounded)
                        + Text(StatUnit.hp.symbol.uppercased())
                            .foregroundStyle(.secondary)
                            .font(.headline)
                    }
                    
                    if let shots = stat.shotsToSplat {
                        if shots == 1 {
                            Text("\(shots.format()) hit to splat!")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                                .padding(.top, -5)
                            
                        } else {
                            Text("\(shots.format()) hits to splat!")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                                .padding(.top, -5)
                        }
                        
                    }
                }
                .accessibilityElement(children: .combine)
                
                Spacer()
            }
        }
    }
}
