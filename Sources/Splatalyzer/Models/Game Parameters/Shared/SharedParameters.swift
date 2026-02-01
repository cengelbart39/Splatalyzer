//
//  SharedParameters.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

public struct AdditionalMoveParameter: Parametable {
    public let xRate: Double
    public let yMax: Double
    public let yPlusRate: Double
    public let zRate: Double?
    
    public enum CodingKeys: String, CodingKey {
        case xRate = "XRate"
        case yMax = "YMax"
        case yPlusRate = "YPlusRate"
        case zRate = "ZRate"
    }
}

public struct DistanceDamage: Parametable {
    public let damage: Int
    public let distance: Double
    
    public enum CodingKeys: String, CodingKey {
        case damage = "Damage"
        case distance = "Distance"
    }
}

/// Represents a set of values that have an upperbound, lowerbound, and median value
public struct HighMidLow: Codable, Equatable, Sendable {
    public let high: Double?
    public let low: Double?
    public let mid: Double?
    
    public enum CodingKeys: String, CodingKey {
        case high = "High"
        case low = "Low"
        case mid = "Mid"
    }
    
    /// Initializes all properties to `0`
    public init() {
        self.high = 0
        self.low = 0
        self.mid = 0
    }
    
    /// Initializes properties with custom values
    public init(_ x: Double?, _ y: Double?, _ z: Double?) {
        self.high = x
        self.mid = y
        self.low = z
    }
    
    /// Initializes using a 3-element `[Double]`; `nil` if has a different length
    public init?(_ arr: [Double]) {
        if arr.count != 3 { return nil }
        
        self.high = arr[0]
        self.mid = arr[1]
        self.low = arr[2]
    }
    
    /// Determines if the instance has a meaningful effect
    func hasEffect() -> Bool {
        return high != mid || mid != low
    }
}

public struct KnockbackParameter: Parametable {
    public let accel: Double?
    public let bias: Double?
    public let degree: Double?
    public let directionZeroAccelRate: Double?
    public let distance: Double?
    
    public enum CodingKeys: String, CodingKey {
        case accel = "Accel"
        case bias = "Bias"
        case degree = "Degree"
        case directionZeroAccelRate = "DirectionZeroAccelRate"
        case distance = "Distance"
    }
}


public struct RateData: Parametable {
    public let data: [Double]
    public let maxX: Double
    public let type: String
    
    public enum CodingKeys: String, CodingKey {
        case data = "Data"
        case maxX = "MaxX"
        case type = "Type"
    }
}

public struct SplashAroundParameter: Parametable {
    public let num: Int?
    public let offsetY: Double?
    public let paintRadius: Double
    public let pitchMax: Double?
    public let pitchMin: Double?
    public let velocityMax: Double?
    public let velocityMin: Double?
    
    public enum CodingKeys: String, CodingKey {
        case num = "Num"
        case offsetY = "OffsetY"
        case paintRadius = "PaintRadius"
        case pitchMax = "PitchMax"
        case pitchMin = "PitchMin"
        case velocityMax = "VelocityMax"
        case velocityMin = "VelocityMin"
    }
}

public struct SubSpecialSpecUpList: Parametable {
    public let specUpType: String?
    public let value: HighMidLow
    
    public enum CodingKeys: String, CodingKey {
        case specUpType = "SpecUpType"
        case value = "Value"
    }
}

public struct XYData: Parametable {
    public let x: Double
    public let y: Double
    
    public enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
    }
}

public struct XYZData: Parametable {
    public let x: Double
    public let y: Double
    public let z: Double
    
    public enum CodingKeys: String, CodingKey {
        case x = "X"
        case y = "Y"
        case z = "Z"
    }
}
