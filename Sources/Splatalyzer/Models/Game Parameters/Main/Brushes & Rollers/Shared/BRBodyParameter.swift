//
//  BRBodyParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BRBodyParameter: Codable {
    let type: String
    let collisionParam: CollisionParameter
    let damage: Int
    let paintParam: PaintParameter
    let sideParam: SideParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case collisionParam = "CollisionParam"
        case damage = "Damage"
        case paintParam = "PaintParam"
        case sideParam = "SideParam"
    }
}

extension BRBodyParameter {
    struct CollisionParameter: Codable {
        let downRayCastLength: Double?
        let knockBackDefeat: Bool?
        let knockBackOpponent: BRKnockBack
        let knockBackRollerPlayerDamageOff: BRKnockBack
        let knockBackRollerPlayerDamageOn: BRKnockBack
        let widthHalf: Double
        
        enum CodingKeys: String, CodingKey {
            case downRayCastLength = "DownRayCastLength"
            case knockBackDefeat = "KnockBackDefeat"
            case knockBackOpponent = "KnockBackOpponent"
            case knockBackRollerPlayerDamageOff = "KnockBackRollerPlayerDamageOff"
            case knockBackRollerPlayerDamageOn = "KnockBackRollerPlayerDamageOn"
            case widthHalf = "WidthHalf"
        }
    }
    
    struct PaintParameter: Codable {
        let depth: Double?
        let speedMax: Double
        let speedMin: Double?
        let widthAddWallCut: Double?
        let widthHalfMax: Double
        let widthHalfMin: Double?
        
        enum CodingKeys: String, CodingKey {
            case depth = "Depth"
            case speedMax = "SpeedMax"
            case speedMin = "SpeedMin"
            case widthAddWallCut = "WidthAddWallCut"
            case widthHalfMax = "WidthHalfMax"
            case widthHalfMin = "WidthHalfMin"
        }
    }
    
    struct SideParameter: Codable {
        let checkLength: Double
        let radius: Double
        
        enum CodingKeys: String, CodingKey {
            case checkLength = "CheckLength"
            case radius = "Radius"
        }
    }
}
