//
//  Stringer.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

/// Represents the game parameter data of a main weapon in the
/// Stringer Class.
///
/// To see a representative `JSON` go to
/// `Resources/weapon-json/` and find a file prefixed with
/// `WeaponStringer`.
public struct Stringer: GameParametable {
    public var parameters: Parameters
    
    public init(parameters: Parameters) {
        self.parameters = parameters
    }
    
    public struct Parameters: MainParametable {
        public let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter?
        public let mainWeaponSetting: MainWeaponSettings
        
        public let bulletStringerParam: BulletParameter
        public let weaponStringerParam: WeaponParameter
        
        public enum CodingKeys: String, CodingKey {
            case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
            case mainWeaponSetting = "MainWeaponSetting"
            case bulletStringerParam = "spl__BulletStringerParam"
            case weaponStringerParam = "spl__WeaponStringerParam"
        }
    }
}

extension Stringer.Parameters {
    public struct BulletParameter: Parametable {
        public let type: String
        public let collisionParam: CollisionParameter
        public let damageParam: DamageParameter
        public let detonationParam: DetonationParameter
        public let drawParam: DrawParameter
        public let effect1stParam: Effect1stParameter
        public let effect2ndParam: Effect2ndParameter
        public let moveParam: MoveParameter
        public let paintParam: PaintParameter
        public let splashPaintParam: SplashPaintParameter
        public let splashSpawnParam: SplashSpawnParameter
        public let wallDropMoveParam: WallDropMoveParameter
        public let wallDropPaintParam: WallDropPaintParameter?
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case collisionParam = "CollisionParam"
            case damageParam = "DamageParam"
            case detonationParam = "DetonationParam"
            case drawParam = "DrawParam"
            case effect1stParam = "Effect1stParam"
            case effect2ndParam = "Effect2ndParam"
            case moveParam = "MoveParam"
            case paintParam = "PaintParam"
            case splashPaintParam = "SplashPaintParam"
            case splashSpawnParam = "SplashSpawnParam"
            case wallDropMoveParam = "WallDropMoveParam"
            case wallDropPaintParam = "WallDropPaintParam"
        }
    }
}

extension Stringer.Parameters.BulletParameter {
    public struct CollisionParameter: Parametable {
        public let changeFrameForField: Int?
        public let changeFrameForPlayer: Int?
        public let endRadiusForField: Double?
        public let endRadiusForPlayer: Double
        public let friendThroughFrameForPlayer: Int?
        public let initRadiusForField: Double?
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
    
    public struct DamageParameter: Parametable {
        public let directHitDamageMax: Int
        public let directHitDamageMid: Int
        public let directHitDamageMin: Int
        
        public enum CodingKeys: String, CodingKey {
            case directHitDamageMax = "DirectHitDamageMax"
            case directHitDamageMid = "DirectHitDamageMid"
            case directHitDamageMin = "DirectHitDamageMin"
        }
    }
    
    public struct DetonationParameter: Parametable {
        public let blastParam: BlastParameter
        public let detonationFrame: Int
        public let isExplosiveBoltMidCharge: Bool
        public let isExplosiveBoltMinCharge: Bool?
        
        public enum CodingKeys: String, CodingKey {
            case blastParam = "BlastParam"
            case detonationFrame = "DetonationFrame"
            case isExplosiveBoltMidCharge = "IsExplosiveBoltMidCharge"
            case isExplosiveBoltMinCharge = "IsExplosiveBoltMinCharge"
        }
    }
    
    public struct DrawParameter: Parametable {
        public let attInterpRate: Double?
        public let capsuleLength: Double
        public let capsuleRadius: Double
        public let isDrawCapsule: Bool
        public let isDrawCollision: Bool
        
        public enum CodingKeys: String, CodingKey {
            case attInterpRate = "AttInterpRate"
            case capsuleLength = "CapsuleLength"
            case capsuleRadius = "CapsuleRadius"
            case isDrawCapsule = "IsDrawCapsule"
            case isDrawCollision = "IsDrawCollision"
        }
    }
    
    public struct Effect1stParameter: Parametable {
        public let delayFrame: Int
        public let maxLength: Double
        
        public enum CodingKeys: String, CodingKey {
            case delayFrame = "DelayFrame"
            case maxLength = "MaxLen"
        }
    }
    
    public struct Effect2ndParameter: Parametable {
        public let landArrowMinAngle: Int?
        public let landArrowRiseFrame: Int?
        public let smokeInterval: Double
        public let smokeStartLen: Double?
        
        public enum CodingKeys: String, CodingKey {
            case landArrowMinAngle = "LandArrowMinAngle"
            case landArrowRiseFrame = "LandArrowRiseFrame"
            case smokeInterval = "SmokeInterval"
            case smokeStartLen = "SmokeStartLen"
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
        public let goStraightStateEndMaxSpeed: Double
        public let goStraightToBrakeStateFrame: Int
        public let hitWallKeepFrame: Int?
        public let spawnSpeed: Double
        public let spawnSpeedMax: Double
        public let spawnSpeedMid: Double
        public let spawnSpeedMin: Double
        
        public enum CodingKeys: String, CodingKey {
            case brakeAirResist = "BrakeAirResist"
            case brakeGravity = "BrakeGravity"
            case brakeToFreeStateFrame = "BrakeToFreeStateFrame"
            case brakeToFreeVelocityXZ = "BrakeToFreeVelocityXZ"
            case brakeToFreeVelocityY = "BrakeToFreeVelocityY"
            case freeAirResist = "FreeAirResist"
            case freeGravity = "FreeGravity"
            case goStraightStateEndMaxSpeed = "GoStraightStateEndMaxSpeed"
            case goStraightToBrakeStateFrame = "GoStraightToBrakeStateFrame"
            case hitWallKeepFrame = "HitWallKeepFrame"
            case spawnSpeed = "SpawnSpeed"
            case spawnSpeedMax = "SpawnSpeedMax"
            case spawnSpeedMid = "SpawnSpeedMid"
            case spawnSpeedMin = "SpawnSpeedMin"
        }
    }
    
    public struct PaintParameter: Parametable {
        public let depthScaleMax: Double?
        public let depthScaleMin: Double?
        public let paintDegreeMax: Double?
        public let paintDegreeMin: Double?
        public let widthHalfMax: Double
        public let widthHalfMid: Double
        public let widthHalfMin: Double
        
        public enum CodingKeys: String, CodingKey {
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case paintDegreeMax = "PaintDegreeMax"
            case paintDegreeMin = "PaintDegreeMin"
            case widthHalfMax = "WidthHalfMax"
            case widthHalfMid = "WidthHalfMid"
            case widthHalfMin = "WidthHalfMin"
        }
    }
    
    public struct SplashPaintParameter: Parametable {
        public let depthMaxDropHeight: Double?
        public let depthMinDropHeight: Double?
        public let depthScaleMax: Double
        public let depthScaleMin: Double?
        public let widthHalf: Double
        public let widthHalfNearest: Double?
        
        public enum CodingKeys: String, CodingKey {
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    public struct SplashSpawnParameter: Parametable {
        public let dropInterval: Double
        public let nearestLen: Double?
        public let randomSpawnVelXMax: Double?
        public let randomSpawnVelYMax: Double?
        public let randomSpawnVelZMax: Double?
        public let randomSpawnVelZMin: Double?
        public let splashNumMax: Int?
        public let splitNum: Int
        
        public enum CodingKeys: String, CodingKey {
            case dropInterval = "DropInterval"
            case nearestLen = "NearestLen"
            case randomSpawnVelXMax = "RandomSpawnVelXMax"
            case randomSpawnVelYMax = "RandomSpawnVelYMax"
            case randomSpawnVelZMax = "RandomSpawnVelZMax"
            case randomSpawnVelZMin = "RandomSpawnVelZMin"
            case splashNumMax = "SplashNumMax"
            case splitNum = "SplitNum"
        }
    }
    
    public struct WallDropMoveParameter: Parametable {
        public let fallPeriodFirstFrameMax: Int
        public let fallPeriodFirstFrameMin: Int
        public let fallPeriodFirstTargetSpeed: Double?
        public let fallPeriodLastFrameMax: Int
        public let fallPeriodLastFrameMin: Int?
        public let fallPeriodSecondFrame: Int?
        public let fallPeriodSecondTargetSpeed: Double?
        public let freeGravityType: String?
        
        public enum CodingKeys: String, CodingKey {
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
    
    public struct WallDropPaintParameter: Parametable {
        public let fallPeriodFirstSecondTargetAlp: Double
        public let paintRadiusFall: Double
        public let paintRadiusGround: Double
        public let paintRadiusShock: Double
        
        public enum CodingKeys: String, CodingKey {
            case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
}

extension Stringer.Parameters.BulletParameter.DetonationParameter {
    public struct BlastParameter: Parametable {
        public let collisionRadiusForPaint: Double?
        public let crossPaintCheckLength: Double?
        public let crossPaintRadius: Double?
        public let crossPaintTexture: String?
        public let crossPaintUseChageArea: Bool?
        public let damageAttackerPriority: Bool?
        public let damageLinear: Bool?
        public let damageOffsetY: Double
        public let distanceDamage: [DistanceDamage]
        public let knockBackParam: KnockbackParameter?
        public let paintHeight: Double?
        public let paintOffsetY: Double
        public let paintRadius: Double
        public let paintTexture: String?
        public let planeDamage: [Int]?
        public let reactionVel: Double?
        public let splashAroundParam: SplashAroundParameter?
        public let subSpecialSpecUpList: [String]?
        
        public enum CodingKeys: String, CodingKey {
            case collisionRadiusForPaint = "CollisionRadiusForPaint"
            case crossPaintCheckLength = "CrossPaintCheckLength"
            case crossPaintRadius = "CrossPaintRadius"
            case crossPaintTexture = "CrossPaintTexture"
            case crossPaintUseChageArea = "CrossPaintUseChageArea"
            case damageAttackerPriority = "DamageAttackerPriority"
            case damageLinear = "DamageLinear"
            case damageOffsetY = "DamageOffsetY"
            case distanceDamage = "DistanceDamage"
            case knockBackParam = "KnockBackParam"
            case paintHeight = "PaintHeight"
            case paintOffsetY = "PaintOffsetY"
            case paintRadius = "PaintRadius"
            case paintTexture = "PaintTexture"
            case planeDamage = "PlaneDamage"
            case reactionVel = "ReactionVel"
            case splashAroundParam = "SplashAroundParam"
            case subSpecialSpecUpList = "SubSpecialSpecUpList"
        }
    }
}

extension Stringer.Parameters {
    public struct WeaponParameter: Parametable {
        public let type: String
        public let chargeKeepParameter: ChargeKeepParameter
        public let chargeParameter: ChargeParameter
        public let isEnableChargeKeep: Bool?
        public let playerParam: PlayerParameter
        public let shotGuideParam: ShotGuideParameter
        public let shotParam: ShotParameter
        
        public enum CodingKeys: String, CodingKey {
            case type = "$type"
            case chargeKeepParameter = "ChargeKeepParam"
            case chargeParameter = "ChargeParam"
            case isEnableChargeKeep = "IsEnableChargeKeep"
            case playerParam = "PlayerParam"
            case shotGuideParam = "ShotGuideParam"
            case shotParam = "ShotParam"
        }
    }
}

extension Stringer.Parameters.WeaponParameter {
    public struct ChargeKeepParameter: Parametable {
        public let enableKeepChargeAnytime: Bool?
        public let enableKeepChargeTransCancel: Bool?
        public let keepChargeFullFrame: Int
        public let keepChargePreDelayFrame: Int
        public let keepChargePreDelayFramePre: Int
        public let muzzleLocalPos: XYZData?
        
        public enum CodingKeys: String, CodingKey {
            case enableKeepChargeAnytime = "EnableKeepChargeAnytime"
            case enableKeepChargeTransCancel = "EnableKeepChargeTransCancel"
            case keepChargeFullFrame = "KeepChargeFullFrame"
            case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
            case keepChargePreDelayFramePre = "KeepChargePreDelayFrame_Pre"
            case muzzleLocalPos = "MuzzleLocalPos"
        }
    }
    
    public struct ChargeParameter: Parametable {
        public let airChargeRateByInkEmpty: Int
        public let chargeFrameFullCharge: Int
        public let chargeFrameMidCharge: Int
        public let chargeFrameMinCharge: Int
        public let freezeFrameFullCharge: Int
        public let freezeFrameMidCharge: Int
        public let freezeFrameMinCharge: Int
        public let inkConsumeFullCharge: Double
        public let inkConsumeMidCharge: Double
        public let inkConsumeMinCharge: Double
        public let inkEmptyChargeTimes: Int?
        public let inkRecoverStop: Int?
        public let inkRecoverStopChargeKeep: Int?
        public let jumpHeightFullCharge: Double
        public let moveJumpDownBias: Double?
        public let moveJumpDownStartChargeRate: Double?
        public let moveSpeedFullCharge: Double
        public let postDelayFrame: Int
        
        public enum CodingKeys: String, CodingKey {
            case airChargeRateByInkEmpty = "AirChargeRateByInkEmpty"
            case chargeFrameFullCharge = "ChargeFrameFullCharge"
            case chargeFrameMidCharge = "ChargeFrameMidCharge"
            case chargeFrameMinCharge = "ChargeFrameMinCharge"
            case freezeFrameFullCharge = "FreezeFrameFullCharge"
            case freezeFrameMidCharge = "FreezeFrameMidCharge"
            case freezeFrameMinCharge = "FreezeFrameMinCharge"
            case inkConsumeFullCharge = "InkConsumeFullCharge"
            case inkConsumeMidCharge = "InkConsumeMidCharge"
            case inkConsumeMinCharge = "InkConsumeMinCharge"
            case inkEmptyChargeTimes = "InkEmptyChargeTimes"
            case inkRecoverStop = "InkRecoverStop"
            case inkRecoverStopChargeKeep = "InkRecoverStopChargeKeep"
            case jumpHeightFullCharge = "JumpHeightFullCharge"
            case moveJumpDownBias = "MoveJumpDownBias"
            case moveJumpDownStartChargeRate = "MoveJumpDownStartChargeRate"
            case moveSpeedFullCharge = "MoveSpeedFullCharge"
            case postDelayFrame = "PostDelayFrame"
        }
    }
    
    public struct PlayerParameter: Parametable {
        public let bowTiltDegRcvInterpRate: Double
        
        public enum CodingKeys: String, CodingKey {
            case bowTiltDegRcvInterpRate = "BowTiltDegRcvInterpRate"
        }
    }
    
    public struct ShotGuideParameter: Parametable {
        public let delayFrameShowShotGuide: Int?
        public let guideDrawFrameDefilade: Int?
        public let guideDrawFrameFirst: Int
        public let guideDrawFrameSecond: Int
        public let isDrawTrajectory: Bool
        public let mainArrowGuideDrawFrame: Int
        public let subArrowGuideDrawFrame: Int
        public let tiltGuideEnabled: Bool
        public let tiltGuideLength: Double
        public let tiltGuideWidth: Double
        
        public enum CodingKeys: String, CodingKey {
            case delayFrameShowShotGuide = "DelayFrameShowShotGuide"
            case guideDrawFrameDefilade = "GuideDrawFrameDefilade"
            case guideDrawFrameFirst = "GuideDrawFrameFirst"
            case guideDrawFrameSecond = "GuideDrawFrameSecond"
            case isDrawTrajectory = "IsDrawTrajectory"
            case mainArrowGuideDrawFrame = "MainArrowGuideDrawFrame"
            case subArrowGuideDrawFrame = "SubArrowGuideDrawFrame"
            case tiltGuideEnabled = "TiltGuideEnabled"
            case tiltGuideLength = "TiltGuideLength"
            case tiltGuideWidth = "TiltGuideWidth"
        }
    }
    
    public struct ShotParameter: Parametable {
        public let arrowAngleMax: Double
        public let arrowAngleMid: Double?
        public let arrowAngleMin: Double?
        public let arrowMargin: Double
        public let arrowNum: Int?
        public let bearMuzzleMoveDistArray: [Double]?
        public let bearMuzzleResetFrame: Int?
        public let bowJumpTiltSpeedForward: Double
        public let bowJumpTiltSpeedReverse: Double
        public let bowTiltDegreeMax: Double
        public let bowTiltDistanceMax: Double?
        public let bowTiltKeepFrame: Double
        public let bowTiltResetSpeed: Double
        public let bowTiltThreshold: Double?
        public let defiladeCheckAngle: Double?
        public let defiladeCheckDist: Double?
        public let defildaedBulletSpeed: Double?
        public let diffusionArrowParamArray: [DiffusionArrowParameter]?
        public let enableOldTiltControl: Bool?
        public let isStringerBear: Bool?
        
        public enum CodingKeys: String, CodingKey {
            case arrowAngleMax = "ArrowAngleMax"
            case arrowAngleMid = "ArrowAngleMid"
            case arrowAngleMin = "ArrowAngleMin"
            case arrowMargin = "ArrowMargin"
            case arrowNum = "ArrowNum"
            case bearMuzzleMoveDistArray = "BearMuzzleMoveDistArray"
            case bearMuzzleResetFrame = "BearMuzzleResetFrame"
            case bowJumpTiltSpeedForward = "BowJumpTiltSpeedForward"
            case bowJumpTiltSpeedReverse = "BowJumpTiltSpeedReverse"
            case bowTiltDegreeMax = "BowTiltDegreeMax"
            case bowTiltDistanceMax = "BowTiltDistanceMax"
            case bowTiltKeepFrame = "BowTiltKeepFrame"
            case bowTiltResetSpeed = "BowTiltResetSpeed"
            case bowTiltThreshold = "BowTiltThreshold"
            case defiladeCheckAngle = "DefiladeCheckAngle"
            case defiladeCheckDist = "DefiladeCheckDist"
            case defildaedBulletSpeed = "DefildaedBulletSpeed"
            case diffusionArrowParamArray = "DiffusionArrowParamArray"
            case enableOldTiltControl = "EnableOldTiltControl"
            case isStringerBear = "IsStringerBear"
        }
    }
}

extension Stringer.Parameters.WeaponParameter.ShotParameter {
    public struct DiffusionArrowParameter: Parametable {
        public let shotAddDegH: Double
        public let shotAddDegV: Double
        public let spawnSpeedMax: Double
        public let spawnSpeedMid: Double
        public let spawnSpeedMin: Double
        
        public enum CodingKeys: String, CodingKey {
            case shotAddDegH = "ShotAddDeg_H"
            case shotAddDegV = "ShotAddDeg_V"
            case spawnSpeedMax = "SpawnSpeedMax"
            case spawnSpeedMid = "SpawnSpeedMid"
            case spawnSpeedMin = "SpawnSpeedMin"
        }
    }
}
