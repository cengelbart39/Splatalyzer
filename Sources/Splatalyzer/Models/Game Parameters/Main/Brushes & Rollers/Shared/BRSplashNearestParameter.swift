//
//  BRSplashNearestParameter.swift
//  
//
//  Created by Christopher Engelbart on 1/7/24.
//

import Foundation

struct BRSplashNearestParameter: Codable {
    let loopNum: Int?
    let orderNum: Int?
    let spawnParam: SpawnParameter
    
    enum CodingKeys: String, CodingKey {
        case loopNum = "LoopNum"
        case orderNum = "OrderNum"
        case spawnParam = "SpawnParam"
    }
}

extension BRSplashNearestParameter {
    struct SpawnParameter: Codable {
        let maxHeight: Double?
        let offset: XYZData
        let paintDepthScale: Double?
        let paintWidthHalf: Double
        let visible: Bool?
        
        enum CodingKeys: String, CodingKey {
            case maxHeight = "MaxHeight"
            case offset = "Offset"
            case paintDepthScale = "PaintDepthScale"
            case paintWidthHalf = "PaintWidthHalf"
            case visible = "Visible"
        }
    }
}
