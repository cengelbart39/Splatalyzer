//
//  DualiesWeapon.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct DualiesWeapon: Codable {
    let collisionLapOverParam: DualiesCollisionParameter?
    let collisionParam: DualiesCollisionParameter?
    
    let damageLapOverParam: DualiesDamageParameter?
    let damageParam: DualiesDamageParameter
    
    let mainEffectiveRangeUpParam: DualiesMainEffectiveRangeUpParameter?
    let mainWeaponSetting: DualiesMainWeaponSetting?
    
    let moveLapOverParam: DualiesMoveParameter?
    let moveParam: DualiesMoveParameter
    
    let paintParam: DualiesPaintParameter?
    
    let sideStepBlastParam: DualiesSideStepBlastParameter?
    let sideStepParam: DualiesSideStepParameter
    
    let splashPaintParam: DualiesSplashPaintParameter?
    let splashSpawnLapOverParam: DualiesSplashSpawnParameter?
    let splashSpawnParam: DualiesSplashSpawnParameter
    
    let wallDropCollisionPaintParam: DualiesWallDropCollisionPaintParameter?
    let wallDropMoveParam: DualiesWallDropMoveParameter?
    
    let weaponParam: DualiesWeaponParameter
    
    let spawnBulletAdditionMovePlayerParam: DualiesSpawnBulletAdditionMovePlayerParameter?
    
    enum CodingKeys: String, CodingKey {
        case collisionLapOverParam = "CollisionLapOverParam"
        case collisionParam = "CollisionParam"
        case damageLapOverParam = "DamageLapOverParam"
        case damageParam = "DamageParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case moveLapOverParam = "MoveLapOverParam"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case sideStepBlastParam = "SideStepBlastParam"
        case sideStepParam = "SideStepParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnLapOverParam = "SplashSpawnLapOverParam"
        case splashSpawnParam = "SplashSpawnParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}
