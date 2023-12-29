//
//  File.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterWeapon: Codable {
    let blastJumpParam: BlasterBlastParameter?
    let blastParam: BlasterBlastParameter
    
    let blasterBurstJumpParam: BlasterBurstParameter?
    let blasterBurstParam: BlasterBurstParameter
    
    let collisionParam: BlasterCollisionParameter
    
    let damageParam: BlasterDamageParameter
    
    let mainEffectiveRangeUpParam: BlasterMainEffectiveRangeUpParameter
    
    let mainWeaponSetting: BlasterMainWeaponSetting
    
    let moveParam: BlasterMoveParameter
    
    let paintParam: BlasterPaintParameter
    
    let splashPaintParam: BlasterSplashPaintParameter
    let splashSpawnParam: BlasterSplashSpawnParameter
    let splashWallHitParam: BlasterSplashWallHitParameter
    
    let wallDropCollisionPaintParam: BlasterWallDropCollisionPaintParameter
    let wallDropMoveParam: BlasterSplashWallDropMoveParameter
    
    let weaponParam: BlasterWeaponParameter
    
    let skillActionSpecUpReduceJumpSwerveRate: BlasterActionSpecUpReduceJumpSwerveRate
    
    let skillMainEffectUpRangeUp: BlasterMainEffectiveRangeUpSkill
    
    let spawnBulletAdditionMovePlayerParam: BlasterSpawnBulletAdditionMovePlayerParameter
}
