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
    
    @EnvironmentObject private var model: SplatalyzerViewModel
    @Environment(\.colorScheme) var colorScheme
    
    @State var showChart = false
    @State var chartInfo: AbilityEffectChartInfo? = nil
    
    @ScaledMetric(relativeTo: .footnote)
    private var abilityImageSize = 20
    
    public var stat: AbilityStat?
    
    public var statItem: StatItem
    
    public init(stat: AbilityStat?, statItem: StatItem) {
        self.stat = stat
        self.statItem = statItem
    }
    
    public var body: some View {
        if let stat {
            GroupBox(stat.title) {
                VStack(spacing: 0) {
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        StatLabel(
                            label: String(localized: "Base", comment: "Refers to a base effect before any gear abilities."),
                            value: stat.baseValue.format(),
                            unit: stat.unit
                        )
                        
                        Spacer()
                        
                        if stat.baseValue != stat.value {
                            StatLabel(
                                label: String(localized: "Build", comment: "Refers to a gear build. Used in reference to the effect caused by gear abilities."),
                                value: stat.value.format(),
                                unit: stat.unit
                            )
                            
                            Spacer()
                        }
                        
                    }
                    
                    Spacer()
                    
                    HStack {
                        StatEffectedByList(abilities: stat.modifiedBy)
                        
                        Divider()
                        
                        Button {
                            withAnimation(.easeInOut) {
                                self.showChart = true
                            }
                        } label: {
                            Image(systemName: "chart.xyaxis.line")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                                .padding(8)
                                .abilityBackground(for: colorScheme)
                                .shadow(radius: colorScheme == .dark ? 5 : 0)
                                .foregroundStyle(.white)
                        }
                        .buttonStyle(.plain)

                    }
                    
                    Spacer()
                }
            }
            .sheet(isPresented: $showChart) {
                self.showChart = false
            } content: {
                AbilityEffectChartCard(statItem: statItem)
            }

        }
    }
}
