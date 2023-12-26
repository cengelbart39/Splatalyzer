//
//  ShooterVariableWeaponParameter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterVariableWeaponParameter: Codable {
    let type: String
    let burstAimMoveFrame: Double
    let inkConsume: Double
    let jumpDegBiasDecreaseStartFrame: Int
    let jumpDegBiasEndFrame: Int
    let jumpDegBiasMax: Double
    let jumpDegSwerve: Double
    let moveSpeed: Double
    let postDelayFrame: Int
    let repeatFrame: Int
    let shotGuideFrame: Int
    let standDegBiasDecrease: Double
    let standDegBiasKf: Double
    let standDegBiasMin: Double
    let standDegSwerve: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case burstAimMoveFrame = "BurstAimMoveFrame"
        case inkConsume = "InkConsume"
        case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
        case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
        case jumpDegBiasMax = "Jump_DegBiasMax"
        case jumpDegSwerve = "Jump_DegSwerve"
        case moveSpeed = "MoveSpeed"
        case postDelayFrame = "PostDelayFrame"
        case repeatFrame = "RepeatFrame"
        case shotGuideFrame = "ShotGuideFrame"
        case standDegBiasDecrease = "Stand_DegBiasDecrease"
        case standDegBiasKf = "Stand_DegBiasKf"
        case standDegBiasMin = "Stand_DegBiasMin"
        case standDegSwerve = "Stand_DegSwerve"
    }
}
