//
//  Inkjet.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct Inkjet: SpecialParametable {
    public let blastParam: BlastParameter
    public let jetParam: JetParameter
    public let launcherCollisionParam: LauncherCollisionParameter
    public let moveParam: MoveParameter
    public let weaponParam: WeaponParameter
    public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    public enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case jetParam = "JetParam"
        case launcherCollisionParam = "LauncherCollisionParam"
        case moveParam = "MoveParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    public struct BlastParameter: Codable {
        public let type: String
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let distanceDamage: [DistanceDamage]
        public let knockBackParam: KnockbackParameter
        public let paintRadius: Double
        public let splashAroundParam: SplashAroundParameter
        public let subSpecialSpecUpList: [SubSpecialSpecUpList]
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct JetParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct LauncherCollisionParameter: Codable {
        public let type: String
        public let changeFrameForField: Int
        public let changeFrameForPlayer: Int
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct MoveParameter: Codable {
        public let type: String
        public let distance: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distance = "Distance"
        }
    }
    
    public struct WeaponParameter: Codable {
        public let type: String
        public let boostJumpVel: Double
        public let specialTotalFrame: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case boostJumpVel = "Boost_JumpVel"
            case specialTotalFrame = "SpecialTotalFrame"
        }
    }
    
    public struct SpawnBulletAdditionMovePlayerParameter: Codable {
        public let type: String
        public let xRate: Double
        public let yMax: Double
        public let yMinusRate: Double
        public let yPlusRate: Double
        public let zRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yMinusRate = "YMinusRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
    
    public func getOverwrites() -> SpecialOverwrites {
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