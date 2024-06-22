//
//  AbilityStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// Contains information about a build statistic
public struct AbilityStat: Codable, Equatable, Sendable {
    /// The default value before any abilities
    public let baseValue: Double
    
    /// The ability or abilities that produce modify the statistic
    public let modifiedBy: [Ability]
    
    /// The build value accounting for abilities
    public let value: Double
    
    /// The unit of ``baseValue`` and ``value``
    public let unit: StatUnit
    
    /// The name of the statistic
    public let title: String
    
    public init(baseValue: Double, modifiedBy: [Ability], value: Double, unit: StatUnit, title: String) {
        self.baseValue = baseValue
        self.modifiedBy = modifiedBy
        self.value = value
        self.unit = unit
        self.title = title
    }
}

/// The unit of measurement used in ``AbilityStat``
public enum StatUnit: Codable, CaseIterable, Sendable {
    case percentage
    case seconds
    case none
    case points
    case hp
    case unitsPerFrame
    case frames
    case degrees
    case radius
    case damage
    case distance
    case ap
    
    public var symbol: String {
        switch self {
        case .percentage:
            return "%"
        case .seconds:
            return "sec"
        case .points:
            return "p"
        case .hp:
            return "HP"
        case .unitsPerFrame:
            return "units/frame"
        case .frames:
            return "frames"
        case .degrees:
            return "˚"
        case .ap:
            return "AP"
        default:
            return ""
        }
    }
}
