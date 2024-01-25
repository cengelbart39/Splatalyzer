//
//  AbilityStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public struct AbilityStat: Equatable {
    public let baseValue: Double
    public let modifiedBy: [Ability]
    public let value: Double
    public let unit: StatUnit
    public let title: String
}

public enum StatUnit: CaseIterable {
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
    
    var symbol: String {
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
