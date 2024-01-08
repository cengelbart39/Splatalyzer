//
//  BlasterParameters.swift
//  
//
//  Created by Christopher Engelbart on 12/22/23.
//

import Foundation

struct BlasterParameters: Codable {
    let blastJumpParam: BlastParameter?
    let blastParam: BlastParameter
    
    let blasterBurstJumpParam: BurstParameter?
    let blasterBurstParam: BurstParameter
    
    let collisionParam: CollisionParameter
    
    let damageJumpParam: DamageParameter?
    let damageParam: DamageParameter
    
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
    let mainWeaponSetting: MainWeaponSettings
    
    let moveJumpParam: MoveParameter?
    let moveParam: MoveParameter
    
    let paintParam: PaintParameter
    
    let splashPaintParam: SplashPaintParameter
    let splashSpawnParam: SplashSpawnParameter
    let splashWallHitParam: SplashWallHitParameter
    
    let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
    let wallDropMoveParam: WallDropMoveParameter
    
    let weaponParam: WeaponParameter
    
    let skillActionSpecUpReduceJumpSwerveRate: ActionSpecUpReduceJumpSwerveRate?
    
    let skillMainEffectUpRangeUp: MainEffectiveRangeUpSkill?
    
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter
    
    enum CodingKeys: String, CodingKey {
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

extension BlasterParameters {
    struct BlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageAttackPriority: Bool
        let damageLinear: Bool
        let distanceDamage: [DistanceDamage]
        let knockbackParam: KnockbackParameter
        let paintRadius: Double
        let splashAroundParam: SplashAroundParameter?
        
        enum CodingKeys: String, CodingKey {
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
    
    struct BurstParameter: Codable {
        let type: String
        let burstFrame: Int?
        let moveLength: Double?
        let noOccurRoundYOver90RoundXPlus: Bool?
        let noOccurRoundYOver90RoundXMinus: Bool?
        let shotCollisionHitDamageRate: Double?
        let shotCollisionHitRadiusRate: Double?
        let splashDropPaintRadius: Double?
        let splashDropPaintShotColHitRadius: Double
        let splashPaintRadius: Double?
        let splashPaintShotColHitRadius: Double?
        let splashRoundAxisXArray: [Double]
        let splashRoundAxisYArray: [Double]
        let splashWallDropMoveParam: WallDropMoveParameter
        let splashWallDropPaintParam: SplashWallDropPaintParameter
        let wallHitPaintRadius: Double?
        
        enum CodingKeys: String, CodingKey {
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

extension BlasterParameters.BurstParameter {
    struct SplashWallDropPaintParameter: Codable {
        let paintRadiusFall: Double
        let paintRadiusGround: Double
        let paintRadiusShock: Double
        
        enum CodingKeys: String, CodingKey {
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
}

extension BlasterParameters {
    struct CollisionParameter: Codable {
        let type: String
        let changeFrameForField: Int
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case changeFrameForField = "ChangeFrameForField"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }

    struct DamageParameter: Codable {
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
    
    struct MoveParameter: Codable {
        let type: String
        let freeGravity: Double?
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

    struct PaintParameter: Codable {
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

    struct SplashPaintParameter: Codable {
        let type: String
        let depthMaxDropHeight: Double
        let depthMinDropHeight: Double
        let depthScaleMax: Double?
        let widthHalf: Double
        let widthHalfNearest: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMax = "DepthScaleMax"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }

    struct SplashSpawnParameter: Codable {
        let type: String
        let forceSpawnNearestAddNumArray: [Double]
        let randomSpawnVelXMax: Double?
        let randomSpawnVelYMax: Double?
        let randomSpaceVelZMax: Double?
        let randomSpaceVelZMin: Double?
        let spawnBetweenLength: Double
        let spawnNearestLength: Double
        let spawnNum: Double
        let splitNum: Int
        
        enum CodingKeys: String, CodingKey {
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

    struct SplashWallHitParameter: Codable {
        let type: String
        let spawnParam: SpawnParameter
        let wallDropCollisionPaintParam: WallDropCollisionPaintParameter
        let wallDropMoveParam: WallDropMoveParameter
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case spawnParam = "SpawnParam"
            case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
            case wallDropMoveParam = "WallDropMoveParam"
        }
    }
}

extension BlasterParameters.SplashWallHitParameter {
    struct SpawnParameter: Codable {
        let distanceXZRate: Double?
        let firstDistance: Double
        let velocityMinusYRate: Double
        
        enum CodingKeys: String, CodingKey {
            case distanceXZRate = "DistanceXZRate"
            case firstDistance = "FirstDistance"
            case velocityMinusYRate = "VelocityMinusYRate"
        }
    }
}

extension BlasterParameters {
    struct WallDropCollisionPaintParameter: Codable {
        let type: String?
        let fallPeriodFirstSecondTargetAlp: Double
        let paintRadiusFall: Double
        let paintRadiusGround: Double?
        let paintRadiusShock: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }

    struct WallDropMoveParameter: Codable {
        let type: String?
        let fallPeriodFirstFrameMax: Int?
        let fallPeriodFirstFrameMin: Int
        let fallPeriodFirstTargetSpeed: Double
        let fallPeriodLastFrameMax: Int
        let fallPeriodLastFrameMin: Int
        let fallPeriodSecondFrame: Int
        let fallPeriodSecondTargetSpeed: Double
        
        enum CodingKeys: String, CodingKey {
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

    struct WeaponParameter: Codable {
        let type: String
        let inkConsume: Double
        let inkRecoverStop: Int
        let jumpDegBiasDecreaseStartFrame: Int
        let jumpDegBiasEndFrame: Int
        let jumpDegBiasMax: Double
        let jumpDegSwerve: Double
        let moveSpeed: Double
        let postDelayFrame: Int
        let postDelayFrameBlaster: Int?
        let preDelayFrameHumanShot: Int
        let preDelayFrameSquidShot: Int
        let repeatFrame: Int
        let shotGuideFrame: Int
        let squidShotShorteningFrame: Int?
        let standDegBiasDecrease: Double
        let standDegBiasKf: Double
        let standDegBiasMax: Double
        let standDegBiasMin: Double
        let standDegSwerve: Double
        
        enum CodingKeys: String, CodingKey {
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

    struct ActionSpecUpReduceJumpSwerveRate: Codable {
        let type: String
        let mid: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case mid = "Mid"
        }
    }
    
    struct MainEffectiveRangeUpSkill: Codable {
        let type: String
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
        }
    }
    
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
}
