//
//  SplatlingSplashSpawnParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingSplashSpawnParameter: Codable {
    let type: String
    let forceSpawnNearestAddNumArray: [Int]?
    let spawnBetweenLength: Double
    let spawnNearestLength: Double?
    let spawnNum: Double
    let splitNum: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
        case spawnBetweenLength = "SpawnBetweenLength"
        case spawnNearestLength = "SpawnNearestLength"
        case spawnNum = "SpawnNum"
        case splitNum = "SplitNum"
    }
}
