//
//  Inkjet.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct Inkjet: SpecialParametable {
    let blastParam: BlastParameter
    let jetParam: JetParameter
    let launcherCollisionParam: LauncherCollisionParameter
    let moveParam: MoveParameter
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case jetParam = "JetParam"
        case launcherCollisionParam = "LauncherCollisionParam"
        case moveParam = "MoveParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let paintRadius: Double
        let splashAroundParam: SplashAroundParameter
        let subSpecialSpecUpList: [SubSpecialSpecUpList]
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintRadius = "PaintRadius"
            case splashAroundParam = "SplashAroundParam"
            case subSpecialSpecUpList = "SubSpecialSpecUpList"
        }
    }
    
    struct JetParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct LauncherCollisionParameter: Codable {
        let type: String
        let changeFrameForField: Int
        let changeFrameForPlayer: Int
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case changeFrameForField = "ChangeFrameForField"
            case changeFrameForPlayer = "ChangeFrameForPlayer"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let distance: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distance = "Distance"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let boostJumpVel: Double
        let specialTotalFrame: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case boostJumpVel = "Boost_JumpVel"
            case specialTotalFrame = "SpecialTotalFrame"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yMinusRate: Double
        let yPlusRate: Double
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yMinusRate = "YMinusRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
    
    func getOverwrites() -> SpecialOverwrites {
        let blastPaintRadius = self.blastParam.paintRadius
        let specUpPaintRadius = self.blastParam.subSpecialSpecUpList[safe: 4]?.value
        let specUpPaintRadiusExists = specUpPaintRadius?.high != nil  && specUpPaintRadius?.low != nil && specUpPaintRadius?.mid != nil
        
        let paintRadius = HighMidLow(
            high: (specUpPaintRadius?.high ?? 0) + blastPaintRadius,
            mid: (specUpPaintRadius?.mid ?? 0) + blastPaintRadius,
            low: (specUpPaintRadius?.low ?? 0) + blastPaintRadius)
        
        return SpecialOverwrites(
            chargeRateAutoPerFrame: nil,
            crossPaintCheckLength: nil,
            crossPaintRadius: nil,
            distanceDamageDistanceRate: self.blastParam.subSpecialSpecUpList[safe: 1]?.value,
            inkConsumeHook: nil,
            inkConsumePerSec: nil,
            maxFieldHp: nil,
            maxFrame: nil,
            maxHp: nil,
            maxRadius: nil,
            moveSpeed: nil,
            paintRadius: specUpPaintRadiusExists ? paintRadius : nil,
            powerUpFrame: nil,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: nil,
            specialDurationFrame: nil,
            splashAroundVelocityMax: self.blastParam.subSpecialSpecUpList[safe: 3]?.value,
            splashAroundVelocityMin: self.blastParam.subSpecialSpecUpList[safe: 2]?.value,
            targetInCircleRadius: nil)
    }
}
