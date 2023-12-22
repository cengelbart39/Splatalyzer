//
//  BrushWeaponRollParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushWeaponRollParameter: Codable {
    let type: String
    let inkConsumeMaxPerFrame: Double
    let inkConsumeMinPerFrame: Double
    let noOpInkEffect: Bool?
    let inkRecoverStop: Int?
    let speedInkConsumeMax: Double?
    let speedInkConsumeMin: Double?
    let speedNormal: Double?
    let swingRepeatFrame: Int?
    let toPaintFrame: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case inkConsumeMaxPerFrame = "InkConsumeMaxPerFrame"
        case inkConsumeMinPerFrame = "InkConsumeMinPerFrame"
        case noOpInkEffect = "NoOpInkEffect"
        case inkRecoverStop = "InkRecoverStop"
        case speedInkConsumeMax = "SpeedInkConsumeMax"
        case speedInkConsumeMin = "SpeedInkConsumeMin"
        case speedNormal = "SpeedNormal"
        case swingRepeatFrame = "SwingRepeatFrame"
        case toPaintFrame = "ToPaintFrame"
    }
}
