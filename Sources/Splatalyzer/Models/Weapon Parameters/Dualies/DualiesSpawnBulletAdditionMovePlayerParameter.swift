//
//  DualiesSpawnBulletAdditionMovePlayerParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesSpawnBulletAdditionMovePlayerParameter: Codable {
    let type: String
    let zRate: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case zRate = "ZRate"
    }
}
