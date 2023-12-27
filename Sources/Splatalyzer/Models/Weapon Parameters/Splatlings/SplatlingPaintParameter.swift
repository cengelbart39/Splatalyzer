//
//  SplatlingPaintParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingPaintParameter: Codable {
    let type: String
    let depthScaleMax: Double
    let depthScaleMaxBreakFree: Double
    let depthScaleMin: Double
    let depthScaleMinBreakFree: Double
    let distanceFar: Double?
    let distanceMiddle: Double
    let distanceNear: Double?
    let heightUseDepthScaleMaxBreakFree: Double
    let heightUseDepthScaleMinBreakFree: Double?
    let widthHalfFar: Double
    let widthHalfMiddle: Double
    let widthHalfNear: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case depthScaleMax = "DepthScaleMax"
        case depthScaleMaxBreakFree = "DepthScaleMaxBreakFree"
        case depthScaleMin = "DepthScaleMin"
        case depthScaleMinBreakFree = "DepthScaleMinBreakFree"
        case distanceFar = "DistanceFar"
        case distanceMiddle = "DistanceMiddle"
        case distanceNear = "DistanceNear"
        case heightUseDepthScaleMaxBreakFree = "HeightUseDepthScaleMaxBreakFree"
        case heightUseDepthScaleMinBreakFree = "HeightUseDepthScaleMinBreakFree"
        case widthHalfFar = "WidthHalfFar"
        case widthHalfMiddle = "WidthHalfMiddle"
        case widthHalfNear = "WidthHalfNear"
    }
}
