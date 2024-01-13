//
//  BRKnockBack.swift
//  
//
//  Created by Christopher Engelbart on 1/7/24.
//

import Foundation

public struct BRKnockBack: Codable {
    public let accelMax: Double
    public let accelMin: Double
    public let myVelocityRate: Double
    public let opponentVelocityRate: Double
    
    public enum CodingKeys: String, CodingKey {
        case accelMax = "AccelMax"
        case accelMin = "AccelMin"
        case myVelocityRate = "MyVelocityRate"
        case opponentVelocityRate = "OpponentVelocityRate"
    }
}
