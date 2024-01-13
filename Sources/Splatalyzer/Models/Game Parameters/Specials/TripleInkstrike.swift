//
//  TripleInkstrike.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct TripleInkstrike: SpecialParametable {
    public let blastParam: BlastParameter
    public let missileParam: MissileParameter
    public let motherParam: MotherParameter
    public let moveParam: MoveParameter
    public let weaponParam: WeaponParameter
    public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    public enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case missileParam = "MissileParam"
        case motherParam = "MotherParam"
        case moveParam = "MoveParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    public struct BlastParameter: Codable {
        public let type: String
        public let damageHeightUp: Double
        public let damageRadiusEnd: Double
        public let damageValueEnd: Int
        public let damageValueStart: Int
        public let knockBackParam: KnockbackParameter
        public let paintRadiusEnd: Double
        public let paintRadiusStart: Double
        public let paintRotateDegree: Double
        public let paintSpanFrame: Int
        public let radiusSpreadFrame: Double
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct MissileParameter: Codable {
        public let type: String
        public let useDirect: Bool
        public let xzBias: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case useDirect = "UseDirect"
            case xzBias = "XZBias"
        }
    }
    
    public struct MotherParameter: Codable {
        public let type: String
        public let targetHeight: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case targetHeight = "TargetHeight"
        }
    }
    
    public struct MoveParameter: Codable {
        public let type: String
        public let guideHitCollisionType: String
        public let spawnSpeedY: Double
        public let spawnSpeedYWorldMin: Double
        public let spawnSpeedZSpecUp: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case guideHitCollisionType = "GuideHitCollisionType"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    public struct WeaponParameter: Codable {
        public let type: String
        public let specialTotalFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case specialTotalFrame = "SpecialTotalFrame"
        }
    }
    
    public struct SpawnBulletAdditionMovePlayerParameter: Codable {
        public let type: String
        public let xRate: Double
        public let yMax: Double
        public let yPlusRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
    
    public func getOverwrites() -> SpecialOverwrites {
        return SpecialOverwrites(
            chargeRateAutoPerFrame: nil,
            crossPaintCheckLength: nil,
            crossPaintRadius: nil,
            distanceDamageDistanceRate: nil,
            inkConsumeHook: nil,
            inkConsumePerSec: nil,
            maxFieldHp: nil,
            maxFrame: nil,
            maxHp: nil,
            maxRadius: nil,
            moveSpeed: nil,
            paintRadius: nil,
            powerUpFrame: nil,
            radiusMax: nil,
            radiusMin: nil,
            spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
            specialDurationFrame: nil,
            splashAroundVelocityMax: nil,
            splashAroundVelocityMin: nil,
            targetInCircleRadius: nil)
    }
}
