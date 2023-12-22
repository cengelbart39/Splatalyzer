//
//  BrushBodyParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushBodyParameter: Codable {
    let type: String
    let collisionParam: BrushCollisionParameter
    let damage: Int
    let paintParam: BrushPaintParameter
    let sideParam: BrushSideParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case collisionParam = "CollisionParam"
        case damage = "Damage"
        case paintParam = "PaintParam"
        case sideParam = "SideParam"
    }
}

struct BrushCollisionParameter: Codable {
    let downRayCastLength: Double
    let knockBackDefeat: Bool
    let knockBackOpponent: BrushKnockBack
    let knockBackRollerPlayerDamageOff: BrushKnockBack
    let knockBackRollerPlayerDamageOn: BrushKnockBack
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

struct BrushKnockBack: Codable {
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

struct BrushPaintParameter: Codable {
    let speedMax: Double
    let speedMin: Double?
    let widthHalfMax: Double
    let widthHalfMin: Double
    
    enum CodingKeys: String, CodingKey {
        case speedMax = "SpeedMax"
        case speedMin = "SpeedMin"
        case widthHalfMax = "WidthHalfMax"
        case widthHalfMin = "WidthHalfMin"
    }
}

struct BrushSideParameter: Codable {
    let checkLength: Double
    let radius: Double
    
    enum CodingKeys: String, CodingKey {
        case checkLength = "CheckLength"
        case radius = "Radius"
    }
}
