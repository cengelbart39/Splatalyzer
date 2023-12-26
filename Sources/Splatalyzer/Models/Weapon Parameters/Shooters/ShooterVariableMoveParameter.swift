//
//  ShooterVariableMoveParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterVariableMoveParameter: Codable {
    let type: String
    let goStraightStateEndMaxSpeed: Double
    let goStraightToBrakeStateFrame: Int
    let spawnSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
        case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
        case spawnSpeed = "SpawnSpeed"
    }
}
