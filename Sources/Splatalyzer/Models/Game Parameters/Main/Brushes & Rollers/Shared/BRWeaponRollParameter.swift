//
//  BRWeaponRollParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

public struct BRWeaponRollParameter: Codable {
    public let type: String
    public let dashFrame: Int?
    public let inkConsumeMaxPerFrame: Double
    public let inkConsumeMinPerFrame: Double
    public let noOpInkEffect: Bool?
    public let inkRecoverStop: Int?
    public let speedDash: Double?
    public let speedDashTurnBreak: Double?
    public let speedInkConsumeMax: Double?
    public let speedInkConsumeMin: Double?
    public let speedNormal: Double?
    public let swingRepeatFrame: Int?
    public let toPaintFrame: Double?
    
    public enum CodingKeys: String, CodingKey {
        case type = "$type"
        case dashFrame = "DashFrame"
        case inkConsumeMaxPerFrame = "InkConsumeMaxPerFrame"
        case inkConsumeMinPerFrame = "InkConsumeMinPerFrame"
        case noOpInkEffect = "NoOpInkEffect"
        case inkRecoverStop = "InkRecoverStop"
        case speedDash = "SpeedDash"
        case speedDashTurnBreak = "SpeedDashTurnBreak"
        case speedInkConsumeMax = "SpeedInkConsumeMax"
        case speedInkConsumeMin = "SpeedInkConsumeMin"
        case speedNormal = "SpeedNormal"
        case swingRepeatFrame = "SwingRepeatFrame"
        case toPaintFrame = "ToPaintFrame"
    }
}
