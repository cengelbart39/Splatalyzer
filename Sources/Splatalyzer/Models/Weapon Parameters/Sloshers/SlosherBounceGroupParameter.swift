//
//  SlosherBounceGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherBounceGroupParameter: Codable {
    let type: String
    let bounceParam: [SlosherBounceParameter]
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case bounceParam = "BounceParam"
    }
}

struct SlosherBounceParameter: Codable {
    let afterOffsetPaintRadiusFirstBnce: Double?
    let bounceAfterMaxSpeed: Double?
    let paintRadiusFirstBounce: Double
    let unitOrderNum: Int?
    
    enum CodingKeys: String, CodingKey {
        case afterOffsetPaintRadiusFirstBnce = "AfterOffsetPaintRadiusFirstBnce"
        case bounceAfterMaxSpeed = "BounceAfterMaxSpeed"
        case paintRadiusFirstBounce = "PaintRadiusFirstBounce"
        case unitOrderNum = "UnitOrderNum"
    }
}
