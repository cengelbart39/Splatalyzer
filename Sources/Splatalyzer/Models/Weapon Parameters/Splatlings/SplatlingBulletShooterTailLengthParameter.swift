//
//  SplatlingBulletShooterTailLengthParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingBulletShooterTailLengthParameter: Codable {
    let type: String
    let maxLengthFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case maxLengthFrame = "MaxLengthFrame"
    }
}
