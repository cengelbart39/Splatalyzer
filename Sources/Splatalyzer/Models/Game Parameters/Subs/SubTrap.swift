//
//  SubTrap.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubTrap: SubParametable {
    let areaParam: AreaParameter
    let blastParam: BlastParameter
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case areaParam = "AreaParam"
        case blastParam = "BlastParam"
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
    }
    
    struct AreaParameter: Codable {
        let type: String
        let areaOffsetY: Double
        let distance: HighMidLow
        let frame: Int
        let markingFrameSubSpec: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case areaOffsetY = "AreaOffsetY"
            case distance = "Distance"
            case frame = "Frame"
            case markingFrameSubSpec = "MarkingFrameSubSpec"
        }
    }
    
    struct BlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageOffsetY: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let paintOffsetY: Double
        let paintRadius: Double
        let planeDamage: [DistanceDamage]
        let subSpecialSpecUpList: [SubSpecialSpecUpList]
        
        enum CodingKeys: String, CodingKey {
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
    
    struct MoveParameter: Codable {
        let type: String
        let guideRadius: Double
        let maxPlaceNum: Int
        let placePaintRadius: Double
        let sensorRadius: HighMidLow
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideRadius = "GuideRadius"
            case maxPlaceNum = "MaxPlaceNum"
            case placePaintRadius = "PlacePaintRadius"
            case sensorRadius = "SensorRadius"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let inkConsume: Double
        let inkRecoverStop: Int
        let knockBackParam: KnockBackParam
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case knockBackParam = "KnockBackParam"
        }
        
        struct KnockBackParam: Codable {
            let impactValue: Double
            
            enum CodingKeys: String, CodingKey {
                case impactValue = "ImpactValue"
            }
        }
    }
}
