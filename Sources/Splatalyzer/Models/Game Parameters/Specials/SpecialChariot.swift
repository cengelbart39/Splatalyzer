//
//  SpecialChariot.swift
//
//
//  Created by Christopher Engelbart on 12/28/23.
//

import Foundation

struct SpecialChariot: Codable {
    let additionMovePlayerParam: AdditionMovePlayerParameter
    let bodyParam: BodyParameter
    let cannonParam: CannonParameter
    let shooterCollisionParam: CollisionParameter
    let shooterDamageParam: SpecialChariot.ShooterDamageParameter
    let shooterMoveParam: SpecialChariot.ShooterMoveParameter
    let shooterPaintParam: SpecialChariot.ShooterPaintParameter
    let shooterSplashPaintParam: SpecialChariot.ShooterSplashPaintParameter
    let shooterSplashSpawnParam: SpawnParameter
    let shooterWallDropCollisionPaintParam: ShooterWallDropCollisionPaintParameter
    let shooterWallDropMoveParam: SpecialChariot.ShooterWallDropMoveParameter
    let weaponParam: WeaponParameter
    
    let bulletShooterTailLengthParam: BulletShooterTailLengthParameter
    let paintMonitorSetParma: PaintMonitorSetParameter
    
    enum CodingKeys: String, CodingKey {
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
    
    struct AdditionMovePlayerParameter: Codable {
        let type: String
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
    
    struct BodyParameter: Codable {
        let type: String
        let collisionRadiusForField: Double
        let collisionRadiusForPlayer: Double
        let knockBackChariotPlayer: KnockBack
        let knockBackOpponent: KnockBack
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionRadiusForField = "CollisionRadiusForField"
            case collisionRadiusForPlayer = "CollisionRadiusForPlayer"
            case knockBackChariotPlayer = "KnockBackChariotPlayer"
            case knockBackOpponent = "KnockBackOpponent"
        }
        
        struct KnockBack: Codable {
            let accelMax: Double
            let accelMin: Double
            let myVelocityRate: Double
            let opponentVelocityRate: Double
            
            enum CodingKeys: String, CodingKey {
                case accelMax = "AccelMax"
                case accelMin = "AccelMin"
                case myVelocityRate = "MyVelocityRate"
                case opponentVelocityRate = "OpponentVelocityRate"
            }
        }
    }
    
    struct CannonParameter: Codable {
        let type: String
        let blastParam: BlastParameter
        let collisionParam: CollisionParameter
        let drawSize: Double
        let moveParam: MoveParameter
        let splashParam: SplashParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case blastParam = "BlastParam"
            case collisionParam = "CollisionParam"
            case drawSize = "DrawSize"
            case moveParam = "MoveParam"
            case splashParam = "SplashParam"
        }
        
        struct BlastParameter: Codable {
            let crossPaintCheckLength: Double
            let crossPaintRadius: Double
            let damageOffsetY: Double
            let distanceDamage: [DistanceDamage]
            let knockBackParam: AttackKnockbackParameter
            let paintOffsetY: Double
            let paintRadius: Double
            
            enum CodingKeys: String, CodingKey {
                case crossPaintCheckLength = "CrossPaintCheckLength"
                case crossPaintRadius = "CrossPaintRadius"
                case damageOffsetY = "DamageOffsetY"
                case distanceDamage = "DistanceDamage"
                case knockBackParam = "KnockBackParam"
                case paintOffsetY = "PaintOffsetY"
                case paintRadius = "PaintRadius"
            }
        }
        
        struct MoveParameter: Codable {
            let brakeAirResist: Double
            let brakeGravity: Double
            let brakeToFreeStateFrame: Int
            let brakeToFreeVelocityXZ: Double
            let brakeToFreeVelocityY: Double
            let freeAirResist: Double
            let freeGravity: Double
            let goStraightToBrakeStateFrame: Int
            
            enum CodingKeys: String, CodingKey {
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
        
        struct SplashParameter: Codable {
            let drawSizeCollisionPaintParam: DrawSizeCollisionPaintParameter
            let spawnParam: SpawnParameter
            
            enum CodingKeys: String, CodingKey {
                case drawSizeCollisionPaintParam = "DrawSizeCollisionPaintParam"
                case spawnParam = "SpawnParam"
            }
            
            struct DrawSizeCollisionPaintParameter: Codable {
                let collisionParam: CollisionParameter
                let drawRadius: Double
                let paintDepthScale: Double
                let paintWidthHalf: Double
                
                enum CodingKeys: String, CodingKey {
                    case collisionParam = "CollisionParam"
                    case drawRadius = "DrawRadius"
                    case paintDepthScale = "PaintDepthScale"
                    case paintWidthHalf = "PaintWidthHalf"
                }
            }
            

        }
    }
    
    struct CollisionParameter: Codable {
        let changeFrameForField: Int?
        let changeFrameForPlayer: Int?
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int?
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case changeFrameForField = "ChangeFrameForField"
            case changeFrameForPlayer = "ChangeFrameForPlayer"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
    
    struct ShooterDamageParameter: Codable {
        let type: String
        let reduceEndFrame: Int
        let reduceStartFrame: Int
        let valueMax: Int
        let valueMin: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case reduceEndFrame = "ReduceEndFrame"
            case reduceStartFrame = "ReduceStartFrame"
            case valueMax = "ValueMax"
            case valueMin = "ValueMin"
        }
    }
    
    struct ShooterMoveParameter: Codable {
        let type: String
        let freeGravity: Double
        let goStraightStateEndMaxSpeed: Double
        let goStraightToBrakeStateFrame: Int
        let spawnSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case freeGravity = "FreeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
    
    struct ShooterPaintParameter: Codable {
        let type: String
        let distanceMiddle: Double
        let widthHalfFar: Double
        let widthHalfMiddle: Double
        let widthHalfNear: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case distanceMiddle = "DistanceMiddle"
            case widthHalfFar = "WidthHalfFar"
            case widthHalfMiddle = "WidthHalfMiddle"
            case widthHalfNear = "WidthHalfNear"
        }
    }
    
    struct ShooterSplashPaintParameter: Codable {
        let type: String
        let depthMaxDropHeight: Double
        let depthMinDropHeight: Double
        let widthHalf: Double
        let widthHalfNearest: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    struct SpawnParameter: Codable {
        let type: String?
        let forceSpawnNearestAddNumArray: [Int]?
        let spawnBetweenLength: Double
        let spawnNearestLength: Double?
        let spawnNum: Double
        let splitNum: Int?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
            case spawnBetweenLength = "SpawnBetweenLength"
            case spawnNearestLength = "SpawnNearestLength"
            case spawnNum = "SpawnNum"
            case splitNum = "SplitNum"
        }
    }
    
    struct ShooterWallDropCollisionPaintParameter: Codable {
        let type: String
        let paintRadiusFall: Double
        let paintRadiusGround: Double
        let paintRadiusShock: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
    
    struct ShooterWallDropMoveParameter: Codable {
        let type: String
        let fallPeriodFirstFrameMax: Int
        let fallPeriodFirstFrameMin: Int
        let fallPeriodFirstTargetSpeed: Double
        let fallPeriodLastFrameMax: Int
        let fallPeriodLastFrameMin: Int
        let fallPeriodSecondFrame: Int
        let fallPeriodSecondTargetSpeed: Double
        let freeGravityType: String
        
        enum CodingKeys: String, CodingKey {
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
    
    struct WeaponParameter: Codable {
        let type: String
        let armorHP: Int
        let armorHPBreakScissors: Int
        let cannonNoShotFrame: Int
        let moveSpeedCoefSquid: Double
        let moveSpeedX: Double
        let moveSpeedXSpongeEnemy: Double
        let moveSpeedZ: Double
        let moveSpeedZSpongeEnemy: Double
        let noShotBombReqFrmFinishSpecial: Int
        let preDelayFrmSquidShotBomb: Int
        let rotDegLmtToHumanFrm: Int
        let shooterRepeatFrameBias: Double
        let shooterRepeatFrameFirst: Double
        let shooterRepeatFrameTerm: Double
        let shotGuideCannonFrame: Int
        let shotPitVelLmt: Double
        let specialTotalFrame: HighMidLow
        let startDelayFrameCannon: Int
        let startDelayFrameShooter: Int
        
        enum CodingKeys: String, CodingKey {
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
    
    struct BulletShooterTailLengthParameter: Codable {
        let type: String
        let delayShotFrame: Int
        let endMaxLength: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case delayShotFrame = "DelayShotFrame"
            case endMaxLength = "EndMaxLength"
        }
    }
    
    struct PaintMonitorSetParameter: Codable {
        let type: String
        let relabilityMinTime: Int
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case relabilityMinTime = "RelabilityMinTime"
        }
    }
}
