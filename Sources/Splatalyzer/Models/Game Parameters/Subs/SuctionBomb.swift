//
//  SuctionBomb.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Suction Bomb sub weapon
///
/// See the JSON file `WeaponBombSuction.game__GameParameterTable.json`
public struct SuctionBomb: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SubParametable {
        public let blastParam: BlastParameter
        public let moveParam: MoveParameter
        public let subWeaponSetting: SubWeaponSetting
        public let weaponParam: WeaponParameter
        public let bulletInformImpactControlForGeyserParam: BulletInformImpactControlForGeyserParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case blastParam = "BlastParam"
            case moveParam = "MoveParam"
            case subWeaponSetting = "SubWeaponSetting"
            case weaponParam = "WeaponParam"
            case bulletInformImpactControlForGeyserParam = "spl__BulletInformImpactControlForGeyserParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct BlastParameter: Codable {
            public let type: String
            public let crossPaintCheckLength: Double
            public let crossPaintRadius: Double
            public let damageOffsetY: Double
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let paintOffsetY: Double
            public let paintRadius: Double
            public let splashAroundParam: SplashAroundParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case damageOffsetY = "DamageOffsetY"
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
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            public let warningSERestFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case guideHitCollisionType = "GuideHitCollisionType"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
                case warningSERestFrame = "WarningSERestFrame"
            }
        }
        
        public struct WeaponParameter: Codable {
            public let type: String
            public let inkRecoverStop: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case inkRecoverStop = "InkRecoverStop"
            }
        }
        
        public struct BulletInformImpactControlForGeyserParameter: Codable {
            public let type: String
            public let addSpeedPerImpact: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case addSpeedPerImpact = "AddSpeedPerImpact"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Codable {
            public let type: String
            public let xRate: Double
            public let yMax: Double
            public let yPlusRate: Double
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case xRate = "XRate"
                case yMax = "YMax"
                case yPlusRate = "YPlusRate"
                case zRate = "ZRate"
            }
        }
        
        public func getOverwrites(_ playerInfo: Player? = nil) -> SubOverwrites {
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
}
