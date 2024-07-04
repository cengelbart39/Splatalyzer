//
//  SplatBomb.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Splash Bomb sub weapon
///
/// See the JSON file `WeaponBombSplash.game__GameParameterTable.json`
public struct SplatBomb: GameParametable {
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
        
        public struct BlastParameter: Parametable {
            public let type: String
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let paintOffsetY: Double
            public let splashAroundParam: SplashAroundParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintOffsetY = "PaintOffsetY"
                case splashAroundParam = "SplashAroundParam"
            }
        }
        
        public struct MoveParameter: Parametable {
            public let type: String
            public let burstFrame: Int
            public let collisionSESpanFrame: Int
            public let collisionSEVelDotGroundNrm: Double
            public let contactDashPanel: ContactDashPanel
            public let contactJumpPanel: ContactJumpPanel
            public let flyGravity: Double
            public let flyRotateAirResist: Double
            public let groundGravity: Double
            public let groundPositionDeg50AirResist: Double
            public let groundPositionHorizonAirResist: Double
            public let groundRotateDeg50AirResist: Double
            public let groundRotateHorizonAirResist: Double
            public let guideRadius: Double
            public let hitVerticalWallReboundMaxRate: Double
            public let spawnRotatePitch: Double
            public let spawnRotateRoll: Double
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
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
            
            public struct ContactDashPanel: Parametable {
                public let addSpeedPerImpact: Double
                public let crossSaveSpeedRate: Double
                
                public enum CodingKeys: String, CodingKey {
                    case addSpeedPerImpact = "AddSpeedPerImpact"
                    case crossSaveSpeedRate = "CrossSaveSpeedRate"
                }
            }
            
            public struct ContactJumpPanel: Parametable {
                public let addSpeedOneBoundRate: Double
                public let addSpeedPerImpact: Double
                
                public enum CodingKeys: String, CodingKey {
                    case addSpeedOneBoundRate = "AddSpeedOneBoundRate"
                    case addSpeedPerImpact = "AddSpeedPerImpact"
                }
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let inkRecoverStop: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case inkRecoverStop = "InkRecoverStop"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
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
        
        public func getOverwrites(_ playerInfo: Player? = nil) -> SubOverwrites {
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
}
