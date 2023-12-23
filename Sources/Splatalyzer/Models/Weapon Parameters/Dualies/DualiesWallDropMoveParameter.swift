//
//  DualiesWallDropMoveParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesWallDropMoveParameter: Codable {
    let type: String
    let fallPeriodFirstFrameMax: Int
    let fallPeriodFirstFrameMin: Int
    let fallPeriodFirstTargetSpeed: Double
    let fallPeriodLastFrameMax: Int
    let fallPeriodLastFrameMin: Int
    let fallPeriodSecondFrame: Int
    let fallPeriodSecondTargetSpeed: Double
    let freeGravityType: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
        case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
        case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
        case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
        case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
        case fallPeriodSecondFrame = "FallPeriodSecondFrame"
        case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        case freeGravityType = "FreeGravityType"
    }
}
