//
//  SplatlingMoveParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingMoveParameter: Codable {
    let type: String
    let goStraightStateEndMaxSpeed: Double
    let goStraightToBrakeStateFrame: Int
    let spawnSpeed: Double
    let spawnSpeedFirstLandAndSecond: Double
    let spawnSpeedRandomBias: Double
    let spawnSpeedRandomRate: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
        case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
        case spawnSpeed = "SpawnSpeed"
        case spawnSpeedFirstLandAndSecond = "SpawnSpeedFirstLastAndSecond"
        case spawnSpeedRandomBias = "SpawnSpeedRandomBias"
        case spawnSpeedRandomRate = "SpawnSpeedRandomRate"
    }
}
