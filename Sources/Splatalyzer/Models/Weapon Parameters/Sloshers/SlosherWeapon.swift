//
//  SlosherWeapon.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SlosherWeapon: Codable {
    let blastParam: SlosherBlastParameter?
    let bounceGroupParam: SlosherBounceGroupParameter?
    let mainEffectiveRangeUp: SlosherMainEffectiveRangeUpParameter
    let mainWeaponSetting: SlosherMainWeaponSetting
    let nearestParam: SlosherNearestParameter
    let splashSlosherScatterParam: SlosherSplashScatterParameter?
    let splashSlosherSpiralParam: SlosherSplashSpiralParameter?
    let unitGroupParam: SlosherUnitGroupParameter
    let weaponParam: SlosherWeaponParameter
    let spawnBulletAdditionMovePlayerParam: SlosherSpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case bounceGroupParam = "BounceGroupParam"
        case mainEffectiveRangeUp = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case nearestParam = "NearestParam"
        case splashSlosherScatterParam = "SplashSlosherScatterParam"
        case splashSlosherSpiralParam = "SplashSlosherSpiralParam"
        case unitGroupParam = "UnitGroupParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}
