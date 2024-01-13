//
//  BRWeaponSwingParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

public struct BRWeaponSwingParameter: Codable {
    public let type: String
    public let guideParam: GuideParameter?
    public let inkConsume: Double
    public let inkConsumeRateDepeletion: Double?
    public let inkRecoveryStop: Int
    public let subWeaponSquidDelayFrm: Int?
    public let swingFrame: Int
    public let swingMoveSpeed: Double
    
    public struct GuideParameter: Codable {
        public let frame: Int?
        public let widthScale: Double
        
        public enum CodingKeys: String, CodingKey {
            case frame = "Frame"
            case widthScale = "WidthScale"
        }
    }
    
    public enum CodingKeys: String, CodingKey {
        case type = "$type"
        case guideParam = "GuideParam"
        case inkConsume = "InkConsume"
        case inkConsumeRateDepeletion = "InkConsumeRateDepletion"
        case inkRecoveryStop = "InkRecoverStop"
        case subWeaponSquidDelayFrm = "SubWeaponSquidDelayFrm"
        case swingFrame = "SwingFrame"
        case swingMoveSpeed = "SwingMoveSpeed"
    }
}
