//
//  BlasterWeaponParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterWeaponParameter: Codable {
    let type: String
    let inkConsume: Double
    let inkRecoverStop: Int
    let jumpDegBiasDecreaseStartFrame: Int
    let jumpDegBiasEndFrame: Int
    let jumpDegBiasMax: Double
    let jumpDegSwerve: Double
    let moveSpeed: Double
    let postDelayFrame: Int
    let postDelayFrameBlaster: Int
    let preDelayFrameHumanShot: Int
    let preDelayFrameSquidShot: Int
    let repeatFrame: Int
    let shotGuideFrame: Int
    let squidShotShorteningFrame: Int?
    let standDegBiasDecrease: Double
    let standDegBiasKf: Double
    let standDegBiasMax: Double
    let standDegBiasMin: Double
    let standDegSwerve: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case inkConsume = "InkConsume"
        case inkRecoverStop = "InkRecoverStop"
        case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
        case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
        case jumpDegBiasMax = "Jump_DegBiasMax"
        case jumpDegSwerve = "Jump_DegSwerve"
        case moveSpeed = "MoveSpeed"
        case postDelayFrame = "PostDelayFrame"
        case postDelayFrameBlaster = "PostDelayFrame_Blaster"
        case preDelayFrameHumanShot = "PreDelayFrame_HumanShot"
        case preDelayFrameSquidShot = "PreDelayFrame_SquidShot"
        case repeatFrame = "RepeatFrame"
        case shotGuideFrame = "ShotGuideFrame"
        case squidShotShorteningFrame = "SquidShotShorteningFrame"
        case standDegBiasDecrease = "Stand_DegBiasDecrease"
        case standDegBiasKf = "Stand_DegBiasKf"
        case standDegBiasMax = "Stand_DegBiasMax"
        case standDegBiasMin = "Stand_DegBiasMin"
        case standDegSwerve = "Stand_DegSwerve"
    }
}
