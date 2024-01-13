//
//  SquidBeakon.swift
//  
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct SquidBeakon: SubParametable {
    public let moveParam: MoveParameter
    public let subWeaponSetting: SubWeaponSetting
    public let weaponParam: WeaponParameter
    
    public enum CodingKeys: String, CodingKey {
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
    }
    
    public struct MoveParameter: Codable {
        public let type: String
        public let guideRadius: Double
        public let spawnSpeedZSpecUp: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideRadius = "GuideRadius"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    public struct WeaponParameter: Codable {
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
        
        public struct KnockBackParam: Codable {
            public let impactValue: Double
            
            public enum CodingKeys: String, CodingKey {
                case impactValue = "ImpactValue"
            }
        }
    }
    
    public func getOverwrites(_ playerInfo: PlayerParameters?) -> SubOverwrites {
        return SubOverwrites(
            spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
            periodFirst: nil,
            periodSecond: nil,
            markingFrameSubSpec: nil,
            sensorRadius: nil,
            explosionRadius: nil,
            maxHp: nil,
            subSpecUpParam: playerInfo?.playerBeaconSubSpecUpParam)
    }
}
