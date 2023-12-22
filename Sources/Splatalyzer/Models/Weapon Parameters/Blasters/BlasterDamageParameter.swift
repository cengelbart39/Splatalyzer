//
//  BlasterDamageParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterDamageParameter: Codable {
    let type: String
    let reduceEndFrame: Int
    let reduceStartFrame: Int
    let valueMax: Int
    let valueMin: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case reduceEndFrame = "ReduceEndFrame"
        case reduceStartFrame = "ReduceStartFrame"
        case valueMax = "ValueMax"
        case valueMin = "ValueMin"
    }
}
