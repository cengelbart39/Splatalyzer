//
//  RollerParameters.swift
//
//
//  Created by Christopher Engelbart on 12/25/23.
//

import Foundation

struct RollerParameters: Codable {
    let bodyParam: BRBodyParameter
    let bulletAdditionMovePlayerSpalashNearestParam: BRBulletAdditionMovePlayerSplashNearestParameter
    
    let knockBackByCanopyParam: KnockBackByCanopyParameter?
    
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    let mainWeaponSetting: MainWeaponSettings
    
    let verticalSwingUnitGroupParam: VerticalSwingUnitGroupParameter
    let weaponRollParam: BRWeaponRollParameter
    let weaponVerticalSwingParam: BRWeaponSwingParameter
    let weaponWideSwingParam: BRWeaponSwingParameter
    let wideSwingUnitGroupParam: WideSwingUnitGroupParameter
    
    let spawnBulletAdditionMovePlayerParam: BRSpawnBulletAdditionMoveParameter
    
    enum CodingKeys: String, CodingKey {
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

extension RollerParameters {
    struct KnockBackByCanopyParameter: Codable {
        let type: String
        let knockBackRollerPlayerDamageOff: BRKnockBack
        let knockBackRollerPlayerDamageOn: BRKnockBack
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case knockBackRollerPlayerDamageOff = "KnockBackRollerPlayerDamageOff"
            case knockBackRollerPlayerDamageOn = "KnockBackRollerPlayerDamageOn"
        }
    }
    
    struct VerticalSwingUnitGroupParameter: Codable {
        let type: String
        let damageParam: BRDamageParameter
        let spawnSplashBetweenLength: Double
        let spawnSplashFirstLength: Double
        let spawnSplashNum: Int
        let splashNearestParam: BRSplashNearestParameter
        let splashPaintParam: SplashPaintParameter
        let unit: [BRUnit]
        
        enum CodingKeys: String, CodingKey {
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
    
    struct WideSwingUnitGroupParameter: Codable {
        let type: String
        let damageParam: BRDamageParameter
        let splashNearestParam: BRSplashNearestParameter
        let unit: [BRUnit]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageParam = "DamageParam"
            case splashNearestParam = "SplashNearestParam"
            case unit = "Unit"
        }
    }
}

extension RollerParameters.VerticalSwingUnitGroupParameter {
    struct SplashPaintParameter: Codable {
        let depthScaleMax: Double
        let depthScaleMin: Double
        let widthHalf: Double
        let widthHalfNearest: Double
        
        enum CodingKeys: String, CodingKey {
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
}
