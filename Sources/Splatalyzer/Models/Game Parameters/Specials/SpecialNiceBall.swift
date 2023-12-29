//
//  SpecialNiceBall.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialNiceBall: Codable {
    let blastParam: BlastParameter
    let footSplashParam: FootSplashParameter
    let moveParam: MoveParameter
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case footSplashParam = "FootSplashParam"
        case moveParam = "MoveParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageOffsetY: Double
        let knockBackParam: AttackKnockbackParameter
        let paintOffsetY: Double
        let paintRadiusEnd: Double
        let paintRotateDegree: Double
        let paintSpanFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageOffsetY = "DamageOffsetY"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadiusEnd = "PaintRadiusEnd"
            case paintRotateDegree = "PaintRotateDegree"
            case paintSpanFrame = "PaintSpanFrame"
        }
    }
    
    struct FootSplashParameter: Codable {
        let type: String
        let paintRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadius = "PaintRadius"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let flyGravity: Double
        let flyPositionAirResist: Double
        let guideHitCollisionType: String
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case flyGravity = "FlyGravity"
            case flyPositionAirResist = "FlyPositionAirResist"
            case guideHitCollisionType = "GuideHitCollisionType"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let armorHp: Int
        let chargeRateAutoPerFrame: HighMidLow
        let chargeRateNiceFriend: [Double]
        let thanksPaintPointMax: Double
        let thanksPaintPointOnce: [Double]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case armorHp = "ArmorHP"
            case chargeRateAutoPerFrame = "ChargeRateAutoPerFrame"
            case chargeRateNiceFriend = "ChargeRateNiceFriend"
            case thanksPaintPointMax = "ThanksPaintPointMax"
            case thanksPaintPointOnce = "ThanksPaintPointOnce"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMinusRate: Double
        let yPlusRate: Double
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMinusRate = "YMinusRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
}
