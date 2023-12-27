//
//  SlosherWeaponParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherWeaponParameter: Codable {
    let type: String
    let frameOffsetDegreeRate: Double
    let frameOffsetMaxDegree: Double
    let frameOffsetMaxMoveLength: Double
    let inkConsume: Double
    let inkRecoverStop: Int
    let moveLmtFrame: Int
    let moveSpeed: Double
    let postDelayFrame: Int
    let repeatFrame: Int
    let shotGuide: SlosherWeaponShotGuide
    let swingLiftAnimFrame: Double
    let swingLiftFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case frameOffsetDegreeRate = "FrameOffsetDegreeRate"
        case frameOffsetMaxDegree = "FrameOffsetMaxDegree"
        case frameOffsetMaxMoveLength = "FrameOffsetMaxMoveLength"
        case inkConsume = "InkConsume"
        case inkRecoverStop = "InkRecoverStop"
        case moveLmtFrame = "MoveLmtFrame"
        case moveSpeed = "MoveSpeed"
        case postDelayFrame = "PostDelayFrame"
        case repeatFrame = "RepeatFrame"
        case shotGuide = "ShotGuide"
        case swingLiftAnimFrame = "SwingLiftAnimFrame"
        case swingLiftFrame = "SwingLiftFrame"
    }
}

struct SlosherWeaponShotGuide: Codable {
    let bulletOrderNumInUnit: Int?
    let frame: Int
    let unitOrderNum: Int
    
    enum CodingKeys: String, CodingKey {
        case bulletOrderNumInUnit = "BulletOrderNumInUnit"
        case frame = "Frame"
        case unitOrderNum = "UnitOrderNum"
    }
}
