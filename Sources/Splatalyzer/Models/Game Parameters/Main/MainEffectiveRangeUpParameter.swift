//
//  MainEffectiveRangeUpParameter.swift
//
//
//  Created by Christopher Engelbart on 1/7/24.
//

import Foundation

public struct MainEffectiveRangeUpParameter: Codable {
    public let type: String
    public let baseDistance: Double?
    public let high: Double?
    public let low: Double?
    public let mid: Double?
    public let validMinCharge: Bool?
    
    public enum CodingKeys: String, CodingKey {
        case type = "$type"
        case baseDistance = "BaseDistance"
        case high = "High"
        case low = "Low"
        case mid = "Mid"
        case validMinCharge = "ValidMinCharge"
    }
}
