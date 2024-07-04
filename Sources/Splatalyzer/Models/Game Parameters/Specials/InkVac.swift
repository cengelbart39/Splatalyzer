//
//  InkVac.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Ink Vac special weapon
///
/// See the JSON file `WeaponSpBlower.game__GameParameterTable.json`
public struct InkVac: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let exhaleBlastParamMaxCharge: ExhaleBlastParameterCharge
        public let exhaleBlastParamMinCharge: ExhaleBlastParameterCharge
        public let exhaleCollisionParam: ExhaleCollisionParameter
        public let exhaleParam: ExhaleParameter
        public let exhaleSplashPaintSpawnParam: ExhaleSplashPaintSpawnParameter
        public let inhaleParam: InhaleParameter
        public let weaponParam: WeaponParameter
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParam
        
        public enum CodingKeys: String, CodingKey {
            case exhaleBlastParamMaxCharge = "ExhaleBlastParamMaxCharge"
            case exhaleBlastParamMinCharge = "ExhaleBlastParamMinCharge"
            case exhaleCollisionParam = "ExhaleCollisionParam"
            case exhaleParam = "ExhaleParam"
            case exhaleSplashPaintSpawnParam = "ExhaleSplashPaintSpawnParam"
            case inhaleParam = "InhaleParam"
            case weaponParam = "WeaponParam"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
        
        public struct ExhaleBlastParameterCharge: Parametable {
            public let type: String
            public let damageOffsetY: Double
            public let distanceDamge: [DistanceDamage]
            public let knockBackParam: KnockbackParameter
            public let paintOffsetY: Double
            public let paintRadius: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case damageOffsetY = "DamageOffsetY"
                case distanceDamge = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintOffsetY = "PaintOffsetY"
                case paintRadius = "PaintRadius"
            }
        }
        
        public struct ExhaleCollisionParameter: Parametable {
            public let type: String
            public let radiusForPlayerMinCharge: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case radiusForPlayerMinCharge = "RadiusForPlayerMinCharge"
            }
        }
        
        public struct ExhaleParameter: Parametable {
            public let type: String
            public let directAccel: Double
            public let directDamage: Int
            public let flyGravity: Double
            public let flyPositionAirResist: Double
            public let guideHitCollisionType: String
            public let guideRadius: Double
            public let paintRadiusMaxCharge: Double
            public let paintRadiusMinCharge: Double
            public let spawnBlastWaitFrame: Int
            public let spawnSpeedY: Double
            public let spawnSpeedYMaxCharge: Double
            public let spawnSpeedZMaxCharge: Double
            public let spawnSpeedZSpecUp: HighMidLow
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case directAccel = "DirectAccel"
                case directDamage = "DirectDamage"
                case flyGravity = "FlyGravity"
                case flyPositionAirResist = "FlyPositionAirResist"
                case guideHitCollisionType = "GuideHitCollisionType"
                case guideRadius = "GuideRadius"
                case paintRadiusMaxCharge = "PaintRadiusMaxCharge"
                case paintRadiusMinCharge = "PaintRadiusMinCharge"
                case spawnBlastWaitFrame = "SpawnBlastWaitFrame"
                case spawnSpeedY = "SpawnSpeedY"
                case spawnSpeedYMaxCharge = "SpawnSpeedYMaxCharge"
                case spawnSpeedZMaxCharge = "SpawnSpeedZMaxCharge"
                case spawnSpeedZSpecUp = "SpawnSpeedZSpecUp"
            }
        }
        
        public struct ExhaleSplashPaintSpawnParameter: Parametable {
            public let type: String
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
            }
        }
        
        public struct InhaleParameter: Parametable {
            public let type: String
            public let collisionAccelRateNearest: Double
            public let collisionAccelRatePerDist: Double
            public let collisionAirResist: Double
            public let collisionAirResistMaxNum: Int
            public let collisionAirResistNum0: Double
            public let damagePerFrameByObject: Int
            public let effectRingSpanFrame: Int
            public let effectRingSpeed: RateData
            public let effectScalePerCollision: RateData
            public let effectSpanForGeyser: Int
            public let effectSpeed: Double
            public let lengthAddPerFrame: Double
            public let lengthMax: Double
            public let muzzleCollisionOffset: Double
            public let muzzleCollisionRadius: Double
            public let paintSplashParam: PaintSplashParameter
            public let paintSplashSpanFrame: Int
            public let paintSplashSpawnOffset: XYZData
            public let poisonMistForPlayer: PoisonMistForPlayer
            public let radiusMax: HighMidLow
            public let radiusMin: HighMidLow
            public let receiveDamageForGeyser: Int
            public let receiveDamageForPlayer: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case collisionAccelRateNearest = "CollisionAccelRateNearest"
                case collisionAccelRatePerDist = "CollisionAccelRatePerDist"
                case collisionAirResist = "CollisionAirResist"
                case collisionAirResistMaxNum = "CollisionAirResistMaxNum"
                case collisionAirResistNum0 = "CollisionAirResistNum0"
                case damagePerFrameByObject = "DamagePerFrameByObject"
                case effectRingSpanFrame = "EffectRingSpanFrame"
                case effectRingSpeed = "EffectRingSpeed"
                case effectScalePerCollision = "EffectScalePerCollision"
                case effectSpanForGeyser = "EffectSpanForGeyser"
                case effectSpeed = "EffectSpeed"
                case lengthAddPerFrame = "LengthAddPerFrame"
                case lengthMax = "LengthMax"
                case muzzleCollisionOffset = "MuzzleCollisionOffset"
                case muzzleCollisionRadius = "MuzzleCollisionRadius"
                case paintSplashParam = "PaintSplashParam"
                case paintSplashSpanFrame = "PaintSplashSpanFrame"
                case paintSplashSpawnOffset = "PaintSplashSpawnOffset"
                case poisonMistForPlayer = "PoisonMistForPlayer"
                case radiusMax = "RadiusMax"
                case radiusMin = "RadiusMin"
                case receiveDamageForGeyser = "ReceiveDamageForGeyser"
                case receiveDamageForPlayer = "ReceiveDamageForPlayer"
            }
        }
        
        public struct PaintSplashParameter: Parametable {
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
        
        public struct PoisonMistForPlayer: Parametable {
            public let effectFrame: Int
            public let level: [PoisonMistForPlayerLevel]
            public let sideStepInkConsumeRate: Double
            public let specialWeapon: Bool
            
            public enum CodingKeys: String, CodingKey {
                case effectFrame = "EffectFrame"
                case level = "Level"
                case sideStepInkConsumeRate = "SideStepInkConsumeRate"
                case specialWeapon = "SpecialWeapon"
            }
        }
        
        public struct PoisonMistForPlayerLevel: Parametable {
            public let frame: Int?
            public let nextLevelCount: Int?
            
            public enum CodingKeys: String, CodingKey {
                case frame = "Frame"
                case nextLevelCount = "NextLevelCount"
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let exhaleWaitFrame: Int
            public let inhaleToExhaleWaitFrame: Int
            public let jumpHeightFullCharge: Double
            public let jumpHeightMinCharge: Double
            public let jumpVelExhale: Double
            public let moveJumpDownBias: Double
            public let moveJumpDownStartChargeRate: Double
            public let moveSpeedFullCharge: Double
            public let moveSpeedMinCharge: Double
            public let shotDirXZRotDegH: Double
            public let shotPitVel: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case exhaleWaitFrame = "ExhaleWaitFrame"
                case inhaleToExhaleWaitFrame = "InhaleToExhaleWaitFrame"
                case jumpHeightFullCharge = "JumpHeightFullCharge"
                case jumpHeightMinCharge = "JumpHeightMinCharge"
                case jumpVelExhale = "JumpVelExhale"
                case moveJumpDownBias = "MoveJumpDownBias"
                case moveJumpDownStartChargeRate = "MoveJumpDownStartChargeRate"
                case moveSpeedFullCharge = "MoveSpeedFullCharge"
                case moveSpeedMinCharge = "MoveSpeedMinCharge"
                case shotDirXZRotDegH = "ShotDirXZ_RotDegH"
                case shotPitVel = "ShotPitVel"
            }
        }
        
        public struct SpawnBulletAdditionMovePlayerParam: Parametable {
            public let type: String
            public let xRate: Double
            public let yPlusRate: Double
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case xRate = "XRate"
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
                powerUpFrame: nil,
                radiusMax: self.inhaleParam.radiusMax,
                radiusMin: self.inhaleParam.radiusMin,
                spawnSpeedZSpecUp: nil,
                specialDurationFrame: nil,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: nil)
        }
    }
}
