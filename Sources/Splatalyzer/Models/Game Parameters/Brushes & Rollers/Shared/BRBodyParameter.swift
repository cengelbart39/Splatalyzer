//
//  BRBodyParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BRBodyParameter: Codable {
    let type: String
    let collisionParam: BRCollisionParameter
    let damage: Int
    let paintParam: BRPaintParameter
    let sideParam: BRSideParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case collisionParam = "CollisionParam"
        case damage = "Damage"
        case paintParam = "PaintParam"
        case sideParam = "SideParam"
    }
}

struct BRCollisionParameter: Codable {
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

struct BRKnockBack: Codable {
    let accelMax: Double
    let accelMin: Double
    let myVelocityRate: Double
    let opponentVelocityRate: Double
    
    enum CodingKeys: String, CodingKey {
        case accelMax = "AccelMax"
        case accelMin = "AccelMin"
        case myVelocityRate = "MyVelocityRate"
        case opponentVelocityRate = "OpponentVelocityRate"
    }
}

struct BRPaintParameter: Codable {
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

struct BRSideParameter: Codable {
    let checkLength: Double
    let radius: Double
    
    enum CodingKeys: String, CodingKey {
        case checkLength = "CheckLength"
        case radius = "Radius"
    }
}
