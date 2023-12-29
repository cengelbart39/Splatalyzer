//
//  SlosherSplashSpiralParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherSplashSpiralParameter: Codable {
    let type: String
    let collisionParam: SlosherCollisionParameter
    let lifeFrame: Int
    let roundSplitNum: Int
    let sameTimeSpawnNum: Int
    let spawnSpanChangeEndFrame: Int
    let spawnSpanChangeStartFrame: Int
    let spawnSpanFrameFirst: Int
    let spawnSpanFrameLast: Int
    let spawnSpeedChangeEndFallHeight: Double
    let spawnSpeedChangeStartFallHeight: Double
    let spawnSpeedFirst: Double
    let spawnSpeedLast: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case collisionParam = "CollisionParam"
        case lifeFrame = "LifeFrame"
        case roundSplitNum = "RoundSplitNum"
        case sameTimeSpawnNum = "SameTimeSpawnNum"
        case spawnSpanChangeEndFrame = "SpawnSpanChangeEndFrame"
        case spawnSpanChangeStartFrame = "SpawnSpanChangeStartFrame"
        case spawnSpanFrameFirst = "SpawnSpanFrameFirst"
        case spawnSpanFrameLast = "SpawnSpanFrameLast"
        case spawnSpeedChangeEndFallHeight = "SpawnSpeedChangeEndFallHeight"
        case spawnSpeedChangeStartFallHeight = "SpawnSpeedChangeStartFallHeight"
        case spawnSpeedFirst = "SpawnSpeedFirst"
        case spawnSpeedLast = "SpawnSpeedLast"
    }
}
