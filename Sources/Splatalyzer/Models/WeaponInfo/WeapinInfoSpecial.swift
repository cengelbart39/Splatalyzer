//
//  WeaponInfoSpecial.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

public typealias WeaponInfoSpecial = [WeaponInfoSpecialItem]

public struct WeaponInfoSpecialItem: Codable, Identifiable {
    public let defaultDamageRate: DamageRateInfo
    public let defaultHitEffector: HitEffectorType
    public let extraDamageRateInfo: [ExtraDamageRateInfo]
    public let extraHitEffectorInfo: [ExtraHitEffectorInfo]
    public let id: Int
    public let label: String
    public let npcActor: String
    public let specActor: String
    public let standAlone: Bool
    public let type: ModeType
    public let rowId: SpecialRowId
    
    public enum CodingKeys: String, CodingKey {
        case defaultDamageRate = "DefaultDamageRateInfoRow"
        case defaultHitEffector = "DefaultHitEffectorType"
        case extraDamageRateInfo = "ExtraDamageRateInfoRowSet"
        case extraHitEffectorInfo = "ExtraHitEffectorInfoSet"
        case id = "Id"
        case label = "Label"
        case npcActor = "NpcActor"
        case specActor = "SpecActor"
        case standAlone = "StandAlone"
        case type = "Type"
        case rowId = "__RowId"
    }
}

extension Array where Element == WeaponInfoSpecialItem {
    public func lookupByRowId(_ rowId: SpecialRowId) -> WeaponInfoSpecialItem? {
        for item in self {
            if item.rowId == rowId {
                return item
            }
        }
        
        return nil
    }
}
