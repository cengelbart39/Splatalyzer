//
//  SlosherSpawnBulletAdditionMovePlayerParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherSpawnBulletAdditionMovePlayerParameter: Codable {
    let type: String
    let guideYMinusZero: Bool
    let xRate: Double?
    let yMinusRate: Double
    let yPlusRate: Double?
    let zRate: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case guideYMinusZero = "GuideYMinusZero"
        case xRate = "XRate"
        case yMinusRate = "YMinusRate"
        case yPlusRate = "YPlusRate"
        case zRate = "ZRate"
    }
}
