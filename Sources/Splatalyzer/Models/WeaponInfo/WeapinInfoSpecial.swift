//
//  WeaponInfoSpecial.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct WeaponInfoSpecial: Codable, Identifiable {
    let defaultDamageRate: DamageRateInfo
    let defaultHitEffector: HitEffectorType
    let extraDamageRateInfo: [ExtraDamageRateInfo]
    let extraHitEffectorInfo: [ExtraHitEffectorInfo]
    let id: Int
    let label: String
    let npcActor: String
    let specActor: String
    let standAlone: Bool
    let type: ModeType
    let rowId: SpecialRowId
    
    enum CodingKeys: String, CodingKey {
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

extension Array where Element == WeaponInfoSpecial {
    func lookupByRowId(_ rowId: SpecialRowId) -> WeaponInfoSpecial? {
        for item in self {
            if item.rowId == rowId {
                return item
            }
        }
        
        return nil
    }
}
