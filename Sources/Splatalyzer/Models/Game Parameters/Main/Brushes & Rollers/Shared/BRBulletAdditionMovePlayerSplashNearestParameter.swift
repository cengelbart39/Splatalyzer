//
//  BRBulletAdditionMovePlayerSplashNearestParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

public struct BRBulletAdditionMovePlayerSplashNearestParameter: Parametable {
    public let type: String
    public let xRate: Double
    public let yPlusRate: Double
    public let zRate: Double
    
    public enum CodingKeys: String, CodingKey {
        case type = "$type"
        case xRate = "XRate"
        case yPlusRate = "YPlusRate"
        case zRate = "ZRate"
    }
}
