//
//  DualiesSplashPaintParameter.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesSplashPaintParameter: Codable {
    let type: String
    let depthMaxDropHeight: Double
    let depthMinDropHeight: Double
    let depthScaleMin: Double
    let widthHalf: Double
    let widthHalfNearest: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case depthMaxDropHeight = "DepthMaxDropHeight"
        case depthMinDropHeight = "DepthMinDropHeight"
        case depthScaleMin = "DepthScaleMin"
        case widthHalf = "WidthHalf"
        case widthHalfNearest = "WidthHalfNearest"
    }
}
