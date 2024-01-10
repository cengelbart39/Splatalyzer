//
//  Stringer.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct Stringer: Codable {
    let mainEffectiveRangeUpParam: MainEffectiveRangeUpParameter
    let mainWeaponSetting: MainWeaponSettings
    
    let bulletStringerParam: BulletParameter
    let weaponStringerParam: WeaponParameter
    
    enum CodingKeys: String, CodingKey {
        case mainEffectiveRangeUpParam = "MainEffectiveRangeUpParam"
        case mainWeaponSetting = "MainWeaponSetting"
        case bulletStringerParam = "spl__BulletStringerParam"
        case weaponStringerParam = "spl__WeaponStringerParam"
    }
}

extension Stringer {
    struct BulletParameter: Codable {
        let type: String
        let collisionParam: CollisionParameter
        let damageParam: DamageParameter
        let detonationParam: DetonationParameter
        let drawParam: DrawParameter
        let effect1stParam: Effect1stParameter
        let effect2ndParam: Effect2ndParameter
        let moveParam: MoveParameter
        let paintParam: PaintParameter
        let splashPaintParam: SplashPaintParameter
        let splashSpawnParam: SplashSpawnParameter
        let wallDropMoveParam: WallDropMoveParameter
        let wallDropPaintParam: WallDropPaintParameter?
        
        enum CodingKeys: String, CodingKey {
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

extension Stringer.BulletParameter {
    struct CollisionParameter: Codable {
        let changeFrameForField: Int?
        let changeFrameForPlayer: Int?
        let endRadiusForField: Double?
        let endRadiusForPlayer: Double
        let friendThroughFrameForPlayer: Int?
        let initRadiusForField: Double?
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
    
    struct DamageParameter: Codable {
        let directHitDamageMax: Int
        let directHitDamageMid: Int
        let directHitDamageMin: Int
        
        enum CodingKeys: String, CodingKey {
            case directHitDamageMax = "DirectHitDamageMax"
            case directHitDamageMid = "DirectHitDamageMid"
            case directHitDamageMin = "DirectHitDamageMin"
        }
    }
    
    struct DetonationParameter: Codable {
        let blastParam: BlastParameter
        let detonationFrame: Int
        let isExplosiveBoltMidCharge: Bool
        let isExplosiveBoltMinCharge: Bool?
        
        enum CodingKeys: String, CodingKey {
            case blastParam = "BlastParam"
            case detonationFrame = "DetonationFrame"
            case isExplosiveBoltMidCharge = "IsExplosiveBoltMidCharge"
            case isExplosiveBoltMinCharge = "IsExplosiveBoltMinCharge"
        }
    }
    
    struct DrawParameter: Codable {
        let attInterpRate: Double?
        let capsuleLength: Double
        let capsuleRadius: Double
        let isDrawCapsule: Bool
        let isDrawCollision: Bool
        
        enum CodingKeys: String, CodingKey {
            case attInterpRate = "AttInterpRate"
            case capsuleLength = "CapsuleLength"
            case capsuleRadius = "CapsuleRadius"
            case isDrawCapsule = "IsDrawCapsule"
            case isDrawCollision = "IsDrawCollision"
        }
    }
    
    struct Effect1stParameter: Codable {
        let delayFrame: Int
        let maxLength: Double
        
        enum CodingKeys: String, CodingKey {
            case delayFrame = "DelayFrame"
            case maxLength = "MaxLen"
        }
    }
    
    struct Effect2ndParameter: Codable {
        let landArrowMinAngle: Int?
        let landArrowRiseFrame: Int?
        let smokeInterval: Double
        let smokeStartLen: Double?
        
        enum CodingKeys: String, CodingKey {
            case landArrowMinAngle = "LandArrowMinAngle"
            case landArrowRiseFrame = "LandArrowRiseFrame"
            case smokeInterval = "SmokeInterval"
            case smokeStartLen = "SmokeStartLen"
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
        let goStraightStateEndMaxSpeed: Double
        let goStraightToBrakeStateFrame: Int
        let hitWallKeepFrame: Int?
        let spawnSpeed: Double
        let spawnSpeedMax: Double
        let spawnSpeedMid: Double
        let spawnSpeedMin: Double
        
        enum CodingKeys: String, CodingKey {
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
    
    struct PaintParameter: Codable {
        let depthScaleMax: Double?
        let depthScaleMin: Double?
        let paintDegreeMax: Double?
        let paintDegreeMin: Double?
        let widthHalfMax: Double
        let widthHalfMid: Double
        let widthHalfMin: Double
        
        enum CodingKeys: String, CodingKey {
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case paintDegreeMax = "PaintDegreeMax"
            case paintDegreeMin = "PaintDegreeMin"
            case widthHalfMax = "WidthHalfMax"
            case widthHalfMid = "WidthHalfMid"
            case widthHalfMin = "WidthHalfMin"
        }
    }
    
    struct SplashPaintParameter: Codable {
        let depthMaxDropHeight: Double?
        let depthMinDropHeight: Double?
        let depthScaleMax: Double
        let depthScaleMin: Double?
        let widthHalf: Double
        let widthHalfNearest: Double?
        
        enum CodingKeys: String, CodingKey {
            case depthMaxDropHeight = "DepthMaxDropHeight"
            case depthMinDropHeight = "DepthMinDropHeight"
            case depthScaleMax = "DepthScaleMax"
            case depthScaleMin = "DepthScaleMin"
            case widthHalf = "WidthHalf"
            case widthHalfNearest = "WidthHalfNearest"
        }
    }
    
    struct SplashSpawnParameter: Codable {
        let dropInterval: Double
        let nearestLen: Double?
        let randomSpawnVelXMax: Double?
        let randomSpawnVelYMax: Double?
        let randomSpawnVelZMax: Double?
        let randomSpawnVelZMin: Double?
        let splashNumMax: Int?
        let splitNum: Int
        
        enum CodingKeys: String, CodingKey {
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
    
    struct WallDropMoveParameter: Codable {
        let fallPeriodFirstFrameMax: Int
        let fallPeriodFirstFrameMin: Int
        let fallPeriodFirstTargetSpeed: Double?
        let fallPeriodLastFrameMax: Int
        let fallPeriodLastFrameMin: Int?
        let fallPeriodSecondFrame: Int?
        let fallPeriodSecondTargetSpeed: Double?
        let freeGravityType: String?
        
        enum CodingKeys: String, CodingKey {
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
    
    struct WallDropPaintParameter: Codable {
        let fallPeriodFirstSecondTargetAlp: Double
        let paintRadiusFall: Double
        let paintRadiusGround: Double
        let paintRadiusShock: Double
        
        enum CodingKeys: String, CodingKey {
            case fallPeriodFirstSecondTargetAlp = "FallPeriodFirstSecondTargetAlp"
            case paintRadiusFall = "PaintRadiusFall"
            case paintRadiusGround = "PaintRadiusGround"
            case paintRadiusShock = "PaintRadiusShock"
        }
    }
}

extension Stringer.BulletParameter.DetonationParameter {
    struct BlastParameter: Codable {
        let collisionRadiusForPaint: Double?
        let crossPaintCheckLength: Double?
        let crossPaintRadius: Double?
        let crossPaintTexture: String?
        let crossPaintUseChageArea: Bool?
        let damageAttackerPriority: Bool?
        let damageLinear: Bool?
        let damageOffsetY: Double
        let distanceDamage: [DistanceDamage]
        let knockBackParam: KnockbackParameter?
        let paintHeight: Double?
        let paintOffsetY: Double
        let paintRadius: Double
        let paintTexture: String?
        let planeDamage: [Int]?
        let reactionVel: Double?
        let splashAroundParam: SplashAroundParameter?
        let subSpecialSpecUpList: [String]?
        
        enum CodingKeys: String, CodingKey {
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

extension Stringer {
    struct WeaponParameter: Codable {
        let type: String
        let chargeKeepParameter: ChargeKeepParameter
        let chargeParameter: ChargeParameter
        let isEnableChargeKeep: Bool?
        let playerParam: PlayerParameter
        let shotGuideParam: ShotGuideParameter
        let shotParam: ShotParameter
        
        enum CodingKeys: String, CodingKey {
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

extension Stringer.WeaponParameter {
    struct ChargeKeepParameter: Codable {
        let enableKeepChargeAnytime: Bool?
        let enableKeepChargeTransCancel: Bool?
        let keepChargeFullFrame: Int
        let keepChargePreDelayFrame: Int
        let keepChargePreDelayFramePre: Int
        let muzzleLocalPos: XYZData?
        
        enum CodingKeys: String, CodingKey {
            case enableKeepChargeAnytime = "EnableKeepChargeAnytime"
            case enableKeepChargeTransCancel = "EnableKeepChargeTransCancel"
            case keepChargeFullFrame = "KeepChargeFullFrame"
            case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
            case keepChargePreDelayFramePre = "KeepChargePreDelayFrame_Pre"
            case muzzleLocalPos = "MuzzleLocalPos"
        }
    }
    
    struct ChargeParameter: Codable {
        let airChargeRateByInkEmpty: Int
        let chargeFrameFullCharge: Int
        let chargeFrameMidCharge: Int
        let chargeFrameMinCharge: Int
        let freezeFrameFullCharge: Int
        let freezeFrameMidCharge: Int
        let freezeFrameMinCharge: Int
        let inkConsumeFullCharge: Double
        let inkConsumeMidCharge: Double
        let inkConsumeMinCharge: Double
        let inkEmptyChargeTimes: Int?
        let inkRecoverStop: Int?
        let inkRecoverStopChargeKeep: Int?
        let jumpHeightFullCharge: Double
        let moveJumpDownBias: Double?
        let moveJumpDownStartChargeRate: Double?
        let moveSpeedFullCharge: Double
        let postDelayFrame: Int
        
        enum CodingKeys: String, CodingKey {
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
    
    struct PlayerParameter: Codable {
        let bowTiltDegRcvInterpRate: Double
        
        enum CodingKeys: String, CodingKey {
            case bowTiltDegRcvInterpRate = "BowTiltDegRcvInterpRate"
        }
    }
    
    struct ShotGuideParameter: Codable {
        let delayFrameShowShotGuide: Int?
        let guideDrawFrameDefilade: Int?
        let guideDrawFrameFirst: Int
        let guideDrawFrameSecond: Int
        let isDrawTrajectory: Bool
        let mainArrowGuideDrawFrame: Int
        let subArrowGuideDrawFrame: Int
        let tiltGuideEnabled: Bool
        let tiltGuideLength: Double
        let tiltGuideWidth: Double
        
        enum CodingKeys: String, CodingKey {
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
    
    struct ShotParameter: Codable {
        let arrowAngleMax: Double
        let arrowAngleMid: Double?
        let arrowAngleMin: Double?
        let arrowMargin: Double
        let arrowNum: Int?
        let bearMuzzleMoveDistArray: [Double]?
        let bearMuzzleResetFrame: Int?
        let bowJumpTiltSpeedForward: Double
        let bowJumpTiltSpeedReverse: Double
        let bowTiltDegreeMax: Double
        let bowTiltDistanceMax: Double?
        let bowTiltKeepFrame: Double
        let bowTiltResetSpeed: Double
        let bowTiltThreshold: Double?
        let defiladeCheckAngle: Double?
        let defiladeCheckDist: Double?
        let defildaedBulletSpeed: Double?
        let diffusionArrowParamArray: [DiffusionArrowParameter]?
        let enableOldTiltControl: Bool?
        let isStringerBear: Bool?
        
        enum CodingKeys: String, CodingKey {
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

extension Stringer.WeaponParameter.ShotParameter {
    struct DiffusionArrowParameter: Codable {
        let shotAddDegH: Double
        let shotAddDegV: Double
        let spawnSpeedMax: Double
        let spawnSpeedMid: Double
        let spawnSpeedMin: Double
        
        enum CodingKeys: String, CodingKey {
            case shotAddDegH = "ShotAddDeg_H"
            case shotAddDegV = "ShotAddDeg_V"
            case spawnSpeedMax = "SpawnSpeedMax"
            case spawnSpeedMid = "SpawnSpeedMid"
            case spawnSpeedMin = "SpawnSpeedMin"
        }
    }
}
