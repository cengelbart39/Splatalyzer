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
    let mainEffectiveRangeUpParam: BRMainEffectiveRangeUpParameter
    let mainWepaonSetting: BRMainWeaponSetting
    let swingUnitGroupParam: BrushSwingUnitGroupParameter
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
