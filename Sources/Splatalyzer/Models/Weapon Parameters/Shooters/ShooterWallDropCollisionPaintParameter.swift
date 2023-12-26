//
//  ShooterWallDropCollisionPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterWallDropCollisionPaintParameter: Codable {
    let type: String
    let paintRadiusFall: Double
    let paintRadiusGround: Double
    let paintRadiusShock: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusShock = "PaintRadiusShock"
    }
}
