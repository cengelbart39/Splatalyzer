//
//  SubWeaponConsume.swift
//
//
//  Created by Christopher Engelbart on 1/12/24.
//

import Foundation

struct SubWeaponConsume {
    let inkConsume: Double
    let maxSubsFromFullInkTank: Int
    
    init(
        _ ap: AbilityPoints,
        _ abilities: AbilityValues,
        _ mainInfo: MainWeaponData,
        _ subInfo: SubWeaponData
    ) {
        let issAp = ap[.inkSaverMain] ?? 0
        
        let apEffect = APEffect(
            for: AbilityValue.getSubConsumeLevel(for: subInfo.subLevelSave),
            in: abilities,
            of: issAp,
            weapon: mainInfo)

        let inkConsumeAfterISS = subInfo.inkConsume * apEffect.effect
        
        let inkTankSize = mainInfo.mainWeaponId == .splattershotJr || mainInfo.mainWeaponId == .customSplattershotJr ? 1.1 : 1
        
        self.inkConsume = inkConsumeAfterISS
        self.maxSubsFromFullInkTank = Int(ceil(inkTankSize / inkConsumeAfterISS))
    }
}
