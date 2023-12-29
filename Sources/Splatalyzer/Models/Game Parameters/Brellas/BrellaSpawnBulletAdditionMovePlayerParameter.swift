//
//  BrellaSpawnBulletAdditionMovePlayerParameter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct BrellaSpawnBulletAdditionMovePlayerParameter: Codable {
    let type: String
    let zRate: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case zRate = "ZRate"
    }
}
