//
//  DamageEffectStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/24/24.
//

import SwiftUI

struct DamageEffectStatCard: View {
    
    var stat: DamageEffectStat
    
    var body: some View {
        GroupBox(stat.type.rawValue) {
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
                        Text("\(arr[0].format())-\(arr[1].format())")
                            .font(.title)
                            .fontDesign(.rounded)
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Base")
                        .font(.headline.weight(.semibold))
                        .padding(.bottom, -10)
                        .foregroundStyle(.secondary)
                    
                    Text(stat.baseValue.format())
                        .font(.title)
                        .fontDesign(.rounded)
                    + Text(StatUnit.hp.symbol.uppercased())
                        .foregroundStyle(.secondary)
                        .font(.headline)
                }
                
                Spacer()
                
                if stat.baseValue != stat.effectValue {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Effect")
                            .font(.headline.weight(.semibold))
                            .padding(.bottom, -10)
                            .foregroundStyle(.secondary)
                        
                        Text(stat.effectValue.format())
                            .font(.title)
                            .fontDesign(.rounded)
                        + Text(StatUnit.hp.symbol.uppercased())
                            .foregroundStyle(.secondary)
                            .font(.headline)
                    }
                    
                    Spacer()
                }
                
            }
        }
    }
}
