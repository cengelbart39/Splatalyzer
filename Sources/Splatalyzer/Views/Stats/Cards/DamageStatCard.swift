//
//  DamageStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

struct DamageStatCard: View {
    
    var stat: DamageStat
    
    var body: some View {
        GroupBox(stat.type.rawValue) {
            HStack {
                Spacer()
                
                if let distance = stat.distance {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Distance")
                            .font(.headline.weight(.semibold))
                            .padding(.bottom, -10)
                            .foregroundStyle(.secondary)
                        
                        Text(distance.format())
                            .font(.title)
                            .fontDesign(.rounded)
                    }
                    
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Damage")
                        .font(.headline.weight(.semibold))
                        .padding(.bottom, -10)
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
                                .padding(.top, -8)
                            
                        } else {
                            Text("\(shots.format()) hits to splat!")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                                .padding(.top, -8)
                        }
                        
                    }
                }
                
                Spacer()
            }
        }
        .onAppear {
            print(stat)
        }
    }
}
