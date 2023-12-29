//
//  ChargerSplashWallHitParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerSplashWallHitParameter: Codable {
    let type: String
    let spawnParam: ChargerSpawnParameter
    let wallDropCollisionPaintParam: ChargerWallDropCollisionPaintParameter
    let wallDropMoveParam: ChargerWallDropMoveParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case spawnParam = "SpawnParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
    }
}

struct ChargerSpawnParameter: Codable {
    let betweenDistance: Double?
    let firstDistance: Double?
    let numMax: Int?
    let numMinChange: Int?
    let spawnMaxChargeFrame: Int?
    
    enum CodingKeys: String, CodingKey {
        case betweenDistance = "BetweenDistance"
        case firstDistance = "FirstDistance"
        case numMax = "NumMax"
        case numMinChange = "NumMinCharge"
        case spawnMaxChargeFrame = "SpawnMaxChargeFrame"
    }
}
