//
//  DualiesWeaponParameter.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesWeaponParameter: Codable {
    let type: String
    let inkConsume: Double
    let jumpDegBiasDecreaseStartFrame: Int?
    let jumpDegBiasEndFrame: Double?
    let jumpDegBiasMax: Double?
    let jumpDegSwerve: Double
    let lapOverDegSwerve: Double
    let lapOverRepeatFrame: Double?
    let moveSpeed: Double?
    let preDelayFrameSquidShot: Int?
    let postDelayFrame: Int?
    let repeatFrame: Int?
    let shotGuideFrame: Int?
    let standDegBiasDecrease: Double?
    let standDegBiasKf: Double?
    let standDegBiasMax: Double?
    let standDegBiasMin: Double?
    let standDegSwerve: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case inkConsume = "InkConsume"
        case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
        case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
        case jumpDegBiasMax = "Jump_DegBiasMax"
        case jumpDegSwerve = "Jump_DegSwerve"
        case lapOverDegSwerve = "LapOver_DegSwerve"
        case lapOverRepeatFrame = "LapOver_RepeatFrame"
        case moveSpeed = "MoveSpeed"
        case preDelayFrameSquidShot = "PreDelayFrame_SquidShot"
        case postDelayFrame = "PostDelayFrame"
        case repeatFrame = "RepeatFrame"
        case shotGuideFrame = "ShotGuideFrame"
        case standDegBiasDecrease = "Stand_DegBiasDecrease"
        case standDegBiasKf = "Stand_DegBiasKf"
        case standDegBiasMax = "Stand_DegBiasMax"
        case standDegBiasMin = "Stand_DegBiasMin"
        case standDegSwerve = "Stand_DegSwerve"
    }
}
