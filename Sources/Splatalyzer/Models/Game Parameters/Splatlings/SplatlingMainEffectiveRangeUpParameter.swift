//
//  SplatlingMainEffectiveRangeUpParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingMainEffectiveRangeUpParameter: Codable {
    let type: String
    let validMinCharge: Bool?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case validMinCharge = "ValidMinCharge"
    }
}
