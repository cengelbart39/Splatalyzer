//
//  DualiesSideStepBlastParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesSideStepBlastParameter: Codable {
    let type: String
    let crossPaintCheckLength: Double
    let crossPaintRadius: Double
    let damageLinear: Bool
    let distanceDamage: [DistanceDamage]
    let paintHeight: Double
    let paintRadius: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case damageLinear = "DamageLinear"
        case distanceDamage = "DistanceDamage"
        case paintHeight = "PaintHeight"
        case paintRadius = "PaintRadius"
    }
}
