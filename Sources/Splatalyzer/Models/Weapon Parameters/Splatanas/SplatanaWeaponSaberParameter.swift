//
//  SplatanaWeaponSaberParameter.swift
//  
//
//  Created by Christopher Engelbart on 12/26/23.
//

import Foundation

struct SplatanaWeaponSaberParameter: Codable {
    let type: String
    let chargeKeepParam: SplatanaChargeKeepParameter?
    let chargeParam: SplatanaChargeParameter
    let footSplashPaintParam: SplatanaFootSplashPaintParameter
    let isEnableChargeKeep: Bool?
    let shotGuideParam: SplatanaShotGuideParameter
    let swingParam: SplatanaSwingParameter
}

struct SplatanaChargeKeepParameter: Codable {
    let keepChargePreDelayFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case keepChargePreDelayFrame = "KeepChargePreDelayFrame"
    }
}

struct SplatanaChargeParameter: Codable {
    let airChargeRateByInkEmpty: Int?
    let chargeFrameFullCharge: Int
    let chargeFrameMinCharge: Int
    let inkConsumeFullCharge: Double
    let inkConsumeMinCharge: Double
    let inkRecoverStop: Int
    let moveSpeedFullCharge: Double?
    
    enum CodingKeys: String, CodingKey {
        case airChargeRateByInkEmpty = "AirChargeRateByInkEmpty"
        case chargeFrameFullCharge = "ChargeFrameFullCharge"
        case chargeFrameMinCharge = "ChargeFrameMinCharge"
        case inkConsumeFullCharge = "InkConsumeFullCharge"
        case inkConsumeMinCharge = "InkConsumeMinCharge"
        case inkRecoverStop = "InkRecoverStop"
        case moveSpeedFullCharge = "MoveSpeedFullCharge"
    }
}

struct SplatanaFootSplashPaintParameter: Codable {
    let depthMaxDropHeight: Double?
    let depthMinDropHeight: Double?
    let depthScaleMax: Double
    let depthScaleMin: Double?
    let widthHalf: Double?
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

struct SplatanaShotGuideParameter: Codable {
    let horizontalSightFrame: Int
    let horizontalSphereIndex: Int
    let verticalSightFrame: Int
    let verticalSphereIndex: Int
    
    enum CodingKeys: String, CodingKey {
        case horizontalSightFrame = "HorizontalSightFrame"
        case horizontalSphereIndex = "HorizontalSphereIndex"
        case verticalSightFrame = "VerticalSightFrame"
        case verticalSphereIndex = "VerticalSphereIndex"
    }
}

struct SplatanaSwingParameter: Codable {
    let chargeMoveVelLimit: Double
    let chargeSwingASFrame: Int
    let chargeSwingFrame: Int
    let chargeSwingPostDelayFrame: Int
    let chargeSwingShotBulletFrame: Int
    let chargeSwingShotSlashFrame: Int
    let chargeSwingStepShotBulletFrame: Int
    let chargeSwingStepShotSlashFrame: Int
    let inkConsume: Double
    let inkRecoverStop: Int
    let inkRecoverStop_ChargeSwing: Int
    let isEnableStep: Bool?
    let isShotEnable: Bool?
    let reserveAcceptFrame: Int
    let shotBulletOffset_L: XYZData?
    let shotBulletOffset_R: XYZData?
    let shotBulletOffset_Vertical: XYZData?
    let shotSlashOffset_L: XYZData?
    let shotSlashOffset_R: XYZData?
    let shotSlashOffset_Vertical: XYZData?
    let sideStepParam: SplatanaSwingSideStepParameter
    let stepStartStickHistoryFrame: Int?
    let stepStartStickThresholdY: Double?
    let weakSwingASFrame: Int
    let weakSwingFrame: Int
    let weakSwingMoveVelLimit: Double
    let weakSwingPostDelayFrame: Int
    let weakSwingShotBulletFrame: Int
    let weakSwingShotSlashFrame: Int
    
    enum CodingKeys: String, CodingKey {
        case chargeMoveVelLimit = "ChargeMoveVelLimit"
        case chargeSwingASFrame = "ChargeSwingASFrame"
        case chargeSwingFrame = "ChargeSwingFrame"
        case chargeSwingPostDelayFrame = "ChargeSwingPostDelayFrame"
        case chargeSwingShotBulletFrame = "ChargeSwingShotBulletFrame"
        case chargeSwingShotSlashFrame = "ChargeSwingShotSlashFrame"
        case chargeSwingStepShotBulletFrame = "ChargeSwingStepShotBulletFrame"
        case chargeSwingStepShotSlashFrame = "ChargeSwingStepShotSlashFrame"
        case inkConsume = "InkConsume"
        case inkRecoverStop = "InkRecoverStop"
        case inkRecoverStop_ChargeSwing = "InkRecoverStop_ChargeSwing"
        case isEnableStep = "IsEnableStep"
        case isShotEnable = "IsShotEnable"
        case reserveAcceptFrame = "ReserveAcceptFrame"
        case shotBulletOffset_L = "ShotBulletOffset_L"
        case shotBulletOffset_R = "ShotBulletOffset_R"
        case shotBulletOffset_Vertical = "ShotBulletOffset_Vertical"
        case shotSlashOffset_L = "ShotSlashOffset_L"
        case shotSlashOffset_R = "ShotSlashOffset_R"
        case shotSlashOffset_Vertical = "ShotSlashOffset_Vertical"
        case sideStepParam = "SideStepParam"
        case stepStartStickHistoryFrame = "StepStartStickHistoryFrame"
        case stepStartStickThresholdY = "StepStartStickThresholdY"
        case weakSwingASFrame = "WeakSwingASFrame"
        case weakSwingFrame = "WeakSwingFrame"
        case weakSwingMoveVelLimit = "WeakSwingMoveVelLimit"
        case weakSwingPostDelayFrame = "WeakSwingPostDelayFrame"
        case weakSwingShotBulletFrame = "WeakSwingShotBulletFrame"
        case weakSwingShotSlashFrame = "WeakSwingShotSlashFrame"
    }
}

struct SplatanaSwingSideStepParameter: Codable {
    let chargeFrame: Int
    let inkConsume: Double?
    let inkRecoverStop: Int?
    let inputReqAcceptFrame: Int?
    let moveDist: Double
    let moveFrame: Int
    let moveStepKd: Double
    let repeatCnt: Int?
    let slipMoveDistAir: Double?
    let slipMoveDistGnd: Double?
    let slipMoveFrame: Int?
    let timeScale: Double?
    let timeScaleFrm: Int?
    let unrelaxFrameMove: Int?
    let unrelaxFrameMoveLast: Int
    let unrelaxFrameNoSideStep: Int?
    let unrelaxFrameNoSideStepLast: Int
    let unrelaxFrameNoSquid: Int?
    let unrelaxFrameNoSquidLast: Int
    let unrelaxFrameNoWeapon: Int?
    let unrelaxFrameNoWeaponLast: Int
    let unrelaxFrameOneMuzzle: Int?
    let unrelaxFrameOneMuzzleLast: Int?
    
    enum CodingKeys: String, CodingKey {
        case chargeFrame = "ChargeFrame"
        case inkConsume = "InkConsume"
        case inkRecoverStop = "InkRecoverStop"
        case inputReqAcceptFrame = "InputReqAcceptFrame"
        case moveDist = "MoveDist"
        case moveFrame = "MoveFrame"
        case moveStepKd = "MoveStepKd"
        case repeatCnt = "RepeatCnt"
        case slipMoveDistAir = "SlipMoveDistAir"
        case slipMoveDistGnd = "SlipMoveDistGnd"
        case slipMoveFrame = "SlipMoveFrame"
        case timeScale = "TimeScale"
        case timeScaleFrm = "TimeScaleFrm"
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
