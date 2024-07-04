//
//  BRBodyParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

public struct BRBodyParameter: Parametable {
    public let type: String
    public let collisionParam: CollisionParameter
    public let damage: Int
    public let paintParam: PaintParameter
    public let sideParam: SideParameter
    
    public enum CodingKeys: String, CodingKey {
        case type = "$type"
        case collisionParam = "CollisionParam"
        case damage = "Damage"
        case paintParam = "PaintParam"
        case sideParam = "SideParam"
    }
}

extension BRBodyParameter {
    public struct CollisionParameter: Parametable {
        public let downRayCastLength: Double?
        public let knockBackDefeat: Bool?
        public let knockBackOpponent: BRKnockBack
        public let knockBackRollerPlayerDamageOff: BRKnockBack
        public let knockBackRollerPlayerDamageOn: BRKnockBack
        public let widthHalf: Double
        
        public enum CodingKeys: String, CodingKey {
            case downRayCastLength = "DownRayCastLength"
            case knockBackDefeat = "KnockBackDefeat"
            case knockBackOpponent = "KnockBackOpponent"
            case knockBackRollerPlayerDamageOff = "KnockBackRollerPlayerDamageOff"
            case knockBackRollerPlayerDamageOn = "KnockBackRollerPlayerDamageOn"
            case widthHalf = "WidthHalf"
        }
    }
    
    public struct PaintParameter: Parametable {
        public let depth: Double?
        public let speedMax: Double
        public let speedMin: Double?
        public let widthAddWallCut: Double?
        public let widthHalfMax: Double
        public let widthHalfMin: Double?
        
        public enum CodingKeys: String, CodingKey {
            case depth = "Depth"
            case speedMax = "SpeedMax"
            case speedMin = "SpeedMin"
            case widthAddWallCut = "WidthAddWallCut"
            case widthHalfMax = "WidthHalfMax"
            case widthHalfMin = "WidthHalfMin"
        }
    }
    
    public struct SideParameter: Parametable {
        public let checkLength: Double
        public let radius: Double
        
        public enum CodingKeys: String, CodingKey {
            case checkLength = "CheckLength"
            case radius = "Radius"
        }
    }
}
