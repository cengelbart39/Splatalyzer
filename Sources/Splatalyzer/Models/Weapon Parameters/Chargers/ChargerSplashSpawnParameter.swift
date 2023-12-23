//
//  ChargerSplashSpawnParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerSplashSpawnParameter: Codable {
    let type: String
    let onTopRateFullCharge: Double
    let onTopRateMaxCharge: Double
    let onTopRateMinCharge: Double
    let skipNum: Int?
    let spawnNearestChargeRate: Double?
    let spawnNearestMaxOffsetXZ: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case onTopRateFullCharge = "OnTopRateFullCharge"
        case onTopRateMaxCharge = "OnTopRateMaxCharge"
        case onTopRateMinCharge = "OnTopRateMinCharge"
        case skipNum = "SkipNum"
        case spawnNearestChargeRate = "SpawnNearestChargeRate"
        case spawnNearestMaxOffsetXZ = "SpawnNearestMaxOffsetXZ"
    }
}
