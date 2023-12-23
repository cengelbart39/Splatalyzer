//
//  ChargerWeaponScopeParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerWeaponScopeParameter: Codable {
    let type: String
    let cameraFovy: Double?
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case cameraFovy = "CameraFovy"
    }
}
