//
//  BlasterSplashPaintParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterSplashPaintParameter: Codable {
    let type: String
    let depthMaxDropHeight: Double
    let depthMinDropHeight: Double
    let depthScaleMax: Double?
    let widthHalf: Double
    let widthHalfNearest: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case depthMaxDropHeight = "DepthMaxDropHeight"
        case depthMinDropHeight = "DepthMinDropHeight"
        case depthScaleMax = "DepthScaleMax"
        case widthHalf = "WidthHalf"
        case widthHalfNearest = "WidthHalfNearest"
    }
}
