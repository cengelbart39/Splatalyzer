//
//  ChargerCollisionParameter.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerCollisionParameter: Codable {
    let type: String
    let endRadiusForField: Double
    let endRadiusForPlayer: Double
    let initRadiusForField: Double
    let initRadiusForPlayer: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case endRadiusForField = "EndRadiusForField"
        case endRadiusForPlayer = "EndRadiusForPlayer"
        case initRadiusForField = "InitRadiusForField"
        case initRadiusForPlayer = "InitRadiusForPlayer"
    }
}
