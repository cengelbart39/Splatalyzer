//
//  SubPoisonMist.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

struct SubPoisonMist: SubParametable {
    let areaParam: AreaParameter
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case areaParam = "AreaParam"
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct AreaParameter: Codable {
        let type: String
        let areaOffsetY: Double
        let distanceForOff: Double
        let effectParam: EffectParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case areaOffsetY = "AreaOffsetY"
            case distanceForOff = "DistanceForOff"
            case effectParam = "EffectParam"
        }
        
        struct EffectParameter: Codable {
            let level: [Level]
            
            enum CodingKeys: String, CodingKey {
                case level = "Level"
            }
            
            struct Level: Codable {
                let frame: Int
                let nextLevelCount: Int
                
                enum CodingKeys: String, CodingKey {
                    case frame = "Frame"
                    case nextLevelCount = "NextLevelCount"
                }
            }
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let guideHitCollisionType: String
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideHitCollisionType = "GuideHitCollisionType"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let inkConsume: Double
        let inkRecoverStop: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yPlusRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
}
