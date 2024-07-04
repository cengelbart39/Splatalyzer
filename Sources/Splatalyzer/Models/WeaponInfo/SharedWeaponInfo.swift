//
//  SharedWeaponInfo.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

public struct ExtraDamageRateInfo: Codable, Sendable {
    public let damageRateInfo: DamageRateInfo
    public let extraInfo: ExtraInfo
    
    public enum CodingKeys: String, CodingKey {
        case damageRateInfo = "DamageRateInfoRow"
        case extraInfo = "ExtraInfo"
    }
}

public struct ExtraHitEffectorInfo: Codable, Sendable {
    public let extraInfo: ExtraInfo
    public let hitEffectorType: HitEffectorType
    
    public enum CodingKeys: String, CodingKey {
        case extraInfo = "ExtraInfo"
        case hitEffectorType = "HitEffectorType"
    }
}

public enum ModeType: String, Codable, Sendable {
    case coop = "Coop"
    case mission = "Mission"
    case rival = "Rival"
    case versus = "Versus"
    case other = "Other"
}

