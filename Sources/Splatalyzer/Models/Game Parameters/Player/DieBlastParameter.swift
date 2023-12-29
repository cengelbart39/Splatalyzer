//
//  DieBlastParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct DieBlastParameter: Parametable {
    let type: String
    let collisionRadiusForPaint: Double
    let crossPaintCheckLength: Double
    let crossPaintRadius: Double
    let crossPaintTexture: String
    let damageOffsetY: Double
    let knockbackParam: KnockbackParameter
    let paintOffsetY: Double
    let paintRadius: Double
    let paintTexture: String
    let splashAroundParam: SplashAroundParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case collisionRadiusForPaint = "CollisionRadiusForPaint"
        case crossPaintCheckLength = "CrossPaintCheckLength"
        case crossPaintRadius = "CrossPaintRadius"
        case crossPaintTexture = "CrossPaintTexture"
        case damageOffsetY = "DamageOffsetY"
        case knockbackParam = "KnockBackParam"
        case paintOffsetY = "PaintOffsetY"
        case paintRadius = "PaintRadius"
        case paintTexture = "PaintTexture"
        case splashAroundParam = "SplashAroundParam"
    }
}
