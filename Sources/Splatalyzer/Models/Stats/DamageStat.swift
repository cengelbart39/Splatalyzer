//
//  DamageStat.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public struct DamageStat: Equatable, Identifiable, Hashable {
    public let id = UUID()
    public let type: DamageType
    public let value: Double
    public let distance: Double?
    public var shotsToSplat: Double?
    public let multiShots: Int?
    
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
    func sumValue() -> Double {
        var result = Double()
        
        for item in self {
            result += item.value
        }
        
        return result
    }
    
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
