//
//  Dualie.swift
//
//
//  Created by Christopher Engelbart on 12/23/23.
//

import Foundation

/// Represents the game parameter data of a main weapon in the
/// Dualie Class.
///
/// To see a representative `JSON` go to
/// `Resources/weapon-json/` and find a file prefixed with
/// `WeaponManeuver`.
public struct Dualie: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: MainParametable {
        public let collisionLapOverParam: CollisionParameter?
        public let collisionParam: CollisionParameter?
        
        public let damageLapOverParam: DamageParameter?
        public let damageParam: DamageParameter
        
        public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
        public let mainWeaponSetting: MainWeaponSettings
        
        public let moveLapOverParam: MoveParameter?
        public let moveParam: MoveParameter
        
        public let paintParam: PaintParameter?
        
        public let sideStepBlastParam: SideStepBlastParameter?
        public let sideStepParam: SideStepParameter
        
        public let splashPaintParam: SplashPaintParameter?
        public let splashSpawnLapOverParam: SplashSpawnParameter?
        public let splashSpawnParam: SplashSpawnParameter
        
        public let wallDropCollisionPaintParam: WallDropCollisionPaintParameter?
        public let wallDropMoveParam: WallDropMoveParameter?
        
        public let weaponParam: WeaponParameter
        
        public let spawnBulletAdditionMovePlayerParam: SpawnBulletAdditionMovePlayerParameter?
        
        public enum CodingKeys: String, CodingKey {
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
}

extension Dualie.Parameters {
    public struct CollisionParameter: Parametable {
        public let type: String
        public let changeFrameForField: Int
        public let changeFrameForPlayer: Int
        public let endRadiusForField: Double
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int
        public let initRadiusForField: Double
        public let initRadiusForPlayer: Double
        
        public enum CodingKeys: String, CodingKey {
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

extension Dualie.Parameters {
    public struct DamageParameter: Parametable {
        public let type: String
        public let reduceEndFrame: Int?
        public let reduceStartFrame: Int?
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
}

extension Dualie.Parameters {
    public struct MoveParameter: Parametable {
        public let type: String
        public let freeGravity: Double?
        public let goStraightStateEndMaxSpeed: Double
        public let goStraightBrakeStateFrame: Int
        public let spawnSpeed: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case freeGravity = "FreeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case spawnSpeed = "SpawnSpeed"
        }
    }
}

extension Dualie.Parameters {
    public struct PaintParameter: Parametable {
        public let type: String
        public let degreeUseDepthScaleMin: Double?
        public let depthScaleMax: Double
        public let depthScaleMaxBreakFree: Double
        public let depthScaleMin: Double
        public let depthScaleMinBreakFree: Double
        public let distanceMiddle: Double
        public let widthHalfFar: Double
        public let widthHalfMiddle: Double
        public let widthHalfNear: Double
        
        public enum CodingKeys: String, CodingKey {
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

extension Dualie.Parameters {
    public struct SideStepBlastParameter: Parametable {
        public let type: String
        public let crossPaintCheckLength: Double
        public let crossPaintRadius: Double
        public let damageLinear: Bool
        public let distanceDamage: [DistanceDamage]
        public let paintHeight: Double
        public let paintRadius: Double
        
        public enum CodingKeys: String, CodingKey {
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

extension Dualie.Parameters {
    public struct SideStepParameter: Parametable {
        public let type: String
        public let chargeFrame: Int?
        public let inkConsume: Double
        public let inkRecoverStop: Int?
        public let isShootableInMove: Bool?
        public let moveDist: Double?
        public let moveFrame: Int?
        public let repeatCnt: Int?
        public let slipMoveDistAir: Double?
        public let slipMoveDistGnd: Double?
        public let slipMoveFrame: Int?
        public let splashSlideParam: SplashSlideParameter?
        public let unrelaxFrameMove: Int
        public let unrelaxFrameMoveLast: Int
        public let unrelaxFrameNoSideStep: Int?
        public let unrelaxFrameNoSideStepLast: Int?
        public let unrelaxFrameNoSquid: Int?
        public let unrelaxFrameNoSquidLast: Int?
        public let unrelaxFrameNoWeapon: Int?
        public let unrelaxFrameNoWeaponLast: Int?
        public let unrelaxFrameOneMuzzle: Int?
        public let unrelaxFrameOneMuzzleLast: Int?
        
        public enum CodingKeys: String, CodingKey {
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

extension Dualie.Parameters.SideStepParameter {
    public struct SplashSlideParameter: Parametable {
        public let moveLength: Double?
        public let paintWidthHalf: Double
        
        public enum CodingKeys: String, CodingKey {
            case moveLength = "MoveLength"
            case paintWidthHalf = "PaintWidthHalf"
        }
    }
}

extension Dualie.Parameters {
    public struct SplashPaintParameter: Parametable {
        public let type: String
        public let depthMaxDropHeight: Double
        public let depthMinDropHeight: Double
        public let depthScaleMin: Double
        public let widthHalf: Double
        public let widthHalfNearest: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
}

extension Dualie.Parameters {
    public struct SplashSpawnParameter: Parametable {
        public let type: String
        public let forceSpawnNearestAddNumArray: [Double]?
        public let spawnBetweenLength: Double?
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
}

extension Dualie.Parameters {
    public struct WallDropCollisionPaintParameter: Parametable {
        public let type: String
        public let paintRadiusFall: Double
        public let paintRadiusGround: Double
        public let paintRadiusChock: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusChock = "PaintRadiusShock"
        }
    }
}

extension Dualie.Parameters {
    public struct WallDropMoveParameter: Parametable {
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
}

extension Dualie.Parameters {
    public struct WeaponParameter: Parametable {
        public let type: String
        public let inkConsume: Double
        public let jumpDegBiasDecreaseStartFrame: Int?
        public let jumpDegBiasEndFrame: Double?
        public let jumpDegBiasMax: Double?
        public let jumpDegSwerve: Double
        public let lapOverDegSwerve: Double
        public let lapOverRepeatFrame: Double?
        public let moveSpeed: Double?
        public let preDelayFrameSquidShot: Int?
        public let postDelayFrame: Int?
        public let repeatFrame: Int?
        public let shotGuideFrame: Int?
        public let standDegBiasDecrease: Double?
        public let standDegBiasKf: Double?
        public let standDegBiasMax: Double?
        public let standDegBiasMin: Double?
        public let standDegSwerve: Double
        
        public enum CodingKeys: String, CodingKey {
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

extension Dualie.Parameters {
    public struct SpawnBulletAdditionMovePlayerParameter: Parametable {
        public let type: String
        public let zRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case zRate = "ZRate"
        }
    }
}
