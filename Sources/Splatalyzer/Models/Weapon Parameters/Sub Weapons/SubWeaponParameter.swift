//
//  SubWeaponParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubWeaponParameter: Codable {
    let type: String
    let chargeFrameBlastRate: Double?
    let inkConsume: Double?
    let inkRecoverStop: Int
    let inkRecoverStopMaxCharge: Int?
    let knockBackParam: SubWeaponKnockBackParameter?
    let maxChargeFrame: Int?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case chargeFrameBlastRate = "ChargeFrameBlastRate"
        case inkConsume = "InkConsume"
        case inkRecoverStop = "InkRecoverStop"
        case inkRecoverStopMaxCharge = "InkRecoverStopMaxCharge"
        case knockBackParam = "KnockBackParam"
        case maxChargeFrame = "MaxChargeFrame"
    }
}

struct SubWeaponKnockBackParameter: Codable {
    let impactValue: Double
    
    enum CodingKeys: String, CodingKey {
        case impactValue = "ImpactValue"
    }
}
