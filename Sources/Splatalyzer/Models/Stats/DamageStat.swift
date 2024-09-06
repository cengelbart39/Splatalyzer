//
//  DamageStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// Represents a statistic regarding damage done by a weapon unaffected by abilities
public struct DamageStat: Codable, Equatable, Identifiable, Hashable, Sendable {
    public var id = UUID()
    
    /// The type of damage
    public let type: DamageType
    
    /// The amount of damage
    public var values: [Double]
    
    /// The range of the attack
    public let distance: Double?
    
    /// The number of shots it takes to splat an opponent
    public var shotsToSplat: Double?
    
    public init(type: DamageType, value: Double, distance: Double?, shotsToSplat: Double? = nil) {
        self.type = type
        self.values = [value]
        self.distance = distance
        self.shotsToSplat = shotsToSplat
    }
    
    public init(type: DamageType, values: [Double], distance: Double?, shotsToSplat: Double? = nil) {
        self.type = type
        self.values = values
        self.distance = distance
        self.shotsToSplat = shotsToSplat
    }
    
    /// Formats the amount of damage a certain attack does, referencing ``values``.
    ///
    /// If an attack does 3-shots per button damage of 29 damage each, it will return "29 + 29 + 29"
    public func valuesToString() -> String {
        var output = String()
        
        if self.values.count == 1 {
            let value = self.values.first!.format()
            
            for shot in 1...self.values.count  {
                if shot == self.values.count  {
                    output += String(value)
                    
                } else {
                    output += "\(value) + "
                }
            }
            
        } else {
            for index in 0..<self.values.count {
                let value = self.values[index].format()
                
                if index == self.values.count - 1 {
                    output += value
                    
                } else {
                    output += "\(value) + "
                }
            }
        }
        
        return output
    }
}

public extension Array where Element == DamageStat {
    /// Sums of the damage across an array
    func sumValue() -> Double {
        var result = Double()
        
        for item in self {
            for value in item.values {
                result += value
            }
        }
        
        return result
    }
    
    /// Determines if a certain ``DamageType`` is present in the array
    /// - Parameter type: The type of damage to look for
    /// - Returns: Whether the damage type exists in the array
    func contains(type: DamageType) -> Bool {
        return self.contains(where: { $0.type == type })
    }
    
    /// If `DamageStat`s of type ``DamageType/direct`` and ``DamageType/normalMax`` both exist and have the same `values`, we will remove the latter
    mutating func combineNormalDirect() {
        guard let directIndex = self.firstIndex(where: { $0.type == .direct }),
              let normalMaxIndex = self.firstIndex(where: { $0.type == .normalMax })
        else {
            return
        }
        
        if self[directIndex].values == self[normalMaxIndex].values {
            self.remove(at: normalMaxIndex)
        }
    }
    
    /// If `DamageStat`s of type ``DamageType/direct``,  ``DamageType/directSecondaryMax``,  and ``DamageType/directSecondaryMin`` exist and have the same `values`, remove both direct secondary stats.
    mutating func combineDirects() {
        guard let directIndex = self.firstIndex(where: { $0.type == .direct }),
              let secMaxIndex = self.firstIndex(where: { $0.type == .directSecondaryMax }),
              let secMinIndex = self.firstIndex(where: { $0.type == .directSecondaryMin })
        else {
            return
        }
        
        guard self[directIndex].values == self[secMaxIndex].values && self[directIndex].values == self[secMinIndex].values else {
            return
        }
        
        self.remove(at: secMinIndex)
        self.remove(at: secMaxIndex)
    }
    
    /// If `DamageStat`s of type ``DamageType/directMax`` and ``DamageType/directSecondaryMax`` exist and have the same `values`, remove the latter
    mutating func combineDirectMaxes() {
        guard let directMaxIndex = self.firstIndex(where: { $0.type == .directMax }),
              let directSecMaxIndex = self.firstIndex(where: { $0.type == .directSecondaryMax })
        else {
            return
        }
        
        guard self[directMaxIndex].values == self[directSecMaxIndex].values else {
            return
        }
        
        self.remove(at: directSecMaxIndex)
    }
    
    /// If `DamageStat`s of type ``DamageType/directMin`` and ``DamageType/directSecondaryMin`` exist and have the same `values`, remove the latter
    mutating func combineDirectMins() {
        guard let directMinIndex = self.firstIndex(where: { $0.type == .directMin }),
              let directSecMinIndex = self.firstIndex(where: { $0.type == .directSecondaryMin })
        else {
            return
        }
        
        guard self[directMinIndex].values == self[directSecMinIndex].values else {
            return
        }
        
        self.remove(at: directSecMinIndex)
    }
    
    /// If `DamageStat`s of type ``DamageType/directMax`` and ``DamageType/directSecondaryMax`` exist and have different `values`, add the first value of the latter to the end of the former and remove the latter
    mutating func assymetricCombineDirectMaxes() {
        guard let directMaxIndex = self.firstIndex(where: { $0.type == .directMax }),
              let directSecMaxIndex = self.firstIndex(where: { $0.type == .directSecondaryMax })
        else {
            return
        }
        
        guard self[directMaxIndex].values != self[directSecMaxIndex].values else {
            return
        }
        
        let addValue = self[directSecMaxIndex].values.first!
        
        let valuesEndIndex = self[directMaxIndex].values.endIndex - 1
        self[directMaxIndex].values[valuesEndIndex] = addValue
        self.remove(at: directSecMaxIndex)
    }
    
    /// If `DamageStat`s of type ``DamageType/directSecondaryMax``, ``DamageType/directSecondaryMin``, and ``DamageType/splash`` exist and have the same `values`, remove the the first two
    mutating func combineSplashAndSecondaries() {
        guard let directSecMaxIndex = self.firstIndex(where: { $0.type == .directSecondaryMax }),
              let directSecMinIndex = self.firstIndex(where: { $0.type == .directSecondaryMin }),
              let splashIndex = self.firstIndex(where: { $0.type == .splash })
        else {
            return
        }
        
        guard self[directSecMaxIndex].values == self[directSecMinIndex].values && self[directSecMaxIndex].values == self[splashIndex].values else {
            return
        }
        
        self.remove(at: directSecMinIndex)
        self.remove(at: directSecMaxIndex)
    }
}
