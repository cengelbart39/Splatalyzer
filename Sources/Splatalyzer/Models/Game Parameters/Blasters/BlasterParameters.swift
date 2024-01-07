//
//  BlasterParameters.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterParameters: Codable {
    let blastJumpParam: BlasterBlastParameter?
    let blastParam: BlasterBlastParameter
    
    let blasterBurstJumpParam: BlasterBurstParameter?
    let blasterBurstParam: BlasterBurstParameter
    
    let collisionParam: BlasterCollisionParameter
    
    let damageJumpParam: BlasterDamageParameter?
    let damageParam: BlasterDamageParameter
    
    let mainEffectiveRangeUpParam: BlasterMainEffectiveRangeUpParameter?
    let mainWeaponSetting: MainWeaponSettings
    
    let moveJumpParam: BlasterMoveParameter?
    let moveParam: BlasterMoveParameter
    
    let paintParam: BlasterPaintParameter
    
    let splashPaintParam: BlasterSplashPaintParameter
    let splashSpawnParam: BlasterSplashSpawnParameter
    let splashWallHitParam: BlasterSplashWallHitParameter
    
    let wallDropCollisionPaintParam: BlasterWallDropCollisionPaintParameter
    let wallDropMoveParam: BlasterWallDropMoveParameter
    
    let weaponParam: BlasterWeaponParameter
    
    let skillActionSpecUpReduceJumpSwerveRate: BlasterActionSpecUpReduceJumpSwerveRate?
    
    let skillMainEffectUpRangeUp: BlasterMainEffectiveRangeUpSkill?
    
    let spawnBulletAdditionMovePlayerParam: BlasterSpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastJumpParam = "BlastJumpParam"
        case blastParam = "BlastParam"
        case blasterBurstJumpParam = "BlasterBurstJumpParam"
        case blasterBurstParam = "BlasterBurstParam"
        case collisionParam = "CollisionParam"
        case damageJumpParam = "DamageJumpParam"
        case damageParam = "DamageParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case moveJumpParam = "MoveJumpParam"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnParam = "SplashSpawnParam"
        case splashWallHitParam = "SplashWallHitParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponParam = "WeaponParam"
        case skillActionSpecUpReduceJumpSwerveRate = "spl__PlayerGearSkillParam_ActionSpecUp_ReduceJumpSwerveRate"
        case skillMainEffectUpRangeUp = "spl__PlayerGearSkillParam_MainEffectiveRangeUp"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}
