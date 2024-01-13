//
//  BRDamageParameter.swift
//  
//
//  Created by Christopher Engelbart on 1/7/24.
//

import Foundation

public struct BRDamageParameter: Codable {
    public let damageRejectEndFrame: Int
    public let damageRejectState: Double
    public let damageRejectStartFrame: Int
    public let inside: Damage
    public let outside: Damage
    
    public enum CodingKeys: String, CodingKey {
        case damageRejectEndFrame = "DamageRejectEndFrame"
        case damageRejectState = "DamageRejectRate"
        case damageRejectStartFrame = "DamageRejectStartFrame"
        case inside = "Inside"
        case outside = "Outside"
    }
}

extension BRDamageParameter {
    public struct Damage: Codable {
        public let damageHighDistance: Double
        public let damageHighValue: Int
        public let damageLowDistance: Double
        public let damageLowValue: Int
        public let damageMaxDistance: Double
        public let damageMaxValue: Int
        public let damageMinDistance: Double
        public let damageMinValue: Int?
        public let damageRate: Double?
        public let degree: Double?
        public let depletionDamageRate: Double?
        public let finalDamageMinValue: Int?
        public let insideDistanceXZ: Double?
        
        public enum CodingKeys: String, CodingKey {
            case damageHighDistance = "DamageHighDistance"
            case damageHighValue = "DamageHighValue"
            case damageLowDistance = "DamageLowDistance"
            case damageLowValue = "DamageLowValue"
            case damageMaxDistance = "DamageMaxDistance"
            case damageMaxValue = "DamageMaxValue"
            case damageMinDistance = "DamageMinDistance"
            case damageMinValue = "DamageMinValue"
            case damageRate = "DamageRate"
            case degree = "Degree"
            case depletionDamageRate = "DepletionDamageRate"
            case finalDamageMinValue = "FinalDamageMinValue"
            case insideDistanceXZ = "InsideDistanceXZ"
        }
    }
}
