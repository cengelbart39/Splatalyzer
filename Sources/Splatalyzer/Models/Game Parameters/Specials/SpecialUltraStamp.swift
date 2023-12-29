//
//  SpecialUltraStamp.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialUltraStamp: Codable {
    let swingBigBlastParam: SwingBlastParam
    let swingBulletWallParam: SwingBulletWallParameter
    let swingParam: SwingParameter
    let swingSmallBlastParam: SwingBlastParam
    let swingWallDropCollisionPaintParam: SwingWallDropCollisionPaintParameter
    let swingWallDropMoveParam: SwingWallDropMoveParameter
    let throwBlastParam: ThrowBlastParameter
    let throwMoveParam: ThrowMoveParameter
    
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
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
    
    struct SwingBlastParam: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageAttackerPriority: Bool
        let damageOffsetY: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: AttackKnockbackParameter
        let paintOffsetY: Double
        let paintRadius: Double
        
        enum CodingKeys: String, CodingKey {
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
    
    struct SwingBulletWallParameter: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct SwingParameter: Codable {
        let type: String
        let defiladeHandSideOffsetLength: Double
        let stateSwingUpLateFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case defiladeHandSideOffsetLength = "DefiladeHandSideOffsetLength"
            case stateSwingUpLateFrame = "StateSwingUpLateFrame"
        }
    }
    
    struct SwingWallDropCollisionPaintParameter: Codable {
        let type: String
        let paintRadiusGround: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusGround = "PaintRadiusGround"
        }
    }
    
    struct SwingWallDropMoveParameter: Codable {
        let type: String
        let fallPeriodFirstFrameMax: Int
        let fallPeriodFirstFrameMin: Int
        let fallPeriodLastFrameMax: Int
        let fallPeriodLastFrameMin: Int
        let fallPeriodSecondFrame: Int
        let fallPeriodSecondTargetSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
            case fallPeriodSecondFrame = "FallPeriodSecondFrame"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }
    
    struct ThrowBlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crosSPaintRadius: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParma: AttackKnockbackParameter
        let paintRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crosSPaintRadius = "CrossPaintRadius"
            case distanceDamage = "DistanceDamage"
            case knockBackParma = "KnockBackParam"
            case paintRadius = "PaintRadius"
        }
    }
    
    struct ThrowMoveParameter: Codable {
        let type: String
        let directAccel: Int
        let directDamageValue: Int
        let flyGravity: Double
        let flyPositionAirResist: Double
        let guideHitCollisionType: String
        let guideRadius: Double
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
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
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yPlusRate: Double
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let bangDownSmallTurnLimitAngleDeg: Double
        let bangDownVelLimitY: Double
        let holdSwingKnockBackParam: AttackKnockbackParameter
        let specialTotalFrame: HighMidLow
        let velLimitNoPaint: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case bangDownSmallTurnLimitAngleDeg = "BangDownSmall_TurnLimitAngleDeg"
            case bangDownVelLimitY = "BangDown_VelLimitY"
            case holdSwingKnockBackParam = "HoldSwingKnockBackParam"
            case specialTotalFrame = "SpecialTotalFrame"
            case velLimitNoPaint = "VelLimit_NoPaint"
        }
    }
}
