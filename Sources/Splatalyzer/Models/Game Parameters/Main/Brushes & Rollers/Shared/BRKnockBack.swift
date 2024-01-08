//
//  BRKnockBack.swift
//  
//
//  Created by Christopher Engelbart on 1/7/24.
//

import Foundation

struct BRKnockBack: Codable {
    let accelMax: Double
    let accelMin: Double
    let myVelocityRate: Double
    let opponentVelocityRate: Double
    
    enum CodingKeys: String, CodingKey {
        case accelMax = "AccelMax"
        case accelMin = "AccelMin"
        case myVelocityRate = "MyVelocityRate"
        case opponentVelocityRate = "OpponentVelocityRate"
    }
}
