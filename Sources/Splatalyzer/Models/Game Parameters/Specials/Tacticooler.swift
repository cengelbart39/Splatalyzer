//
//  Tacticooler.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Tacticooler special weapon
///
/// See the JSON file `WeaponSpEnergyStand.game__GameParameterTable.json`.
public struct Tacticooler: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let fridgeParam: FridgeParameter
        public let moveParam: MoveParameter
        public let weaponParam: WeaponParameter
        public let bulletInformImpactControlForGeyserParam: BulletInformImpactControlForGeyserParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case fridgeParam = "FridgeParam"
            case moveParam = "MoveParam"
            case weaponParam = "WeaponParam"
            case bulletInformImpactControlForGeyserParam = "spl__BulletInformImpactControlForGeyserParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct FridgeParameter: Codable {
            public let type: String
            public let powerUpFrame: HighMidLow
            public let putFrame: Int
            public let putFrameOnYagura: Int
            public let serveAreaHeightDown: Double
            public let serveAreaHeightUp: Double
            public let serveAreaRadius: Double
            public let vanishDistance: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case powerUpFrame = "PowerUpFrame"
                case putFrame = "PutFrame"
                case putFrameOnYagura = "PutFrameOnYagura"
                case serveAreaHeightDown = "ServeAreaHeightDown"
                case serveAreaHeightUp = "ServeAreaHeightUp"
                case serveAreaRadius = "ServeAreaRadius"
                case vanishDistance = "VanishDistance"
            }
        }
        
        public struct MoveParameter: Codable {
            public let type: String
            public let canPlaceBoundDegree: Double
            public let canPlaceBoundVel: Double
            public let canPlaceCheckLength1: Double
            public let canPlaceCheckLength2: Double
            public let canPlaceHeight: Double
            public let flyGravity: Double
            public let flyHitDeg50WallReboundMaxRt: Double
            public let flyHitVerticalWallReboundMaxRt: Double
            public let flyHitWallPitchToPlane: Double
            public let flyHitWallReboundResetFrame: Int
            public let flyPositionAirResist: Double
            public let guideHitCollisionType: String
            public let guideRadius: Double
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case canPlaceBoundDegree = "CanPlaceBoundDegree"
                case canPlaceBoundVel = "CanPlaceBoundVel"
                case canPlaceCheckLength1 = "CanPlaceCheckLength1"
                case canPlaceCheckLength2 = "CanPlaceCheckLength2"
                case canPlaceHeight = "CanPlaceHeight"
                case flyGravity = "FlyGravity"
                case flyHitDeg50WallReboundMaxRt = "FlyHitDeg50WallReboundMaxRt"
                case flyHitVerticalWallReboundMaxRt = "FlyHitVerticalWallReboundMaxRt"
                case flyHitWallPitchToPlane = "FlyHitWallPitchToPlane"
                case flyHitWallReboundResetFrame = "FlyHitWallReboundResetFrame"
                case flyPositionAirResist = "FlyPositionAirResist"
                case guideHitCollisionType = "GuideHitCollisionType"
                case guideRadius = "GuideRadius"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            }
        }
        
        public struct WeaponParameter: Codable {
            public let type: String
            public let specialReduceFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case specialReduceFrame = "SpecialReduceFrame"
            }
        }
        
        public struct BulletInformImpactControlForGeyserParameter: Codable {
            public let type: String
            public let addSpeedPerImpact: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case addSpeedPerImpact = "AddSpeedPerImpact"
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
                powerUpFrame: self.fridgeParam.powerUpFrame,
                radiusMax: nil,
                radiusMin: nil,
                spawnSpeedZSpecUp: nil,
                specialDurationFrame: nil,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: nil)
        }
    }
}
