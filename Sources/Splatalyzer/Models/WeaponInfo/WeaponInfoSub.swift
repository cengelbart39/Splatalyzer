//
//  WeaponInfoSub.swift
//  
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

public typealias WeaponInfoSub = [WeaponInfoSubItem]

public extension WeaponInfoSub {
    func getItem(for weapon: SubWeapon) -> WeaponInfoSubItem? {
        for item in self {
            if item.rowId.rawValue == weapon.rawValue {
                return item
            }
        }
        
        return nil
    }
}

public struct WeaponInfoSubItem: Codable, Identifiable {
    public let defaultDamageRate: DamageRateInfo
    public let defaultHitEffector: HitEffectorType
    public let extraDamageRateInfo: [ExtraDamageRateInfo]
    public let extraHitEffectorInfo: [ExtraHitEffectorInfo]
    public let id: Int
    public let label: String
    public let lockerInfo: String
    public let npcActor: String
    public let specActor: String
    public let type: ModeType
    public let rowId: SubRowId
    
    public enum CodingKeys: String, CodingKey {
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

extension Array where Element == WeaponInfoSubItem {
    public func lookupByRowId(_ rowId: SubRowId) -> WeaponInfoSubItem? {
        for item in self {
            if item.rowId == rowId {
                return item
            }
        }
        
        return nil
    }
}

