//
//  UltraStamp.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct UltraStamp: SpecialParametable {
    public let swingBigBlastParam: SwingBlastParam
    public let swingBulletWallParam: SwingBulletWallParameter
    public let swingParam: SwingParameter
    public let swingSmallBlastParam: SwingBlastParam
    public let swingWallDropCollisionPaintParam: SwingWallDropCollisionPaintParameter
    public let swingWallDropMoveParam: SwingWallDropMoveParameter
    public let throwBlastParam: ThrowBlastParameter
    public let throwMoveParam: ThrowMoveParameter
    
    public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    public let weaponParam: WeaponParameter
    
    public enum CodingKeys: String, CodingKey {
        case swingBigBlastParam = "SwingBigBlastParam"
        case swingBulletWallParam = "SwingBulletWallParam"
        case swingParam = "SwingParam"
        case swingSmallBlastParam = "SwingSmallBlastParam"
        case swingWallDropCollisionPaintParam = "SwingWallDropCollisionPaintParam"
        case swingWallDropMoveParam = "SwingWallDropMoveParam"
        case throwBlastParam = "ThrowBlastParam"
        case throwMoveParam = "ThrowMoveParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        case weaponParam = "spl__WeaponSpUltraStampParam"
    }
    
    public struct SwingBlastParam: Codable {
        public let type: String
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let damageAttackerPriority: Bool
        public let damageOffsetY: Double
        public let distanceDamage: [DistanceDamage]
        public let knockBackParam: KnockbackParameter
        public let paintOffsetY: Double
        public let paintRadius: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageAttackerPriority = "DamageAttackerPriority"
            case damageOffsetY = "DamageOffsetY"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
        }
    }
    
    public struct SwingBulletWallParameter: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct SwingParameter: Codable {
        public let type: String
        public let defiladeHandSideOffsetLength: Double
        public let stateSwingUpLateFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case defiladeHandSideOffsetLength = "DefiladeHandSideOffsetLength"
            case stateSwingUpLateFrame = "StateSwingUpLateFrame"
        }
    }
    
    public struct SwingWallDropCollisionPaintParameter: Codable {
        public let type: String
        public let paintRadiusGround: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusGround = "PaintRadiusGround"
        }
    }
    
    public struct SwingWallDropMoveParameter: Codable {
        public let type: String
        public let fallPeriodFirstFrameMax: Int
        public let fallPeriodFirstFrameMin: Int
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int
        public let fallPeriodSecondFrame: Int
        public let fallPeriodSecondTargetSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
            case fallPeriodSecondFrame = "FallPeriodSecondFrame"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }
    
    public struct ThrowBlastParameter: Codable {
        public let type: String
        public let crossPaintCheckLength: Double
        public let crosSPaintRadius: Double
        public let distanceDamage: [DistanceDamage]
        public let knockBackParma: KnockbackParameter
        public let paintRadius: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crosSPaintRadius = "CrossPaintRadius"
            case distanceDamage = "DistanceDamage"
            case knockBackParma = "KnockBackParam"
            case paintRadius = "PaintRadius"
        }
    }
    
    public struct ThrowMoveParameter: Codable {
        public let type: String
        public let directAccel: Int
        public let directDamageValue: Int
        public let flyGravity: Double
        public let flyPositionAirResist: Double
        public let guideHitCollisionType: String
        public let guideRadius: Double
        public let spawnSpeedY: Double
        public let spawnSpeedYWorldMin: Double
        public let spawnSpeedZSpecUp: HighMidLow
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case directAccel = "DirectAccel"
            case directDamageValue = "DirectDamageValue"
            case flyGravity = "FlyGravity"
            case flyPositionAirResist = "FlyPositionAirResist"
            case guideHitCollisionType = "GuideHitCollisionType"
            case guideRadius = "GuideRadius"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
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
    
    public struct WeaponParameter: Codable {
        public let type: String
        public let bangDownSmallTurnLimitAngleDeg: Double
        public let bangDownVelLimitY: Double
        public let holdSwingKnockBackParam: KnockbackParameter
        public let specialTotalFrame: HighMidLow
        public let velLimitNoPaint: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case bangDownSmallTurnLimitAngleDeg = "BangDownSmall_TurnLimitAngleDeg"
            case bangDownVelLimitY = "BangDown_VelLimitY"
            case holdSwingKnockBackParam = "HoldSwingKnockBackParam"
            case specialTotalFrame = "SpecialTotalFrame"
            case velLimitNoPaint = "VelLimit_NoPaint"
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
            specialDurationFrame: self.weaponParam.specialTotalFrame,
            splashAroundVelocityMax: nil,
            splashAroundVelocityMin: nil,
            targetInCircleRadius: nil)
    }
}
