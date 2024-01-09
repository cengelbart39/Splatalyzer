//
//  SubBombQuick.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubBombQuick: SubParametable {
    let blastParam: BlastParameter
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageAttackerPriority: Bool
        let damageLinear: Bool
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let paintOffsetY: Double
        let paintRadius: Double
        let splashAroundParam: SplashAroundParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageAttackerPriority = "DamageAttackerPriority"
            case damageLinear = "DamageLinear"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case splashAroundParam = "SplashAroundParam"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let guideHitCollisionType: String
        let spawnRotatePitch: Double
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideHitCollisionType = "GuideHitCollisionType"
            case spawnRotatePitch = "SpawnRotatePitch"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let inkConsume: Double
        let inkRecoverStop: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yPlusRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
    
    func getOverwrites(_ playerInfo: PlayerParameters? = nil) -> SubOverwrites {
        return SubOverwrites(
            spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
            periodFirst: nil,
            periodSecond: nil,
            markingFrameSubSpec: nil,
            sensorRadius: nil,
            explosionRadius: nil,
            maxHp: nil,
            subSpecUpParam: nil)
    }
}
