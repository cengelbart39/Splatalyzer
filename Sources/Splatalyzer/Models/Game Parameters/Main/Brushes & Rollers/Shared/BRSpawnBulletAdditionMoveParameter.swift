//
//  BRSpawnBulletAdditionMoveParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BRSpawnBulletAdditionMoveParameter: Codable {
    let type: String
    let zRate: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case zRate = "ZRate"
    }
}
