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
    
    /// Formats ``multiShots`` into a String
    ///
    /// For instance, if an attack does 29 damage and there are 3 shots per button press, it will return "29 + 29 + 29"
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
    
    func contains(type: DamageType) -> Bool {
        return self.contains(where: { $0.type == type })
    }
    
    /// If `DamageStat`s of type `.direct` and `.normalMax` both exist and have the same `value`, we will remove the `.normalMax` element
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
    
    /// If `DamageStat`s of type ``DamageType/direct``,  ``DamageType/directSecondaryMax``,  and ``DamageType/directSecondaryMin`` exist and
    /// have the same value, remove both direct secondary stats.
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
