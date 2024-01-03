//
//  AbilityValues.swift
//
//
//  Created by Christopher Engelbart on 1/3/24.
//

import Foundation

struct AbilityValues: Codable {
    var dictionary: [AbilityValue : [Double]]
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let stringDictionary = try container.decode([String : [Double]].self)

        dictionary = [:]
        for (stringKey, value) in stringDictionary {
          guard let key = AbilityValue(rawValue: stringKey) else {
            throw DecodingError.dataCorruptedError(
              in: container,
              debugDescription: "Invalid key '\(stringKey)'"
            )
          }
          dictionary[key] = value
        }
    }
}


enum AbilityValue: String, Codable {
    case consumeRtMain = "ConsumeRt_Main"
    case consumeRtSubLv0 = "ConsumeRt_Sub_Lv0"
    case consumeRtSubLv1 = "ConsumeRt_Sub_Lv1"
    case consumeRtSubLv2 = "ConsumeRt_Sub_Lv2"
    case consumeRtSubLv3 = "ConsumeRt_Sub_Lv3"
    case consumeRtSubLv4 = "ConsumeRt_Sub_Lv4"
    case damageRtBombH = "DamageRt_BombH"
    case damageRtBombL = "DamageRt_BombL"
    case damageRtLineMarker = "DamageRt_LineMarker"
    case damageRtShield = "DamageRt_Shield"
    case damageRtSprinkler = "DamageRt_Sprinkler"
    case dyingAroundFrm = "Dying_AroundFrm"
    case dyingChaseFrm = "Dying_ChaseFrm"
    case increaseRtSpecial = "IncreaseRt_Special"
    case inkRecoverFrmStd = "InkRecoverFrm_Std"
    case inkRecoverFrmStealth = "InkRecoverFrm_Stealth"
    case markingTimeRt = "MarkingTimeRt"
    case markingTimeRtTrap = "MarkingTimeRt_Trap"
    case moveDownRtPoisonMist = "MoveDownRt_PoisonMist"
    case moveVelRtShot = "MoveVelRt_Shot"
    case moveVelHuman = "MoveVel_Human"
    case moveVelHumanFast = "MoveVel_Human_Fast"
    case moveVelHumanSlow = "MoveVel_Human_Slow"
    case moveVelStealth = "MoveVel_Stealth"
    case moveVelStealthFast = "MoveVel_Stealth_Fast"
    case moveVelStealthSlow = "MoveVel_Stealth_Slow"
    case opInkArmorHP = "OpInk_ArmorHP"
    case opInkDamageLmt = "OpInk_DamageLmt"
    case opInkDamagePerFrame = "OpInk_DamagePerFrame"
    case opInkJumpVel = "OpInk_JumpVel"
    case opInkMoveVel = "OpInk_MoveVel"
    case opInkMoveVelShot = "OpInk_MoveVel_Shot"
    case opInkMoveVelShotK = "OpInk_MoveVel_ShotK"
    case overwriteConsumeRtMain = "Overwrite_ConsumeRt_Main"
    case overwriteMoveVelRtShot = "Overwrite_MoveVelRt_Shot"
    case somersaultMoveVelKd = "Somersault_MoveVelKd"
    case specialGaugeRtRestart = "SpecialGaugeRt_Restart"
    case superJumpChargeFrm = "SuperJump_ChargeFrm"
    case superJumpMoveFrm = "SuperJump_MoveFrm"
    case wallJumpChargeFrm = "WallJumpChargeFrm"
    case reduceJumpSwerveRate = "ReduceJumpSwerveRate"
}
