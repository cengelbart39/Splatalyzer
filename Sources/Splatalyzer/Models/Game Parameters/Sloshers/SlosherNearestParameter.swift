//
//  SlosherNearestParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherNearestParameter: Codable {
    let type: String
    let drawSizeCollisionPaintParam: SlosherDrawSizeCollisionPaintParameter
    let spawnOffset: XYData
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case drawSizeCollisionPaintParam = "DrawSizeCollisionPaintParam"
        case spawnOffset = "SpawnOffset"
    }
}

struct SlosherDrawSizeCollisionPaintParameter: Codable {
    let collisionParam: SlosherCollisionParameter?
    let paintDepthScale: Double
    let paintWidthHalf: Double
    
    enum CodingKeys: String, CodingKey {
        case collisionParam = "CollisionParam"
        case paintDepthScale = "PaintDepthScale"
        case paintWidthHalf = "PaintWidthHalf"
    }
}

struct SlosherCollisionParameter: Codable {
    let endRadiusForField: Double?
    let endRadiusForPlayer: Double
    let initRadiusForField: Double?
    let initRadiusForPlayer: Double
    
    enum CodingKeys: String, CodingKey {
        case endRadiusForField = "EndRadiusForField"
        case endRadiusForPlayer = "EndRadiusForPlayer"
        case initRadiusForField = "InitRadiusForField"
        case initRadiusForPlayer = "InitRadiusForPlayer"
    }
}
