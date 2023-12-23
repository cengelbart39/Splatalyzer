//
//  ChargerWeaponParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerWeaponParameter: Codable {
    let type: String
    let airChargeRateByInkEmpty: Int?
    let chargeFrameFullCharge: Int?
    let chargeFrameMinCharge: Int?
    let freezeFrameFullCharge: Int
    let freezeFrameMinCharge: Int
    let inkConsumeFullCharge: Double
    let inkConsumeMinCharge: Double
    let inkEmptyChargeTimes: Int?
    let jumpHeightFullCharge: Double
    let moveJumpDownBias: Double
    let moveSpeedFullCharge: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case airChargeRateByInkEmpty = "AirChargeRateByInkEmpty"
        case chargeFrameFullCharge = "ChargeFrameFullCharge"
        case chargeFrameMinCharge = "ChargeFrameMinCharge"
        case freezeFrameFullCharge = "FreezeFrameFullCharge"
        case freezeFrameMinCharge = "FreezeFrameMinCharge"
        case inkConsumeFullCharge = "InkConsumeFullCharge"
        case inkConsumeMinCharge = "InkConsumeMinCharge"
        case inkEmptyChargeTimes = "InkEmptyChargeTimes"
        case jumpHeightFullCharge = "JumpHeightFullCharge"
        case moveJumpDownBias = "MoveJumpDownBias"
        case moveSpeedFullCharge = "MoveSpeedFullCharge"
    }
}
