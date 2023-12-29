//
//  PlayerBeaconSubSpecUpParameter.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct PlayerBeaconSubSpecUpParameter: Parametable {
    let type: String
    let subSpecUpParam: SubSpecUpParameter
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case subSpecUpParam = "SubSpecUpParam"
    }
}

struct SubSpecUpParameter: Codable {
    let high: Double
    let mid: Double
    
    enum CodingKeys: String, CodingKey {
        case high = "High"
        case mid = "Mid"
    }
}
