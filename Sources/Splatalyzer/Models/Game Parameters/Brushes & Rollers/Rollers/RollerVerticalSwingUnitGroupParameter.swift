//
//  RollerVerticalSwingUnitGroupParameter.swift
//
//
//  Created by Christopher Engelbart on 12/25/23.
//

import Foundation

struct RollerVerticalSwingUnitGroupParameter: Codable {
    let type: String
    let damageParam: BRDamageParameter
    let spawnSplashBetweenLength: Double
    let spawnSplashFirstLength: Double
    let spawnSplashNum: Int
    let splashNearestParam: BRSplashNearestParameter
    let splashPaintParam: RollerSplashPaintParameter
    let unit: [BRUnit]
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case damageParam = "DamageParam"
        case spawnSplashBetweenLength = "SpawnSplashBetweenLength"
        case spawnSplashFirstLength = "SpawnSplashFirstLength"
        case spawnSplashNum = "SpawnSplashNum"
        case splashNearestParam = "SplashNearestParam"
        case splashPaintParam = "SplashPaintParam"
        case unit = "Unit"
    }
}

struct RollerSplashPaintParameter: Codable {
    let depthScaleMax: Double
    let depthScaleMin: Double
    let widthHalf: Double
    let widthHalfNearest: Double
    
    enum CodingKeys: String, CodingKey {
        case depthScaleMax = "DepthScaleMax"
        case depthScaleMin = "DepthScaleMin"
        case widthHalf = "WidthHalf"
        case widthHalfNearest = "WidthHalfNearest"
    }
}