//
//  APEffect.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// The effect of AP on some ``AbilityValue``
public struct APEffect: Sendable {
    /// The default effect before accounting for AP
    public let baseEffect: Double
    
    /// The effecy accounting for AP
    public let effect: Double
    
    /// Initializes `APEffect` and calculates ``baseEffect`` and ``effect``
    /// - Parameters:
    ///   - value: A key of `AbilityValues`
    ///   - ap: The AP of some abilitity
    ///   - weapon: A weapon with overwritable values
    public init(
        for value: AbilityValue,
        of ap: Int,
        weapon: WeaponDatable
    ) {
        let effect = StatHelper.abilityValues(
            for: value,
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
    
    /// Converts ``baseEffect`` to damage
    public func baseEffectToDamage() -> Double {
        return (baseEffect * 100).cutToDecimalPlaces(3)
    }
    
    /// Converts ``effect`` to damage
    public func effectToDamage() -> Double {
        return (effect * 100).cutToDecimalPlaces(3)
    }
}
