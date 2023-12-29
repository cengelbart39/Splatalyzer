//
//  ShooterMoveParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterMoveParameter: Codable {
    let type: String
    let freeAirResist: Double?
    let freeGravity: Double?
    let goStraightStateEndMaxSpeed: Double
    let goStraightToBrakeStateFrame: Int
    let spawnSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case freeAirResist = "FreeAirResist"
        case freeGravity = "FreeGravity"
        case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
        case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
        case spawnSpeed = "SpawnSpeed"
    }
}
