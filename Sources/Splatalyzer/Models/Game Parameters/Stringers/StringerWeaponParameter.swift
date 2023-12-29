//
//  StringerWeaponParameter.swift
//
//
//  Created by Christopher Engelbart on 12/27/23.
//

import Foundation

struct StringerWeaponParameter: Codable {
    let type: String
    let chargeKeepParameter: StringerWeaponChargeKeepParameter
    let chargeParameter: StringerWeaponChargeParameter
    let isEnableChargeKeep: Bool?
    let playerParam: StringerWeaponPlayerParameter
    let shotGuideParam: StringerWeaponShotGuideParameter
    let shotParam: StringerWeaponShotParameter
    
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

struct StringerWeaponChargeKeepParameter: Codable {
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

struct StringerWeaponChargeParameter: Codable {
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

struct StringerWeaponPlayerParameter: Codable {
    let bowTiltDegRcvInterpRate: Double
    
    enum CodingKeys: String, CodingKey {
        case bowTiltDegRcvInterpRate = "BowTiltDegRcvInterpRate"
    }
}

struct StringerWeaponShotGuideParameter: Codable {
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

struct StringerWeaponShotParameter: Codable {
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
