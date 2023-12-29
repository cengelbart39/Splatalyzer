//
//  SplatlingSplashPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingSplashPaintParameter: Codable {
    let type: String
    let depthMaxDropHeight: Double?
    let depthMinDropHeight: Double?
    let depthScaleMax: Double
    let depthScaleMin: Double
    let widthHalf: Double
    let widthHalfNearest: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case depthMaxDropHeight = "DepthMaxDropHeight"
        case depthMinDropHeight = "DepthMinDropHeight"
        case depthScaleMax = "DepthScaleMax"
        case depthScaleMin = "DepthScaleMin"
        case widthHalf = "WidthHalf"
        case widthHalfNearest = "WidthHalfNearest"
    }
}
