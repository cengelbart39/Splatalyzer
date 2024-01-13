//
//  InkMine.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct InkMine: SubParametable {
    public let areaParam: AreaParameter
    public let blastParam: BlastParameter
    public let moveParam: MoveParameter
    public let subWeaponSetting: SubWeaponSetting
    public let weaponParam: WeaponParameter
    
    public enum CodingKeys: String, CodingKey {
        case areaParam = "AreaParam"
        case blastParam = "BlastParam"
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
    }
    
    public struct AreaParameter: Codable {
        public let type: String
        public let areaOffsetY: Double
        public let distance: HighMidLow
        public let frame: Int
        public let markingFrameSubSpec: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case areaOffsetY = "AreaOffsetY"
            case distance = "Distance"
            case frame = "Frame"
            case markingFrameSubSpec = "MarkingFrameSubSpec"
        }
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
        public let planeDamage: [DistanceDamage]
        public let subSpecialSpecUpList: [SubSpecialSpecUpList]
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageOffsetY = "DamageOffsetY"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case planeDamage = "PlaneDamage"
            case subSpecialSpecUpList = "SubSpecialSpecUpList"
        }
    }
    
    public struct MoveParameter: Codable {
        public let type: String
        public let guideRadius: Double
        public let maxPlaceNum: Int
        public let placePaintRadius: Double
        public let sensorRadius: HighMidLow
        public let spawnSpeedZSpecUp: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideRadius = "GuideRadius"
            case maxPlaceNum = "MaxPlaceNum"
            case placePaintRadius = "PlacePaintRadius"
            case sensorRadius = "SensorRadius"
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
    
    public func getOverwrites(_ playerInfo: PlayerParameters? = nil) -> SubOverwrites {
        return SubOverwrites(
            spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
            periodFirst: nil,
            periodSecond: nil,
            markingFrameSubSpec: nil,
            sensorRadius: self.moveParam.sensorRadius,
            explosionRadius: self.areaParam.distance,
            maxHp: nil,
            subSpecUpParam: nil)
    }
}
