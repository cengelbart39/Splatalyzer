//
//  SubParameters.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct SubParameters: Codable {
    let areaParam: SubAreaParameter?
    
    let blastParam: SubBlastParameter?
    let blastParamChase: SubBlastParameter?
    let blastParamMaxCharge: SubBlastParameter?
    let blastParamMinCharge: SubBlastParameter?
    let blastParamThrow: SubBlastParameter?
    
    let moveParam: SubMoveParameter
    
    let splashNearest: SubSplashNearestParameter?
    
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: SubWeaponParameter
    
    let bulletInformImpactControlForGeyserParam: SubBulletInformImpactControlForGeyserParameter?
    let spawnBulletAdditionMovePlayerParam: SubSpawnBulletAdditionMovePlayerParameter?
    
    enum CodingKeys: String, CodingKey {
        case areaParam = "AreaParam"
        case blastParam = "BlastParam"
        case blastParamChase = "BlastParamChase"
        case blastParamMaxCharge = "BlastParamMaxCharge"
        case blastParamMinCharge = "BlastParamMinCharge"
        case blastParamThrow = "BlastParamThrow"
        case moveParam = "MoveParam"
        case splashNearest = "SplashNearest"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case bulletInformImpactControlForGeyserParam = "spl__BulletInformImpactControlForGeyserParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}
