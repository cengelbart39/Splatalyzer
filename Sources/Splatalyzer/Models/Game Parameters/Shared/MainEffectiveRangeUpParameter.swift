//
//  MainEffectiveRangeUpParameter.swift
//
//
//  Created by Christopher Engelbart on 1/7/24.
//

import Foundation

struct MainEffectiveRangeUpParameter: Codable {
    let type: String
    let baseDistance: Double?
    let high: Double?
    let low: Double?
    let mid: Double?
    let validMinCharge: Bool?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case baseDistance = "BaseDistance"
        case high = "High"
        case low = "Low"
        case mid = "Mid"
        case validMinCharge = "ValidMinCharge"
    }
}
