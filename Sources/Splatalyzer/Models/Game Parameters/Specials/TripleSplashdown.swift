//
//  TripleSplashdown.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Triple Splashdown special weapon
///
/// See the JSON file `WeaponSpPogo.game__GameParameterTable.json`.
public struct TripleSplashdown: SpecialWeaponable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let blastParamDokanWarp: BlastParameter
        public let blastParamNormal: BlastParameter
        public let bulletParam: BulletParameter
        public let weaponParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case blastParamDokanWarp = "BlastParamDokanWarp"
            case blastParamNormal = "BlastParamNormal"
            case bulletParam = "BulletParam"
            case weaponParam = "spl__WeaponSpPogoParam"
        }
        
        public struct BlastParameter: Parametable {
            public let type: String
            public let crossPaintCheckLength: Double
            public let crossPaintRadius: Double
            public let crossPaintTexture: String
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let paintRadius: Double
            public let paintTexture: String
            public let planeDamage: [DistanceDamage]
            public let subSpecialSpecUpList: [SubSpecialSpecUpList]
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case crossPaintTexture = "CrossPaintTexture"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintRadius = "PaintRadius"
                case paintTexture = "PaintTexture"
                case planeDamage = "PlaneDamage"
                case subSpecialSpecUpList = "SubSpecialSpecUpList"
            }
        }
        
        public struct BulletParameter: Parametable {
            public let type: String
            public let hitPoint: Int
            public let moveCollisionHeight: [Double]
            public let moveDistance: Double
            public let moveFrame: Int
            public let startInvincibleFrame: Int
            public let superJumpWaitFrame0: Int
            public let superJumpWaitFrame1: Int
            public let waitRiseFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case hitPoint = "HitPoint"
                case moveCollisionHeight = "MoveCollisionHeight"
                case moveDistance = "MoveDistance"
                case moveFrame = "MoveFrame"
                case startInvincibleFrame = "StartInvincibleFrame"
                case superJumpWaitFrame0 = "SuperJumpWaitFrame0"
                case superJumpWaitFrame1 = "SuperJumpWaitFrame1"
                case waitRiseFrame = "WaitRiseFrame"
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let riseFrame: Int
            public let riseNoDamageStartFrame: Int
            public let specialTotalFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case riseFrame = "Rise_Frame"
                case riseNoDamageStartFrame = "Rise_NoDamageStartFrame"
                case specialTotalFrame = "SpecialTotalFrame"
            }
        }
        
        public func getOverwrites() -> SpecialOverwrites {
            return SpecialOverwrites(
                chargeRateAutoPerFrame: nil,
                crossPaintCheckLength: nil,
                crossPaintRadius: nil,
                distanceDamageDistanceRate: self.blastParamDokanWarp.subSpecialSpecUpList[safe: 0]?.value,
                inkConsumeHook: nil,
                inkConsumePerSec: nil,
                maxFieldHp: nil,
                maxFrame: nil,
                maxHp: nil,
                maxRadius: nil,
                moveSpeed: nil,
                paintRadius: self.blastParamDokanWarp.subSpecialSpecUpList[safe: 1]?.value,
                powerUpFrame: nil,
                radiusMax: nil,
                radiusMin: nil,
                spawnSpeedZSpecUp: nil,
                specialDurationFrame: nil,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: nil)
        }
    }
}
