//
//  ChargerMainEffectiveRangeUpParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerMainEffectiveRangeUpParameter: Codable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}
