//
//  ShooterSplashSpawnParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterSplashSpawnParameter: Codable {
    let type: String
    let forceSpawnNearestAddNumArray: [Int]
    let randomSpawnVelXMax: Double?
    let spawnBetweenLength: Double
    let spawnNearestLength: Double
    let spawnNum: Double
    let splitNum: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
        case randomSpawnVelXMax = "RandomSpawnVelXMax"
        case spawnBetweenLength = "SpawnBetweenLength"
        case spawnNearestLength = "SpawnNearestLength"
        case spawnNum = "SpawnNum"
        case splitNum = "SplitNum"
    }
}