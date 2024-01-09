//
//  SubBombSplash.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubBombSplash: SubParametable {
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
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter
        let paintOffsetY: Double
        let splashAroundParam: SplashAroundParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case splashAroundParam = "SplashAroundParam"
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let burstFrame: Int
        let collisionSESpanFrame: Int
        let collisionSEVelDotGroundNrm: Double
        let contactDashPanel: ContactDashPanel
        let contactJumpPanel: ContactJumpPanel
        let flyGravity: Double
        let flyRotateAirResist: Double
        let groundGravity: Double
        let groundPositionDeg50AirResist: Double
        let groundPositionHorizonAirResist: Double
        let groundRotateDeg50AirResist: Double
        let groundRotateHorizonAirResist: Double
        let guideRadius: Double
        let hitVerticalWallReboundMaxRate: Double
        let spawnRotatePitch: Double
        let spawnRotateRoll: Double
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case burstFrame = "BurstFrame"
            case collisionSESpanFrame = "CollisionSESpanFrame"
            case collisionSEVelDotGroundNrm = "CollisionSEVelDotGroundNrm"
            case contactDashPanel = "ContactDashPanel"
            case contactJumpPanel = "ContactJumpPanel"
            case flyGravity = "FlyGravity"
            case flyRotateAirResist = "FlyRotateAirResist"
            case groundGravity = "GroundGravity"
            case groundPositionDeg50AirResist = "GroundPositionDeg50AirResist"
            case groundPositionHorizonAirResist = "GroundPositionHorizonAirResist"
            case groundRotateDeg50AirResist = "GroundRotateDeg50AirResist"
            case groundRotateHorizonAirResist = "GroundRotateHorizonAirResist"
            case guideRadius = "GuideRadius"
            case hitVerticalWallReboundMaxRate = "HitVerticalWallReboundMaxRate"
            case spawnRotatePitch = "SpawnRotatePitch"
            case spawnRotateRoll = "SpawnRotateRoll"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
        
        struct ContactDashPanel: Codable {
            let addSpeedPerImpact: Double
            let crossSaveSpeedRate: Double
            
            enum CodingKeys: String, CodingKey {
                case addSpeedPerImpact = "AddSpeedPerImpact"
                case crossSaveSpeedRate = "CrossSaveSpeedRate"
            }
        }
        
        struct ContactJumpPanel: Codable {
            let addSpeedOneBoundRate: Double
            let addSpeedPerImpact: Double
            
            enum CodingKeys: String, CodingKey {
                case addSpeedOneBoundRate = "AddSpeedOneBoundRate"
                case addSpeedPerImpact = "AddSpeedPerImpact"
            }
        }
    }
    
    struct WeaponParameter: Codable {
        let type: String
        let inkRecoverStop: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkRecoverStop = "InkRecoverStop"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let xRate: Double
        let yMax: Double
        let yPlusRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
    
    func getOverwrites(_ playerInfo: PlayerParameters? = nil) -> SubOverwrites {
        return SubOverwrites(
            spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
            periodFirst: nil,
            periodSecond: nil,
            markingFrameSubSpec: nil,
            sensorRadius: nil,
            explosionRadius: nil,
            maxHp: nil,
            subSpecUpParam: nil)
    }
}
