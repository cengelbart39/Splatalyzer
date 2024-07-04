//
//  BRSplashNearestParameter.swift
//  
//
//  Created by Christopher Engelbart on 1/7/24.
//

import Foundation

public struct BRSplashNearestParameter: Parametable {
    public let loopNum: Int?
    public let orderNum: Int?
    public let spawnParam: SpawnParameter
    
    public enum CodingKeys: String, CodingKey {
        case loopNum = "LoopNum"
        case orderNum = "OrderNum"
        case spawnParam = "SpawnParam"
    }
}

extension BRSplashNearestParameter {
    public struct SpawnParameter: Parametable {
        public let maxHeight: Double?
        public let offset: XYZData
        public let paintDepthScale: Double?
        public let paintWidthHalf: Double
        public let visible: Bool?
        
        public enum CodingKeys: String, CodingKey {
            case maxHeight = "MaxHeight"
            case offset = "Offset"
            case paintDepthScale = "PaintDepthScale"
            case paintWidthHalf = "PaintWidthHalf"
            case visible = "Visible"
        }
    }
}
