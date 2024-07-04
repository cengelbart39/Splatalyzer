//
//  CrabTank.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

/// Represents the game parameters of the Crab Tank special weapon
///
/// See the JSON file `WeaponSpChariot.game__GameParameterTable.json`
public struct CrabTank: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: SpecialParametable {
        public let additionMovePlayerParam: AdditionMovePlayerParameter
        public let bodyParam: BodyParameter
        public let cannonParam: CannonParameter
        public let shooterCollisionParam: CollisionParameter
        public let shooterDamageParam: CrabTank.Parameters.ShooterDamageParameter
        public let shooterMoveParam: CrabTank.Parameters.ShooterMoveParameter
        public let shooterPaintParam: CrabTank.Parameters.ShooterPaintParameter
        public let shooterSplashPaintParam: CrabTank.Parameters.ShooterSplashPaintParameter
        public let shooterSplashSpawnParam: SpawnParameter
        public let shooterWallDropCollisionPaintParam: ShooterWallDropCollisionPaintParameter
        public let shooterWallDropMoveParam: CrabTank.Parameters.ShooterWallDropMoveParameter
        public let weaponParam: WeaponParameter
        
        public let bulletShooterTailLengthParam: BulletShooterTailLengthParameter
        public let paintMonitorSetParma: PaintMonitorSetParameter
        
        public enum CodingKeys: String, CodingKey {
            case additionMovePlayerParam = "AdditionMovePlayerParam"
            case bodyParam = "BodyParam"
            case cannonParam = "CannonParam"
            case shooterCollisionParam = "ShooterCollisionParam"
            case shooterDamageParam = "ShooterDamageParam"
            case shooterMoveParam = "ShooterMoveParam"
            case shooterPaintParam = "ShooterPaintParam"
            case shooterSplashPaintParam = "ShooterSplashPaintParam"
            case shooterSplashSpawnParam = "ShooterSplashSpawnParam"
            case shooterWallDropCollisionPaintParam = "ShooterWallDropCollisionPaintParam"
            case shooterWallDropMoveParam = "ShooterWallDropMoveParam"
            case weaponParam = "WeaponSpChariotParam"
            case bulletShooterTailLengthParam = "spl__BulletShooterTailLengthParam"
            case paintMonitorSetParma = "spl__PaintMonitorSetParam"
        }
        
        public struct AdditionMovePlayerParameter: Parametable {
            public let type: String
            public let zRate: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case zRate = "ZRate"
            }
        }
        
        public struct BodyParameter: Parametable {
            public let type: String
            public let collisionRadiusForField: Double
            public let collisionRadiusForPlayer: Double
            public let knockBackChariotPlayer: KnockBack
            public let knockBackOpponent: KnockBack
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case collisionRadiusForField = "CollisionRadiusForField"
                case collisionRadiusForPlayer = "CollisionRadiusForPlayer"
                case knockBackChariotPlayer = "KnockBackChariotPlayer"
                case knockBackOpponent = "KnockBackOpponent"
            }
            
            public struct KnockBack: Parametable {
                public let accelMax: Double
                public let accelMin: Double
                public let myVelocityRate: Double
                public let opponentVelocityRate: Double
                
                public enum CodingKeys: String, CodingKey {
                    case accelMax = "AccelMax"
                    case accelMin = "AccelMin"
                    case myVelocityRate = "MyVelocityRate"
                    case opponentVelocityRate = "OpponentVelocityRate"
                }
            }
        }
        
        public struct CannonParameter: Parametable {
            public let type: String
            public let blastParam: BlastParameter
            public let collisionParam: CollisionParameter
            public let drawSize: Double
            public let moveParam: MoveParameter
            public let splashParam: SplashParameter
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case blastParam = "BlastParam"
                case collisionParam = "CollisionParam"
                case drawSize = "DrawSize"
                case moveParam = "MoveParam"
                case splashParam = "SplashParam"
            }
            
            public struct BlastParameter: Parametable {
                public let crossPaintCheckLength: Double
                public let crossPaintRadius: Double
                public let damageOffsetY: Double
                public let distanceDamage: [DistanceDamage]
                public let knockBackParam: KnockbackParameter
                public let paintOffsetY: Double
                public let paintRadius: Double
                
                public enum CodingKeys: String, CodingKey {
                    case crossPaintCheckLength = "CrossPaintCheckLength"
                    case crossPaintRadius = "CrossPaintRadius"
                    case damageOffsetY = "DamageOffsetY"
                    case distanceDamage = "DistanceDamage"
                    case knockBackParam = "KnockBackParam"
                    case paintOffsetY = "PaintOffsetY"
                    case paintRadius = "PaintRadius"
                }
            }
            
            public struct MoveParameter: Parametable {
                public let brakeAirResist: Double
                public let brakeGravity: Double
                public let brakeToFreeStateFrame: Int
                public let brakeToFreeVelocityXZ: Double
                public let brakeToFreeVelocityY: Double
                public let freeAirResist: Double
                public let freeGravity: Double
                public let goStraightToBrakeStateFrame: Int
                
                public enum CodingKeys: String, CodingKey {
                    case brakeAirResist = "BrakeAirResist"
                    case brakeGravity = "BrakeGravity"
                    case brakeToFreeStateFrame = "BrakeToFreeStateFrame"
                    case brakeToFreeVelocityXZ = "BrakeToFreeVelocityXZ"
                    case brakeToFreeVelocityY = "BrakeToFreeVelocityY"
                    case freeAirResist = "FreeAirResist"
                    case freeGravity = "FreeGravity"
                    case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
                }
            }
            
            public struct SplashParameter: Parametable {
                public let drawSizeCollisionPaintParam: DrawSizeCollisionPaintParameter
                public let spawnParam: SpawnParameter
                
                public enum CodingKeys: String, CodingKey {
                    case drawSizeCollisionPaintParam = "DrawSizeCollisionPaintParam"
                    case spawnParam = "SpawnParam"
                }
                
                public struct DrawSizeCollisionPaintParameter: Parametable {
                    public let collisionParam: CollisionParameter
                    public let drawRadius: Double
                    public let paintDepthScale: Double
                    public let paintWidthHalf: Double
                    
                    public enum CodingKeys: String, CodingKey {
                        case collisionParam = "CollisionParam"
                        case drawRadius = "DrawRadius"
                        case paintDepthScale = "PaintDepthScale"
                        case paintWidthHalf = "PaintWidthHalf"
                    }
                }
                
                
            }
        }
        
        public struct CollisionParameter: Parametable {
            public let changeFrameForField: Int?
            public let changeFrameForPlayer: Int?
            public let endRadiusForField: Double
            public let endRadiusForPlayer: Double
            public let friendThroughFrameForPlayer: Int?
            public let initRadiusForField: Double
            public let initRadiusForPlayer: Double
            
            public enum CodingKeys: String, CodingKey {
                case changeFrameForField = "ChangeFrameForField"
                case changeFrameForPlayer = "ChangeFrameForPlayer"
                case endRadiusForField = "EndRadiusForField"
                case endRadiusForPlayer = "EndRadiusForPlayer"
                case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
                case initRadiusForField = "InitRadiusForField"
                case initRadiusForPlayer = "InitRadiusForPlayer"
            }
        }
        
        public struct ShooterDamageParameter: Parametable {
            public let type: String
            public let reduceEndFrame: Int
            public let reduceStartFrame: Int
            public let valueMax: Int
            public let valueMin: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case reduceEndFrame = "ReduceEndFrame"
                case reduceStartFrame = "ReduceStartFrame"
                case valueMax = "ValueMax"
                case valueMin = "ValueMin"
            }
        }
        
        public struct ShooterMoveParameter: Parametable {
            public let type: String
            public let freeGravity: Double
            public let goStraightStateEndMaxSpeed: Double
            public let goStraightToBrakeStateFrame: Int
            public let spawnSpeed: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case freeGravity = "FreeGravity"
                case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
                case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
                case spawnSpeed = "SpawnSpeed"
            }
        }
        
        public struct ShooterPaintParameter: Parametable {
            public let type: String
            public let distanceMiddle: Double
            public let widthHalfFar: Double
            public let widthHalfMiddle: Double
            public let widthHalfNear: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case distanceMiddle = "DistanceMiddle"
                case widthHalfFar = "WidthHalfFar"
                case widthHalfMiddle = "WidthHalfMiddle"
                case widthHalfNear = "WidthHalfNear"
            }
        }
        
        public struct ShooterSplashPaintParameter: Parametable {
            public let type: String
            public let depthMaxDropHeight: Double
            public let depthMinDropHeight: Double
            public let widthHalf: Double
            public let widthHalfNearest: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case depthMaxDropHeight = "DepthMaxDropHeight"
                case depthMinDropHeight = "DepthMinDropHeight"
                case widthHalf = "WidthHalf"
                case widthHalfNearest = "WidthHalfNearest"
            }
        }
        
        public struct SpawnParameter: Parametable {
            public let type: String?
            public let forceSpawnNearestAddNumArray: [Int]?
            public let spawnBetweenLength: Double
            public let spawnNearestLength: Double?
            public let spawnNum: Double
            public let splitNum: Int?
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
                case spawnBetweenLength = "SpawnBetweenLength"
                case spawnNearestLength = "SpawnNearestLength"
                case spawnNum = "SpawnNum"
                case splitNum = "SplitNum"
            }
        }
        
        public struct ShooterWallDropCollisionPaintParameter: Parametable {
            public let type: String
            public let paintRadiusFall: Double
            public let paintRadiusGround: Double
            public let paintRadiusShock: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case paintRadiusFall = "PaintRadiusFall"
                case paintRadiusGround = "PaintRadiusGround"
                case paintRadiusShock = "PaintRadiusShock"
            }
        }
        
        public struct ShooterWallDropMoveParameter: Parametable {
            public let type: String
            public let fallPeriodFirstFrameMax: Int
            public let fallPeriodFirstFrameMin: Int
            public let fallPeriodFirstTargetSpeed: Double
            public let fallPeriodLastFrameMax: Int
            public let fallPeriodLastFrameMin: Int
            public let fallPeriodSecondFrame: Int
            public let fallPeriodSecondTargetSpeed: Double
            public let freeGravityType: String
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
                case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
                case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
                case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
                case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
                case fallPeriodSecondFrame = "FallPeriodSecondFrame"
                case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
                case freeGravityType = "FreeGravityType"
            }
        }
        
        public struct WeaponParameter: Parametable {
            public let type: String
            public let armorHP: Int
            public let armorHPBreakScissors: Int
            public let cannonNoShotFrame: Int
            public let moveSpeedCoefSquid: Double
            public let moveSpeedX: Double
            public let moveSpeedXSpongeEnemy: Double
            public let moveSpeedZ: Double
            public let moveSpeedZSpongeEnemy: Double
            public let noShotBombReqFrmFinishSpecial: Int
            public let preDelayFrmSquidShotBomb: Int
            public let rotDegLmtToHumanFrm: Int
            public let shooterRepeatFrameBias: Double
            public let shooterRepeatFrameFirst: Double
            public let shooterRepeatFrameTerm: Double
            public let shotGuideCannonFrame: Int
            public let shotPitVelLmt: Double
            public let specialTotalFrame: HighMidLow
            public let startDelayFrameCannon: Int
            public let startDelayFrameShooter: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case armorHP = "ArmorHP"
                case armorHPBreakScissors = "ArmorHP_BreakScissors"
                case cannonNoShotFrame = "CannonNoShotFrame"
                case moveSpeedCoefSquid = "MoveSpeedCoef_Squid"
                case moveSpeedX = "MoveSpeedX"
                case moveSpeedXSpongeEnemy = "MoveSpeedX_SpongeEnemy"
                case moveSpeedZ = "MoveSpeedZ"
                case moveSpeedZSpongeEnemy = "MoveSpeedZ_SpongeEnemy"
                case noShotBombReqFrmFinishSpecial = "NoShotBombReqFrm_FinishSpecial"
                case preDelayFrmSquidShotBomb = "PreDelayFrm_Squid_ShotBomb"
                case rotDegLmtToHumanFrm = "RotDegLmt_ToHumanFrm"
                case shooterRepeatFrameBias = "ShooterRepeatFrame_Bias"
                case shooterRepeatFrameFirst = "ShooterRepeatFrame_First"
                case shooterRepeatFrameTerm = "ShooterRepeatFrame_Term"
                case shotGuideCannonFrame = "ShotGuideCannonFrame"
                case shotPitVelLmt = "ShotPitVelLmt"
                case specialTotalFrame = "SpecialTotalFrame"
                case startDelayFrameCannon = "StartDelayFrame_Cannon"
                case startDelayFrameShooter = "StartDelayFrame_Shooter"
            }
        }
        
        public struct BulletShooterTailLengthParameter: Parametable {
            public let type: String
            public let delayShotFrame: Int
            public let endMaxLength: Double
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case delayShotFrame = "DelayShotFrame"
                case endMaxLength = "EndMaxLength"
            }
        }
        
        public struct PaintMonitorSetParameter: Parametable {
            public let type: String
            public let relabilityMinTime: Int
            
            public enum CodingKeys: String, CodingKey {
                case type = "$type"
                case relabilityMinTime = "RelabilityMinTime"
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
                spawnSpeedZSpecUp: nil,
                specialDurationFrame: self.weaponParam.specialTotalFrame,
                splashAroundVelocityMax: nil,
                splashAroundVelocityMin: nil,
                targetInCircleRadius: nil)
        }
    }
}
