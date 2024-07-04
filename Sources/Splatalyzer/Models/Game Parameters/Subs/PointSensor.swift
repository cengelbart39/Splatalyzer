//
//  PointSensor.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

/// Represents the game parameters of the Point Sensor sub
/// weapon
///
/// See the JSON file `WeaponPointSensor.game__GameParameterTable.json`
public struct PointSensor: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SubParametable {
        public let areaParam: AreaParameter
        public let moveParam: MoveParameter
        public let subWeaponSetting: SubWeaponSetting
        public let weaponParam: WeaponParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case areaParam = "AreaParam"
            case moveParam = "MoveParam"
            case subWeaponSetting = "SubWeaponSetting"
            case weaponParam = "WeaponParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct AreaParameter: Parametable {
            public let type: String
            public let distance: HighMidLow
            public let markingFrameSubSpec: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case distance = "Distance"
                case markingFrameSubSpec = "MarkingFrameSubSpec"
            }
        }
        
        public struct MoveParameter: Parametable {
            public let type: String
            public let guideHitCollisionType: String
            public let markingFrameSubSpec: HighMidLow
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case guideHitCollisionType = "GuideHitCollisionType"
                case markingFrameSubSpec = "MarkingFrameSubSpec"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
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
        
        public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
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
        
        public func getOverwrites(_ playerInfo: Player? = nil) -> SubOverwrites {
            return SubOverwrites(
                spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
                periodFirst: nil,
                periodSecond: nil,
                markingFrameSubSpec: self.moveParam.markingFrameSubSpec,
                sensorRadius: nil,
                explosionRadius: self.areaParam.distance,
                maxHp: nil,
                subSpecUpParam: nil)
        }
    }
}
