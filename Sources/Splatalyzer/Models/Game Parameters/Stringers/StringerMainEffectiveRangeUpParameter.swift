//
//  StringerMainEffectiveRangeUpParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct StringerMainEffectiveRangeUpParameter: Codable {
    let type: String
    let high: Double?
    let low: Double?
    let mid: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case high = "High"
        case low = "Low"
        case mid = "Mid"
    }
}
