//
//  SplatlingWeaponParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingWeaponParameter: Codable {
    let type: String
    let burstAimMoveFrame: Int?
    let chargeFrameFirst: Int?
    let chargeFrameSecond: Int?
    let enableRecharge: Bool?
    let inkConsume: Double
    let inkEmptyChargeTimes: Int?
    let inkRecoverStop: Int
    let jumpGndCharge: Double?
    let jumpDegBiasDecreaseStartFrame: Int
    let jumpDegBiasEndFrame: Int
    let jumpDegBiasMax: Double
    let jumpDegSwerve: Double
    let maxShootingFrameFirst: Int?
    let maxShootingFrameSecond: Int?
    let moveSpeed: Double
    let moveSpeedCharge: Double?
    let pitchDegBias: Double
    let pitchDegSwerve: Double
    let postDelayFrame: Int
    let preDelayFrameSquidShot: Int
    let repeatFrame: Int
    let shotGuideFrame: Int
    let standDegBiasMax: Double
    let standDegBiasMin: Double
    let standDegSwerve: Double
    let velGndBiasCharge: Double
    let velGndDownRtCharge: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case burstAimMoveFrame = "BurstAimMoveFrame"
        case chargeFrameFirst = "ChargeFrame_First"
        case chargeFrameSecond = "ChargeFrame_Second"
        case enableRecharge = "EnableRecharge"
        case inkConsume = "InkConsume"
        case inkEmptyChargeTimes = "InkEmptyChargeTimes"
        case inkRecoverStop = "InkRecoverStop"
        case jumpGndCharge = "JumpGnd_Charge"
        case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
        case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
        case jumpDegBiasMax = "Jump_DegBiasMax"
        case jumpDegSwerve = "Jump_DegSwerve"
        case maxShootingFrameFirst = "MaxShootingFrame_First"
        case maxShootingFrameSecond = "MaxShootingFrame_Second"
        case moveSpeed = "MoveSpeed"
        case moveSpeedCharge = "MoveSpeed_Charge"
        case pitchDegBias = "PitchDegBias"
        case pitchDegSwerve = "PitchDegSwerve"
        case postDelayFrame = "PostDelayFrame"
        case preDelayFrameSquidShot = "PreDelayFrame_SquidShot"
        case repeatFrame = "RepeatFrame"
        case shotGuideFrame = "ShotGuideFrame"
        case standDegBiasMax = "Stand_DegBiasMax"
        case standDegBiasMin = "Stand_DegBiasMin"
        case standDegSwerve = "Stand_DegSwerve"
        case velGndBiasCharge = "VelGnd_Bias_Charge"
        case velGndDownRtCharge = "VelGnd_DownRt_Charge"
    }
}
