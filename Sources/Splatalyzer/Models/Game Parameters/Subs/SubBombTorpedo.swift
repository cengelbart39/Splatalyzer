//
//  SubBombTorpedo.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubBombTorpedo: SubParametable {
    let blastParamChase: BlastParameter
    let blastParamThrow: BlastParameter
    let moveParam: MoveParameter
    let splashNearest: SplashNearest
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case blastParamChase = "BlastParamChase"
        case blastParamThrow = "BlastParamThrow"
        case moveParam = "MoveParam"
        case splashNearest = "SplashNearest"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct BlastParameter: Codable {
        let type: String
        let distanceDamage: [DistanceDamage]
        let knockBackParam: AttackKnockbackParameter
        let paintOffsetY: Double?
        let paintRadius: Double
        let splashAroundParam: SplashAroundParameter
        let splashBlastParam: SplashBlastParameter?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case splashAroundParam = "SplashAroundParam"
            case splashBlastParam = "SplashBlastParam"
        }
        
        struct SplashBlastParameter: Codable {
            let crossPaintCheckLength: Double
            let crossPaintRadius: Double
            let distanceDamage: [DistanceDamage]
            let knockBackParam: AttackKnockbackParameter
            let paintRadius: Double
            
            enum CodingKeys: String, CodingKey {
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintRadius = "PaintRadius"
            }
        }
    }
    
    struct MoveParameter: Codable {
        let type: String
        let burstFrame: Int
        let collisionSESpanFrame: Int
        let collisionSEVelDotGroundNrm: Double
        let findCollisionStartRadiusRate: Double
        let findSpawnSplashAroundParam: SplashAroundParameter
        let flyRotateAirResist: Double
        let groundPositionDeg50AirResist: Double
        let groundPositionHorizonAirResist: Double
        let groundRotateDeg50AirResist: Double
        let groundRotateHorizonAirResist: Double
        let guideHitCollisionType: String
        let guideRadius: Double
        let hitVerticalWallReboundMaxRate: Double
        let spawnRotateRoll: Double
        let spawnSpeedY: Double
        let spawnSpeedYWorldMin: Double
        let spawnSpeedZSpecUp: HighMidLow
        let warningSERestFrame: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case burstFrame = "BurstFrame"
            case collisionSESpanFrame = "CollisionSESpanFrame"
            case collisionSEVelDotGroundNrm = "CollisionSEVelDotGroundNrm"
            case findCollisionStartRadiusRate = "FindCollisionStartRadiusRate"
            case findSpawnSplashAroundParam = "FindSpawnSplashAroundParam"
            case flyRotateAirResist = "FlyRotateAirResist"
            case groundPositionDeg50AirResist = "GroundPositionDeg50AirResist"
            case groundPositionHorizonAirResist = "GroundPositionHorizonAirResist"
            case groundRotateDeg50AirResist = "GroundRotateDeg50AirResist"
            case groundRotateHorizonAirResist = "GroundRotateHorizonAirResist"
            case guideHitCollisionType = "GuideHitCollisionType"
            case guideRadius = "GuideRadius"
            case hitVerticalWallReboundMaxRate = "HitVerticalWallReboundMaxRate"
            case spawnRotateRoll = "SpawnRotateRoll"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            case warningSERestFrame = "WarningSERestFrame"
        }
    }
    
    struct SplashNearest: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
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
        let yMax: Double
        let yPlusRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
}
