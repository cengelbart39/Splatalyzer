//
//  BooyahBomb.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Booyah Bomb special weapon
///
/// See the JSON file `WeaponSpNiceBall.game__GameParameterTable.json`
public struct BooyahBomb: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let blastParam: BlastParameter
        public let footSplashParam: FootSplashParameter
        public let moveParam: MoveParameter
        public let weaponParam: WeaponParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case blastParam = "BlastParam"
            case footSplashParam = "FootSplashParam"
            case moveParam = "MoveParam"
            case weaponParam = "WeaponParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct BlastParameter: Codable {
            public let type: String
            public let crossPaintCheckLength: Double
            public let crossPaintRadius: Double
            public let damageOffsetY: Double
            public let knockBackParam: KnockbackParameter
            public let paintOffsetY: Double
            public let paintRadiusEnd: Double
            public let paintRotateDegree: Double
            public let paintSpanFrame: Int
            
            public enum CodingKeys: String, CodingKey {
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
        
        public struct FootSplashParameter: Codable {
            public let type: String
            public let paintRadius: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case paintRadius = "PaintRadius"
            }
        }
        
        public struct MoveParameter: Codable {
            public let type: String
            public let flyGravity: Double
            public let flyPositionAirResist: Double
            public let guideHitCollisionType: String
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case flyGravity = "FlyGravity"
                case flyPositionAirResist = "FlyPositionAirResist"
                case guideHitCollisionType = "GuideHitCollisionType"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            }
        }
        
        public struct WeaponParameter: Codable {
            public let type: String
            public let armorHp: Int
            public let chargeRateAutoPerFrame: HighMidLow
            public let chargeRateNiceFriend: [Double]
            public let thanksPaintPointMax: Double
            public let thanksPaintPointOnce: [Double]
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case armorHp = "ArmorHP"
                case chargeRateAutoPerFrame = "ChargeRateAutoPerFrame"
                case chargeRateNiceFriend = "ChargeRateNiceFriend"
                case thanksPaintPointMax = "ThanksPaintPointMax"
                case thanksPaintPointOnce = "ThanksPaintPointOnce"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Codable {
            public let type: String
            public let xRate: Double
            public let yMinusRate: Double
            public let yPlusRate: Double
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case xRate = "XRate"
                case yMinusRate = "YMinusRate"
                case yPlusRate = "YPlusRate"
                case zRate = "ZRate"
            }
        }
        
        public func getOverwrites() -> SpecialOverwrites {
            return SpecialOverwrites(
                chargeRateAutoPerFrame: self.weaponParam.chargeRateAutoPerFrame,
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
                spawnSpeedZSpecUp: nil,
                specialDurationFrame: nil,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: nil)
        }
    }
}
