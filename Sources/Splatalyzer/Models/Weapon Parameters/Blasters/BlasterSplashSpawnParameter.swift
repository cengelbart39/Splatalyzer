//
//  BlasterSplashSpawnParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterSplashSpawnParameter: Codable {
    let type: String
    let forceSpawnNearestAddNumArray: [Double]
    let randomSpawnVelXMax: Double?
    let randomSpawnVelYMax: Double?
    let randomSpaceVelZMax: Double?
    let randomSpaceVelZMin: Double?
    let spawnBetweenLength: Double
    let spawnNearestLength: Double
    let spawnNum: Double
    let splitNum: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
        case randomSpawnVelXMax = "RandomSpawnVelXMax"
        case randomSpawnVelYMax = "RandomSpawnVelYMax"
        case randomSpaceVelZMax = "RandomSpawnVelZMax"
        case randomSpaceVelZMin = "RandomSpawnVelZMin"
        case spawnBetweenLength = "SpawnBetweenLength"
        case spawnNearestLength = "SpawnNearestLength"
        case spawnNum = "SpawnNum"
        case splitNum = "SplitNum"
    }
}
