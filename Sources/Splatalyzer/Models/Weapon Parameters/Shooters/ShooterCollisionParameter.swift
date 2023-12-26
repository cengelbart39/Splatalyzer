//
//  ShooterCollisionParameter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterCollisionParameter: Codable {
    let type: String
    let changeFrameForField: Int
    let endRadiusForField: Double
    let endRadiusForPlayer: Double
    let friendThroughFrameForPlayer: Int
    let initRadiusForField: Double
    let initRadiusForPlayer: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case changeFrameForField = "ChangeFrameForField"
        case endRadiusForField = "EndRadiusForField"
        case endRadiusForPlayer = "EndRadiusForPlayer"
        case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
        case initRadiusForField = "InitRadiusForField"
        case initRadiusForPlayer = "InitRadiusForPlayer"
    }
}
