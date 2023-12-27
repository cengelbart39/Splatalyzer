//
//  SplatlingVariableShotParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingVariableShotParameter: Codable {
    let type: String
    let jumpDegBiasDecreaseStartFrame: Int
    let jumpDegBiasEndFrame: Int
    let jumpDegBiasMax: Double
    let jumpDegSwerve: Double
    let moveSpeed: Double
    let pitchDegBias: Double
    let pitchDegSwerve: Double
    let repeatFrame: Int
    let standDegBiasMax: Double
    let standDegSwerve: Double
    let variableInterpolatedFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
        case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
        case jumpDegBiasMax = "Jump_DegBiasMax"
        case jumpDegSwerve = "Jump_DegSwerve"
        case moveSpeed = "MoveSpeed"
        case pitchDegBias = "PitchDegBias"
        case pitchDegSwerve = "PitchDegSwerve"
        case repeatFrame = "RepeatFrame"
        case standDegBiasMax = "Stand_DegBiasMax"
        case standDegSwerve = "Stand_DegSwerve"
        case variableInterpolatedFrame = "VariableInterpolatedFrame"
    }
}
