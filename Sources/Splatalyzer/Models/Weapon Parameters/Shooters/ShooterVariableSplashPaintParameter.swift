//
//  ShooterVariableSplashPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterVariableSplashPaintParameter: Codable {
    let type: String
    let widthHalf: Double
    let widthHalfNearest: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case widthHalf = "WidthHalf"
        case widthHalfNearest = "WidthHalfNearest"
    }
}
