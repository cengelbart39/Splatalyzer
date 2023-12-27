//
//  SplatlingSpawnBulletAdditionMovePlayerParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingSpawnBulletAdditionMovePlayerParameter: Codable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}
