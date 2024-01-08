//
//  SubBombFizzy.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SubBombFizzy: SubParametable {
    let moveParam: MoveParameter
    let subWeaponSetting: SubWeaponSetting
    let weaponParam: WeaponParameter
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
        case moveParam = "MoveParam"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    struct MoveParameter: Codable {
        let type: String
        let blastParamArray: [BlastParameter]
        let burstSeFrameArray: [Int]
        let burstWaitFrameArray: [Int]
        let burstWarnFrameArray: [Int]
        let chargeFrameArray: [Int]
        let collisionSeSilentFrame: Int
        let collisionSeVelDotGndNrm: Double
        let flyRotateAirResist: Double
        let flySplashDistanceArray: [Double]
        let flySplashPaintParamArray: [FlySplashPaintParameter]
        let flySplashPaintRadiusArray: [Double]
        let groundGravity: Double
        let groundPositionDeg50AirResist: Double
        let groundPositionHorizonAirResist: Double
        let groundRotateDeg50AirResist: Double
        let groundRotateHorizonAirResist: Double
        let objColDamage: Double
        let spawnSpeedY: Double
        let spawnSpeedZSpecUp: HighMidLow
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case blastParamArray = "BlastParamArray"
            case burstSeFrameArray = "BurstSeFrameArray"
            case burstWaitFrameArray = "BurstWaitFrameArray"
            case burstWarnFrameArray = "BurstWarnFrameArray"
            case chargeFrameArray = "ChargeFrameArray"
            case collisionSeSilentFrame = "CollisionSeSilentFrame"
            case collisionSeVelDotGndNrm = "CollisionSeVelDotGndNrm"
            case flyRotateAirResist = "FlyRotateAirResist"
            case flySplashDistanceArray = "FlySplashDistanceArray"
            case flySplashPaintParamArray = "FlySplashPaintParamArray"
            case flySplashPaintRadiusArray = "FlySplashPaintRadiusArray"
            case groundGravity = "GroundGravity"
            case groundPositionDeg50AirResist = "GroundPositionDeg50AirResist"
            case groundPositionHorizonAirResist = "GroundPositionHorizonAirResist"
            case groundRotateDeg50AirResist = "GroundRotateDeg50AirResist"
            case groundRotateHorizonAirResist = "GroundRotateHorizonAirResist"
            case objColDamage = "ObjColDamage"
            case spawnSpeedY = "SpawnSpeedY"
            case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
        }
        
        struct BlastParameter: Codable {
            let crossPaintRadius: Double
            let distanceDamage: [DistanceDamage]
            let knockBackParam: KnockbackParameter
            let paintRadius: Double
            let splashAroundParam: SplashAroundParameter
            
            enum CodingKeys: String, CodingKey {
                case crossPaintRadius = "CrossPaintRadius"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintRadius = "PaintRadius"
                case splashAroundParam = "SplashAroundParam"
            }
        }
        
        struct FlySplashPaintParameter: Codable {
            let depthMaxDropHeight: Double?
            let depthMinDropHeight: Double?
            let depthScaleMax: Double
            let depthScaleMin: Double
            let widthHalf: Double
            let widthHalfNearest: Double
            
            enum CodingKeys: String, CodingKey {
                case depthMaxDropHeight = "DepthMaxDropHeight"
                case depthMinDropHeight = "DepthMinDropHeight"
                case depthScaleMax = "DepthScaleMax"
                case depthScaleMin = "DepthScaleMin"
                case widthHalf = "WidthHalf"
                case widthHalfNearest = "WidthHalfNearest"
            }
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
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
            case zRate = "ZRate"
        }
    }
}
