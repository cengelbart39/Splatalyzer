//
//  SubHighMiddleLow.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubHighMiddleLow: Codable {
    let high: Double
    let low: Double
    let mid: Double
    
    enum CodingKeys: String, CodingKey {
        case high = "High"
        case low = "Low"
        case mid = "Mid"
    }
}
