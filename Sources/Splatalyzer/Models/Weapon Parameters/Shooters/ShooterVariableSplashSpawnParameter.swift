//
//  ShooterVariableSplashSpawnParameter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterVariableSplashSpawnParameter: Codable {
    let type: String
    let spawnBetweenLength: Double
    let spawnNearestLength: Double
    let spawnNum: Double
    let splitNum: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case spawnBetweenLength = "SpawnBetweenLength"
        case spawnNearestLength = "SpawnNearestLength"
        case spawnNum = "SpawnNum"
        case splitNum = "SplitNum"
    }
}
