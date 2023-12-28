//
//  SubAreaParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubAreaParameter: Codable {
    let type: String
    let areaOffsetY: Double?
    let distance: SubHighMiddleLow?
    let distanceForOff: Double?
    let effectParam: SubAreaEffectParameter?
    let frame: Int?
    let markingFrameSubSpec: SubHighMiddleLow?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case areaOffsetY = "AreaOffsetY"
        case distance = "Distance"
        case distanceForOff = "DistanceForOff"
        case effectParam = "EffectParam"
        case frame = "Frame"
        case markingFrameSubSpec = "MarkingFrameSubSpec"
    }
}


struct SubAreaEffectParameter: Codable {
    let level: [Level]
    
    enum CodingKeys: String, CodingKey {
        case level = "Level"
    }
    
    struct Level: Codable {
        let frame: Int
        let nextLevelCount: Int
        
        enum CodingKeys: String, CodingKey {
            case frame = "Frame"
            case nextLevelCount = "NextLevelCount"
        }
    }
}
