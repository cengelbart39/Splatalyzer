//
//  ChargerSplashPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerSplashPaintParameter: Codable {
    let type: String
    let depthHalfFullCharge: Double
    let depthHalfMaxCharge: Double
    let depthHalfMinCharge: Double
    let lastSplashRateFullCharge: Double?
    let lastSplashRateMaxCharge: Double?
    let lastSplashRateMinCharge: Double?
    let radiusSpawnNearest: Double
    let widthHalfFullCharge: Double
    let widthHalfMaxCharge: Double
    let widthHalfMinCharge: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case depthHalfFullCharge = "DepthHalfFullCharge"
        case depthHalfMaxCharge = "DepthHalfMaxCharge"
        case depthHalfMinCharge = "DepthHalfMinCharge"
        case lastSplashRateFullCharge = "LastSplashRateFullCharge"
        case lastSplashRateMaxCharge = "LastSplashRateMaxCharge"
        case lastSplashRateMinCharge = "LastSplashRateMinCharge"
        case radiusSpawnNearest = "RadiusSpawnNearest"
        case widthHalfFullCharge = "WidthHalfFullCharge"
        case widthHalfMaxCharge = "WidthHalfMaxCharge"
        case widthHalfMinCharge = "WidthHalfMinCharge"
    }
}
