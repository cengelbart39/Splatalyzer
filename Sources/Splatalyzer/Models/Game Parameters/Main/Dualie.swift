//
//  Dualie.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

struct Dualie: Codable {
    let collisionLapOverParam: CollisionParameter?
    let collisionParam: CollisionParameter?
    
    let damageLapOverParam: DamageParameter?
    let damageParam: DamageParameter
    
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
    let mainWeaponSetting: MainWeaponSettings?
    
    let moveLapOverParam: MoveParameter?
    let moveParam: MoveParameter
    
    let paintParam: PaintParameter?
    
    let sideStepBlastParam: SideStepBlastParameter?
    let sideStepParam: SideStepParameter
    
    let splashPaintParam: SplashPaintParameter?
    let splashSpawnLapOverParam: SplashSpawnParameter?
    let splashSpawnParam: SplashSpawnParameter
    
    let wallDropCollisionPaintParam: WallDropCollisionPaintParameter?
    let wallDropMoveParam: WallDropMoveParameter?
    
    let weaponParam: WeaponParameter
    
    let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter?
    
    enum CodingKeys: String, CodingKey {
        case collisionLapOverParam = "CollisionLapOverParam"
        case collisionParam = "CollisionParam"
        case damageLapOverParam = "DamageLapOverParam"
        case damageParam = "DamageParam"
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case moveLapOverParam = "MoveLapOverParam"
        case moveParam = "MoveParam"
        case paintParam = "PaintParam"
        case sideStepBlastParam = "SideStepBlastParam"
        case sideStepParam = "SideStepParam"
        case splashPaintParam = "SplashPaintParam"
        case splashSpawnLapOverParam = "SplashSpawnLapOverParam"
        case splashSpawnParam = "SplashSpawnParam"
        case wallDropCollisionPaintParam = "WallDropCollisionPaintParam"
        case wallDropMoveParam = "WallDropMoveParam"
        case weaponParam = "WeaponParam"
        case spawnBulletAdditionMovePlayerParam = "spl__SpawnBulletAdditionMovePlayerParam"
    }
}

extension Dualie {
    struct CollisionParameter: Codable {
        let type: String
        let changeFrameForField: Int
        let changeFrameForPlayer: Int
        let endRadiusForField: Double
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int
        let initRadiusForField: Double
        let initRadiusForPlayer: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case changeFrameForField = "ChangeFrameForField"
            case changeFrameForPlayer = "ChangeFrameForPlayer"
            case endRadiusForField = "EndRadiusForField"
            case endRadiusForPlayer = "EndRadiusForPlayer"
            case friendThroughFrameForPlayer = "FriendThroughFrameForPlayer"
            case initRadiusForField = "InitRadiusForField"
            case initRadiusForPlayer = "InitRadiusForPlayer"
        }
    }
}

extension Dualie {
    struct DamageParameter: Codable {
        let type: String
        let reduceEndFrame: Int?
        let reduceStartFrame: Int?
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
}

extension Dualie {
    struct MoveParameter: Codable {
        let type: String
        let freeGravity: Double?
        let goStraightStateEndMaxSpeed: Double
        let goStraightBrakeStateFrame: Int
        let spawnSpeed: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case freeGravity = "FreeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
}

extension Dualie {
    struct PaintParameter: Codable {
        let type: String
        let degreeUseDepthScaleMin: Double?
        let depthScaleMax: Double
        let depthScaleMaxBreakFree: Double
        let depthScaleMin: Double
        let depthScaleMinBreakFree: Double
        let distanceMiddle: Double
        let widthHalfFar: Double
        let widthHalfMiddle: Double
        let widthHalfNear: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case degreeUseDepthScaleMin = "DegreeUseDepthScaleMin"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMaxBreakFree = "DepthScaleMaxBreakFree"
            case depthScaleMin = "DepthScaleMin"
            case depthScaleMinBreakFree = "DepthScaleMinBreakFree"
            case distanceMiddle = "DistanceMiddle"
            case widthHalfFar = "WidthHalfFar"
            case widthHalfMiddle = "WidthHalfMiddle"
            case widthHalfNear = "WidthHalfNear"
        }
    }
}

extension Dualie {
    struct SideStepBlastParameter: Codable {
        let type: String
        let crossPaintCheckLength: Double
        let crossPaintRadius: Double
        let damageLinear: Bool
        let distanceDamage: [DistanceDamage]
        let paintHeight: Double
        let paintRadius: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case damageLinear = "DamageLinear"
            case distanceDamage = "DistanceDamage"
            case paintHeight = "PaintHeight"
            case paintRadius = "PaintRadius"
        }
    }
}

extension Dualie {
    struct SideStepParameter: Codable {
        let type: String
        let chargeFrame: Int?
        let inkConsume: Double
        let inkRecoverStop: Int?
        let isShootableInMove: Bool?
        let moveDist: Double?
        let moveFrame: Int?
        let repeatCnt: Int?
        let slipMoveDistAir: Double?
        let slipMoveDistGnd: Double?
        let slipMoveFrame: Int?
        let splashSlideParam: SplashSlideParameter?
        let unrelaxFrameMove: Int
        let unrelaxFrameMoveLast: Int
        let unrelaxFrameNoSideStep: Int?
        let unrelaxFrameNoSideStepLast: Int?
        let unrelaxFrameNoSquid: Int?
        let unrelaxFrameNoSquidLast: Int?
        let unrelaxFrameNoWeapon: Int?
        let unrelaxFrameNoWeaponLast: Int?
        let unrelaxFrameOneMuzzle: Int?
        let unrelaxFrameOneMuzzleLast: Int?
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case chargeFrame = "ChargeFrame"
            case inkConsume = "InkConsume"
            case inkRecoverStop = "InkRecoverStop"
            case isShootableInMove = "IsShootableInMove"
            case moveDist = "MoveDist"
            case moveFrame = "MoveFrame"
            case repeatCnt = "RepeatCnt"
            case slipMoveDistAir = "SlipMoveDistAir"
            case slipMoveDistGnd = "SlipMoveDistGnd"
            case slipMoveFrame = "SlipMoveFrame"
            case splashSlideParam = "SplashSlideParam"
            case unrelaxFrameMove = "UnrelaxFrameMove"
            case unrelaxFrameMoveLast = "UnrelaxFrameMove_Last"
            case unrelaxFrameNoSideStep = "UnrelaxFrameNoSideStep"
            case unrelaxFrameNoSideStepLast = "UnrelaxFrameNoSideStep_Last"
            case unrelaxFrameNoSquid = "UnrelaxFrameNoSquid"
            case unrelaxFrameNoSquidLast = "UnrelaxFrameNoSquid_Last"
            case unrelaxFrameNoWeapon = "UnrelaxFrameNoWeapon"
            case unrelaxFrameNoWeaponLast = "UnrelaxFrameNoWeapon_Last"
            case unrelaxFrameOneMuzzle = "UnrelaxFrameOneMuzzle"
            case unrelaxFrameOneMuzzleLast = "UnrelaxFrameOneMuzzle_Last"
        }
    }
}

extension Dualie.SideStepParameter {
    struct SplashSlideParameter: Codable {
        let moveLength: Double?
        let paintWidthHalf: Double
        
        enum CodingKeys: String, CodingKey {
            case moveLength = "MoveLength"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
}

extension Dualie {
    struct SplashPaintParameter: Codable {
        let type: String
        let depthMaxDropHeight: Double
        let depthMinDropHeight: Double
        let depthScaleMin: Double
        let widthHalf: Double
        let widthHalfNearest: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
}

extension Dualie {
    struct SplashSpawnParameter: Codable {
        let type: String
        let forceSpawnNearestAddNumArray: [Double]?
        let spawnBetweenLength: Double?
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
}

extension Dualie {
    struct WallDropCollisionPaintParameter: Codable {
        let type: String
        let paintRadiusFall: Double
        let paintRadiusGround: Double
        let paintRadiusChock: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusChock = "PaintRadiusShock"
        }
    }
}

extension Dualie {
    struct WallDropMoveParameter: Codable {
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
}

extension Dualie {
    struct WeaponParameter: Codable {
        let type: String
        let inkConsume: Double
        let jumpDegBiasDecreaseStartFrame: Int?
        let jumpDegBiasEndFrame: Double?
        let jumpDegBiasMax: Double?
        let jumpDegSwerve: Double
        let lapOverDegSwerve: Double
        let lapOverRepeatFrame: Double?
        let moveSpeed: Double?
        let preDelayFrameSquidShot: Int?
        let postDelayFrame: Int?
        let repeatFrame: Int?
        let shotGuideFrame: Int?
        let standDegBiasDecrease: Double?
        let standDegBiasKf: Double?
        let standDegBiasMax: Double?
        let standDegBiasMin: Double?
        let standDegSwerve: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case inkConsume = "InkConsume"
            case jumpDegBiasDecreaseStartFrame = "Jump_DegBiasDecreaseStartFrame"
            case jumpDegBiasEndFrame = "Jump_DegBiasEndFrame"
            case jumpDegBiasMax = "Jump_DegBiasMax"
            case jumpDegSwerve = "Jump_DegSwerve"
            case lapOverDegSwerve = "LapOver_DegSwerve"
            case lapOverRepeatFrame = "LapOver_RepeatFrame"
            case moveSpeed = "MoveSpeed"
            case preDelayFrameSquidShot = "PreDelayFrame_SquidShot"
            case postDelayFrame = "PostDelayFrame"
            case repeatFrame = "RepeatFrame"
            case shotGuideFrame = "ShotGuideFrame"
            case standDegBiasDecrease = "Stand_DegBiasDecrease"
            case standDegBiasKf = "Stand_DegBiasKf"
            case standDegBiasMax = "Stand_DegBiasMax"
            case standDegBiasMin = "Stand_DegBiasMin"
            case standDegSwerve = "Stand_DegSwerve"
        }
    }
}

extension Dualie {
    struct SpawnBulletAdditionMovePlayerParameter: Codable {
        let type: String
        let zRate: Double
        
        enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
}
