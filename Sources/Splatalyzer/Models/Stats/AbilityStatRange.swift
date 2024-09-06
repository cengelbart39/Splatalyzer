//
//  AbilityStatRange.swift
//
//
//  Created by Christopher Engelbart on 8/23/24.
//

import Foundation

/// Contains information about a build statistic that has a minimum and maximum range
public struct AbilityStatRange: Codable, Equatable, Sendable {
    
    /// The minimum default value before any abilities
    public let baseMin: Double
    
    /// The maximum default value before any abilities
    public let baseMax: Double
    
    /// The minimum value accounting for abilities
    public let valueMin: Double
    
    /// The maximum value accounting for abilities
    public let valueMax: Double
    
    /// The ability or abilities that effect the statistic
    public let modifiedBy: [Ability]
    
    /// The unit of the statistic
    public let unit: StatUnit
    
    /// The name of the statistic
    public let title: String
    
    public init(baseMin: Double, baseMax: Double, valueMin: Double, valueMax: Double, modifiedBy: [Ability], unit: StatUnit, title: String) {
        self.baseMin = baseMin
        self.baseMax = baseMax
        self.valueMin = valueMin
        self.valueMax = valueMax
        self.modifiedBy = modifiedBy
        self.unit = unit
        self.title = title
    }
}
