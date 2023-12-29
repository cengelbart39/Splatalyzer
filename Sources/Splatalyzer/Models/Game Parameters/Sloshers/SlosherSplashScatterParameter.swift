//
//  SlosherSplashScatterParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherSplashScatterParameter: Codable {
    let type: String
    let collisionParam: SlosherCollisionParameter
    let paintRadius: Double
    let spawnFirstFrame: Int
    let spawnMaxDegree: Double
    let spawnMaxNum: Int
    let spawnMinDegree: Double
    let spawnOffsetMax: Double
    let spawnOffsetMin: Double
    let spawnSpanChangeEndFrame: Int
    let spawnSpanFrameFirst: Int
    let spawnSpanFrameLast: Int
    let spawnSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case collisionParam = "CollisionParam"
        case paintRadius = "PaintRadius"
        case spawnFirstFrame = "SpawnFirstFrame"
        case spawnMaxDegree = "SpawnMaxDegree"
        case spawnMaxNum = "SpawnMaxNum"
        case spawnMinDegree = "SpawnMinDegree"
        case spawnOffsetMax = "SpawnOffsetMax"
        case spawnOffsetMin = "SpawnOffsetMin"
        case spawnSpanChangeEndFrame = "SpawnSpanChangeEndFrame"
        case spawnSpanFrameFirst = "SpawnSpanFrameFirst"
        case spawnSpanFrameLast = "SpawnSpanFrameLast"
        case spawnSpeed = "SpawnSpeed"
    }
}
