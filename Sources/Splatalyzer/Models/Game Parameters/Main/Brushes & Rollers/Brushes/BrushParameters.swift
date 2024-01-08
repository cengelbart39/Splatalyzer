//
//  BrushParameters.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushParameters: Codable {
    let bodyParam: BRBodyParameter
    let bulletAdditionMovePlayerSplashNearestParam: BRBulletAdditionMovePlayerSplashNearestParameter
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    let mainWepaonSetting: MainWeaponSettings
    let swingUnitGroupParam: SwingUnitGroupParameter
    let weaponRollParam: BRWeaponRollParameter
    let weaponSwingParam: BRWeaponSwingParameter
    let spawnBulletAdditionMovePlayerParam: BRSpawnBulletAdditionMoveParameter
    
    enum CodingKeys: String, CodingKey {
        case bodyParam = "BodyParam"
        case bulletAdditionMovePlayerSplashNearestParam = "BulletAdditionMovePlayerSplashNearestParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWepaonSetting = "MainWeaponSetting"
        case swingUnitGroupParam = "SwingUnitGroupParam"
        case weaponRollParam = "WeaponRollParam"
        case weaponSwingParam = "WeaponSwingParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}

extension BrushParameters {
    struct SwingUnitGroupParameter: Codable {
        let type: String
        let damageParam: BRDamageParameter
        let pushOutCheckFieldCollisionFrame: Int?
        let splashNearestParam: BRSplashNearestParameter
        let unit: [BRUnit]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageParam = "DamageParam"
            case pushOutCheckFieldCollisionFrame = "PushOutCheckFieldCollisionFrame"
            case splashNearestParam = "SplashNearestParam"
            case unit = "Unit"
        }
    }
}
