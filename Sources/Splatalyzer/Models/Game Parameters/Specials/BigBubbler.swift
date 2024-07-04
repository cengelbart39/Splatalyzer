//
//  BigBubbler.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Big Bubbler special weapon
///
/// See the JSON file `WeaponSpGreatBarrier.game__GameParameterTable.json`
public struct BigBubbler: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let bulletMoveParam: BulletMoveParameter
        public let weaponParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case bulletMoveParam = "spl__BulletSpGreatBarrierMoveParam"
            case weaponParam = "spl__WeaponSpGreatBarrierParam"
        }
        
        public struct BulletMoveParameter: Parametable {
            public let type: String
            public let barrierParam: BarrierParameter
            public let baseParam: BaseParameter
            public let droneParam: DroneParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case barrierParam = "BarrierParam"
                case baseParam = "BaseParam"
                case droneParam = "DroneParam"
            }
            
            public struct BarrierParameter: Parametable {
                public let canopyKnockBack: Double
                public let damgeRatio: Double
                public let maxFieldHP: HighMidLow
                public let maxHP: HighMidLow
                public let maxRadius: Double
                public let minRadius: Double
                public let radiusRatioCurve: RateData
                public let timeDamage: Int
                public let timeDamageOnVLift: Int
                
                public enum CodingKeys: String, CodingKey {
                    case canopyKnockBack = "CanopyKnockBack"
                    case damgeRatio = "DamgeRatio"
                    case maxFieldHP = "MaxFieldHP"
                    case maxHP = "MaxHP"
                    case maxRadius = "MaxRadius"
                    case minRadius = "MinRadius"
                    case radiusRatioCurve = "RadiusRatioCurve"
                    case timeDamage = "TimeDamage"
                    case timeDamageOnVLift = "TimeDamageOnVLift"
                }
            }
            
            public struct BaseParameter: Parametable {
                public let paintRadius: Double
                public let paintTexture: String
                
                enum CodingKeys: String, CodingKey {
                    case paintRadius = "PaintRadius"
                    case paintTexture = "PaintTexture"
                }
            }
            
            public struct DroneParameter: Parametable {
                public let ascendCurve: RateData
                public let ascendFrame: Int
                public let ascendHeight: Double
                public let fieldCollisionRadius: Double
                public let ignitionFrame: Int
                public let overlapFieldDamage: Int
                public let overlapFieldDamageInterval: Int
                
                public enum CodingKeys: String, CodingKey {
                    case ascendCurve = "AscendCurve"
                    case ascendFrame = "AscendFrame"
                    case ascendHeight = "AscendHeight"
                    case fieldCollisionRadius = "FieldCollisionRadius"
                    case ignitionFrame = "IgnitionFrame"
                    case overlapFieldDamage = "OverlapFieldDamage"
                    case overlapFieldDamageInterval = "OverlapFieldDamageInterval"
                }
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let knockBackParam: KnockBackParam
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case knockBackParam = "KnockBackParam"
            }
            
            public struct KnockBackParam: Parametable {
                public let impactValue: Double
                
                public enum CodingKeys: String, CodingKey {
                    case impactValue = "ImpactValue"
                }
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
                maxFieldHp: self.bulletMoveParam.barrierParam.maxFieldHP,
                maxFrame: nil,
                maxHp: self.bulletMoveParam.barrierParam.maxHP,
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
