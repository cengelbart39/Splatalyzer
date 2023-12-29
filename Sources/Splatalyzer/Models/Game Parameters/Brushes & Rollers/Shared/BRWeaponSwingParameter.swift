//
//  BRWeaponSwingParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BRWeaponSwingParameter: Codable {
    let type: String
    let guideParam: GuideParameter?
    let inkConsume: Double
    let inkConsumeRateDepeletion: Double?
    let inkRecoveryStop: Int
    let subWeaponSquidDelayFrm: Int?
    let swingFrame: Int
    let swingMoveSpeed: Double
    
    struct GuideParameter: Codable {
        let frame: Int?
        let widthScale: Double
        
        enum CodingKeys: String, CodingKey {
            case frame = "Frame"
            case widthScale = "WidthScale"
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case type = "$types"
        case guideParam = "GuideParam"
        case inkConsume = "InkConsume"
        case inkConsumeRateDepeletion = "InkConsumeRateDepletion"
        case inkRecoveryStop = "InkRecoverStop"
        case subWeaponSquidDelayFrm = "SubWeaponSquidDelayFrm"
        case swingFrame = "SwingFrame"
        case swingMoveSpeed = "SwingMoveSpeed"
    }
}
