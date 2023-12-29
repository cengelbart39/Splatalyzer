//
//  BrellaWeaponShotgunParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct BrellaWeaponShotgunParameter: Codable {
    let type: String
    let inkConsume: Double?
    let inkRecoverStop: Int?
    let inkRecoverStopCharge: Int?
    let jumpGndCharge: Double
    let moveSpeed: Double
    let moveSpeedCharge: Double
    let postDelayFrameMain: Int?
    let postDelayFrameMoveLmt: Int?
    let postNoShotReqFrame: Int?
    let preDelayFrameHumanMain: Int?
    let preDelayFrameSquidMain: Int?
    let repeatFrame: Int
    let shotGuideFrame: Int?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case inkConsume = "InkConsume"
        case inkRecoverStop = "InkRecoverStop"
        case inkRecoverStopCharge = "InkRecoverStopCharge"
        case jumpGndCharge = "JumpGndCharge"
        case moveSpeed = "MoveSpeed"
        case moveSpeedCharge = "MoveSpeedCharge"
        case postDelayFrameMain = "PostDelayFrame_Main"
        case postDelayFrameMoveLmt = "PostDelayFrame_MoveLmt"
        case postNoShotReqFrame = "PostNoShotReqFrame"
        case preDelayFrameHumanMain = "PreDelayFrame_HumanMain"
        case preDelayFrameSquidMain = "PreDelayFrame_SquidMain"
        case repeatFrame = "RepeatFrame"
        case shotGuideFrame = "ShotGuideFrame"
    }
}
