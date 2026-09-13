//
//  AbilityEffectChartCard.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 7/22/26.
//

import Splatalyzer
import SwiftUI

public struct AbilityEffectChartCard: View {
    @EnvironmentObject private var analyzer: SplatalyzerViewModel
    @Environment(\.dismiss) private var dismissSheet
     
    @State var chartInfo: AbilityEffectChartInfo?
    
    public var statItem: StatItem
        
    public init(statItem: StatItem) {
        self.statItem = statItem
    }
    
    #if os(macOS)
    private let toolbarPlacement = ToolbarItemPlacement.cancellationAction
    #else
    private let toolbarPlacement = ToolbarItemPlacement.primaryAction
    #endif
    
    public var body: some View {
        NavigationStack {
            Group {
                if let chartInfo {
                    VStack(alignment: .leading) {
                        Text(chartInfo.chartTitle)
                            .font(.title2)
                            .bold()
                            .padding([.horizontal, .top])
                        
                        AbilityEffectChart(
                            chartInfo: chartInfo,
                            buildApValue: self.analyzer.build.getAbilityPoints(of: statItem.modifiedBy[0])
                        )
                    }
                    #if !os(macOS)
                    .navigationBarTitleDisplayMode(.inline)
                    #endif
                    
                } else {
                    ProgressView("Calculating...")
                        .onAppear {
                            self.chartInfo = try? self.analyzer.getChartData(for: statItem)
                        }
                }
            }
            .toolbar {
                ToolbarItem(placement: toolbarPlacement) {
                    Button {
                        dismissSheet()
                        
                    } label: {
                        #if os(macOS)
                        Text("Dismiss")
                        #else
                        Image(systemName: "xmark")
                        #endif
                    }
                }
            }
        }
    }
}

#Preview {
    AbilityEffectChartCard(statItem: .swimSpeed)
        .environmentObject(SplatalyzerViewModel())
}
