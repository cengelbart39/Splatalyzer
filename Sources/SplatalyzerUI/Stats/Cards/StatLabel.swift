//
//  StatLabel.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 7/9/26.
//

import Splatalyzer
import SwiftUI

/// A generic view for displaying a statistic
public struct StatLabel: View {
    
    /// Description for the statistic
    public var label: String
    
    /// Statistic value
    public var value: String
    
    /// Statistic unit
    public var unit: StatUnit
    
    public init(label: String, value: String, unit: StatUnit) {
        self.label = label
        self.value = value
        self.unit = unit
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            Text(label)
                .font(.headline.weight(.semibold))
                .padding(.bottom, -5)
                .foregroundStyle(.secondary)
            
            if unit.symbol.isEmpty {
                Text(value)
                    .font(.title)
                    .fontDesign(.rounded)
                
            } else if unit == .degrees {
                Text(value + "°")
                    .font(.title)
                    .fontDesign(.rounded)
                
            } else {
                Text(value)
                    .font(.title)
                    .fontDesign(.rounded)
                + Text(unit.symbol.uppercased())
                    .foregroundStyle(.secondary)
                    .font(.headline)
            }
            
        }
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    StatLabel(label: "Base", value: "30.2", unit: .degrees)
}
