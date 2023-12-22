//
//  PlayerLeagueInGameModifierParameter.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct PlayerLeagueInGameModifierParameter: Parametable {
    let type: String
    let highJumpExCoefSpecial: Double
    let highJumpVelCoef: Double
    let highJumpVelCoefSqdAct: Double
    let highJumpVelLmtCoef: Double
    let swimSpeedUpMaxSpeed: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case highJumpExCoefSpecial = "HighJump_ExCoef_Special"
        case highJumpVelCoef = "HighJump_JumpVelCoef"
        case highJumpVelCoefSqdAct = "HighJump_JumpVelCoef_SqdAct"
        case highJumpVelLmtCoef = "HighJump_JumpVelLmtCoef"
        case swimSpeedUpMaxSpeed = "SquidSpeedUp_MaxSpeed"
    }
}
