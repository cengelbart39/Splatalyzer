//
//  BlasterSplashWallHitParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterSplashWallHitParameter: Codable {
    let type: String
    let spawnParam: SpawnParameter
    let wallDropCollisionPaintParam: BlasterWallDropCollisionPaintParameter
    let wallDropMoveParam: BlasterSplashWallDropMoveParameter
    
    struct SpawnParameter: Codable {
        let distanceXZRate: Double?
        let firstDistance: Double
        let velocityMinusYRate: Double
        
        enum CodingKeys: String, CodingKey {
            case distanceXZRate = "DistanceXZRate"
            case firstDistance = "FirstDistance"
            case velocityMinusYRate = "VelocityMinusYRate"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case spawnParam = "SpawnParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
    }
}
