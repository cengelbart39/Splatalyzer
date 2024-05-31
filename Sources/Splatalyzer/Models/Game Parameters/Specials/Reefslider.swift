//
//  Reefslider.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Reefslider special weapon
///
/// See the JSON file `WeaponSpSkewer.game__GameParameterTable.json`
public struct Reefslider: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let bulletBlastParam: BulletBlastParameter
        public let bulletParam: BulletParameter
        public let weaponParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case bulletBlastParam = "BulletBlastParam"
            case bulletParam = "BulletParam"
            case weaponParam = "WeaponParam"
        }
        
        public struct BulletBlastParameter: Codable {
            public let type: String
            public let distanceDamage: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let paintRadius: Double
            public let paintTexture: String
            public let splashAroundParam: SplashAroundParameter
            public let subSpecialSpecUpList: [SubSpecialSpecUpList]
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintRadius = "PaintRadius"
                case paintTexture = "PaintTexture"
                case splashAroundParam = "SplashAroundParam"
                case subSpecialSpecUpList = "SubSpecialSpecUpList"
            }
        }
        
        public struct BulletParameter: Codable {
            public let type: String
            public let collisionRadiusForPlayer: Double
            public let damageValue: Int
            public let knockBackLen: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case collisionRadiusForPlayer = "CollisionRadiusForPlayer"
                case damageValue = "DamageValue"
                case knockBackLen = "KnockBackLen"
            }
        }
        
        public struct WeaponParameter: Codable {
            public let type: String
            public let chargeFrame: Int
            public let distanceAfterglow: Double
            public let gravityKf: Double
            public let moveAcc: Double
            public let moveBrk: Double
            public let moveCancelableFrame: Int
            public let moveFrame: Int
            public let moveFrameOmen: Int
            public let moveRotDeg: Double
            public let moveSpeed: Double
            public let moveSpeedAerial: Double
            public let noDamageFrameAfterBurst: Int
            public let noDamageStartFramePreMove: Int
            public let offsetLocalDetectPlayer: XYZData
            public let paintSplashParam: PaintSplashParameter
            public let paintSplashSpanFrame: Int
            public let preBurstEmitFrame: Int
            public let preBurstFrame: Int
            public let preMoveFrame: Int
            public let radiusDetectPlayer: Double
            public let rutPaintRadius: Double
            public let unrelaxFrame: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case chargeFrame = "ChargeFrame"
                case distanceAfterglow = "Distance_Afterglow"
                case gravityKf = "GravityKf"
                case moveAcc = "MoveAcc"
                case moveBrk = "MoveBrk"
                case moveCancelableFrame = "MoveCancelableFrame"
                case moveFrame = "MoveFrame"
                case moveFrameOmen = "MoveFrameOmen"
                case moveRotDeg = "MoveRotDeg"
                case moveSpeed = "MoveSpeed"
                case moveSpeedAerial = "MoveSpeed_Aerial"
                case noDamageFrameAfterBurst = "NoDamageFrame_AfterBurst"
                case noDamageStartFramePreMove = "NoDamageStartFrame_PreMove"
                case offsetLocalDetectPlayer = "OffsetLocal_DetectPlayer"
                case paintSplashParam = "PaintSplashParam"
                case paintSplashSpanFrame = "PaintSplashSpanFrame"
                case preBurstEmitFrame = "PreBurstEmitFrame"
                case preBurstFrame = "PreBurstFrame"
                case preMoveFrame = "PreMoveFrame"
                case radiusDetectPlayer = "Radius_DetectPlayer"
                case rutPaintRadius = "RutPaintRadius"
                case unrelaxFrame = "UnrelaxFrame"
            }
            
            public struct PaintSplashParameter: Codable {
                let depthMaxDropHeight: Double
                let depthMinDropHeight: Double
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
        
        public func getOverwrites() -> SpecialOverwrites {
            let paintRadius =  self.bulletBlastParam.subSpecialSpecUpList[safe: 1]?.value
            let splashAroundPaintRadius = self.bulletBlastParam.subSpecialSpecUpList[safe: 4]?.value
            
            let overwritePaintRadius = HighMidLow(
                (paintRadius?.high ?? 0) + (splashAroundPaintRadius?.high ?? 0),
                (paintRadius?.mid ?? 0) + (splashAroundPaintRadius?.mid ?? 0),
                (paintRadius?.low ?? 0) + (splashAroundPaintRadius?.low ?? 0))
            
            let paintRadiusExists = paintRadius?.high != nil && paintRadius?.low != nil && paintRadius?.mid != nil && splashAroundPaintRadius?.high != nil && splashAroundPaintRadius?.low != nil && splashAroundPaintRadius?.mid != nil
            
            return SpecialOverwrites(
                chargeRateAutoPerFrame: nil,
                crossPaintCheckLength: nil,
                crossPaintRadius: nil,
                distanceDamageDistanceRate: self.bulletBlastParam.subSpecialSpecUpList[safe: 0]?.value,
                inkConsumeHook: nil,
                inkConsumePerSec: nil,
                maxFieldHp: nil,
                maxFrame: nil,
                maxHp: nil,
                maxRadius: nil,
                moveSpeed: nil,
                paintRadius: paintRadiusExists ? overwritePaintRadius : nil,
                powerUpFrame: nil,
                radiusMax: nil,
                radiusMin: nil,
                spawnSpeedZSpecUp: nil,
                specialDurationFrame: nil,
                splashAroundVelocityMax: self.bulletBlastParam.subSpecialSpecUpList[safe: 3]?.value,
                splashAroundVelocityMin: self.bulletBlastParam.subSpecialSpecUpList[safe: 2]?.value,
                targetInCircleRadius: nil)
        }
    }
}
