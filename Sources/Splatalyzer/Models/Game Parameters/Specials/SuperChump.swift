//
//  SuperChump.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Super Chump special weapon
///
/// See the JSON file `WeaponSpFirework.game__GameParameterTable.json`.
public struct SuperChump: SpecialWeaponable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let iceParam: IceParameter
        public let pipeParam: PipeParameter
        public let weaponParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case iceParam = "IceParam"
            case pipeParam = "PipeParam"
            case weaponParam = "WeaponParam"
        }
        
        public struct IceParameter: Parametable {
            public let type: String
            public let blastParam: BlastParameter
            public let burstFrame: Int
            public let collisionRadius: Double
            public let flyingFrame: Int
            public let groundOffsetY: Double
            public let hitPoint: Int
            public let initialScale: Double
            public let paintRadius: Double
            public let rotateDegRatePerFrame: Double
            public let scaleResetFrame: Int
            public let spawnRotateDegMax: Double
            public let spawnRotateDegMin: Double
            public let warningAnimRestFrame: Int
            public let warningSERestFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case blastParam = "BlastParam"
                case burstFrame = "BurstFrame"
                case collisionRadius = "CollisionRadius"
                case flyingFrame = "FlyingFrame"
                case groundOffsetY = "GroundOffsetY"
                case hitPoint = "HitPoint"
                case initialScale = "InitialScale"
                case paintRadius = "PaintRadius"
                case rotateDegRatePerFrame = "RotateDegRatePerFrame"
                case scaleResetFrame = "ScaleResetFrame"
                case spawnRotateDegMax = "SpawnRotateDegMax"
                case spawnRotateDegMin = "SpawnRotateDegMin"
                case warningAnimRestFrame = "WarningAnimRestFrame"
                case warningSERestFrame = "WarningSERestFrame"
            }
            
            public struct BlastParameter: Parametable {
                public let crossPaintCheckLength: Double
                public let crossPaintRadius: Double
                public let damageOffsetY: Double
                public let distanceDamage: [DistanceDamage]
                public let knockBackParam: KnockbackParameter
                public let paintHeight: Double
                public let paintOffsetY: Double
                public let paintRadius: Double
                public let splashAroundParam: SplashAroundParameter
                public let subSpecialSpecUpList: [SubSpecialSpecUpList]
                
                public enum CodingKeys: String, CodingKey {
                    case crossPaintCheckLength = "CrossPaintCheckLength"
                    case crossPaintRadius = "CrossPaintRadius"
                    case damageOffsetY = "DamageOffsetY"
                    case distanceDamage = "DistanceDamage"
                    case knockBackParam = "KnockBackParam"
                    case paintHeight = "PaintHeight"
                    case paintOffsetY = "PaintOffsetY"
                    case paintRadius = "PaintRadius"
                    case splashAroundParam = "SplashAroundParam"
                    case subSpecialSpecUpList = "SubSpecialSpecUpList"
                }
            }
        }
        
        public struct PipeParameter: Parametable {
            public let type: String
            public let depthRadius: Double
            public let minBetweenDistance: Double
            public let targetCenterBias: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case depthRadius = "DepthRadius"
                case minBetweenDistance = "MinBetweenDistance"
                case targetCenterBias = "TargetCenterBias"
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let specialTotalFrame: Int
            public let targetCenterBias: Double
            public let targetCenterDistanceMax: Double
            public let targetCenterDistanceMin: Double
            public let targetCenterRadius: Double
            public let targetHeightCheckSpanFrame: Int
            public let useDistanceMinCameraDownRate: Double
            public let useDistanceMinCameraUpRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case specialTotalFrame = "SpecialTotalFrame"
                case targetCenterBias = "TargetCenterBias"
                case targetCenterDistanceMax = "TargetCenterDistanceMax"
                case targetCenterDistanceMin = "TargetCenterDistanceMin"
                case targetCenterRadius = "TargetCenterRadius"
                case targetHeightCheckSpanFrame = "TargetHeightCheckSpanFrame"
                case useDistanceMinCameraDownRate = "UseDistanceMinCameraDownRate"
                case useDistanceMinCameraUpRate = "UseDistanceMinCameraUpRate"
            }
        }
        
        public func getOverwrites() -> SpecialOverwrites {
            return SpecialOverwrites(
                chargeRateAutoPerFrame: nil,
                crossPaintCheckLength: self.iceParam.blastParam.subSpecialSpecUpList[safe: 1]?.value,
                crossPaintRadius: self.iceParam.blastParam.subSpecialSpecUpList[safe: 2]?.value,
                distanceDamageDistanceRate: self.iceParam.blastParam.subSpecialSpecUpList[safe: 3]?.value,
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
                spawnSpeedZSpecUp: nil,
                specialDurationFrame: nil,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: nil)
        }
    }
}
