//
//  Roller.swift
//
//
//  Created by Christopher Engelbart on 12/25/23.
//

import Foundation

/// Represents the game parameter data of a main weapon in the
/// Roller Class.
///
/// To see a representative `JSON` go to
/// `Resources/weapon-json/` and find a file prefixed with
/// `WeaponRoller`.
public struct Roller: MainWeaponable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: MainParametable {
        public let bodyParam: BRBodyParameter
        public let bulletAdditionMovePlayerSpalashNearestParam: BRBulletAdditionMovePlayerSplashNearestParameter
        
        public let knockBackByCanopyParam: KnockBackByCanopyParameter?
        
        public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
        public let mainWeaponSetting: MainWeaponSettings
        
        public let verticalSwingUnitGroupParam: VerticalSwingUnitGroupParameter
        public let weaponRollParam: BRWeaponRollParameter
        public let weaponVerticalSwingParam: BRWeaponSwingParameter
        public let weaponWideSwingParam: BRWeaponSwingParameter
        public let wideSwingUnitGroupParam: WideSwingUnitGroupParameter
        
        public let spawnBulletAdditionMovePlayerParam: BRSpawnBulletAdditionMoveParameter
        
        public enum CodingKeys: String, CodingKey {
            case bodyParam = "BodyParam"
            case bulletAdditionMovePlayerSpalashNearestParam = "BulletAdditionMovePlayerSplashNearestParam"
            case knockBackByCanopyParam = "KnockBackByCanopyParam"
            case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
            case mainWeaponSetting = "MainWeaponSetting"
            case verticalSwingUnitGroupParam = "VerticalSwingUnitGroupParam"
            case weaponRollParam = "WeaponRollParam"
            case weaponVerticalSwingParam = "WeaponVerticalSwingParam"
            case weaponWideSwingParam = "WeaponWideSwingParam"
            case wideSwingUnitGroupParam = "WideSwingUnitGroupParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
    }
}

extension Roller.Parameters {
    public struct KnockBackByCanopyParameter: Parametable {
        public let type: String
        public let knockBackRollerPlayerDamageOff: BRKnockBack
        public let knockBackRollerPlayerDamageOn: BRKnockBack
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case knockBackRollerPlayerDamageOff = "KnockBackRollerPlayerDamageOff"
            case knockBackRollerPlayerDamageOn = "KnockBackRollerPlayerDamageOn"
        }
    }
    
    public struct VerticalSwingUnitGroupParameter: Parametable {
        public let type: String
        public let damageParam: BRDamageParameter
        public let spawnSplashBetweenLength: Double
        public let spawnSplashFirstLength: Double
        public let spawnSplashNum: Int
        public let splashNearestParam: BRSplashNearestParameter
        public let splashPaintParam: SplashPaintParameter
        public let unit: [BRUnit]
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageParam = "DamageParam"
            case spawnSplashBetweenLength = "SpawnSplashBetweenLength"
            case spawnSplashFirstLength = "SpawnSplashFirstLength"
            case spawnSplashNum = "SpawnSplashNum"
            case splashNearestParam = "SplashNearestParam"
            case splashPaintParam = "SplashPaintParam"
            case unit = "Unit"
        }
    }
    
    public struct WideSwingUnitGroupParameter: Parametable {
        public let type: String
        public let damageParam: BRDamageParameter
        public let splashNearestParam: BRSplashNearestParameter
        public let unit: [BRUnit]
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageParam = "DamageParam"
            case splashNearestParam = "SplashNearestParam"
            case unit = "Unit"
        }
    }
}

extension Roller.Parameters.VerticalSwingUnitGroupParameter {
    public struct SplashPaintParameter: Parametable {
        public let depthScaleMax: Double
        public let depthScaleMin: Double
        public let widthHalf: Double
        public let widthHalfNearest: Double
        
        public enum CodingKeys: String, CodingKey {
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
}
