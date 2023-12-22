//
//  BrushBulletAdditionMovePlayerSplashNearestParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushBulletAdditionMovePlayerSplashNearestParameter: Codable {
    let type: String
    let xRate: Double
    let yPlusRate: Double
    let zRate: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case xRate = "XRate"
        case yPlusRate = "YPlusRate"
        case zRate = "ZRate"
    }
}
