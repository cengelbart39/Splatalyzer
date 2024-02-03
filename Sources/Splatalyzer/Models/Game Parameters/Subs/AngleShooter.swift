//
//  AngleShooter.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Angle Shooter sub weapon
///
/// See the JSON file `WeaponLineMarker.game__GameParameterTable.json`
public struct AngleShooter: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SubParametable {
        public let blastParam: BlastParameter
        public let moveParam: MoveParameter
        public let subWeaponSetting: SubWeaponSetting
        public let weaponParam: WeaponParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case blastParam = "BlastParam"
            case moveParam = "MoveParam"
            case subWeaponSetting = "SubWeaponSetting"
            case weaponParam = "WeaponParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct BlastParameter: Codable {
            public let type: String
            public let collisionRadiusForPaint: Double
            public let crossPaintCheckLength: Double
            public let crossPaintRadius: Double
            public let damageAttackerPriority: Bool
            public let knockBackParam: KnockbackParameter
            public let paintHeight: Double
            public let paintOffsetY: Double
            public let paintRadius: Double
            public let paintTexture: String
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case collisionRadiusForPaint = "CollisionRadiusForPaint"
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case damageAttackerPriority = "DamageAttackerPriority"
                case knockBackParam = "KnockBackParam"
                case paintHeight = "PaintHeight"
                case paintOffsetY = "PaintOffsetY"
                case paintRadius = "PaintRadius"
                case paintTexture = "PaintTexture"
            }
        }
        
        public struct MoveParameter: Codable {
            public let type: String
            public let collisionRadius: Double
            public let directDamage: Int
            public let flyGravity: Double
            public let flyPositionAirResist: Double
            public let flyingFrame: Int
            public let guideHitCollisionType: String
            public let guideRadius: Double
            public let markingFrame: HighMidLow
            public let paintRadius: Double
            public let reboundGroundBoundRate: Double
            public let reboundGroundReflectAngleRate: Double
            public let reboundWallBoundRate: Double
            public let reboundWallReflectAngleRate: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            public let tailDamage: Int
            public let tailFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case collisionRadius = "CollisionRadius"
                case directDamage = "DirectDamage"
                case flyGravity = "FlyGravity"
                case flyPositionAirResist = "FlyPositionAirResist"
                case flyingFrame = "FlyingFrame"
                case guideHitCollisionType = "GuideHitCollisionType"
                case guideRadius = "GuideRadius"
                case markingFrame = "MarkingFrame"
                case paintRadius = "PaintRadius"
                case reboundGroundBoundRate = "ReboundGroundBoundRate"
                case reboundGroundReflectAngleRate = "ReboundGroundReflectAngleRate"
                case reboundWallBoundRate = "ReboundWallBoundRate"
                case reboundWallReflectAngleRate = "ReboundWallReflectAngleRate"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
                case tailDamage = "TailDamage"
                case tailFrame = "TailFrame"
            }
        }
        
        public struct WeaponParameter: Codable {
            public let type: String
            public let inkConsume: Double
            public let inkRecoverStop: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case inkConsume = "InkConsume"
                case inkRecoverStop = "InkRecoverStop"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Codable {
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
        
        public func getOverwrites(_ playerInfo: Player? = nil) -> SubOverwrites {
            return SubOverwrites(
                spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
                periodFirst: nil,
                periodSecond: nil,
                markingFrameSubSpec: self.moveParam.markingFrame,
                sensorRadius: nil,
                explosionRadius: nil,
                maxHp: nil,
                subSpecUpParam: nil)
        }
    }
}
