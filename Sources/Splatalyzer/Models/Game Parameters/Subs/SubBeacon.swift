//
//  SubBeacon.swift
//  
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubBeacon: SubParametable {
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
    }
    
    struct MoveParameter: Codable {
        let type: String
        let guideRadius: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideRadius = "GuideRadius"
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
