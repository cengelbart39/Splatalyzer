//
//  DoubleStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import SwiftUI

struct DoubleStatCard: View {
    
    var title: String
    var value: Double
    var unit: StatUnit
    
    var body: some View {
        GroupBox(title) {
            VStack {
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 0) {
                        
                        Text("Base")
                            .font(.headline.weight(.semibold))
                            .padding(.bottom, -10)
                            .foregroundStyle(.secondary)
                        
                        if unit.symbol.isEmpty {
                            Text(value.format())
                                .font(.title)
                                .fontDesign(.rounded)
                        } else {
                            Text(value.format())
                                .font(.title)
                                .fontDesign(.rounded)
                            + Text(unit.symbol.uppercased())
                                .foregroundStyle(.secondary)
                                .font(.headline)
                        }
                        
                    }
                    
                    Spacer()
                    
                }
                
                Spacer()
            }
        }
    }
}
