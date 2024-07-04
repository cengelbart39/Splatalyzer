//
//  InkStorm.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Ink Storm special weapon
///
/// See the JSON file `WeaponSpInkStorm.game__GameParameterTable.json`
public struct InkStorm: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let cloudParam: CloudParameter
        public let moveParam: MoveParameter
        public let rainParam: RainParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case cloudParam = "CloudParam"
            case moveParam = "MoveParam"
            case rainParam = "RainParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct CloudParameter: Parametable {
            public let type: String
            public let noPaintRainNum: Double
            public let rainNum: Int
            public let rainyFrame: HighMidLow
            public let withNoPaintRainNum: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case noPaintRainNum = "NoPaintRainNum"
                case rainNum = "RainNum"
                case rainyFrame = "RainyFrame"
                case withNoPaintRainNum = "WithNoPaintRainNum"
            }
        }
        
        public struct MoveParameter: Parametable {
            public let type: String
            public let guideHitCollisionType: String
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case guideHitCollisionType = "GuideHitCollisionType"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            }
        }
        
        public struct RainParameter: Parametable {
            public let type: String
            public let collisionParam: CollisionParameter
            public let moveParam: RainParameter.MoveParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case collisionParam = "CollisionParam"
                case moveParam = "MoveParam"
            }
            
            public struct CollisionParameter: Parametable {
                public let endRadiusForField: Double
                public let endRadiusForPlayer: Double
                public let initRadiusForField: Double
                public let initRadiusForPlayer: Double
                
                public enum CodingKeys: String, CodingKey {
                    case endRadiusForField = "EndRadiusForField"
                    case endRadiusForPlayer = "EndRadiusForPlayer"
                    case initRadiusForField = "InitRadiusForField"
                    case initRadiusForPlayer = "InitRadiusForPlayer"
                }
            }
            
            public struct MoveParameter: Parametable {
                public let brakeAirResist: Double
                public let brakeGravity: Double
                public let brakeToFreeStateFrame: Double
                public let brakeToFreeVelocityXZ: Double
                public let brakeToFreeVelocityY: Double
                public let freeAirResist: Double
                public let freeGravity: Double
                public let goStraightStateEndMaxSpeed: Double
                public let goStraightToBrakeStateFrame: Double
                public let spawnSpeed: Double
                
                public enum CodingKeys: String, CodingKey {
                    case brakeAirResist = "BrakeAirResist"
                    case brakeGravity = "BrakeGravity"
                    case brakeToFreeStateFrame = "BrakeToFreeStateFrame"
                    case brakeToFreeVelocityXZ = "BrakeToFreeVelocityXZ"
                    case brakeToFreeVelocityY = "BrakeToFreeVelocityY"
                    case freeAirResist = "FreeAirResist"
                    case freeGravity = "FreeGravity"
                    case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
                    case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
                    case spawnSpeed = "SpawnSpeed"
                }
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
                spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
                specialDurationFrame: self.cloudParam.rainyFrame,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: nil)
        }
    }
}
