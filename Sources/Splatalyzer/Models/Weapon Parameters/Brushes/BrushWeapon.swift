//
//  BrushWeapon.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BrushWeapon: Codable {
    let bodyParam: BrushBodyParameter
    let bulletAdditionMovePlayerSplashNearestParam: BrushBulletAdditionMovePlayerSplashNearestParameter
    let mainEffectiveRangeUpParam: BrushMainEffectiveRangeUpParameter
    let mainWepaonSetting: BrushMainWeaponSetting
    let swingUnitGroupParam: BrushSwingUnitGroupParameter
    let weaponRollParam: BrushWeaponRollParameter
    let weaponSwingParam: BrushWeaponSwingParameter
    let spawnBulletAdditionMovePlayerParam: BrushSpawnBulletAdditionMoveParameter
    
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
