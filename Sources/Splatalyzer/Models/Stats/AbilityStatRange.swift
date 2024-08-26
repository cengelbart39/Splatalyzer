//
//  AbilityStatRange.swift
//
//
//  Created by Christopher Engelbart on 8/23/24.
//

import Foundation

public struct AbilityStatRange: Codable, Equatable, Sendable {
    public let baseMin: Double
    public let baseMax: Double
    
    public let valueMin: Double
    public let valueMax: Double
    
    public let modifiedBy: [Ability]
    
    public let unit: StatUnit
    
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
