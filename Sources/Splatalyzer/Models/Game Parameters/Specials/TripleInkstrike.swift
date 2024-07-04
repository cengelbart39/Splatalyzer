//
//  TripleInkstrike.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Triple Inkstrike special weapon
///
/// See the JSON file `WeaponSpTripleTornado.game__GameParameterTable.json`.
public struct TripleInkstrike: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
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
        
        public struct BlastParameter: Parametable {
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
        
        public struct MissileParameter: Parametable {
            public let type: String
            public let useDirect: Bool
            public let xzBias: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case useDirect = "UseDirect"
                case xzBias = "XZBias"
            }
        }
        
        public struct MotherParameter: Parametable {
            public let type: String
            public let targetHeight: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case targetHeight = "TargetHeight"
            }
        }
        
        public struct MoveParameter: Parametable {
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
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let specialTotalFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case specialTotalFrame = "SpecialTotalFrame"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
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
}
