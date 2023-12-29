//
//  SpecialTripleTornado.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialTripleTornado: Codable {
    let blastParam: BlastParameter
    let missileParam: MissileParameter
    let motherParam: MotherParameter
    let moveParam: MoveParameter
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case missileParam = "MissileParam"
        case motherParam = "MotherParam"
        case moveParam = "MoveParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let damageHeightUp: Double
        let damageRadiusEnd: Double
        let damageValueEnd: Int
        let damageValueStart: Int
        let knockBackParam: AttackKnockbackParameter
        let paintRadiusEnd: Double
        let paintRadiusStart: Double
        let paintRotateDegree: Double
        let paintSpanFrame: Int
        let radiusSpreadFrame: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case damageHeightUp = "DamageHeightUp"
            case damageRadiusEnd = "DamageRadiusEnd"
            case damageValueEnd = "DamageValueEnd"
            case damageValueStart = "DamageValueStart"
            case knockBackParam = "KnockBackParam"
            case paintRadiusEnd = "PaintRadiusEnd"
            case paintRadiusStart = "PaintRadiusStart"
            case paintRotateDegree = "PaintRotateDegree"
            case paintSpanFrame = "PaintSpanFrame"
            case radiusSpreadFrame = "RadiusSpreadFrame"
        }
    }
    
    struct MissileParameter: Codable {
        let type: String
        let useDirect: Bool
        let xzBias: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case useDirect = "UseDirect"
            case xzBias = "XZBias"
        }
    }
    
    struct MotherParameter: Codable {
        let type: String
        let targetHeight: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case targetHeight = "TargetHeight"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let guideHitCollisionType: String
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: SubHighMiddleLow
        
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
        let specialTotalFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case specialTotalFrame = "SpecialTotalFrame"
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
