//
//  SplatlingParameters.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SplatlingParameters: Codable {
    let collisionParam: SplatlingCollisionParameter
    let damageParam: SplatlingDamageParameter
    let mainEffectiveRangeUpParam: SplatlingMainEffectiveRangeUpParameter
    let mainWeaponSetting: MainWeaponSettings
    let moveParam: SplatlingMoveParameter
    let paintParam: SplatlingPaintParameter
    let splashPaintParam: SplatlingSplashPaintParameter
    let splashSpawnParam: SplatlingSplashSpawnParameter
    
    let variableDamageParam: SplatlingDamageParameter?
    let variableMoveParam: SplatlingMoveParameter?
    let variablePaintParam: SplatlingPaintParameter?
    let variableShotParam: SplatlingVariableShotParameter?
    let variableSplashPaintParam: SplatlingSplashPaintParameter?
    let variableSplashSpawnParam: SplatlingSplashSpawnParameter?
    
    let wallDropCollisionPaintParam: SplatlingWallDropCollisionPaintParameter
    let wallDropMoveParam: SplatlingWallDropMoveParameter
    
    let weaponFullChargeParam: SplatlingWeaponFullChargerParameter?
    let weaponKeepChargeParam: SplatlingWeaponKeepChargeParameter?
    
    let weaponParam: SplatlingWeaponParameter
    
    let bulletShooterTailLengthParam: SplatlingBulletShooterTailLengthParameter
    let spawnBulletAdditionMovePlayerParam: SplatlingSpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnParam = "SplashSpawnParam"
        case variableDamageParam = "VariableDamageParam"
        case variableMoveParam = "VariableMoveParam"
        case variablePaintParam = "VariablePaintParam"
        case variableShotParam = "VariableShotParam"
        case variableSplashPaintParam = "VariableSplashPaintParam"
        case variableSplashSpawnParam = "VariableSplashSpawnParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponFullChargeParam = "WeaponFullChargeParam"
        case weaponKeepChargeParam = "WeaponKeepChargeParam"
        case weaponParam = "WeaponParam"
        case bulletShooterTailLengthParam = "spl__BulletShooterTailLengthParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}
