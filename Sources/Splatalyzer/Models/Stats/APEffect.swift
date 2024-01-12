//
//  APEffect.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

struct APEffect {
    let baseEffect: Double
    let effect: Double
    
    init(
        for value: AbilityValue,
        in values: AbilityValues,
        of ap: Int,
        weapon: WeaponDatable
    ) {
        let effect = StatHelper.abilityValues(
            for: value,
            in: values,
            weapon: weapon
        )
        
        let high = effect.high!
        let mid = effect.mid!
        let low = effect.low!
        
        let slope = Double(mid - low) / Double(high - low)
        
        let basePercentage = min(3.3 * 0 - 0.027 * pow(Double(ap), 2), 100)
        let percentage = min(3.3 * Double(ap) - 0.027 * pow(Double(ap), 2), 100)
        
        let lerpNBase = exp((log(slope) * log(basePercentage)) / log(2))
        let lerpN = exp((log(slope) * log(percentage)) / log(2))
        
        let baseResult = low + (high - low) * lerpNBase
        let result = low + (high - low) * lerpN
        
        self.baseEffect = baseResult
        self.effect = result
    }
    
    func baseEffectToDamage() -> Double {
        return baseEffect * 100 - 0.05
    }
    
    func effectToDamage() -> Double {
        return effect * 100 - 0.05
    }
}
