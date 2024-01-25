//
//  MainWeaponStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

struct MainWeaponStats {
    let weapon: MainWeapon
    let shotSpreadAir: AbilityStat?
    let shotSpreadGround: Double?
    let shotAutofireSpreadAir: AbilityStat?
    let shotAutofireSpreadGround: Double?
    let whiteInkSeconds: Double?
    let brellaCanopyHp: Int?
    let fullChargeSeconds: Double?
    let maxChargeSeconds: Double?
    
    func exists() -> Bool {
        return !(self.shotSpreadAir == nil && self.shotSpreadGround == nil && self.shotAutofireSpreadAir == nil && self.shotAutofireSpreadGround == nil && self.whiteInkSeconds == nil && self.brellaCanopyHp == nil && self.fullChargeSeconds == nil && self.maxChargeSeconds == nil)
    }
}

extension BuildStats {
    func mainWeaponStats() -> MainWeaponStats {
        return MainWeaponStats(
            weapon: self.mainWeapon,
            shotSpreadAir: self.shotSpreadAir,
            shotSpreadGround: self.shotSpreadGround,
            shotAutofireSpreadAir: self.shotAutofireSpreadAir,
            shotAutofireSpreadGround: self.shotAutofireSpreadGround,
            whiteInkSeconds: self.mainWhiteInkSeconds,
            brellaCanopyHp: self.brellaCanopyHp,
            fullChargeSeconds: self.fullChargeSeconds,
            maxChargeSeconds: self.maxChargeHoldSeconds)
    }
}
