//
//  WaveBreaker.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Wave Breaker special weapon
///
/// See the JSON file `WeaponSpShockSonar.game__GameParameterTable.json`.
public struct WaveBreaker: SpecialWeaponable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let bulletInformImpactControlForGeyserParam: BulletInformImpactControlForGeyserParameter
        public let bulletParam: BulletParameter
        
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        public let weaponParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case bulletInformImpactControlForGeyserParam = "spl__BulletInformImpactControlForGeyserParam"
            case bulletParam = "spl__BulletSpShockSonarParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
            case weaponParam = "spl__WeaponSpShockSonarParam"
        }
        
        public struct BulletInformImpactControlForGeyserParameter: Parametable {
            public let type: String
            public let addSpeedPerImpact: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case addSpeedPerImpact = "AddSpeedPerImpact"
            }
        }
        
        public struct BulletParameter: Parametable {
            public let type: String
            public let generatorParam: GeneratorParameter
            public let waveParam: WaveParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case generatorParam = "GeneratorParam"
                case waveParam = "WaveParam"
            }
            
            public struct GeneratorParameter: Parametable {
                public let headColRadius: Double
                public let hitDamage: Int
                public let hitDamageInterval: Double
                public let hitKnockback: Int
                public let markingFrame: Int
                public let moveParam: MoveParameter
                public let poleColHeight: Double
                public let sphereAnimCurve: RateData
                public let sphereAnimRadius: Double
                public let waveEmitFrameArray: [Int]
                
                public enum CodingKeys: String, CodingKey {
                    case headColRadius = "HeadColRadius"
                    case hitDamage = "HitDamage"
                    case hitDamageInterval = "HitDamageInterval"
                    case hitKnockback = "HitKnockback"
                    case markingFrame = "MarkingFrame"
                    case moveParam = "MoveParam"
                    case poleColHeight = "PoleColHeight"
                    case sphereAnimCurve = "SphereAnimCurve"
                    case sphereAnimRadius = "SphereAnimRadius"
                    case waveEmitFrameArray = "WaveEmitFrameArray"
                }
                
                public struct MoveParameter: Parametable {
                    public let flyGravity: Double
                    public let flyPositionAirResist: Double
                    public let guideHitCollisionType: String
                    public let spawnSpeedY: Double
                    public let spawnSpeedYWorldMin: Double
                    public let spawnSpeedZSpecUp: HighMidLow
                    
                    public enum CodingKeys: String, CodingKey {
                        case flyGravity = "FlyGravity"
                        case flyPositionAirResist = "FlyPositionAirResist"
                        case guideHitCollisionType = "GuideHitCollisionType"
                        case spawnSpeedY = "SpawnSpeedY"
                        case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                        case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
                    }
                }
            }
            
            public struct WaveParameter: Parametable {
                public let damage: Int
                public let damageYMax: Double
                public let damageYMin: Double
                public let maxFrame: HighMidLow
                public let maxRadius: HighMidLow
                
                public enum CodingKeys: String, CodingKey {
                    case damage = "Damage"
                    case damageYMax = "DamageYMax"
                    case damageYMin = "DamageYMin"
                    case maxFrame = "MaxFrame"
                    case maxRadius = "MaxRadius"
                }
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
            public let type: String
            public let xRate: Double
            public let yPlusRate: Double
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case xRate = "XRate"
                case yPlusRate = "YPlusRate"
                case zRate = "ZRate"
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let shotParam: EmptyStruct
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case shotParam = "ShotParam"
            }
            
            public struct EmptyStruct: Parametable { }
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
                maxFrame: self.bulletParam.waveParam.maxFrame,
                maxHp: nil,
                maxRadius: self.bulletParam.waveParam.maxRadius,
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
