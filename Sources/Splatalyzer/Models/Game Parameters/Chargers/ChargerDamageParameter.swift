//
//  ChargerDamageParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerDamageParameter: Codable {
    let type: String
    let valueFullCharge: Int
    let valueMaxCharge: Int
    let valueMinCharge: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case valueFullCharge = "ValueFullCharge"
        case valueMaxCharge = "ValueMaxCharge"
        case valueMinCharge = "ValueMinCharge"
    }
}
