//
//  AbilitySpecialEffect.swift
//  
//
//  Created by Christopher Engelbart on 1/9/24.
//

import Foundation

enum AbilitySpecialEffect {
    case dropRoller
    
    case openingGambit
    
    case lastDitchEffort(Int)
    
    case comeBack
    
    case tacticooler
    
    var values: [AbilityEffectValue] {
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
                AbilityEffectValue(57, of: .quickRespawn, boostsBeyond: true),
                AbilityEffectValue(57, of: .quickSuperJump, boostsBeyond: true),
                AbilityEffectValue(57, of: .specialSaver, boostsBeyond: true),
                AbilityEffectValue(57, of: .intensifyAction, boostsBeyond: true)
            ]
            
        }
    }
    
    private func ldeIntensityToAp(_ intensity: Int) -> Int {
        return Int(floor((18.0 / 21.0) * Double(intensity)))
    }
}

struct AbilityEffectValue {
    let type: Ability
    let ap: Int
    let boostsBeyond: Bool
    
    init(_ ap: Int, of type: Ability, boostsBeyond: Bool) {
        self.type = type
        self.ap = ap
        self.boostsBeyond = boostsBeyond
    }
}
