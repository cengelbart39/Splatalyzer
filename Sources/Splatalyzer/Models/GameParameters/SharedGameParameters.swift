//
//  SharedGameParameters.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct KnockbackParameter: Codable {
    let accel: Double
    
    enum CodingKeys: String, CodingKey {
        case accel = "Accel"
    }
}

struct SplashAroundParameter: Codable {
    let num: Int
    let paintRadius: Double
    let pitchMax: Double
    let velocityMax: Double
    let velocityMin: Double
    
    enum CodingKeys: String, CodingKey {
        case num = "Num"
        case paintRadius = "PaintRadius"
        case pitchMax = "PitchMax"
        case velocityMax = "VelocityMax"
        case velocityMin = "VelocityMin"
    }
}

struct RateData: Codable {
    let data: [Double]
    let maxX: Double
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case data = "Data"
        case maxX = "MaxX"
        case type = "Type"
    }
}

struct AdditionalMoveParameter: Codable {
    let xRate: Double
    let yMax: Double
    let yPlusRate: Double
    let zRate: Double
    
    enum CodingKeys: String, CodingKey {
        case xRate = "XRate"
        case yMax = "YMax"
        case yPlusRate = "YPlusRate"
        case zRate = "ZRate"
    }
}

struct SpawnSpeedZSpecUp: Codable {
    let high: Double
    let low: Double
    let mid: Double
    
    enum CodingKeys: String, CodingKey {
        case high = "High"
        case low = "Low"
        case mid = "Mid"
    }
}
