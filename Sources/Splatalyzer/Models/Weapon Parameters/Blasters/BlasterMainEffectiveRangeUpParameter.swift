//
//  BlasterMainEffectiveRangeUpParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterMainEffectiveRangeUpParameter: Codable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}
