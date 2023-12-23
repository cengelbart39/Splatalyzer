//
//  ChargerWeapon.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct ChargerWeapon: Codable {
    let collisionParam: ChargerCollisionParameter
    let damageParam: ChargerDamageParameter
    let mainEffectiveRangeUpParam: ChargerMainEffectiveRangeUpParameter
    let mainWeaponSetting: ChargerMainWeaponSetting
    let moveParam: ChargerMoveParameter
    let paintParam: ChargerPaintParameter
    let splashPaintParam: ChargerSplashPaintParameter
    let splashSpawnParam: ChargerSplashSpawnParameter
    let splashWallHitParam: ChargerSplashWallHitParameter
    let wallDropCollisionPaintParam: ChargerWallDropCollisionPaintParameter
    let wallDropMoveParam: ChargerWallDropMoveParameter
    let weaponKeepChargeParam: ChargerWeaponKeepChargeParameter?
    let weaponDivideChargerParam: ChargerWeaponDivideChargerParameter?
    let weaponParam: ChargerWeaponParameter
    let weaponScopeParam: ChargerWeaponScopeParameter?
    let weaponChargerGuideShapeParam: ChargerWeaponChargerGuideShapeParameter?
    
    enum CodingKeys: String, CodingKey {
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnParam = "SplashSpawnParam"
        case splashWallHitParam = "SplashWallHitParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponKeepChargeParam = "WeaponKeepChargeParam"
        case weaponDivideChargerParam = "WeaponDivideChargerParam"
        case weaponParam = "WeaponParam"
        case weaponScopeParam = "WeaponScopeParam"
        case weaponChargerGuideShapeParam = "spl__WeaponChargerGuideShapeParam"
    }
}
