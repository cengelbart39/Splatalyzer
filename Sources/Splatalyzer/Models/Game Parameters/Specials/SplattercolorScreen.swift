//
//  SplattercolorScreen.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Splattercolor Screen special weapon
///
/// See the JSON file `WeaponSpChimney.game__GameParameterTable.json`.
public struct SplattercolorScreen: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let moveParam: MoveParameter
        public let wallParam: WallParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case moveParam = "MoveParam"
            case wallParam = "WallParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct MoveParameter: Parametable {
            public let type: String
            public let damageValueForDamageTag: Int
            public let guideHitCollisionType: String
            public let spawnSpeedY: Double
            public let spawnSpeedYWorldMin: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case damageValueForDamageTag = "DamageValueForDamageTag"
                case guideHitCollisionType = "GuideHitCollisionType"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYWorldMin = "SpawnSpeedYWorldMin"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            }
        }
        
        public struct WallParameter: Parametable {
            public let type: String
            public let closingFrame: Int
            public let damageValue: Int
            public let debugBlockRotateDistance: Double
            public let debugBlockRotateSpeedMax: Double
            public let debugBlockRotateSpeedMin: Double
            public let debugCircleRadius: Double
            public let debugCircleSideOffset: Double
            public let debugCircleSlantOffset: XYData
            public let debugWallAlpha: Int
            public let markingFrame: Int
            public let moveSpeed: HighMidLow
            public let runningFrame: Int
            public let saturationChangeOutFrame: Int
            public let saturationFrame: Int
            public let saturationTarget: Double
            public let splashPaintRadius: Double
            public let splashSpawnAllFrame: Int
            public let splashSpawnPosition: [XYZData]
            public let splashSpawnSpan: Int
            public let startUpFrame: Int
            public let targetSpeedFrame: Int
            public let wallDepth: Double
            public let wallHeightDown: Double
            public let wallHeightUp: Double
            public let wallWidth: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case closingFrame = "ClosingFrame"
                case damageValue = "DamageValue"
                case debugBlockRotateDistance = "DebugBlockRotateDistance"
                case debugBlockRotateSpeedMax = "DebugBlockRotateSpeedMax"
                case debugBlockRotateSpeedMin = "DebugBlockRotateSpeedMin"
                case debugCircleRadius = "DebugCircleRadius"
                case debugCircleSideOffset = "DebugCircleSideOffset"
                case debugCircleSlantOffset = "DebugCircleSlantOffset"
                case debugWallAlpha = "DebugWallAlpha"
                case markingFrame = "MarkingFrame"
                case moveSpeed = "MoveSpeed"
                case runningFrame = "RunningFrame"
                case saturationChangeOutFrame = "SaturationChangeOutFrame"
                case saturationFrame = "SaturationFrame"
                case saturationTarget = "SaturationTarget"
                case splashPaintRadius = "SplashPaintRadius"
                case splashSpawnAllFrame = "SplashSpawnAllFrame"
                case splashSpawnPosition = "SplashSpawnPosition"
                case splashSpawnSpan = "SplashSpawnSpan"
                case startUpFrame = "StartUpFrame"
                case targetSpeedFrame = "TargetSpeedFrame"
                case wallDepth = "WallDepth"
                case wallHeightDown = "WallHeightDown"
                case wallHeightUp = "WallHeightUp"
                case wallWidth = "WallWidth"
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
                moveSpeed: self.wallParam.moveSpeed,
                paintRadius: nil,
                powerUpFrame: nil,
                radiusMax: nil,
                radiusMin: nil,
                spawnSpeedZSpecUp: self.moveParam.spawnSpeedZSpecUp,
                specialDurationFrame: nil,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: nil)
        }
    }
}
