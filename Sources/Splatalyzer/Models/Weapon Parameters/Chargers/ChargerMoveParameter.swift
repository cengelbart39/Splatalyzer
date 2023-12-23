//
//  ChargerMoveParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerMoveParameter: Codable {
    let type: String
    let distanceFullCharge: Double
    let distanceMaxCharge: Double
    let distanceMinCharge: Double
    let spawnSpeedFullCharge: Double
    let spawnSpeedMaxCharge: Double
    let spawnSpeedMinCharge: Double
    let throughFullCharge: Bool?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case distanceFullCharge = "DistanceFullCharge"
        case distanceMaxCharge = "DistanceMaxCharge"
        case distanceMinCharge = "DistanceMinCharge"
        case spawnSpeedFullCharge = "SpawnSpeedFullCharge"
        case spawnSpeedMaxCharge = "SpawnSpeedMaxCharge"
        case spawnSpeedMinCharge = "SpawnSpeedMinCharge"
        case throughFullCharge = "ThroughFullCharge"
    }
}
