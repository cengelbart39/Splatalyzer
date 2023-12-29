//
//  ChargerWallDropCollisionPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerWallDropCollisionPaintParameter: Codable {
    let type: String?
    let paintRadiusFall: Double
    let paintRadiusFallMaxCharge: Double
    let paintRadiusFallMinCharge: Double
    let paintRadiusGround: Double?
    let paintRadiusShock: Double
    let paintRadiusShockMaxCharge: Double
    let paintRadiusShockMinCharge: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case paintRadiusFall = "PaintRadiusFall"
        case paintRadiusFallMaxCharge = "PaintRadiusFallMaxCharge"
        case paintRadiusFallMinCharge = "PaintRadiusFallMinCharge"
        case paintRadiusGround = "PaintRadiusGround"
        case paintRadiusShock = "PaintRadiusShock"
        case paintRadiusShockMaxCharge = "PaintRadiusShockMaxCharge"
        case paintRadiusShockMinCharge = "PaintRadiusShockMinCharge"
    }
}
