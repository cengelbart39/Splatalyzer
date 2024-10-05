//
//  AbilityStatRangeCard.swift
//
//
//  Created by Christopher Engelbart on 8/23/24.
//

import SwiftUI
import Splatalyzer

/// Displays information in an `AbilityStatRange`
public struct AbilityStatRangeCard: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    public var range: AbilityStatRange?
    
    public init(range: AbilityStatRange?) {
        self.range = range
    }
    
    public var body: some View {
        if let range = range {
            ZStack {
                GroupBox(range.title) {
                    VStack(spacing: 0) {
                        Spacer()
                        
                        HStack {
                            
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 0) {
                                
                                Text("Base", comment: "Refers to a base effect before any gear abilities.")
                                    .font(.headline.weight(.semibold))
                                    .padding(.bottom, -5)
                                    .foregroundStyle(.secondary)
                                
                                if range.unit.symbol.isEmpty {
                                    Text("\(range.baseMin.format())-\(range.baseMax.format())")
                                        .font(.title)
                                        .fontDesign(.rounded)
                                    
                                } else if range.unit == .degrees {
                                    Text("\(range.baseMin.format())-\(range.baseMax.format())°")
                                        .font(.title)
                                        .fontDesign(.rounded)
                                    
                                } else {
                                    Text("\(range.baseMin.format())-\(range.baseMax.format())")
                                        .font(.title)
                                        .fontDesign(.rounded)
                                    + Text(range.unit.symbol.uppercased())
                                        .foregroundStyle(.secondary)
                                        .font(.headline)
                                }
                                
                            }
                            .accessibilityElement(children: .combine)
                            
                            Spacer()
                            
                            if range.baseMin != range.valueMin && range.baseMax != range.valueMax {
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    Text("Build", comment: "Refers to a gear build. Used in reference to the effect caused by gear abilities.")
                                        .font(.headline.weight(.semibold))
                                        .padding(.bottom, -5)
                                        .foregroundStyle(.secondary)
                                    
                                    if range.unit.symbol.isEmpty {
                                        Text("\(range.valueMin.format())-\(range.valueMax.format())")
                                            .font(.title)
                                            .fontDesign(.rounded)
                                        
                                    } else if range.unit == .degrees {
                                        Text("\(range.valueMin.format())-\(range.valueMax.format())°")
                                            .font(.title)
                                            .fontDesign(.rounded)
                                        
                                    } else {
                                        Text("\(range.valueMin.format())-\(range.valueMax.format())")
                                            .font(.title)
                                            .fontDesign(.rounded)
                                        + Text(range.unit.symbol.uppercased())
                                            .foregroundStyle(.secondary)
                                            .font(.headline)
                                    }
                                    
                                }
                                .accessibilityElement(children: .combine)
                                
                                Spacer()
                            }
                            
                        }
                        .padding(.bottom, 10)
                        
                        Spacer()
                    }
                }
                
                VStack {
                    Spacer()
                    
                    HStack {
                        ForEach(range.modifiedBy, id: \.self) { ability in
                            ImageView(image: ability.image)
                                .padding(5)
                                .abilityBackground(for: colorScheme)
                                .frame(width: 35)
                                .shadow(radius: colorScheme == .dark ? 5 : 0)
                        }
                        
                        Spacer()
                    }
                }
                .padding([.bottom, .leading], 10)
            }
        }
    }
}
