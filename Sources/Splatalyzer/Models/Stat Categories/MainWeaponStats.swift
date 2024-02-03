//
//  MainWeaponStats.swift
//
//
//  Created by Christopher Engelbart on 1/17/24.
//

import Foundation

public struct MainWeaponStats: Equatable {
    public let weapon: MainWeapon
    public let shotSpreadAir: AbilityStat?
    public let shotSpreadGround: Double?
    public let shotAutofireSpreadAir: AbilityStat?
    public let shotAutofireSpreadGround: Double?
    public let whiteInkSeconds: Double?
    public let brellaCanopyHp: Int?
    public let fullChargeSeconds: Double?
    public let maxChargeSeconds: Double?
    
    public func exists() -> Bool {
        return !(self.shotSpreadAir == nil && self.shotSpreadGround == nil && self.shotAutofireSpreadAir == nil && self.shotAutofireSpreadGround == nil && self.whiteInkSeconds == nil && self.brellaCanopyHp == nil && self.fullChargeSeconds == nil && self.maxChargeSeconds == nil)
    }
}
