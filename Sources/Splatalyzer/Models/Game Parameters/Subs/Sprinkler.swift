//
//  Sprinkler.swift
//  
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Splash Bomb sub weapon
///
/// See the JSON file `WeaponSprinkler.game__GameParameterTable.json`
public struct Sprinkler: SubWeaponable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SubParametable {
        public let moveParam: MoveParameter
        public let subWeaponSetting: SubWeaponSetting
        public let weaponParam: WeaponParameter
        public let bulletInformImpactControlForGeyserParam: BulletInformImpactControlForGeyserParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case moveParam = "MoveParam"
            case subWeaponSetting = "SubWeaponSetting"
            case weaponParam = "WeaponParam"
            case bulletInformImpactControlForGeyserParam = "spl__BulletInformImpactControlForGeyserParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct MoveParameter: Parametable {
            public let type: String
            public let guideHitCollisionType: String
            public let hitPaintRadius: Double
            public let periodFirst: HighMidLow
            public let periodSecond: HighMidLow
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            public let spoutInkDrawRadius: Double
            public let spoutInkPaintRadiusMaxHeight: Double
            public let spoutInkPaintRadiusMaxRate: Double
            public let spoutInkPaintRadiusMinHeight: Double
            public let spoutInkPaintRadiusMinRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case guideHitCollisionType = "GuideHitCollisionType"
                case hitPaintRadius = "HitPaintRadius"
                case periodFirst = "PeriodFirst"
                case periodSecond = "PeriodSecond"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
                case spoutInkDrawRadius = "SpoutInkDrawRadius"
                case spoutInkPaintRadiusMaxHeight = "SpoutInkPaintRadiusMaxHeight"
                case spoutInkPaintRadiusMaxRate = "SpoutInkPaintRadiusMaxRate"
                case spoutInkPaintRadiusMinHeight = "SpoutInkPaintRadiusMinHeight"
                case spoutInkPaintRadiusMinRate = "SpoutInkPaintRadiusMinRate"
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let inkConsume: Double
            public let inkRecoverStop: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case inkConsume = "InkConsume"
                case inkRecoverStop = "InkRecoverStop"
            }
        }
        
        public struct BulletInformImpactControlForGeyserParameter: Parametable {
            public let type: String
            public let addSpeedPerImpact: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case addSpeedPerImpact = "AddSpeedPerImpact"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
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
                periodFirst: self.moveParam.periodFirst,
                periodSecond: self.moveParam.periodSecond,
                markingFrameSubSpec: nil,
                sensorRadius: nil,
                explosionRadius: nil,
                maxHp: nil,
                subSpecUpParam: nil)
        }
    }
}
