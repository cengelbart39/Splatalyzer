//
//  BrushMainEffectiveRangeUpParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushMainEffectiveRangeUpParameter: Codable {
    let type: String
    let baseDistance: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case baseDistance = "BaseDistance"
    }
}
