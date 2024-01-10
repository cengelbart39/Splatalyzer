//
//  Sprinkler.swift
//  
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct Sprinkler: SubParametable {
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    let bulletInformImpactControlForGeyserParam: BulletInformImpactControlForGeyserParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case bulletInformImpactControlForGeyserParam = "spl__BulletInformImpactControlForGeyserParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct MoveParameter: Codable {
        let type: String
        let guideHitCollisionType: String
        let hitPaintRadius: Double
        let periodFirst: HighMidLow
        let periodSecond: HighMidLow
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        let spoutInkDrawRadius: Double
        let spoutInkPaintRadiusMaxHeight: Double
        let spoutInkPaintRadiusMaxRate: Double
        let spoutInkPaintRadiusMinHeight: Double
        let spoutInkPaintRadiusMinRate: Double
        
        enum CodingKeys: String, CodingKey {
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
    
    struct BulletInformImpactControlForGeyserParameter: Codable {
        let type: String
        let addSpeedPerImpact: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case addSpeedPerImpact = "AddSpeedPerImpact"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yPlusRate: Double
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
    
    func getOverwrites(_ playerInfo: PlayerParameters? = nil) -> SubOverwrites {
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
