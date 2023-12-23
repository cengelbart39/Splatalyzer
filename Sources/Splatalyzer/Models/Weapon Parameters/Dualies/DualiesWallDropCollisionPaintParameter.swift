//
//  DualiesWallDropCollisionPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesWallDropCollisionPaintParameter: Codable {
    let type: String
    let paintRadiusFall: Double
    let paintRadiusGround: Double
    let paintRadiusChock: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusChock = "PaintRadiusShock"
    }
}
