//
//  ChartData.swift
//  Splatalyzer
//
//  Created by Christopher Engelbart on 7/14/26.
//

import Foundation

/// Represents all data contained in a chart displaying the effect of abilities for AP values
public struct AbilityEffectChartInfo: Codable, Equatable, Identifiable, Sendable {
    public var id = UUID()
    
    /// The title of the given chart
    public let chartTitle: String
    
    /// The Y-Axis unit
    public let yAxisUnit: StatUnit
    
    /// All series of the chart
    public let series: [AbilityEffectChartSeries]
    
    /// The title of the Y-Axis
    public var yAxisTitle: String {
        switch self.yAxisUnit {
        case .percentage:
            return String(localized: "Percentage")
        case .seconds:
            return String(localized: "Seconds")
        case .none:
            return ""
        case .points:
            return String(localized: "Special Points")
        case .hp:
            return String(localized: "HP")
        case .unitsPerFrame:
            return String(localized: "Units Per Frame")
        case .frames:
            return String(localized: "Frames")
        case .degrees:
            return String(localized: "Degrees")
        case .radius:
            return String(localized: "Radius")
        case .damage:
            return String(localized: "Damage")
        case .distance:
            return String(localized: "Distance")
        case .ap:
            return String(localized: "Ability Points")
        }
    }
    
    public init(chartTitle: String, yAxisUnit: StatUnit, series: [AbilityEffectChartSeries]) {
        self.chartTitle = chartTitle
        self.yAxisUnit = yAxisUnit
        self.series = series
    }
}

/// A series in ``AbilityEffectChartInfo``
public struct AbilityEffectChartSeries: Codable, Equatable, Identifiable, Sendable {
    public var id = UUID()
    
    /// The title of the series
    public let title: String
    
    /// All data points within the series
    public let data: [AbilityEffectChartData]
    
    public init(title: String, data: [AbilityEffectChartData]) {
        self.title = title
        self.data = data
    }
}

/// A single piece of data in ``AbilityEffectChartInfo``
public struct AbilityEffectChartData: Codable, Equatable, Identifiable, Sendable {
    public var id = UUID()
    
    /// The given AP value for the measurement
    public let ap: Int
    
    /// The associated value of the statistic
    public let value: Double
    
    public init(ap: Int, value: Double) {
        self.ap = ap
        self.value = value
    }
    
    public init(ap: Int, abilityStat: AbilityStat) {
        self.ap = ap
        self.value = abilityStat.value
    }
}
