//
//  AbilityValues.swift
//
//
//  Created by Christopher Engelbart on 1/3/24.
//

import Foundation

/// Represents the whole of `ability-values.json`.
///
/// This is the general structure of `ability-values.json`:
/// ```json
/// {
///     "ConsumeRt_Main": [
///         0.55,
///         0.775,
///         1
///     ],
///     "ConsumeRt_Sub_Lv0": [
///         0.8,
///         0.9,
///         1
///     ],
///     ...
/// }
/// ```
///
/// This structure is decodead into `dictionary` as `[AbilityValue : HighMidLow]`.
public struct AbilityValues: Codable {
    
    /// The ``AbilityValue`` and the associated triplet of `Double`s with a high, middle, and low value.
    public var dictionary: [AbilityValue : HighMidLow]
    
    /// Inherited from `Decodable.init(from:)`.
    ///
    /// We cannot use a default initalizer for decoding.
    ///
    /// Despite ``AbilityValue`` being correctly keyed for
    /// `ability-values.json`, the default decoder
    /// initalizer will throw an error while decoding if we decode
    /// as `[AbilityValue : [Double]]`.
    ///
    /// We have to manually loop through every entry in the
    /// JSON file  as `[String : [Double]]` and try to
    /// convert the key to `AbilityValue` and value to 
    /// `HighMidLow`.
    ///
    /// We also add entries not found in `ability-values`.
    /// These are used in ``StatHelper``.
    public init(from decoder: Decoder) throws {
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
                        
            guard let hml = HighMidLow(value) else {
                throw DecodingError.dataCorruptedError(
                    in: container, 
                    debugDescription: "\(value) for '\(stringKey)' does not have 3 elements."
                )
            }
            
            dictionary[key] = hml
        }
        
        dictionary[.markingFrameSubSpec] = HighMidLow()
        dictionary[.subSpecUpParam] = HighMidLow()
        dictionary[.subVelocity] = HighMidLow()
        dictionary[.subFirstPhaseDuration] = HighMidLow()
        dictionary[.subSecondPhaseDuration] = HighMidLow()
        dictionary[.subMarkingTimeInSeconds] = HighMidLow()
        dictionary[.subMarkingRadius] = HighMidLow()
        dictionary[.subExplosionRadius] = HighMidLow()
        dictionary[.subHp] = HighMidLow()
        
        dictionary[.specialDurationFrame] = HighMidLow()
        dictionary[.specialDamageDistance] = HighMidLow()
        dictionary[.specialPaintRadius] = HighMidLow()
        dictionary[.specialFieldHp] = HighMidLow()
        dictionary[.specialDeviceHp] = HighMidLow()
        dictionary[.specialHookInkConsumption] = HighMidLow()
        dictionary[.specialInkConsumptionPerSecond] = HighMidLow()
        dictionary[.specialReticleRadius] = HighMidLow()
        dictionary[.specialThrowDistance] = HighMidLow()
        dictionary[.specialAutoChargeRate] = HighMidLow()
        dictionary[.specialMaxRadius] = HighMidLow()
        dictionary[.specialMinRadius] = HighMidLow()
        dictionary[.specialPowerUpDuration] = HighMidLow()
    }
}

/// Represents every key in the `ability-values.json` file.
public enum AbilityValue: String, Codable {
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
    
    case markingFrameSubSpec
    case subSpecUpParam
    case subVelocity
    case subFirstPhaseDuration
    case subSecondPhaseDuration
    case subMarkingTimeInSeconds
    case subMarkingRadius
    case subExplosionRadius
    case subHp
    
    case specialDurationFrame
    case specialDamageDistance
    case specialPaintRadius
    case specialFieldHp
    case specialDeviceHp
    case specialHookInkConsumption
    case specialInkConsumptionPerSecond
    case specialReticleRadius
    case specialThrowDistance
    case specialMoveSpeed
    case specialAutoChargeRate
    case specialMaxRadius
    case specialMinRadius
    case specialPowerUpDuration
    
    /// Fetch the associated Sub Consume Level ``AbilityValue`` for
    /// a specified level.
    ///
    /// ``AbilityValue`` contains five sub consume levels:
    /// - `.consumeRtSubLv0`
    /// - `.consumeRtSubLv1`
    /// - `.consumeRtSubLv2`
    /// - `.consumeRtSubLv3`
    /// - `.consumeRtSubLv4`
    ///
    /// Based on `lvl` it fetches the appropriate case.
    ///
    /// - Parameter lvl: The consumption level
    /// - Returns: The appropriate consumption level. Expects 0 to 4, but 
    /// any other values overflow to `.consumeRtSubLv4`.
    static func getSubConsumeLevel(for lvl: Int) -> AbilityValue {
        if lvl == 0 {
            return .consumeRtSubLv0
            
        } else if lvl == 1 {
            return .consumeRtSubLv1
            
        } else if lvl == 2 {
            return .consumeRtSubLv2
            
        } else if lvl == 3 {
            return .consumeRtSubLv3
            
        } else {
            return .consumeRtSubLv4
        }
    }
    
    /// Fetch the associated Human Move Velocity ``AbilityValue`` for
    /// a specified ``WeaponSpeedType``.
    ///
    /// ``AbilityValue`` contains three human move velocities:
    /// - `.moveVelHumanSlow` (Slow)
    /// - `.moveVelHuman` (Normal)
    /// - `.moveVelHumanFast` (Fast)
    ///
    /// Based on `lvl` it fetches the appropriate case.
    ///
    /// - Parameter speedType: The weapon speed type
    /// - Returns: The appropriate human move velocity.
    static func getMoveVelHumanLvl(for speedType: WeaponSpeedType) -> AbilityValue {
        switch speedType {
        case .slow:
            return .moveVelHumanSlow
        case .mid:
            return .moveVelHuman
        case .fast:
            return .moveVelHumanFast
        }
    }
    
    /// Fetch the associated Squid/Octopus Form Move Velocity
    /// ``AbilityValue`` for a specified ``WeaponSpeedType``.
    ///
    /// ``AbilityValue`` contains three squid/octopus  form move
    /// velocities:
    /// - `.moveVelStealthSlow` (Slow)
    /// - `.moveVelStealth` (Normal)
    /// - `.moveVelStealthFast` (Fast)
    ///
    /// Based on `lvl` it fetches the appropriate case.
    ///
    /// - Parameter speedType: The weapon speed type
    /// - Returns: The appropriate squid/octopus form move velocity.
    static func getMoveVelStealthLvl(for speedType: WeaponSpeedType) -> AbilityValue {
        switch speedType {
        case .slow:
            return .moveVelStealthSlow
        case .mid:
            return .moveVelStealth
        case .fast:
            return .moveVelStealthFast
        }
    }
}
