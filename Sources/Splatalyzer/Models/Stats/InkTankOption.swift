//
//  InkTankOption.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// Represents how many more shots a player can take after using a number of sub weapons.
public struct InkTankOption: Codable, Equatable, Identifiable {
    public var id = UUID()
    
    /// The number of subs used by the player
    public let subsFromFullInkTank: Int
    
    /// The way in which ink is consumed
    public let type: InkConsumeType
    
    /// The remaining shots the player can take
    public let value: Double
    
    public init(subsFromFullInkTank: Int, type: InkConsumeType, value: Double) {
        self.subsFromFullInkTank = subsFromFullInkTank
        self.type = type
        self.value = value
    }
}

public extension Array where Element == InkTankOption {
    func containsType(_ type: InkConsumeType) -> Bool {
        return self.contains(where: { $0.type == type })
    }
}

public extension Dictionary where Key == Int, Value == [InkTankOption] {
    func contains(type: InkConsumeType) -> Bool {
        for (_, values) in self {
            if values.contains(where: { $0.type == type }) {
                return true
            }
        }
        
        return false
    }
}
