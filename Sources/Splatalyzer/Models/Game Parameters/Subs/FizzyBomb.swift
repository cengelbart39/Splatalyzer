//
//  FizzyBomb.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Fizzy Bomb sub
/// weapon
///
/// See the JSON file `WeaponBombFizzy.game__GameParameterTable.json`
public struct FizzyBomb: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SubParametable {
        public let moveParam: MoveParameter
        public let subWeaponSetting: SubWeaponSetting
        public let weaponParam: WeaponParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case moveParam = "MoveParam"
            case subWeaponSetting = "SubWeaponSetting"
            case weaponParam = "WeaponParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct MoveParameter: Codable {
            public let type: String
            public let blastParamArray: [BlastParameter]
            public let burstSeFrameArray: [Int]
            public let burstWaitFrameArray: [Int]
            public let burstWarnFrameArray: [Int]
            public let chargeFrameArray: [Int]
            public let collisionSeSilentFrame: Int
            public let collisionSeVelDotGndNrm: Double
            public let flyRotateAirResist: Double
            public let flySplashDistanceArray: [Double]
            public let flySplashPaintParamArray: [FlySplashPaintParameter]
            public let flySplashPaintRadiusArray: [Double]
            public let groundGravity: Double
            public let groundPositionDeg50AirResist: Double
            public let groundPositionHorizonAirResist: Double
            public let groundRotateDeg50AirResist: Double
            public let groundRotateHorizonAirResist: Double
            public let objColDamage: Double
            public let spawnSpeedY: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
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
            
            public struct BlastParameter: Codable {
                public let crossPaintRadius: Double
                public let distanceDamage: [DistanceDamage]
                public let knockBackParam: KnockbackParameter
                public let paintRadius: Double
                public let splashAroundParam: SplashAroundParameter
                
                public enum CodingKeys: String, CodingKey {
                    case crossPaintRadius = "CrossPaintRadius"
                    case distanceDamage = "DistanceDamage"
                    case knockBackParam = "KnockBackParam"
                    case paintRadius = "PaintRadius"
                    case splashAroundParam = "SplashAroundParam"
                }
            }
            
            public struct FlySplashPaintParameter: Codable {
                public let depthMaxDropHeight: Double?
                public let depthMinDropHeight: Double?
                public let depthScaleMax: Double
                public let depthScaleMin: Double
                public let widthHalf: Double
                public let widthHalfNearest: Double
                
                public enum CodingKeys: String, CodingKey {
                    case depthMaxDropHeight = "DepthMaxDropHeight"
                    case depthMinDropHeight = "DepthMinDropHeight"
                    case depthScaleMax = "DepthScaleMax"
                    case depthScaleMin = "DepthScaleMin"
                    case widthHalf = "WidthHalf"
                    case widthHalfNearest = "WidthHalfNearest"
                }
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
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case xRate = "XRate"
                case yMax = "YMax"
                case yPlusRate = "YPlusRate"
                case zRate = "ZRate"
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
