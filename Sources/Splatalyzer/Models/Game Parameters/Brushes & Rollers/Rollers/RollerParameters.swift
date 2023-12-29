//
//  RollerParameters.swift
//
//
//  Created by Christopher Engelbart on 12/25/23.
//

import Foundation

struct RollerParameters: Codable {
    let bodyParam: BRBodyParameter
    let bulletAdditionMovePlayerSpalashNearestParam: BRBulletAdditionMovePlayerSplashNearestParameter
    
    let knockBackByCanopyParam: RollerKnockBackByCanopyParameter?
    
    let mainEffectiveRangeUpParam: BRMainEffectiveRangeUpParameter
    let mainWeaponSetting: BRMainWeaponSetting
    
    let verticalSwingUnitGroupParam: RollerVerticalSwingUnitGroupParameter
    let weaponRollParam: BRWeaponRollParameter
    let weaponVerticalSwingParam: BRWeaponSwingParameter
    let weaponWideSwingParam: BRWeaponSwingParameter
    let wideSwingUnitGroupParam: RollerWideSwingUnitGroupParameter
    
    let spawnBulletAdditionMovePlayerParam: BRSpawnBulletAdditionMoveParameter
    
    enum CodingKeys: String, CodingKey {
        case bodyParam = "BodyParam"
        case bulletAdditionMovePlayerSpalashNearestParam = "BulletAdditionMovePlayerSplashNearestParam"
        case knockBackByCanopyParam = "KnockBackByCanopyParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case verticalSwingUnitGroupParam = "VerticalSwingUnitGroupParam"
        case weaponRollParam = "WeaponRollParam"
        case weaponVerticalSwingParam = "WeaponVerticalSwingParam"
        case weaponWideSwingParam = "WeaponWideSwingParam"
        case wideSwingUnitGroupParam = "WideSwingUnitGroupParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
}
