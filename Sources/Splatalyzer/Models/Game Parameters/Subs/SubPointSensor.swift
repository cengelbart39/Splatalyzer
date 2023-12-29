//
//  SubPointSensor.swift
//
//
//  Created by Christopher Engelbart on 12/29/23.
//

import Foundation

struct SubPointSensor: SubParametable {
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
        let distance: HighMidLow
        let markingFrameSubSpec: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distance = "Distance"
            case markingFrameSubSpec = "MarkingFrameSubSpec"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let guideHitCollisionType: String
        let markingFrameSubSpec: HighMidLow
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideHitCollisionType = "GuideHitCollisionType"
            case markingFrameSubSpec = "MarkingFrameSubSpec"
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