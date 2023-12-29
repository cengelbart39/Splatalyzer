//
//  SubBulletInformImpactControlForGeyserParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubBulletInformImpactControlForGeyserParameter: Codable {
    let type: String
    let addSpeedPerImpact: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case addSpeedPerImpact = "AddSpeedPerImpact"
    }
}
