//
//  SharedWeaponInfo.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct ExtraDamageRateInfo: Codable {
    let damageRateInfo: DamageRateInfo
    let extraInfo: ExtraInfo
    
    enum CodingKeys: String, CodingKey {
        case damageRateInfo = "DamageRateInfoRow"
        case extraInfo = "ExtraInfo"
    }
}

struct ExtraHitEffectorInfo: Codable {
    let extraInfo: ExtraInfo
    let hitEffectorType: HitEffectorType
    
    enum CodingKeys: String, CodingKey {
        case extraInfo = "ExtraInfo"
        case hitEffectorType = "HitEffectorType"
    }
}

enum ModeType: String, Codable {
    case coop = "Coop"
    case mission = "Mission"
    case rival = "Rival"
    case versus = "Versus"
    case other = "Other"
}

