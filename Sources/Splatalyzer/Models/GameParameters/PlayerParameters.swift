//
//  PlayerParameters.swift
//
//
//  Created by Christopher Engelbart on 12/21/23.
//

import Foundation

struct PlayerAttractTargetParameter: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerCameraPeriscopeParameter: Parametable {
    let type: String
    let playerFollowRate: RateData
    let yawAngleVelRateGyro: RateData
    let yawAngleVelRateStick: RateData
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case playerFollowRate = "PlayerFollowRate"
        case yawAngleVelRateGyro = "YawAngleVelRateGyro"
        case yawAngleVelRateStick = "YawAngleVelRateStick"
    }
}

struct PlayerCanolaShotParameter: Parametable {
    var type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}

struct PlayerEntryLiftParameter: Parametable {
    let type: String
    let finishVel: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case finishVel = "FinishVel"
    }
}

struct PlayerGeyserParameter: Parametable {
    let type: String
    let bindToRoofMinSec: Double
    let jumpVelAtRoof: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case bindToRoofMinSec = "BindToRoofMinSec"
        case jumpVelAtRoof = "JumpVelAtRoof"
    }
}

struct PlayerGrindRailParameter: Parametable {
    let type: String
    let aerialVelYToBind: Double
    let autoFinishCheckDist: Double
    let autoFinishVelY: Double
    let autoJumpFinishNoBindFrame: Int
    let bindDistY: Double
    let finishNoBindFrame: Int
    let finishPlayerVelRateY: Double
    let gndColFallNoBindFrame: Int
    let gndColRadius: Double
    let playerJumpSpeed: Double
    let playerSideJumpEndFix: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case aerialVelYToBind = "AerialVelYToBind"
        case autoFinishCheckDist = "AutoFinish_CheckDist"
        case autoFinishVelY = "AutoFinish_VelY"
        case autoJumpFinishNoBindFrame = "AutoJumpFinishNoBindFrame"
        case bindDistY = "BindDistY"
        case finishNoBindFrame = "FinishNoBindFrame"
        case finishPlayerVelRateY = "FinishPlayerVelRateY"
        case gndColFallNoBindFrame = "GndCol_FallNoBindFrame"
        case gndColRadius = "GndCol_Radius"
        case playerJumpSpeed = "PlayerJumpSpeed"
        case playerSideJumpEndFix = "PlayerSideJumpEndFix"
    }
}

struct PlayerJumpGimmickParameter: Parametable {
    let type: String
    let jumpDisableFrm: Int
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case jumpDisableFrm = "JumpDisableFrm"
    }
}

struct PlayerMissionSkillParameter: Parametable {
    let type: String
    let armorRecoverFrame: [Int]
    let inkTankCapacityRate: [Double]
    let markerCheckRadius: [Double]
    let opInkEffectMoveSpeedJump: [Double]
    let opInkEffectMoveSpeedNormal: [Double]
    let opInkEffectMoveSpeedShot: [Double]
    let shooterShotIntervalFrame: [Int]
    let specialIncreaseUpRate: [Double]
    let subWeapon1InkConsumeCoef: Double
    let subWeapon2InkConsumeCoef: Double
    let subWeapon3InkConsumeCoef: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case armorRecoverFrame = "ArmorRecoverFrame"
        case inkTankCapacityRate = "InkTankCapacityRate"
        case markerCheckRadius = "MarkerCheckRadius"
        case opInkEffectMoveSpeedJump = "OpInkEffect_MoveSpeed_Jump"
        case opInkEffectMoveSpeedNormal = "OpInkEffect_MoveSpeed_Normal"
        case opInkEffectMoveSpeedShot = "OpInkEffect_MoveSpeed_Shot"
        case shooterShotIntervalFrame = "ShooterShotIntervalFrame"
        case specialIncreaseUpRate = "SpecialIncreaseUpRate"
        case subWeapon1InkConsumeCoef = "SubWeapon1_InkConsumeCoef"
        case subWeapon2InkConsumeCoef = "SubWeapon2_InkConsumeCoef"
        case subWeapon3InkConsumeCoef = "SubWeapon3_InkConsumeCoef"
    }
}

struct PlayerPeriscopeParameter: Parametable {
    let type: String
    let extendSec: Double
    let shrinkMoveGraph: RateData
    let shrinkSec: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case extendSec = "ExtendSec"
        case shrinkMoveGraph = "ShrinkMoveGraph"
        case shrinkSec = "ShrinkSec"
    }
}

struct PlayerPipelineParameter: Parametable {
    let type: String
    let darkenDelaySec: Double
    let finishSec: Double
    let finishVel: Double
    let modelOffsetY: RateData
    let modelOffsetZ: RateData
    let moveAcc: Double
    let openEndDistance: Double
    let startAttCurve: RateData
    let startSec: Double
    let startSplashStartOffsetZ: Double
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
        case darkenDelaySec = "DarkenDelaySec"
        case finishSec = "FinishSec"
        case finishVel = "FinishVel"
        case modelOffsetY = "ModelOffsetY"
        case modelOffsetZ = "ModelOffsetZ"
        case moveAcc = "MoveAcc"
        case openEndDistance = "OpenEndDistance"
        case startAttCurve = "StartAttCurve"
        case startSec = "StartSec"
        case startSplashStartOffsetZ = "StartSplashStartOffsetZ"
    }
}

struct PlayerVehicleSpectacleParameter: Parametable {
    let type: String
    
    enum CodingKeys: String, CodingKey {
        case type = "$type"
    }
}
