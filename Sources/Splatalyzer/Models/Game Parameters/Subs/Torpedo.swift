//
//  Torpedo.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

public struct Torpedo: SubParametable {
    public let blastParamChase: BlastParameter
    public let blastParamThrow: BlastParameter
    public let moveParam: MoveParameter
    public let splashNearest: SplashNearest
    public let subWeaponSetting: SubWeaponSetting
    public let weaponParam: WeaponParameter
    public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    public enum CodingKeys: String, CodingKey {
        case blastParamChase = "BlastParamChase"
        case blastParamThrow = "BlastParamThrow"
        case moveParam = "MoveParam"
        case splashNearest = "SplashNearest"
        case subWeaponSetting = "SubWeaponSetting"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
    
    public struct BlastParameter: Codable {
        public let type: String
        public let distanceDamage: [DistanceDamage]
        public let knockBackParam: KnockbackParameter
        public let paintOffsetY: Double?
        public let paintRadius: Double
        public let splashAroundParam: SplashAroundParameter
        public let splashBlastParam: SplashBlastParameter?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case splashAroundParam = "SplashAroundParam"
            case splashBlastParam = "SplashBlastParam"
        }
        
        public struct SplashBlastParameter: Codable {
            public let crossPaintCheckLength: Double
            public let crossPaintRadius: Double
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let paintRadius: Double
            
            public enum CodingKeys: String, CodingKey {
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintRadius = "PaintRadius"
            }
        }
    }
    
    public struct MoveParameter: Codable {
        public let type: String
        public let burstFrame: Int
        public let collisionSESpanFrame: Int
        public let collisionSEVelDotGroundNrm: Double
        public let findCollisionStartRadiusRate: Double
        public let findSpawnSplashAroundParam: SplashAroundParameter
        public let flyRotateAirResist: Double
        public let groundPositionDeg50AirResist: Double
        public let groundPositionHorizonAirResist: Double
        public let groundRotateDeg50AirResist: Double
        public let groundRotateHorizonAirResist: Double
        public let guideHitCollisionType: String
        public let guideRadius: Double
        public let hitVerticalWallReboundMaxRate: Double
        public let spawnRotateRoll: Double
        public let spawnSpeedY: Double
        public let spawnSpeedYWorldMin: Double
        public let spawnSpeedZSpecUp: HighMidLow
        public let warningSERestFrame: Int
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct SplashNearest: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
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
        public let yMax: Double
        public let yPlusRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case xRate = "XRate"
            case yMax = "YMax"
            case yPlusRate = "YPlusRate"
        }
    }
    
    public func getOverwrites(_ playerInfo: PlayerParameters? = nil) -> SubOverwrites {
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
