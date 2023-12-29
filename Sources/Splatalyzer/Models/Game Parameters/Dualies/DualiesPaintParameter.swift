//
//  DualiesPaintParameter.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesPaintParameter: Codable {
    let type: String
    let degreeUseDepthScaleMin: Double
    let depthScaleMax: Double
    let depthScaleMaxBreakFree: Double
    let depthScaleMin: Double
    let depthScaleMinBreakFree: Double
    let distanceMiddle: Double
    let widthHalfFar: Double
    let widthHalfMiddle: Double
    let widthHalfNear: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case degreeUseDepthScaleMin = "DegreeUseDepthScaleMin"
        case depthScaleMax = "DepthScaleMax"
        case depthScaleMaxBreakFree = "DepthScaleMaxBreakFree"
        case depthScaleMin = "DepthScaleMin"
        case depthScaleMinBreakFree = "DepthScaleMinBreakFree"
        case distanceMiddle = "DistanceMiddle"
        case widthHalfFar = "WidthHalfFar"
        case widthHalfMiddle = "WidthHalfMiddle"
        case widthHalfNear = "WidthHalfNear"
    }
}
