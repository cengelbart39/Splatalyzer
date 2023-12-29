//
//  ShooterSplashPaintParameter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterSplashPaintParameter: Codable {
    let type: String
    let depthMaxDropHeight: Double
    let depthMinDropHeight: Double
    let widthHalf: Double
    let widthHalfNearest: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case depthMaxDropHeight = "DepthMaxDropHeight"
        case depthMinDropHeight = "DepthMinDropHeight"
        case widthHalf = "WidthHalf"
        case widthHalfNearest = "WidthHalfNearest"
    }
}
