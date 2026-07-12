//
//  InkTankOption.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// Represents how many more shots a player can take after using a number of sub weapons.
public struct InkTankOption: Codable, Equatable, Identifiable, Sendable {
    public var id = UUID()
    
    /// The number of subs used by the player
    public let subsFromFullInkTank: Int
    
    /// The way in which ink is consumed
    public let type: InkConsumeType
    
    /// The remaining shots the player can take before any abilities
    public let baseValue: Double
    
    /// The remaining shots the player can take considering any abilities
    public let value: Double
    
    public init(subsFromFullInkTank: Int, type: InkConsumeType, baseValue: Double, value: Double) {
        self.subsFromFullInkTank = subsFromFullInkTank
        self.type = type
        self.baseValue = baseValue
        self.value = value
    }
    
    public func isAffectedByAbilities() -> Bool {
        return self.baseValue != self.value
    }
}

public extension Array where Element == InkTankOption {
    /// Determines if a certain ``InkConsumeType`` is present in the array
    /// - Parameter type: The type of ink consumption to look for
    /// - Returns: Whether the ink consumption type exists in the array
    func contains(type: InkConsumeType) -> Bool {
        return self.contains(where: { $0.type == type })
    }
    
    /// Get the first element of a certain ``InkConsumeType``
    /// - Parameter type: The type of ink consumption to look for
    /// - Returns: The first element with the ink consumption type, if it exists
    func getElement(of type: InkConsumeType) -> InkTankOption? {
        return self.first(where: { $0.type == type })
    }
    
    /// Combines elements of ``InkConsumeType/verticalSwing`` and ``InkConsumeType/horizontalSwing`` if their values are the same and remove the latter
    mutating func combineSwings() {
        guard let vertical = self.getElement(of: .verticalSwing), let horizontal = self.getElement(of: .horizontalSwing) else {
            return
        }
        
        guard vertical.value == horizontal.value || vertical.baseValue == horizontal.baseValue else {
            return
        }
        
        let newOption = InkTankOption(
            subsFromFullInkTank: vertical.subsFromFullInkTank,
            type: .swing,
            baseValue: vertical.baseValue,
            value: vertical.value
        )
        
        let verticalIndex = self.firstIndex(of: vertical)!
        let horizontalIndex = self.firstIndex(of: horizontal)!
        
        self[verticalIndex] = newOption
        self.remove(at: horizontalIndex)

    }
    
    func isAffectedByAbilities() -> Bool {
        return self.reduce(false, { $0 || $1.isAffectedByAbilities() })
    }
}

public extension Dictionary where Key == Int, Value == [InkTankOption] {
    /// Determines if a certain ``InkConsumeType`` is present in the values of the dictionary
    /// - Parameter type: The type of ink consumption to look for
    /// - Returns: Whether the ink consumption type exists in the dictionary's values
    func contains(type: InkConsumeType) -> Bool {
        for (_, values) in self {
            if values.contains(type: type) {
                return true
            }
        }
        
        return false
    }
    
    func isAffectedByAbilities() -> Bool {
        for (_, values) in self {
            if values.isAffectedByAbilities() {
                return true
            }
        }
        
        return false
    }
}
