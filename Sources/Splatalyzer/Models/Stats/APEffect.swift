//
//  APEffect.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public struct APEffect {
    public let baseEffect: Double
    public let effect: Double
    
    public init(
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
        
        let basePercentage = min(3.3 * 0 - 0.027 * pow(0, 2), 100) / 100.0
        let percentage = min(3.3 * Double(ap) - 0.027 * pow(Double(ap), 2), 100) / 100.0
        
        let lerpNBase = StatHelper.lerpN(slope, basePercentage)
        let lerpN = StatHelper.lerpN(slope, percentage)
        
        let baseResult = low + (high - low) * lerpNBase
        let result = low + (high - low) * lerpN
        
        self.baseEffect = baseResult
        self.effect = result
    }
    
    public func baseEffectToDamage() -> Double {
        return (baseEffect * 100).cutToDecimalPlaces(3)
    }
    
    public func effectToDamage() -> Double {
        return (effect * 100 - 0.05).cutToDecimalPlaces(3)
    }
}
