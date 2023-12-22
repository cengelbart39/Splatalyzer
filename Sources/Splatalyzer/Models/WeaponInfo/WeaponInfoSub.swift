//
//  WeaponInfoSub.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct WeaponInfoSub: Codable, Identifiable {
    let defaultDamageRate: DamageRateInfo
    let defaultHitEffector: HitEffectorType
    let extraDamageRateInfo: [ExtraDamageRateInfo]
    let extraHitEffectorInfo: [ExtraHitEffectorInfo]
    let id: Int
    let label: String
    let lockerInfo: String
    let npcActor: String
    let specActor: String
    let type: ModeType
    let rowId: SubRowId
    
    enum CodingKeys: String, CodingKey {
        case defaultDamageRate = "DefaultDamageRateInfoRow"
        case defaultHitEffector = "DefaultHitEffectorType"
        case extraDamageRateInfo = "ExtraDamageRateInfoRowSet"
        case extraHitEffectorInfo = "ExtraHitEffectorInfoSet"
        case id = "Id"
        case label = "Label"
        case lockerInfo = "LockerGoodsSubWeaponInfo"
        case npcActor = "NpcActor"
        case specActor = "SpecActor"
        case type = "Type"
        case rowId = "__RowId"
    }
}

extension Array where Element == WeaponInfoSub {
    func lookupByRowId(_ rowId: SubRowId) -> WeaponInfoSub? {
        for item in self {
            if item.rowId == rowId {
                return item
            }
        }
        
        return nil
    }
}

