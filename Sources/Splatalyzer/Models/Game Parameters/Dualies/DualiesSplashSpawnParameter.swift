//
//  DualiesSplashSpawnParameter.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesSplashSpawnParameter: Codable {
    let type: String
    let forceSpawnNearestAddNumArray: [Double]?
    let spawnBetweenLength: Double?
    let spawnNearestLength: Double?
    let spawnNum: Double
    let splitNum: Int?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
        case spawnBetweenLength = "SpawnBetweenLength"
        case spawnNearestLength = "SpawnNearestLength"
        case spawnNum = "SpawnNum"
        case splitNum = "SplitNum"
    }
}
