//
//  BRSpawnBulletAdditionMoveParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

public struct BRSpawnBulletAdditionMoveParameter: Codable {
    public let type: String
    public let zRate: Double
    
    public enum CodingKeys: String, CodingKey {
        case type = "$type"
        case zRate = "ZRate"
    }
}
