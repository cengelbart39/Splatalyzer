//
//  SubWeaponConsume.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

/// Represents the ink consumption of a sub weapon
public struct SubWeaponConsume {
    /// The ink consumption
    public let inkConsume: Double
    
    /// The number of subs used
    public let maxSubsFromFullInkTank: Int
    
    /// Initializes and calculates an instance
    /// - Parameters:
    ///   - ap: The AP of the user's gear build
    ///   - SmainInfo: Information about the main weapon
    ///   - subInfo: Information about the sub weapon
    public init(
        _ ap: AbilityPoints,
        _ mainInfo: MainWeaponData,
        _ subInfo: SubWeaponData
    ) {
        let issAp = ap[.inkSaverSub] ?? 0
        
        let apEffect = APEffect(
            for: AbilityValue.getSubConsumeLevel(for: subInfo.subLevelSave),
            of: issAp,
            weapon: mainInfo)

        let inkConsumeAfterISS = subInfo.inkConsume * apEffect.effect
        
        let inkTankSize = mainInfo.mainWeaponId == .splattershotJr || mainInfo.mainWeaponId == .customSplattershotJr ? 1.1 : 1
        
        self.inkConsume = inkConsumeAfterISS
        self.maxSubsFromFullInkTank = Int(floor(inkTankSize / inkConsumeAfterISS))
    }
}
