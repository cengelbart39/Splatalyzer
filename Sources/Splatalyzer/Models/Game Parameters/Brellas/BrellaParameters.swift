//
//  BrellaParameters.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct BrellaParameters: Codable {
    let mainEffectiveRangeUpParam: BrellaMainEffectiveRangeUpParameter
    let mainWeaponSetting: BrellaMainWeaponSetting
    
    let bulletShelterCanopyParam: BrellaBulletCanopyParameter
    let bulletShelterShotgunParam: BrellaBulletShotgunParameter
    
    let spawnBulletAdditionMovePlayerParam: BrellaSpawnBulletAdditionMovePlayerParameter
    
    let weaponShelterCanopyParam: BrellaWeaponCanopyParameter
    let weaponShelterShotgunParam: BrellaWeaponShotgunParameter
    
    enum CodingKeys: String, CodingKey {
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case bulletShelterCanopyParam = "spl__BulletShelterCanopyParam"
        case bulletShelterShotgunParam = "spl__BulletShelterShotgunParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        case weaponShelterCanopyParam = "spl__WeaponShelterCanopyParam"
        case weaponShelterShotgunParam = "spl__WeaponShelterShotgunParam"
    }
}
