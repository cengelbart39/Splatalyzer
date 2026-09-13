//
//  SwiftUIView.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 7/14/26.
//

import Charts
import Splatalyzer
import SwiftUI

/// Displays a chart showing the values of a build statistic under the influence of varying AP values
public struct AbilityEffectChart: View {
    @State public var apSelection: Int? = nil
    
    public var chartInfo: AbilityEffectChartInfo
    
    public var buildApValue: Int
        
    public var selectedChartData: [AbilityEffectChartData]? {
        guard let apSelection else { return nil }
        
        let result = chartInfo.series.map { series in
            series.data.first { $0.ap == apSelection }
        }
        
        return result.compactMap({ $0 })
    }
    
    public var seriesTitle: [String] {
        return chartInfo.series.map(\.title)
    }
    
    public var currentBuildData: [AbilityEffectChartData] {
        let result = chartInfo.series.map { series in
            series.data.first { $0.ap == buildApValue }
        }
        
        return result.compactMap({ $0 })
    }
    
    public init(chartInfo: AbilityEffectChartInfo, buildApValue: Int) {
        self.chartInfo = chartInfo
        self.buildApValue = buildApValue
    }
    
    public let legendColors = [Color.blue, .green]
        
    public var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            if let selectedChartData, !selectedChartData.isEmpty {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(Array(selectedChartData.enumerated()), id: \.element.id) { index, data in
                        StatLabel(
                            label: "\(seriesTitle[index]) • \(data.ap) AP",
                            value: data.value.format(),
                            unit: chartInfo.yAxisUnit
                        )
                    }
                }
                
            } else {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(Array(currentBuildData.enumerated()), id: \.element.id) { index, data in
                        StatLabel(
                            label: "\(seriesTitle[index]) • \(data.ap) AP",
                            value: data.value.format(),
                            unit: chartInfo.yAxisUnit
                        )
                        
                    }
                }
            }
            
            Chart {
                if let selectedChartData, !selectedChartData.isEmpty {
                    RuleMark(x: .value("Selected AP Value", selectedChartData[0].ap))
                        .foregroundStyle(.red.opacity(0.6))
                }
                
                ForEach(chartInfo.series) { series in
                    ForEach(series.data) { data in
                        if buildApValue == data.ap {
                            LineMark(
                                x: .value("AP", data.ap),
                                y: .value(chartInfo.yAxisTitle, data.value)
                            )
                            .symbol(.diamond)
                            .foregroundStyle(by: .value("Series", series.title))
                            
                        } else if selectedChartData?.reduce(false, { $0 || $1.id == data.id }) == true {
                            LineMark(
                                x: .value("AP", data.ap),
                                y: .value(chartInfo.yAxisTitle, data.value)
                            )
                            .symbol(.circle)
                            .foregroundStyle(by: .value("Series", series.title))
                            
                        } else {
                            LineMark(
                                x: .value("AP", data.ap),
                                y: .value(chartInfo.yAxisTitle, data.value)
                            )
                            .foregroundStyle(by: .value("Series", series.title))
                        }
                    }
                }
            }
            .chartLegend(content: {
                VStack(alignment: .leading) {
                    ForEach(Array(chartInfo.series.enumerated()), id: \.offset) { item in
                        Label {
                            Text(item.element.title)
                                .foregroundStyle(.secondary)

                        } icon: {
                            Image(systemName: "circle.fill")
                                .foregroundStyle(legendColors[item.offset])
                        }
                        .font(.subheadline)
                    }
                }
            })
            .chartXAxisLabel {
                Text("Ability Points (AP)")
                    .font(.subheadline)
            }
            .chartYAxisLabel {
                Text(chartInfo.yAxisTitle)
                    .font(.subheadline)
            }
            .chartXSelection(value: $apSelection)
            .chartXAxis {
                AxisMarks(values: [0, 10, 20, 30, 40, 50, 57]) { value in
                    AxisGridLine()
                    AxisTick()
                    AxisValueLabel()
                        .font(.subheadline)
                }
            }
            .chartYScale(domain: .automatic(includesZero: false))
            .chartYAxis {
                AxisMarks { value in
                    AxisGridLine()
                    AxisTick()
                    AxisValueLabel()
                        .font(.subheadline)
                }
            }
            #if os(macOS)
            .frame(minHeight: 300)
            #endif
        }
        .padding()
//        .onChange(of: selectedChartData) { oldValue, newValue in
//            print(newValue?.first?.ap)
//        }
    }
}

//#Preview {
//    AbilityEffectChart(currentApValue: 3)
//}
