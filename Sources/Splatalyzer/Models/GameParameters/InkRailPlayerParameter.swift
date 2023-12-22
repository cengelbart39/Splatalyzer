//
//  InkRailPlayerParameter.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct InkRailPlayerParameter: Parametable {
    let type: String
    let finishImmAfterFrame: Int
    let finishPlayerVelRateY: Double
    let modelDynamicsUnitParam: ModelDynamicsUnitParameter
    let playerJumpRightSpeed: Double
    let switchColBulletStarDist: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case finishImmAfterFrame = "FinishImmAfterFrame"
        case finishPlayerVelRateY = "FinishPlayerVelRateY"
        case modelDynamicsUnitParam = "ModelDynamicsUnitParam"
        case playerJumpRightSpeed = "PlayerJumpRightSpeed"
        case switchColBulletStarDist = "SwitchColBulletStartDist"
    }
}

struct ModelDynamicsUnitParameter: Codable {
    let airRes: Double
    let connectionForce: Double
    let endBoneName: String
    let gravity: Double
    let limitAngle: Double
    let limitLengthRateDiff: Double
    let startBoneName: String
    
    enum CodingKeys: String, CodingKey {
        case airRes = "AirRes"
        case connectionForce = "ConnectionForce"
        case endBoneName = "EndBoneName"
        case gravity = "Gravity"
        case limitAngle = "LimitAngle"
        case limitLengthRateDiff = "LimitLengthRateDiff"
        case startBoneName = "StartBoneName"
    }
}
