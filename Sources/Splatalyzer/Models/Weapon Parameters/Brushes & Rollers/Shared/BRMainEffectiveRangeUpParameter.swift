//
//  BRMainEffectiveRangeUpParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BRMainEffectiveRangeUpParameter: Codable {
    let type: String
    let baseDistance: Double?
    let high: Double?
    let mid: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case baseDistance = "BaseDistance"
        case high = "High"
        case mid = "Mid"
    }
}
