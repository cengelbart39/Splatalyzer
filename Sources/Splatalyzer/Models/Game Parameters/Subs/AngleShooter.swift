//
//  AngleShooter.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct AngleShooter: SubParametable {
    let blastParam: BlastParameter
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParam = "BlastParam"
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let collisionRadiusForPaint: Double
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageAttackerPriority: Bool
        let knockBackParam: KnockbackParameter
        let paintHeight: Double
        let paintOffsetY: Double
        let paintRadius: Double
        let paintTexture: String
        
        enum CodingKeys: String, CodingKey {
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
    
    struct MoveParameter: Codable {
        let type: String
        let collisionRadius: Double
        let directDamage: Int
        let flyGravity: Double
        let flyPositionAirResist: Double
        let flyingFrame: Int
        let guideHitCollisionType: String
        let guideRadius: Double
        let markingFrame: HighMidLow
        let paintRadius: Double
        let reboundGroundBoundRate: Double
        let reboundGroundReflectAngleRate: Double
        let reboundWallBoundRate: Double
        let reboundWallReflectAngleRate: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        let tailDamage: Int
        let tailFrame: Int
        
        enum CodingKeys: String, CodingKey {
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
    
    struct WeaponParameter: Codable {
        let type: String
        let inkConsume: Double
        let inkRecoverStop: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
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
    
    func getOverwrites(_ playerInfo: PlayerParameters? = nil) -> SubOverwrites {
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
