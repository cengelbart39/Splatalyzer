//
//  Zipcaster.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Zipcaster special weapon
///
/// See the JSON file `WeaponSpSuperHook.game__GameParameterTable.json`.
public struct Zipcaster: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let bulletBombMoveParam: BulletBombMoveParameter
        public let bulletParam: BulletParameter
        public let hookBlastParam: HookBlastParameter
        public let hookCollisionParam: HookCollisionParameter
        public let weaponParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case bulletBombMoveParam = "BulletBombMoveParam"
            case bulletParam = "BulletParam"
            case hookBlastParam = "HookBlastParam"
            case hookCollisionParam = "HookCollisionParam"
            case weaponParam = "WeaponParam"
        }
        
        public struct BulletBombMoveParameter: Codable {
            public let type: String
            public let flyGravity: Double
            public let flyPositionAirResist: Double
            public let guideHitCollisionType: String
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case flyGravity = "FlyGravity"
                case flyPositionAirResist = "FlyPositionAirResist"
                case guideHitCollisionType = "GuideHitCollisionType"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            }
        }
        
        public struct BulletParameter: Codable {
            public let type: String
            public let collisionRadiusForField: Double
            public let collisionRadiusForPlayer: Double
            public let knockBackParam: KnockbackParameter
            public let paintDepthScale: Double
            public let paintSpanFrame: Int
            public let paintWidthHalf: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case collisionRadiusForField = "CollisionRadiusForField"
                case collisionRadiusForPlayer = "CollisionRadiusForPlayer"
                case knockBackParam = "KnockBackParam"
                case paintDepthScale = "PaintDepthScale"
                case paintSpanFrame = "PaintSpanFrame"
                case paintWidthHalf = "PaintWidthHalf"
            }
        }
        
        public struct HookBlastParameter: Codable {
            public let type: String
            public let crossPaintCheckLength: Double
            public let crossPaintRadius: Double
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
            }
        }
        
        public struct HookCollisionParameter: Codable {
            public let type: String
            public let endRadiusForField: Double
            public let endRadiusForPlayer: Double
            public let initRadiusForField: Double
            public let initRadiusForPlayer: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case endRadiusForField = "EndRadiusForField"
                case endRadiusForPlayer = "EndRadiusForPlayer"
                case initRadiusForField = "InitRadiusForField"
                case initRadiusForPlayer = "InitRadiusForPlayer"
            }
        }
        
        public struct WeaponParameter: Codable {
            public let type: String
            public let inkCapacityRt: Double
            public let inkConsumeHook: HighMidLow
            public let inkConsumePerSec: HighMidLow
            public let maxLengthHook: Double
            public let minLengthHookFloor: Double
            public let minLengthHookWall: Double
            public let moveAccAttack: Double
            public let moveSpeedAttackInit: Double
            public let shotFailedIntervalFrm: Double
            public let specialTotalFrame: Int
            public let waitFrameShot2Attack: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case inkCapacityRt = "InkCapacityRt"
                case inkConsumeHook = "InkConsume_Hook"
                case inkConsumePerSec = "InkConsume_PerSec"
                case maxLengthHook = "MaxLengthHook"
                case minLengthHookFloor = "MinLengthHook_Floor"
                case minLengthHookWall = "MinLengthHook_Wall"
                case moveAccAttack = "MoveAccAttack"
                case moveSpeedAttackInit = "MoveSpeedAttack_Init"
                case shotFailedIntervalFrm = "ShotFailedIntervalFrm"
                case specialTotalFrame = "SpecialTotalFrame"
                case waitFrameShot2Attack = "WaitFrameShot2Attack"
            }
        }
        
        public func getOverwrites() -> SpecialOverwrites {
            return SpecialOverwrites(
                chargeRateAutoPerFrame: nil,
                crossPaintCheckLength: nil,
                crossPaintRadius: nil,
                distanceDamageDistanceRate: nil,
                inkConsumeHook: self.weaponParam.inkConsumeHook,
                inkConsumePerSec: self.weaponParam.inkConsumePerSec,
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
