//
//  SplatlingDamageParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingDamageParameter: Codable {
    let type: String
    let reduceEndFrame: Int
    let reduceStartFrame: Int
    let valueFullChargeMax: Int
    let valueMax: Int
    let valueMin: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case reduceEndFrame = "ReduceEndFrame"
        case reduceStartFrame = "ReduceStartFrame"
        case valueFullChargeMax = "ValueFullChargeMax"
        case valueMax = "ValueMax"
        case valueMin = "ValueMin"
    }
}
