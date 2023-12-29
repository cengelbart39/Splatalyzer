//
//  SpecialSuperHook.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialSuperHook: Codable {
    let bulletBombMoveParam: BulletBombMoveParameter
    let bulletParam: BulletParameter
    let hookBlastParam: HookBlastParameter
    let hookCollisionParam: HookCollisionParameter
    let weaponParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case bulletBombMoveParam = "BulletBombMoveParam"
        case bulletParam = "BulletParam"
        case hookBlastParam = "HookBlastParam"
        case hookCollisionParam = "HookCollisionParam"
        case weaponParam = "WeaponParam"
    }
    
    struct BulletBombMoveParameter: Codable {
        let type: String
        let flyGravity: Double
        let flyPositionAirResist: Double
        let guideHitCollisionType: String
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case flyGravity = "FlyGravity"
            case flyPositionAirResist = "FlyPositionAirResist"
            case guideHitCollisionType = "GuideHitCollisionType"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
    }
    
    struct BulletParameter: Codable {
        let type: String
        let collisionRadiusForField: Double
        let collisionRadiusForPlayer: Double
        let knockBackParam: AttackKnockbackParameter
        let paintDepthScale: Double
        let paintSpanFrame: Int
        let paintWidthHalf: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionRadiusForField = "CollisionRadiusForField"
            case collisionRadiusForPlayer = "CollisionRadiusForPlayer"
            case knockBackParam = "KnockBackParam"
            case paintDepthScale = "PaintDepthScale"
            case paintSpanFrame = "PaintSpanFrame"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
    
    struct HookBlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: AttackKnockbackParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
        }
    }
    
    struct HookCollisionParameter: Codable {
        let type: String
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let inkCapacityRt: Double
        let inkConsumeHook: HighMidLow
        let inkConsumePerSec: HighMidLow
        let maxLengthHook: Double
        let minLengthHookFloor: Double
        let minLengthHookWall: Double
        let moveAccAttack: Double
        let moveSpeedAttackInit: Double
        let shotFailedIntervalFrm: Double
        let specialTotalFrame: Int
        let waitFrameShot2Attack: Int
        
        enum CodingKeys: String, CodingKey {
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
}
