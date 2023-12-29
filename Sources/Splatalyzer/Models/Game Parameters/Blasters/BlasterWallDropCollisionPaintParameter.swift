//
//  BlasterWallDropCollisionPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterWallDropCollisionPaintParameter: Codable {
    let type: String
    let fallPeriodFirstSecondTargetAlp: Double
    let paintRadiusFall: Double
    let paintRadiusGround: Double?
    let paintRadiusShock: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusShock = "PaintRadiusShock"
    }
}

struct BlasterSplashWallDropPaintParameter: Codable {
    let paintRadiusFall: Double
    let paintRadiusGround: Double
    let paintRadiusShock: Double
    
    enum CodingKeys: String, CodingKey {
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusShock = "PaintRadiusShock"
    }
}
