//
//  DamageEffectStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// Represents a statistic regarding damage done by a weapon that can be affected by abilities
public struct DamageEffectStat: Codable, Equatable, Identifiable, Hashable {
    public var id = UUID()
    
    /// The type of damage
    public let type: DamageType
    
    /// The amount of damage done by default
    public let baseValue: Double
    
    /// The amount of damage done when accounting for abilities
    public let effectValue: Double
    
    /// The range of the attack
    ///
    /// - Note: If this value exists, ``distanceArr`` will be empty. Conversely, this value won't exist if ``distanceArr`` is non-empty.
    public let distance: Double?
    
    /// The range of attack across a range
    ///
    /// - Note: If this value is non-empty, ``distance`` will not exist. The converse is also true.
    public let distanceArr: [Double]
    
    /// The sub weapon this stat applies to
    public let subWeapon: SubWeapon
    
    public init(type: DamageType, baseValue: Double, effectValue: Double, distance: Double?, distanceArr: [Double], subWeapon: SubWeapon) {
        self.type = type
        self.baseValue = baseValue
        self.effectValue = effectValue
        self.distance = distance
        self.distanceArr = distanceArr
        self.subWeapon = subWeapon
    }
}

extension Array where Element == DamageEffectStat {
    /// Sums the `baseValue` damage across an array.
    func sumBaseValue() -> Double {
        var result = Double()
        
        for item in self {
            result += item.baseValue
        }
        
        return result
    }
    
    /// Find the minimum `distance` value contained in an array
    func minDistance() -> Double {
        var result = self.first?.distance ?? 0
        
        for index in 1..<self.count {
            if let dist = self[index].distance, dist < result {
                result = dist
            }
        }
        
        return result
    }
    
    /// Find the maximum `distance` value contained in an array
    func maxDistance() -> Double {
        var result = self.first?.distance ?? 0
        
        for index in 1..<self.count {
            if let dist = self[index].distance, dist > result {
                result = dist
            }
        }
        
        return result
    }
}
