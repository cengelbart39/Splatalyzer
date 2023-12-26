//
//  SplatanaWeapon.swift
//
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct SplatanaWeapon: Codable {
    let bulletSaberHorizontalParam: SplatanaBulletSaberParameter
    let bulletSaberSlashHorizontalParam: SplatanaBulletSaberSlashParameter
    
    let bulletSaberSlashVerticalParam: SplatanaBulletSaberSlashParameter
    let bulletSaberVerticalParam: SplatanaBulletSaberParameter
    
    let mainEffectiveRangeUpParam: SplatanaMainEffectiveRangeUpParameter?
    let mainWeaponSetting: SplatanaMainWeaponSetting
    
    let weaponSaberParam: SplatanaWeaponSaberParameter
    
    
    enum CodingKeys: String, CodingKey {
        case bulletSaberHorizontalParam = "BulletSaberHorizontalParam"
        case bulletSaberSlashHorizontalParam = "BulletSaberSlashHorizontalParam"
        case bulletSaberSlashVerticalParam = "BulletSaberSlashVerticalParam"
        case bulletSaberVerticalParam = "BulletSaberVerticalParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case weaponSaberParam = "spl__WeaponSaberParam"
    }
}
