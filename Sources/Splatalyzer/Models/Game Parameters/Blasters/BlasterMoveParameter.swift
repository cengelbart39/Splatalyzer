//
//  BlasterMoveParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterMoveParameter: Codable {
    let type: String
    let freeGravity: Double
    let goStraightStateEndMaxSpeed: Double
    let goStraightToBrakeStateFrame: Int
    let spawnSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case freeGravity = "FreeGravity"
        case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
        case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
        case spawnSpeed = "SpawnSpeed"
    }
}
