//
//  Brush.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

public struct Brush: Codable {
    public let bodyParam: BRBodyParameter
    public let bulletAdditionMovePlayerSplashNearestParam: BRBulletAdditionMovePlayerSplashNearestParameter
    public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    public let mainWepaonSetting: MainWeaponSettings
    public let swingUnitGroupParam: SwingUnitGroupParameter
    public let weaponRollParam: BRWeaponRollParameter
    public let weaponSwingParam: BRWeaponSwingParameter
    public let spawnBulletAdditionMovePlayerParam: BRSpawnBulletAdditionMoveParameter
    
    public enum CodingKeys: String, CodingKey {
        case bodyParam = "BodyParam"
        case bulletAdditionMovePlayerSplashNearestParam = "BulletAdditionMovePlayerSplashNearestParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWepaonSetting = "MainWeaponSetting"
        case swingUnitGroupParam = "SwingUnitGroupParam"
        case weaponRollParam = "WeaponRollParam"
        case weaponSwingParam = "WeaponSwingParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}

extension Brush {
    public struct SwingUnitGroupParameter: Codable {
        public let type: String
        public let damageParam: BRDamageParameter
        public let pushOutCheckFieldCollisionFrame: Int?
        public let splashNearestParam: BRSplashNearestParameter
        public let unit: [BRUnit]
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageParam = "DamageParam"
            case pushOutCheckFieldCollisionFrame = "PushOutCheckFieldCollisionFrame"
            case splashNearestParam = "SplashNearestParam"
            case unit = "Unit"
        }
    }
}
