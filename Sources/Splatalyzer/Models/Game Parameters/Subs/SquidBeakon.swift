//
//  SquidBeakon.swift
//  
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Squid Beakon sub weapon
///
/// See the JSON file `WeaponBeacon.game__GameParameterTable.json`
public struct SquidBeakon: SubWeaponable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SubParametable {
        public let moveParam: MoveParameter
        public let subWeaponSetting: SubWeaponSetting
        public let weaponParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case moveParam = "MoveParam"
            case subWeaponSetting = "SubWeaponSetting"
            case weaponParam = "WeaponParam"
        }
        
        public struct MoveParameter: Parametable {
            public let type: String
            public let guideRadius: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case guideRadius = "GuideRadius"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let inkConsume: Double
            public let inkRecoverStop: Int
            public let knockBackParam: KnockBackParam
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case inkConsume = "InkConsume"
                case inkRecoverStop = "InkRecoverStop"
                case knockBackParam = "KnockBackParam"
            }
            
            public struct KnockBackParam: Parametable {
                public let impactValue: Double
                
                public enum CodingKeys: String, CodingKey {
                    case impactValue = "ImpactValue"
                }
            }
        }
        
        public func getOverwrites(_ playerInfo: Player?) -> SubOverwrites {
            return SubOverwrites(
                spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
                periodFirst: nil,
                periodSecond: nil,
                markingFrameSubSpec: nil,
                sensorRadius: nil,
                explosionRadius: nil,
                maxHp: nil,
                subSpecUpParam: playerInfo?.parameters.playerBeaconSubSpecUpParam)
        }
    }
}
