//
//  TentaMissiles.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Tenta Missiles special weapon
///
/// See the JSON file `WeaponSpMultiMissile.game__GameParameterTable.json`.
public struct TentaMissiles: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let bulletBlastParam: BulletBlastParameter
        public let bulletDamageParam: BulletDamageParameter
        public let bulletMoveParam: BulletMoveParameter
        public let weaponLaunchParam: WeaponLaunchParameter
        public let weaponLockOnParam: WeaponLockOnParameter
        public let weaponPlayerParam: WeaponPlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case bulletBlastParam = "spl__BulletBlastParam"
            case bulletDamageParam = "spl__BulletSpMultiMissileDamageParam"
            case bulletMoveParam = "spl__BulletSpMultiMissileMoveParam"
            case weaponLaunchParam = "spl__WeaponSpMultiMissileLaunchParam"
            case weaponLockOnParam = "spl__WeaponSpMultiMissileLockOnParam"
            case weaponPlayerParam = "spl__WeaponSpMultiMissilePlayerParam"
        }
        
        public struct BulletBlastParameter: Parametable {
            public let type: String
            public let crossPaintCheckLength: Double
            public let damageOffsetY: Double
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let paintOffsetY: Double
            public let paintRadius: Double
            public let subSpecialSpecUpList: [SubSpecialSpecUpList]
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case damageOffsetY = "DamageOffsetY"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintOffsetY = "PaintOffsetY"
                case paintRadius = "PaintRadius"
                case subSpecialSpecUpList = "SubSpecialSpecUpList"
            }
        }
        
        public struct BulletDamageParameter: Parametable {
            public let type: String
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
            }
        }
        
        public struct BulletMoveParameter: Parametable {
            public let type: String
            public let riseParam: RiseParameter
            public let targetParam: TargetParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case riseParam = "RiseParam"
                case targetParam = "TargetParam"
            }
            
            public struct RiseParameter: Parametable {
                public let riseBaseSpeedComeUnderRate: Double
                
                public enum CodingKeys: String, CodingKey {
                    case riseBaseSpeedComeUnderRate = "RiseBaseSpeedComeUnderRate"
                }
            }
            
            public struct TargetParameter: Parametable {
                public let multiTargetCircleArray: [TargetCircle]
                public let oneTargetCircleArray: [TargetCircle]
                
                public enum CodingKeys: String, CodingKey {
                    case multiTargetCircleArray = "MultiTargetCircleArray"
                    case oneTargetCircleArray = "OneTargetCircleArray"
                }
                
                public struct TargetCircle: Parametable {
                    public let num: Int?
                    public let radius: Double?
                    public let randomOffset: Double
                    public let randomOffsetBias: Double?
                    
                    public enum CodingKeys: String, CodingKey {
                        case num = "Num"
                        case radius = "Radius"
                        case randomOffset = "RandomOffset"
                        case randomOffsetBias = "RandomOffsetBias"
                    }
                }
            }
        }
        
        public struct WeaponLaunchParameter: Parametable {
            public let type: String
            public let shotIntervalTargetArray: [Int]
            public let shotNumOneTargetArray: [Int]
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case shotIntervalTargetArray = "ShotIntervalTargetArray"
                case shotNumOneTargetArray = "ShotNumOneTargetArray"
            }
        }
        
        public struct WeaponLockOnParameter: Parametable {
            public let target: String
            public let targetCircleEffectDefaultRadius: Double
            public let targetInCircleRadius: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case target = "$type"
                case targetCircleEffectDefaultRadius = "TargetCircleEffectDefaultRadius"
                case targetInCircleRadius = "TargetInCircleRadius"
            }
        }
        
        public struct WeaponPlayerParameter: Parametable {
            public let type: String
            public let jumpVelLimitSearching: Double
            public let moveVelLimitSearching: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case jumpVelLimitSearching = "JumpVelLimitSearching"
                case moveVelLimitSearching = "MoveVelLimitSearching"
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
                spawnSpeedZSpecUp: nil,
                specialDurationFrame: nil,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: self.weaponLockOnParam.targetInCircleRadius)
        }
    }
}
