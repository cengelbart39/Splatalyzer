//
//  DamageParameter.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct DamageParameter: Parametable {
    let type: String
    let damageRecivers: [DamagerReciever]
    let damageSenders: [DamageSender]
}

struct DamagerReciever: Codable {
    let damagerHistMaxSize: Int
    let damageRateInfoCol: String
    let flag: [String]
    let isManualRefRigidBody: Bool
    let name: String
    let refHitPointerHolder: [String]
    let refRigidBody: [String]
    let shotTargetLocatorName: String
    
    enum CodingKeys: String, CodingKey {
        case damagerHistMaxSize = "DamageHistMaxSize"
        case damageRateInfoCol = "DamageRateInfoCol"
        case flag = "Flag"
        case isManualRefRigidBody = "IsManualRefRigidBody"
        case name = "Name"
        case refHitPointerHolder = "RefHitPointHolder"
        case refRigidBody = "RefRigidBody"
        case shotTargetLocatorName = "ShotTargetLocatorName"
    }
}

struct DamageSender: Codable {
    let name: String
    let refRigidBody: [String]
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case refRigidBody = "RefRigidBody"
    }
}
