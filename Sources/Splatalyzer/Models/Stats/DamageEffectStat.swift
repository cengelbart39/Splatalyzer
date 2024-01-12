//
//  DamageEffectStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

struct DamageEffectStat {
    let id = UUID()
    let type: DamageType
    let baseValue: Double
    let effectValue: Double
    let distance: Double?
    let distanceArr: [Double]
    let subWeapon: SubRowId
}

extension Array where Element == DamageEffectStat {
    func sumBaseValue() -> Double {
        var result = Double()
        
        for item in self {
            result += item.baseValue
        }
        
        return result
    }
    
    func minDistance() -> Double {
        var result = self.first?.distance ?? 0
        
        for index in 1..<self.count {
            if let dist = self[index].distance, dist < result {
                result = dist
            }
        }
        
        return result
    }
    
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
