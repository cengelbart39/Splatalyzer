//
//  DamageStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

struct DamageStat {
    let id = UUID()
    let type: DamageType
    let value: Double
    let distance: Double?
    let shotsToSplat: Double?
    let multiShots: Int?
}

extension Array where Element == DamageStat {
    func sumValue() -> Double {
        var result = Double()
        
        for item in self {
            result += item.value
        }
        
        return result
    }
}
