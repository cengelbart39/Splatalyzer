//
//  Blaster.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

/// Represents the game parameter data of a main weapon in the
/// Blaster Class.
///
/// To see a representative `JSON` go to
/// `Resources/weapon-json/` and find a file prefixed with
/// `WeaponBlaster`.
public struct Blaster: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: Codable {
        public let blastJumpParam: BlastParameter?
        public let blastParam: BlastParameter
        
        public let blasterBurstJumpParam: BurstParameter?
        public let blasterBurstParam: BurstParameter
        
        public let collisionParam: CollisionParameter
        
        public let damageJumpParam: DamageParameter?
        public let damageParam: DamageParameter
        
        public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
        public let mainWeaponSetting: MainWeaponSettings
        
        public let moveJumpParam: MoveParameter?
        public let moveParam: MoveParameter
        
        public let paintParam: PaintParameter
        
        public let splashPaintParam: SplashPaintParameter
        public let splashSpawnParam: SplashSpawnParameter
        public let splashWallHitParam: SplashWallHitParameter
        
        public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        public let wallDropMoveParam: WallDropMoveParameter
        
        public let weaponParam: WeaponParameter
        
        public let skillActionSpecUpReduceJumpSwerveRate: ActionSpecUpReduceJumpSwerveRate?
        
        public let skillMainEffectUpRangeUp: MainEffectiveRangeUpSkill?
        
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
        
        public enum CodingKeys: String, CodingKey {
            case blastJumpParam = "BlastJumpParam"
            case blastParam = "BlastParam"
            case blasterBurstJumpParam = "BlasterBurstJumpParam"
            case blasterBurstParam = "BlasterBurstParam"
            case collisionParam = "CollisionParam"
            case damageJumpParam = "DamageJumpParam"
            case damageParam = "DamageParam"
            case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
            case mainWeaponSetting = "MainWeaponSetting"
            case moveJumpParam = "MoveJumpParam"
            case moveParam = "MoveParam"
            case paintParam = "PaintParam"
            case splashPaintParam = "SplashPaintParam"
            case splashSpawnParam = "SplashSpawnParam"
            case splashWallHitParam = "SplashWallHitParam"
            case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
            case wallDropMoveParam = "WallDropMoveParam"
            case weaponParam = "WeaponParam"
            case skillActionSpecUpReduceJumpSwerveRate = "spl__PlayerGearSkillParam_ActionSpecUp_ReduceJumpSwerveRate"
            case skillMainEffectUpRangeUp = "spl__PlayerGearSkillParam_MainEffectiveRangeUp"
            case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
        }
    }
}

extension Blaster.Parameters {
    public struct BlastParameter: Codable {
        public let type: String
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let damageAttackPriority: Bool
        public let damageLinear: Bool
        public let distanceDamage: [DistanceDamage]
        public let knockbackParam: KnockbackParameter
        public let paintRadius: Double
        public let splashAroundParam: SplashAroundParameter?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageAttackPriority = "DamageAttackerPriority"
            case damageLinear = "DamageLinear"
            case distanceDamage = "DistanceDamage"
            case knockbackParam = "KnockBackParam"
            case paintRadius = "PaintRadius"
            case splashAroundParam = "SplashAroundParam"
        }
    }
    
    public struct BurstParameter: Codable {
        public let type: String
        public let burstFrame: Int?
        public let moveLength: Double?
        public let noOccurRoundYOver90RoundXPlus: Bool?
        public let noOccurRoundYOver90RoundXMinus: Bool?
        public let shotCollisionHitDamageRate: Double?
        public let shotCollisionHitRadiusRate: Double?
        public let splashDropPaintRadius: Double?
        public let splashDropPaintShotColHitRadius: Double
        public let splashPaintRadius: Double?
        public let splashPaintShotColHitRadius: Double?
        public let splashRoundAxisXArray: [Double]
        public let splashRoundAxisYArray: [Double]
        public let splashWallDropMoveParam: WallDropMoveParameter
        public let splashWallDropPaintParam: SplashWallDropPaintParameter
        public let wallHitPaintRadius: Double?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case burstFrame = "BurstFrame"
            case moveLength = "MoveLength"
            case noOccurRoundYOver90RoundXPlus = "NoOccurRoundYOver90RoundXPlus"
            case noOccurRoundYOver90RoundXMinus = "NoOccurRoundYOver90RoundXMinus"
            case shotCollisionHitDamageRate = "ShotCollisionHitDamageRate"
            case shotCollisionHitRadiusRate = "ShotCollisionHitRadiusRate"
            case splashDropPaintRadius = "SplashDropPaintRadius"
            case splashDropPaintShotColHitRadius = "SplashDropPaintShotColHitRadius"
            case splashPaintRadius = "SplashPaintRadius"
            case splashPaintShotColHitRadius = "SplashPaintShotColHitRadius"
            case splashRoundAxisXArray = "SplashRoundAxisXArray"
            case splashRoundAxisYArray = "SplashRoundAxisYArray"
            case splashWallDropMoveParam = "SplashWallDropMoveParam"
            case splashWallDropPaintParam = "SplashWallDropPaintParam"
            case wallHitPaintRadius = "WallHitPaintRadius"
        }
    }
}

extension Blaster.Parameters.BurstParameter {
    public struct SplashWallDropPaintParameter: Codable {
        public let paintRadiusFall: Double
        public let paintRadiusGround: Double
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
}

extension Blaster.Parameters {
    public struct CollisionParameter: Codable {
        public let type: String
        public let changeFrameForField: Int
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case changeFrameForField = "ChangeFrameForField"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }

    public struct DamageParameter: Codable {
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
    
    public struct MoveParameter: Codable {
        public let type: String
        public let freeGravity: Double?
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

    public struct PaintParameter: Codable {
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

    public struct SplashPaintParameter: Codable {
        public let type: String
        public let depthMaxDropHeight: Double
        public let depthMinDropHeight: Double
        public let depthScaleMax: Double?
        public let widthHalf: Double
        public let widthHalfNearest: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMax = "DepthScaleMax"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }

    public struct SplashSpawnParameter: Codable {
        public let type: String
        public let forceSpawnNearestAddNumArray: [Double]
        public let randomSpawnVelXMax: Double?
        public let randomSpawnVelYMax: Double?
        public let randomSpaceVelZMax: Double?
        public let randomSpaceVelZMin: Double?
        public let spawnBetweenLength: Double
        public let spawnNearestLength: Double
        public let spawnNum: Double
        public let splitNum: Int
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case forceSpawnNearestAddNumArray = "ForceSpawnNearestAddNumArray"
            case randomSpawnVelXMax = "RandomSpawnVelXMax"
            case randomSpawnVelYMax = "RandomSpawnVelYMax"
            case randomSpaceVelZMax = "RandomSpawnVelZMax"
            case randomSpaceVelZMin = "RandomSpawnVelZMin"
            case spawnBetweenLength = "SpawnBetweenLength"
            case spawnNearestLength = "SpawnNearestLength"
            case spawnNum = "SpawnNum"
            case splitNum = "SplitNum"
        }
    }

    public struct SplashWallHitParameter: Codable {
        public let type: String
        public let spawnParam: SpawnParameter
        public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        public let wallDropMoveParam: WallDropMoveParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case spawnParam = "SpawnParam"
            case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
            case wallDropMoveParam = "WallDropMoveParam"
        }
    }
}

extension Blaster.Parameters.SplashWallHitParameter {
    public struct SpawnParameter: Codable {
        public let distanceXZRate: Double?
        public let firstDistance: Double
        public let velocityMinusYRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case distanceXZRate = "DistanceXZRate"
            case firstDistance = "FirstDistance"
            case velocityMinusYRate = "VelocityMinusYRate"
        }
    }
}

extension Blaster.Parameters {
    public struct WallDropCollisionPaintParameter: Codable {
        public let type: String?
        public let fallPeriodFirstSecondTargetAlp: Double
        public let paintRadiusFall: Double
        public let paintRadiusGround: Double?
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }

    public struct WallDropMoveParameter: Codable {
        public let type: String?
        public let fallPeriodFirstFrameMax: Int?
        public let fallPeriodFirstFrameMin: Int
        public let fallPeriodFirstTargetSpeed: Double
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int
        public let fallPeriodSecondFrame: Int
        public let fallPeriodSecondTargetSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstFrameMax = "FallPeriodFirstFrameMax"
            case fallPeriodFirstFrameMin = "FallPeriodFirstFrameMin"
            case fallPeriodFirstTargetSpeed = "FallPeriodFirstTargetSpeed"
            case fallPeriodLastFrameMax = "FallPeriodLastFrameMax"
            case fallPeriodLastFrameMin = "FallPeriodLastFrameMin"
            case fallPeriodSecondFrame = "FallPeriodSecondFrame"
            case fallPeriodSecondTargetSpeed = "FallPeriodSecondTargetSpeed"
        }
    }

    public struct WeaponParameter: Codable {
        public let type: String
        public let inkConsume: Double
        public let inkRecoverStop: Int
        public let jumpDegBiasDecreaseStartFrame: Int
        public let jumpDegBiasEndFrame: Int
        public let jumpDegBiasMax: Double
        public let jumpDegSwerve: Double
        public let moveSpeed: Double
        public let postDelayFrame: Int
        public let postDelayFrameBlaster: Int?
        public let preDelayFrameHumanShot: Int
        public let preDelayFrameSquidShot: Int
        public let repeatFrame: Int
        public let shotGuideFrame: Int
        public let squidShotShorteningFrame: Int?
        public let standDegBiasDecrease: Double
        public let standDegBiasKf: Double
        public let standDegBiasMax: Double
        public let standDegBiasMin: Double
        public let standDegSwerve: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
            case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
            case jumpDegBiasMax = "Jump_DegBiasMax"
            case jumpDegSwerve = "Jump_DegSwerve"
            case moveSpeed = "MoveSpeed"
            case postDelayFrame = "PostDelayFrame"
            case postDelayFrameBlaster = "PostDelayFrame_Blaster"
            case preDelayFrameHumanShot = "PreDelayFrame_HumanShot"
            case preDelayFrameSquidShot = "PreDelayFrame_SquidShot"
            case repeatFrame = "RepeatFrame"
            case shotGuideFrame = "ShotGuideFrame"
            case squidShotShorteningFrame = "SquidShotShorteningFrame"
            case standDegBiasDecrease = "Stand_DegBiasDecrease"
            case standDegBiasKf = "Stand_DegBiasKf"
            case standDegBiasMax = "Stand_DegBiasMax"
            case standDegBiasMin = "Stand_DegBiasMin"
            case standDegSwerve = "Stand_DegSwerve"
        }
    }

    public struct ActionSpecUpReduceJumpSwerveRate: Codable {
        public let type: String
        public let mid: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case mid = "Mid"
        }
    }
    
    public struct MainEffectiveRangeUpSkill: Codable {
        public let type: String
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    public struct SpawnBulletAdditionMovePlayerParameter: Codable {
        public let type: String
        public let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
}
