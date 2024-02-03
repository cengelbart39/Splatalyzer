//
//  DamageStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// Represents a statistic regarding damage done by a weapon unaffected by abilities
public struct DamageStat: Equatable, Identifiable, Hashable {
    public let id = UUID()
    
    /// The type of damage
    public let type: DamageType
    
    /// The amount of damage
    public let value: Double
    
    /// The range of the attack
    public let distance: Double?
    
    /// The number of shots it takes to splat an opponent
    public var shotsToSplat: Double?
    
    /// The number of shots per button press
    public let multiShots: Int?
    
    /// Formats ``multiShots`` into a String
    ///
    /// If an attack does 29 damage and there are 3 shots per button press, it will return "29 + 29 + 29"
    public func multiShotString() -> String {
        guard let multiShots = multiShots, multiShots > 1 else {
            return String()
        }
        
        var output = String()
        let value = self.value.format()
        
        for shot in 1...multiShots {
            if shot == multiShots {
                output += String(value)
                
            } else {
                output += "\(value) + "
            }
        }
        
        return output
    }
}

extension Array where Element == DamageStat {
    /// Sums of the damage across an array
    func sumValue() -> Double {
        var result = Double()
        
        for item in self {
            result += item.value
        }
        
        return result
    }
    
    /// Filters certain values of `[DamageStat]`
    ///
    /// If `DamageStat` of type `.direct` and `.normalMax` both exist and have the same `value`, we will remove the `.normalMax` element
    func filtered() -> [DamageStat] {
        let directIndex = self.firstIndex(where: { $0.type == .direct })
        let normalMaxIndex = self.firstIndex(where: { $0.type == .normalMax })
        
        guard directIndex != nil && normalMaxIndex != nil else {
            return self
        }
        
        if self[directIndex!].value == self[normalMaxIndex!].value {
            var output = self
            output.remove(at: normalMaxIndex!)
            return output
            
        } else {
            return self
        }
    }
}
