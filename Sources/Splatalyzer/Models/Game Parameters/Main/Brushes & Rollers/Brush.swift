//
//  Brush.swift
//
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

/// Represents the game parameter data of a main weapon in the
/// Brush Class.
///
/// To see a representative `JSON` go to
/// `Resources/weapon-json/` and find a file prefixed with
/// `WeaponBrush`.
public struct Brush: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: MainParametable {
        public let bodyParam: BRBodyParameter
        public let bulletAdditionMovePlayerSplashNearestParam: BRBulletAdditionMovePlayerSplashNearestParameter
        public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
        public let mainWeaponSetting: MainWeaponSettings
        public let swingUnitGroupParam: SwingUnitGroupParameter
        public let weaponRollParam: BRWeaponRollParameter
        public let weaponSwingParam: BRWeaponSwingParameter
        public let spawnBulletAdditionMovePlayerParam: BRSpawnBulletAdditionMoveParameter
        
        public enum CodingKeys: String, CodingKey {
            case bodyParam = "BodyParam"
            case bulletAdditionMovePlayerSplashNearestParam = "BulletAdditionMovePlayerSplashNearestParam"
            case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
            case mainWeaponSetting = "MainWeaponSetting"
            case swingUnitGroupParam = "SwingUnitGroupParam"
            case weaponRollParam = "WeaponRollParam"
            case weaponSwingParam = "WeaponSwingParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
    }
}

extension Brush.Parameters {
    public struct SwingUnitGroupParameter: Parametable {
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
