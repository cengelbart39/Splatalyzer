//
//  BlasterActionSpecUpReduceJumpSwerveRate.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterActionSpecUpReduceJumpSwerveRate: Codable {
    let type: String
    let mid: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case mid = "Mid"
    }
}
