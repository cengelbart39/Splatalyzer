//
//  AbilitySpecialEffect.swift
//  
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

/// Represents the AP provided by certain abilities, that provide AP from multiple other abilities.
///
/// For example, the Drop Roller ability provides AP of Swim Speed Up, Run Speed Up, and Ink Resistance Up.
public enum AbilitySpecialEffect: Equatable, Sendable {
    /// The effect provided by `Ability.dropRoller`
    case dropRoller
    
    /// The effect provided by `Ability.openingGambit`
    case openingGambit
    
    /// The effect provided by `Ability.lastDitchEffort`
    case lastDitchEffort(Int)
    
    /// The effect provided by ``Ability.comeback`
    case comeBack
    
    /// The effect provided by the Tacticooler ``SpecialWeapon``
    case tacticooler
    
    /// The effect provided by each `AbilityEffectValue`
    ///
    /// Last-Ditch Effort calculates the AP-value by using the intensity. Other wise, values are hard-coded.
    ///
    /// See ``ldeIntensityToAp(_:)``.
    public var values: [AbilityEffectValue] {
        switch self {
        case .dropRoller:
            return [
                AbilityEffectValue(30, of: .swimSpeedUp, boostsBeyond: true),
                AbilityEffectValue(30, of: .runSpeedUp, boostsBeyond: true),
                AbilityEffectValue(30, of: .inkResistanceUp, boostsBeyond: true)
            ]
            
        case .openingGambit:
            return [
                AbilityEffectValue(30, of: .swimSpeedUp, boostsBeyond: true),
                AbilityEffectValue(30, of: .runSpeedUp, boostsBeyond: true),
                AbilityEffectValue(30, of: .inkResistanceUp, boostsBeyond: true),
                AbilityEffectValue(30, of: .intensifyAction, boostsBeyond: true)
            ]
            
        case .lastDitchEffort(let intensity):
            let ap = ldeIntensityToAp(intensity)
            
            return [
                AbilityEffectValue(ap, of: .inkSaverMain, boostsBeyond: true),
                AbilityEffectValue(ap, of: .inkSaverSub, boostsBeyond: true),
                AbilityEffectValue(ap, of: .inkRecoveryUp, boostsBeyond: true)
            ]
            
        case .comeBack:
            return [
                AbilityEffectValue(10, of: .inkSaverMain, boostsBeyond: true),
                AbilityEffectValue(10, of: .inkSaverSub, boostsBeyond: true),
                AbilityEffectValue(10, of: .inkRecoveryUp, boostsBeyond: true),
                AbilityEffectValue(10, of: .runSpeedUp, boostsBeyond: true),
                AbilityEffectValue(10, of: .swimSpeedUp, boostsBeyond: true),
                AbilityEffectValue(10, of: .specialChargeUp, boostsBeyond: true)
            ]
            
        case .tacticooler:
            return [
                AbilityEffectValue(29, of: .swimSpeedUp, boostsBeyond: false),
                AbilityEffectValue(29, of: .runSpeedUp, boostsBeyond: false),
                AbilityEffectValue(57, of: .inkResistanceUp, boostsBeyond: true),
                AbilityEffectValue(57, of: .quickRespawn, boostsBeyond: true),
                AbilityEffectValue(57, of: .quickSuperJump, boostsBeyond: true),
                AbilityEffectValue(57, of: .specialSaver, boostsBeyond: true),
                AbilityEffectValue(57, of: .intensifyAction, boostsBeyond: true)
            ]
            
        }
    }
    
    /// Converts Last-Ditch Effort Intensity to its AP-value.
    /// - Parameter intensity: The intensity of Last-Ditch Effort; expects a number within the range `0...21`.
    /// - Returns: The equivalent AP-value
    public func ldeIntensityToAp(_ intensity: Int) -> Int {
        return Int(floor((18.0 / 21.0) * Double(intensity)))
    }
}

/// Represents the amount of AP provided by an ``Ability`` and whether it exceeds the usual cap.
public struct AbilityEffectValue: Sendable {
    /// The ability providing the effect
    public let type: Ability
    
    /// The amount of AP for `type`
    public let ap: Int
    
    /// Whether the Ability's effect exceeds the typical cap.
    public let boostsBeyond: Bool
    
    /// Create an instance of `AbilityEffectValue`
    public init(_ ap: Int, of type: Ability, boostsBeyond: Bool) {
        self.type = type
        self.ap = ap
        self.boostsBeyond = boostsBeyond
    }
}
