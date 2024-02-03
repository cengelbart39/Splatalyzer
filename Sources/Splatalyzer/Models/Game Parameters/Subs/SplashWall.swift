//
//  SplashWall.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Splash Wall sub
/// weapon
///
/// See the JSON file `WeaponShield.game__GameParameterTable.json`
public struct SplashWall: GameParametable {
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
        
        public struct MoveParameter: Codable {
            public let type: String
            public let damageSpanFrame: Int
            public let flyGravity: Double
            public let flyPositionAirResist: Double
            public let maxHP: HighMidLow
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case damageSpanFrame = "DamageSpanFrame"
                case flyGravity = "FlyGravity"
                case flyPositionAirResist = "FlyPositionAirResist"
                case maxHP = "MaxHP"
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
            public let yPlusRate: Double
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case xRate = "XRate"
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
                maxHp: self.moveParam.maxHP,
                subSpecUpParam: nil)
        }
    }
}
