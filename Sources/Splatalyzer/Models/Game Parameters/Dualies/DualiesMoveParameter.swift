//
//  DualiesMoveParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesMoveParameter: Codable {
    let type: String
    let freeGravity: Double?
    let goStraightStateEndMaxSpeed: Double
    let goStraightBrakeStateFrame: Int
    let spawnSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case freeGravity = "FreeGravity"
        case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
        case goStraightBrakeStateFrame = "GoStraightToBrakeStateFrame"
        case spawnSpeed = "SpawnSpeed"
    }
}
