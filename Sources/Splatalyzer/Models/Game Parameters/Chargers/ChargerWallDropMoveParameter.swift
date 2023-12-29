//
//  ChargerWallDropMoveParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerWallDropMoveParameter: Codable {
    let type: String?
    let fallPeriodFirstFrameMin: Int
    let fallPeriodFirstTargetSpeed: Double
    let fallPeriodLastFrameMax: Int
    let fallPeriodSecondTargetSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
        case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
        case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
        case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
    }
}
