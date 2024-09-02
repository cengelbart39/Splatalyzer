//
//  AbilityStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import Splatalyzer
import SwiftUI

/// Displays information in an `AbilityStat`
public struct AbilityStatCard: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    public var stat: AbilityStat?
    
    public init(stat: AbilityStat?) {
        self.stat = stat
    }
    
    public var body: some View {
        if let stat = stat {
            ZStack {
                GroupBox(stat.title) {
                    VStack(spacing: 0) {
                        Spacer()
                        
                        HStack {
                            
                            Spacer()
                            
                            VStack(alignment: .leading, spacing: 0) {
                                
                                Text("Base", comment: "Refers to a base effect before any gear abilities.")
                                    .font(.headline.weight(.semibold))
                                    .padding(.bottom, -5)
                                    .foregroundStyle(.secondary)
                                
                                if stat.unit.symbol.isEmpty {
                                    Text(stat.baseValue.format())
                                        .font(.title)
                                        .fontDesign(.rounded)
                                    
                                } else if stat.unit == .degrees {
                                    Text(stat.baseValue.format() + "°")
                                        .font(.title)
                                        .fontDesign(.rounded)
                                    
                                } else {
                                    Text(stat.baseValue.format())
                                        .font(.title)
                                        .fontDesign(.rounded)
                                    + Text(stat.unit.symbol.uppercased())
                                        .foregroundStyle(.secondary)
                                        .font(.headline)
                                }
                                
                            }
                            .accessibilityElement(children: .combine)
                            
                            Spacer()
                            
                            if stat.baseValue != stat.value {
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    Text("Build", comment: "Refers to a gear build. Used in reference to the effect caused by gear abilities.")
                                        .font(.headline.weight(.semibold))
                                        .padding(.bottom, -5)
                                        .foregroundStyle(.secondary)
                                    
                                    if stat.unit.symbol.isEmpty {
                                        Text(stat.value.format())
                                            .font(.title)
                                            .fontDesign(.rounded)
                                        
                                    } else if stat.unit == .degrees {
                                        Text(stat.value.format() + "°")
                                            .font(.title)
                                            .fontDesign(.rounded)
                                        
                                    } else {
                                        Text(stat.value.format())
                                            .font(.title)
                                            .fontDesign(.rounded)
                                        + Text(stat.unit.symbol.uppercased())
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
                        ForEach(stat.modifiedBy, id: \.self) { ability in
                            Image(platformImage: ability.image)
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
