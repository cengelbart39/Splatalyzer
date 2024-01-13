//
//  BurstBomb.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct BurstBomb: SubParametable {
    public let blastParam: BlastParameter
    public let moveParam: MoveParameter
    public let subWeaponSetting: SubWeaponSetting
    public let weaponParam: WeaponParameter
    public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    public enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    public struct BlastParameter: Codable {
        public let type: String
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let damageAttackerPriority: Bool
        public let damageLinear: Bool
        public let distanceDamage: [DistanceDamage]
        public let knockBackParam: KnockbackParameter
        public let paintOffsetY: Double
        public let paintRadius: Double
        public let splashAroundParam: SplashAroundParameter
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct MoveParameter: Codable {
        public let type: String
        public let guideHitCollisionType: String
        public let spawnRotatePitch: Double
        public let spawnSpeedY: Double
        public let spawnSpeedYWorldMin: Double
        public let spawnSpeedZSpecUp: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideHitCollisionType = "GuideHitCollisionType"
            case spawnRotatePitch = "SpawnRotatePitch"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    public struct WeaponParameter: Codable {
        public let type: String
        public let inkConsume: Double
        public let inkRecoverStop: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
        }
    }
    
    public struct SpawnBulletAdditionMovePlayerParameter: Codable {
        public let type: String
        public let xRate: Double
        public let yMax: Double
        public let yPlusRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
    
    public func getOverwrites(_ playerInfo: PlayerParameters? = nil) -> SubOverwrites {
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
