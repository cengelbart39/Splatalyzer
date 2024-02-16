//
//  DoubleStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import Splatalyzer
import SwiftUI

/// Displays statistical information stored as `Double`
public struct DoubleStatCard: View {
    
    /// The title of the statistic
    public var title: String
    
    /// The value
    public var value: Double?
    
    /// Unit of the statistic
    public var unit: StatUnit
    
    public init(title: String, value: Double? = nil, unit: StatUnit) {
        self.title = title
        self.value = value
        self.unit = unit
    }
    
    public var body: some View {
        if let value = value {
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
}
