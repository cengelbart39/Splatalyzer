//
//  SharedParameters.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

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


struct DistanceDamage: Codable {
    let damage: Int
    let distance: Double
    
    enum CodingKeys: String, CodingKey {
        case damage = "Damage"
        case distance = "Distance"
    }
}

struct HighMidLow: Codable {
    let high: Double?
    let low: Double?
    let mid: Double?
    
    enum CodingKeys: String, CodingKey {
        case high = "High"
        case low = "Low"
        case mid = "Mid"
    }
    
    init() {
        self.high = 0
        self.low = 0
        self.mid = 0
    }
    
    init(high: Double?, mid: Double?, low: Double?) {
        self.high = high
        self.low = low
        self.mid = mid
    }
    
    init?(_ arr: [Double]) {
        if arr.count != 3 { return nil }
        
        let sorted = arr.sorted(by: {$0 < $1})
        
        self.low = sorted[0]
        self.mid = sorted[1]
        self.high = sorted[2]
    }
    
    func hasEffect() -> Bool {
        return high != mid || mid != low
    }
}

struct KnockbackParameter: Codable {
    let accel: Double
    let bias: Double?
    let degree: Double?
    let directionZeroAccelRate: Double?
    let distance: Double?
    
    enum CodingKeys: String, CodingKey {
        case accel = "Accel"
        case bias = "Bias"
        case degree = "Degree"
        case directionZeroAccelRate = "DirectionZeroAccelRate"
        case distance = "Distance"
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

struct SplashAroundParameter: Codable {
    let num: Int?
    let offsetY: Double?
    let paintRadius: Double
    let pitchMax: Double?
    let pitchMin: Double?
    let velocityMax: Double?
    let velocityMin: Double?
    
    enum CodingKeys: String, CodingKey {
        case num = "Num"
        case offsetY = "OffsetY"
        case paintRadius = "PaintRadius"
        case pitchMax = "PitchMax"
        case pitchMin = "PitchMin"
        case velocityMax = "VelocityMax"
        case velocityMin = "VelocityMin"
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

struct SubSpecialSpecUpList: Codable {
    let specUpType: String?
    let value: HighMidLow
    
    enum CodingKeys: String, CodingKey {
        case specUpType = "SpecUpType"
        case value = "Value"
    }
}

struct XYData: Codable {
    let x: Double
    let y: Double
    
    enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
    }
}

struct XYZData: Codable {
    let x: Double
    let y: Double
    let z: Double
    
    enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
        case z = "Z"
    }
}
