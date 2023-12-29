//
//  ShooterWeapon.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct ShooterWeapon: Codable {
    let collisionParam: ShooterCollisionParameter
    let damageParam: ShooterDamageParameter
    
    let mainEffectiveRangeUpParam: ShooterMainEffectiveRangeUpParameter
    let mainWeaponSetting: ShooterMainWeaponSetting
    
    let moveParam: ShooterMoveParameter
    let paintParam: ShooterPaintParameter
    let splashPaintParam: ShooterSplashPaintParameter
    let splashSpawnParam: ShooterSplashSpawnParameter
    
    let variableCollisionParam: ShooterVariableCollisionParameter?
    let variableDamageParam: ShooterVariableDamageParameter?
    let variableMoveParam: ShooterVariableMoveParameter?
    let variablePaintParam: ShooterVariablePaintParameter?
    let variableSplashPaintParam: ShooterVariableSplashPaintParameter?
    let variableSplashSpawnParam: ShooterVariableSplashSpawnParameter?
    let variableWeaponParam: ShooterVariableWeaponParameter?
    
    let wallDropCollisionPaintParam: ShooterWallDropCollisionPaintParameter
    let wallDropMoveParam: ShooterWallDropMoveParameter
    let weaponParam: ShooterWeaponParameter
    
    let actionSpecUpReduceJumpSwerveRate: ShooterActionSpecUpParameter?
    let spawnBulletAdditionMovePlayerParam: ShooterSpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case collisionParam = "CollisionParam"
        case damageParam = "DamageParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnParam = "SplashSpawnParam"
        case variableCollisionParam = "VariableCollisionParam"
        case variableDamageParam = "VariableDamageParam"
        case variableMoveParam = "VariableMoveParam"
        case variablePaintParam = "VariablePaintParam"
        case variableSplashPaintParam = "VariableSplashPaintParam"
        case variableSplashSpawnParam = "VariableSplashSpawnParam"
        case variableWeaponParam = "VariableWeaponParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponParam = "WeaponParam"
        case actionSpecUpReduceJumpSwerveRate = "spl__PlayerGearSkillParam_ActionSpecUp_ReduceJumpSwerveRate"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}
