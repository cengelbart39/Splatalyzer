//
//  AbilityStatCard.swift
//
//
//  Created by Christopher Engelbart on 1/18/24.
//

import SwiftUI

struct AbilityStatCard: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var stat: AbilityStat
    
    var body: some View {
        ZStack {
            GroupBox(stat.title) {
                VStack(spacing: 0) {
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 0) {
                            
                            Text("Base")
                                .font(.headline.weight(.semibold))
                                .padding(.bottom, -10)
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
                        
                        
                        Spacer()
                        
                        if stat.baseValue != stat.value {
                            VStack(alignment: .leading, spacing: 0) {
                                
                                Text("Build")
                                    .font(.headline.weight(.semibold))
                                    .padding(.bottom, -10)
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
                        #if os(macOS)
                        Image(nsImage: ability.image ?? NSImage())
                            .resizable()
                            .scaledToFit()
                            .padding(5)
                            .abilityBackground()
                            .frame(width: 35)
                            .shadow(radius: colorScheme == .dark ? 5 : 0)
                        #else
                        Image(uiImage: ability.image ?? UIImage())
                            .resizable()
                            .scaledToFit()
                            .padding(5)
                            .abilityBackground()
                            .frame(width: 35)
                            .shadow(radius: colorScheme == .dark ? 5 : 0)
                        #endif
                    }
                    
                    Spacer()
                }
            }
            .padding([.bottom, .leading], 10)
        }
    }
}
