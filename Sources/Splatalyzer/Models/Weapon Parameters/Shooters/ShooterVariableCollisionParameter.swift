//
//  ShooterVariableCollisionParameter.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterVariableCollisionParameter: Codable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}
