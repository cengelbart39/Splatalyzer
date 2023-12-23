//
//  ChargerPaintParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerPaintParameter: Codable {
    let type: String
    let radiusFullCharge: Double
    let radiusMaxCharge: Double
    let radiusMinCharge: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case radiusFullCharge = "RadiusFullCharge"
        case radiusMaxCharge = "RadiusMaxCharge"
        case radiusMinCharge = "RadiusMinCharge"
    }
}
