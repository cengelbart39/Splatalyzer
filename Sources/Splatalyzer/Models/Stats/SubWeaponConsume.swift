//
//  SubWeaponConsume.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

public struct SubWeaponConsume {
    public let inkConsume: Double
    public let maxSubsFromFullInkTank: Int
    
    public init(
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ mainInfo: MainWeaponData,
        _ subInfo: SubWeaponData
    ) {
        let issAp = ap[.inkSaverSub] ?? 0
        
        let apEffect = APEffect(
            for: AbilityValue.getSubConsumeLevel(for: subInfo.subLevelSave),
            in: abilities,
            of: issAp,
            weapon: mainInfo)

        let inkConsumeAfterISS = subInfo.inkConsume * apEffect.effect
        
        let inkTankSize = mainInfo.mainWeaponId == .splattershotJr || mainInfo.mainWeaponId == .customSplattershotJr ? 1.1 : 1
        
        self.inkConsume = inkConsumeAfterISS
        self.maxSubsFromFullInkTank = Int(floor(inkTankSize / inkConsumeAfterISS))
    }
}
