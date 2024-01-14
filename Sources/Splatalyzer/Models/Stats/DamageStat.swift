//
//  DamageStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public struct DamageStat: Equatable {
    public let id = UUID()
    public let type: DamageType
    public let value: Double
    public let distance: Double?
    public let shotsToSplat: Double?
    public let multiShots: Int?
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
