//
//  BlasterPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterPaintParameter: Codable {
    let type: String
    let distanceMiddle: Double
    let widthHalfFar: Double
    let widthHalfMiddle: Double
    let widthHalfNear: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case distanceMiddle = "DistanceMiddle"
        case widthHalfFar = "WidthHalfFar"
        case widthHalfMiddle = "WidthHalfMiddle"
        case widthHalfNear = "WidthHalfNear"
    }
}
