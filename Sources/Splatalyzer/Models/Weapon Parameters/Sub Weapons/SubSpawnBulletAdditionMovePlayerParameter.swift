//
//  SubSpawnBulletAdditionMovePlayerParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubSpawnBulletAdditionMovePlayerParameter: Codable {
    let type: String
    let xRate: Double
    let yMax: Double?
    let yMinusRate: Double?
    let yPlusRate: Double
    let zRate: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case xRate = "XRate"
        case yMax = "YMax"
        case yMinusRate = "YMinusRate"
        case yPlusRate = "YPlusRate"
        case zRate = "ZRate"
    }
}
