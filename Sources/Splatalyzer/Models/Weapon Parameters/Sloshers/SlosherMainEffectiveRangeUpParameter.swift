//
//  SlosherMainEffectiveRangeUpParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherMainEffectiveRangeUpParameter: Codable {
    let type: String
    let baseDistance: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case baseDistance = "BaseDistance"
    }
}
